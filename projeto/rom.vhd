library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM is

  port ( address : in std_logic_vector(5 downto 0); 
			--dado pelo relógio, a partir da multiplicação da hora por 2 + (1 se minutos >= 30; 0 se else)
         
			data : out std_logic_vector(2 downto 0) ); 
			--dado ao mux4_1, que a partir do resultado, seleciona a temperatura correta

end entity ROM;

architecture behavioral of ROM is

	signal s_address : natural := 0;
	
	type mem is array ( 0 to 2**6 - 17) of std_logic_vector(2 downto 0);
	
	constant my_Rom : mem := (
	
    0  => "001",		1  => "001",	-- 0h
    2  => "001",		3  => "001",	-- 1h
    4  => "001",		5  => "001",	-- 2h
    6  => "001",		7  => "001",	-- 3h
    8  => "001",		9  => "001",	-- 4h
	 
    10 => "010",		11 => "010",	-- 5h
    12 => "010",		13 => "010",	-- 6h
	 
    14 => "100",		15  => "100",	-- 7h
    16  => "100",    17  => "100",	-- 8h
    18  => "100",    19  => "100",	-- 9h
    20  => "100",    21  => "100",	-- 10h
    22  => "100",    23  => "100",	-- 11h
    24  => "100",		25  => "100",	-- 12h
    26  => "100",    27  => "100",	-- 13h
    28  => "100",    29  => "100",	-- 14h
    30  => "100",    31  => "100",	-- 15h
    32  => "100",    33  => "100",	-- 16h
    34  => "100",		35  => "100",	-- 17h
	 
    36  => "010",    37  => "010",	-- 18h
    38  => "010",    39  => "010",	-- 19h
	 
    40  => "001",    41  => "001",	-- 20h
    42  => "001",    43  => "001",	-- 21h
    44  => "001",		45  => "001",	-- 22h
    46  => "001",    47  => "001");	-- 23h
	 
begin

   process (address, s_address)
   begin
	
		s_address <= to_integer(unsigned(address));
		
		if (s_address >= 0) and (s_address < 48) then
		
			data <= my_rom(s_address);
			
		else
		
			data <= "001";
			
		end if;
		
  end process;
end architecture behavioral;

architecture structural of ROM is

	signal s_address : natural := 0;
	
	type mem is array ( 0 to 2**6 - 17) of std_logic_vector(2 downto 0);
	
	constant my_Rom : mem := (
	
    0  => "001",		1  => "001",	-- 0h
    2  => "001",		3  => "001",	-- 1h
    4  => "001",		5  => "001",	-- 2h
    6  => "001",		7  => "001",	-- 3h
    8  => "001",		9  => "001",	-- 4h
    10 => "001",		11 => "001",	-- 5h
    12 => "001",		13 => "001",	-- 6h

    14 => "001",		15  => "010",	-- 7h
    16  => "010",    17  => "010",	-- 8h
    18  => "010",    19  => "010",	-- 9h

    20  => "100",    21  => "100",	-- 10h
    22  => "100",    23  => "100",	-- 11h
    24  => "100",		25  => "100",	-- 12h
    26  => "100",    27  => "100",	-- 13h
    28  => "100",    29  => "100",	-- 14h
    30  => "100",    31  => "100",	-- 15h
    32  => "100",    33  => "100",	-- 16h
    34  => "100",		35  => "100",	-- 17h
    36  => "100",    37  => "100",	-- 18h
    38  => "100",    39  => "100",	-- 19h
    40  => "100",    41  => "100",	-- 20h

    42  => "010",    43  => "010",	-- 21h
    44  => "010",		45  => "010",	-- 22h
    46  => "010",    47  => "001");	-- 23h
	 
begin

   process (address, s_address)
   begin
	
		s_address <= to_integer(unsigned(address));
		
		if (s_address >= 0) and (s_address < 48) then
		
			data <= my_rom(s_address);
			
		else
		
			data <= "001";
			
		end if;
		
  end process;
end architecture structural;