library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Mux4_1 is
	port(sel : in std_logic_vector(2 downto 0);
		  Tref : out std_logic_vector(8 downto 0));
end Mux4_1;

architecture Behavioral of Mux4_1 is
begin
	
	process(sel)
	begin
	
		case sel is
		
			when "100" =>		
				--Tref <= "011001000";	--escolher Tsol = 20.0ºC (representado aqui por 200 em binário)
				Tref <= std_logic_vector(to_unsigned(200, 9));
			
			when "010" =>
				--Tref <= "010100000";	--escolher Tlua = 16.0ºC (representado aqui por 160 em binário)
				Tref <= std_logic_vector(to_unsigned(160, 9));
			
			when "001" =>
				--Tref <= "000101000";	--escolher Tgelo = 4.0ºC (representado aqui por 40 em binário)
				Tref <= std_logic_vector(to_unsigned(40, 9));
	
			when others =>
				Tref <= "011001000"; --caso algo estranho ocorra, fazer default para Tsol	
	
	end case;
		
	end process;
end Behavioral;