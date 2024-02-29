library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity Pulse_Gen is

	 port(	clkIn 	: in std_logic;
				acel 		: in std_logic_vector(1 downto 0);
				clkOut 	: out std_logic );
			
end Pulse_Gen;

architecture Behavioral of Pulse_Gen is

	signal s_max	:	unsigned(31 downto 0);
	signal s_count	:	unsigned(31 downto 0);

begin
	
	process(clkIn)
	begin
	
		if rising_edge(clkIn) then
		
			if acel = "01" then	-- x 60 1Hz
			
				s_max <= to_unsigned(50_000_000, 32);
			
			elsif acel = "10" then	-- x 1200 20Hz
			
				s_max <= to_unsigned(2_500_000, 32);
			
			elsif acel = "11" then	-- x 7200 120Hz
			
				s_max <= to_unsigned(416_667, 32);
			
			else		-- x 1
			
				s_max <= to_unsigned(3_000_000_000, 32);
				
			end if;
		
		
			clkOut <= '0';
			
			
			if s_count >= s_max - 1 then
			
				clkOut <= '1';
					
				s_count <= (others => '0');
		
			else
			
				s_count <= s_count + 1;
			
			end if;
			
		end if;
	
	end process;

end Behavioral;