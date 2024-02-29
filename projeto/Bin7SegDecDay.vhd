library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecDay is
	port(	enable	: in std_logic;
			blink	: in std_logic;
			binInput	: in  std_logic_vector(3 downto 0);
		  decOut_n	: out std_logic_vector(6 downto 0));
end Bin7SegDecDay;

architecture Behavioral of Bin7SegDecDay is	
begin

	process(enable, blink, binInput)
	begin

	if enable = '0' then
	
		decOut_n <= "1111111";	-- off
		
	else
	
		if blink = '1' then
		
			decOut_n <= "0111111";	-- blink
			
		else
		
			if binInput = "0001" then	--2 -- segunda
			
				decOut_n <= "0100100";
				
			elsif binInput = "0010" then	--3 -- terça
			
				decOut_n <= "0110000";
				
			elsif binInput = "0011" then	--4 -- quarta
				
				decOut_n <= "0011001";
				
			elsif binInput = "0100"	then	--5 -- quinta
			
				decOut_n <= "0010010";
				
			elsif binInput = "0101"	then	--6 -- sexta
			
				decOut_n <= "0000010";
			
			elsif binInput = "0110"	then	--b -- sabado
			
				decOut_n <= "0000011";
				
			elsif binInput = "0000"	then	--d -- domingo
			
				decOut_n <= "0100001";	
				
			else
		
				decOut_n <= "1111111";
				
			end if;	
	
		end if;
		
	end if;	
	
	end process;
	
end Behavioral;