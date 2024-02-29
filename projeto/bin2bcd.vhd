library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity bin2bcd is
	port( bin_minutos	: 	in  std_logic_vector(5 downto 0);
			bin_horas :		in	 std_logic_vector(4 downto 0);
			bin_dias :		in std_logic_vector(2 downto 0);
			bin_temperatura : in std_logic_vector(8 downto 0);
			
			bcd_minutos	: 	out std_logic_vector(7 downto 0); -- usa 2 Hex displays e 2 bin7segDisplay
			bcd_horas :		out std_logic_vector(7 downto 0);
			bcd_dias :		out std_logic_vector(3 downto 0);
			bcd_temperatura : out std_logic_vector(11 downto 0));
end bin2bcd;


architecture Behavioral of bin2bcd is

	signal numero_minutos : natural;
	signal m_digito1 : natural;
	signal m_digito2 : natural;
	signal numero_horas : natural;
	signal h_digito1 : natural;
	signal h_digito2 : natural;
	
	signal numero_temperatura : unsigned(8 downto 0);
	signal t_digito1 : unsigned(8 downto 0);
	signal t_digito2 : unsigned(8 downto 0);
	signal t_digito3 : unsigned(8 downto 0);

begin

	-- converter os minutos para bcd
	numero_minutos <= to_integer(unsigned(bin_minutos));
	m_digito1 <= numero_minutos / 10;
	m_digito2 <= numero_minutos REM 10;
	
	bcd_minutos(7 downto 4) <= std_logic_vector(to_unsigned(m_digito1, 4));
	bcd_minutos(3 downto 0) <= std_logic_vector(to_unsigned(m_digito2, 4));
	
	
	
	
	
		-- converter as horas para bcd
	numero_horas <= to_integer(unsigned(bin_horas));
	h_digito1 <= numero_horas / 10;
	h_digito2 <= numero_horas REM 10;
	
	bcd_horas(7 downto 4) <= std_logic_vector(to_unsigned(h_digito1, 4));
	bcd_horas(3 downto 0) <= std_logic_vector(to_unsigned(h_digito2, 4));
	
	
	
	
		-- converter os dias para bcd
	bcd_dias <= '0' & bin_dias;
	
	
	
	 -- converter a temperatura para bcd
	 numero_temperatura <= unsigned(bin_temperatura);
	 t_digito1 <= numero_temperatura / 100;
	 t_digito2 <= (numero_temperatura / 10) REM 10;
	 t_digito3 <= numero_temperatura REM 10;
	 
	 bcd_temperatura(11 downto 8) <= std_logic_vector(t_digito1(3 downto 0));
	 bcd_temperatura(7 downto 4) <= std_logic_vector(t_digito2(3 downto 0));
	 bcd_temperatura(3 downto 0) <= std_logic_vector(t_digito3(3 downto 0));
	
end Behavioral;
		