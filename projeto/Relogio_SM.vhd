library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Relogio_SM is

	port(	clk_glob	: in std_logic;
			clk_en	: in std_logic;
			
			ajustar	: in std_logic;
			mais		: in std_logic;
			menos		: in std_logic;
			
			--output para a ROM
			out_index : out std_logic_vector(5 downto 0);
			sel		: out std_logic;
			
			en_min	: out std_logic;
			en_hour	: out std_logic;
			en_day	: out std_logic;
			
			days		: out std_logic_vector(2 downto 0);
			hours		: out std_logic_vector(4 downto 0);
			minutes	: out std_logic_vector(5 downto 0));

end Relogio_SM;

architecture Behavioral of Relogio_SM is

	signal s_minutos 	: unsigned(5 downto 0);
	signal s_horas 	: unsigned(4 downto 0);
	signal s_dias 		: unsigned(2 downto 0);
	
	signal s_index 	: natural := 0;
	signal s_index_meia_hora : natural := 0;
	
	signal s_normal	: std_logic;
	signal s_a_min		: std_logic;
	signal s_a_hour	: std_logic;
	signal s_a_day		: std_logic;
	
	type State is (A_Days, Normal, A_Min, A_Hour);
	
	signal PS	: State := Normal;
	signal NS	: State := Normal;

begin

	sync_proc	:	process(clk_glob)
	begin
	
		if rising_edge(clk_glob) then
			
			normal :
			if s_normal = '1' then
			
				if (s_minutos > to_unsigned(59, 6)) then  -- :59
				
					s_minutos <= "000000";
					s_horas <= s_horas + 1;
					
				end if;	
					
				if (s_horas > to_unsigned(23, 5)) then -- 23:
				
					s_horas <= "00000";
					s_dias <= s_dias + 1;
				
				end if;
				
				if (s_dias > "110") then -- end of week
					
					s_dias <= "000";
						
				end if;
				
				if clk_en = '1' then
		
					s_minutos <= s_minutos + 1;
				
				end if;
				
				index_calc	:
				if (to_integer(s_minutos) > 29) then
					s_index_meia_hora <= 1; -- ter um = em vez de <= estava a dar erro de peak memory (talvez estivesse a ocorrer algo infinitamente recursivo)
					--	s_index <= to_integer(s_horas)*2 + 1;
				else
					s_index_meia_hora <= 0;
					--	s_index <= to_integer(s_horas)*2;
				end if;
				
				s_index <= to_integer(s_horas)*2 + s_index_meia_hora;
				
				weekend_sel 	:
					if s_dias = "000" or s_dias = "110" then
				
						sel <= '1';
					
					else
			
						sel <= '0';
					
					end if;	
				
			end if;				
			
			ajuste_min	:
			if s_a_min = '1' then
			
				if mais = '1' then 
				
					if (s_minutos >= to_unsigned(59, 6)) then  -- :59
				
						s_minutos <= "000000";
					
					else
				
						s_minutos <= s_minutos + 1;
					
					end if;
					
				end if;	
				
				if menos = '1' then
					
					if s_minutos = "000000" then
					
						s_minutos <= to_unsigned(59, 6);
						
					else 
				
						s_minutos <= s_minutos - 1;
					
					end if;
				
				end if;
			
			end if;
			
			ajuste_horas	:
			if s_a_hour = '1' then
			
				if mais = '1' then 
				
					if (s_horas >= to_unsigned(23, 5)) then -- 23:
				
						s_horas <= "00000";
						
					else	
					
						s_horas <= s_horas + 1;
						
					end if;
					
				end if;	
				
				if menos = '1' then
				
					if s_horas = "00000" then
					
						s_horas <= to_unsigned(23, 5);
						
					else
					
						s_horas <= s_horas - 1;
					
					end if;
				
				end if;
			
			end if;
			
			ajuste_dias	:
			if s_a_day = '1' then
			
				if mais = '1' then 
				
					if (s_dias >= to_unsigned(6, 3)) then -- end of week
					
							s_dias <= "000";
						
					else
										
						s_dias <= s_dias + 1;
						
					end if;	
					
				end if;	
				
				if menos = '1' then
				
					if s_dias = "000" then
					
						s_dias <= "110";
					
					else
				
						s_dias <= s_dias - 1;
						
					end if;	
				
				end if;
			
			end if;
			
			state_machine	:
			if ajustar = '1' then
			
				PS <= NS;
			
			end if;	
		
		end if;
	end process;
	
	comb_proc	:	process(PS, ajustar)
	begin
	
		case PS is	
	
			when Normal => 
				
				s_normal <= '1';
				s_a_min <= '0';
				s_a_hour <= '0';
				s_a_day <= '0';
				
				NS <= A_Min;
				
			when A_Min =>
			
				s_normal <= '0';
				s_a_min <= '1';
				s_a_hour <= '0';
				s_a_day <= '0';
				
				NS <= A_Hour;		
		
			when A_Hour =>
			
				s_normal <= '0';				
				s_a_min <= '0';
				s_a_hour <= '1';
				s_a_day <= '0';
				
				NS <= A_Days;
			
			when A_Days =>
			
				s_normal <= '0';
				s_a_min <= '0';
				s_a_hour <= '0';
				s_a_day <= '1';
				
				NS <= Normal;
				
			when others =>
		
				NS <= Normal;
				
		end case;		
	
	end process;
	
	en_min <= s_a_min;
	
	en_hour <= s_a_hour;

	en_day <= s_a_day;
	
	days <= std_logic_vector(s_dias) ;
	
	hours <= std_logic_vector(s_horas) ;
	
	minutes <= std_logic_vector(s_minutos); 
	
	out_index <= std_logic_vector(to_unsigned(s_index, 6));
	
end Behavioral;