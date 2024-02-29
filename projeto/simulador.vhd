library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity simulador is
	port(	clk : in std_logic;
			clk_en : in std_logic;
			out_radiador : in std_logic;
			temperatura : out std_logic_vector(8 downto 0));
	
	
end simulador;

architecture Behavioral of simulador is

	signal s_Tamb : unsigned(8 downto 0) := to_unsigned(200, 9); -- 20ºC
	signal s_fluxo_in : natural := 10; -- usado para definir o número de ciclos de clock necessários para simular o aumento de uma décima de ºC na temperatura 
	signal s_fluxo_out : natural := 5;
	signal s_contador : natural;
	
begin
	count_proc : process(clk)
	begin
	
		if rising_edge(clk) then
			if clk_en = '1' then
			
			if out_radiador = '0' then
				s_contador <= s_contador - 1;
				if (s_contador < 1) then
					s_contador <= s_fluxo_out;
					s_Tamb <= s_Tamb - 1;
				end if;
				
			else
				s_contador <= s_contador + 1;
				if (s_contador > s_fluxo_in - 1) then
					s_contador <= 0;
					s_Tamb <= s_Tamb + 1;
				end if;

			end if;
			
			temperatura <= std_logic_vector(s_Tamb);
			
			end if;
		end if;
	end process;
end Behavioral;
			