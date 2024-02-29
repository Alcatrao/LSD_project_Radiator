library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ClockDiv is

	generic(	N : unsigned := to_unsigned(100_000_000, 32));

	port(	clk_in	: in std_logic;
			freq_out	: out std_logic := '0');

end ClockDiv;

architecture Behavioral of ClockDiv is

	signal count	: unsigned(31 downto 0);
	signal full		: unsigned(31 downto 0) := N;
	signal half		: unsigned(31 downto 0) := (N / 2) - 1;

begin

	process(clk_in)
	begin
	
		if rising_edge(clk_in) then
		
			count <= count + 1;
			
			if count = half then
			
				freq_out <= '1';
			
			end if;
		
			if count >= full then
			
				freq_out <= '0';
				count <= (others => '0');
			
			end if;
			
		end if;
	
	end process;

end Behavioral;