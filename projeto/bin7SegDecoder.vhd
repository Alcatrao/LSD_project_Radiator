library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(	enable 	: in	std_logic := '1';
			blink 	: in	std_logic := '1';
			binInput	: in  std_logic_vector(3 downto 0);
		  decOut_n	: out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is	
begin
	with binInput select
		decOut_n <= "1111001" when "0001",	--1
						"0100100" when "0010",	--2
						"0110000" when "0011",	--3
						"0011001" when "0100",	--4
						"0010010" when "0101",	--5
						"0000010" when "0110",	--6
						"1111000" when "0111",	--7
						"0000000" when "1000",	--8
						"0010000" when "1001",	--9
						"1000000" when others;	--0
end Behavioral;

architecture Behav_Time of Bin7SegDecoder is
begin

	process(enable, binInput)
	begin
	
		if enable = '1' then
			
			if blink = '0' then
			
				decOut_n <= "0111111";	-- [-]
				
			else
		
				if binInput = "0001" then 	-- 1
		
					decOut_n <= "1111001";
			
				elsif	binInput = "0010" then	-- 2
		
					decOut_n <= "0100100";
			
				elsif	binInput = "0011" then	-- 3	
		
					decOut_n <= "0110000";
		
				elsif	binInput = "0100" then	-- 4
		
					decOut_n <= "0011001";
			
				elsif	binInput = "0101" then	-- 5
		
					decOut_n <= "0010010";
		
				elsif	binInput = "0110" then	-- 6
		
					decOut_n <= "0000010";
		
				elsif	binInput = "0111" then	-- 7
		
					decOut_n <= "1111000";
			
				elsif	binInput = "1000" then	-- 8
		
					decOut_n <= "0000000";
		
				elsif	binInput = "1001" then	-- 9
		
					decOut_n <= "0010000";	
		
				else	-- 0
			
					decOut_n <= "1000000";
			
				end if;
			
			end if;
			
		else	
		
		if binInput = "0001" then 	-- 1
		
			decOut_n <= "1111001";
			
		elsif	binInput = "0010" then	-- 2
		
			decOut_n <= "0100100";
			
		elsif	binInput = "0011" then	-- 3	
		
			decOut_n <= "0110000";
		
		elsif	binInput = "0100" then	-- 4
		
			decOut_n <= "0011001";
			
		elsif	binInput = "0101" then	-- 5
		
			decOut_n <= "0010010";
		
		elsif	binInput = "0110" then	-- 6
		
			decOut_n <= "0000010";
		
		elsif	binInput = "0111" then	-- 7
		
			decOut_n <= "1111000";
			
		elsif	binInput = "1000" then	-- 8
		
			decOut_n <= "0000000";
		
		elsif	binInput = "1001" then	-- 9
		
			decOut_n <= "0010000";	
		
		else	-- 0
		
			decOut_n <= "1000000";
			
		end if;
			
		end if;
	
	end process;

end Behav_Time;