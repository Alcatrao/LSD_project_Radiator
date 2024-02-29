library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

-- Entidade sem portos 
entity simulador_TB is 
end simulador_TB; 

architecture Stimulus of simulador_TB is 

	-- Sinais para ligar às entradas da UUT 
	signal s_clk 				: std_logic;
	signal s_clk_en 			: std_logic;
	signal s_out_radiador 	: std_logic;
 
	-- Sinal para ligar às saídas da UUT 
	signal s_temperatura : std_logic_vector(8 downto 0);
	
begin 

	-- Instanciação da Unit Under Test (UUT) 
	uut: entity work.simulador(Behavioral) 
	
	port map(	clk => s_clk,
					clk_en => s_clk_en,
					out_radiador => s_out_radiador,
					temperatura => s_temperatura); 
 
	--Process stim 
	stim_proc : process 
	begin
	
	wait for 10 ns; -- test on
	
	s_clk <= '1';
	s_clk_en <= '1';
	s_out_radiador <= '1';
	
	wait for 10 ns; 
	
	s_clk <= '0';
	s_clk_en <= '0';

	wait for 10 ns; 
	
	s_clk <= '1';
	s_clk_en <= '1';
	
	wait for 10 ns; 
	
	s_clk <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk <= '1';
	s_clk_en <= '1';
	
	wait for 10 ns; 
	
	s_clk <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk <= '1';
	s_clk_en <= '1';
	
	wait for 10 ns; 
	
	s_clk <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; -- test off
	
	s_clk <= '1';
	s_clk_en <= '1';
	s_out_radiador <= '0';
	
	wait for 10 ns; 
	
	s_clk <= '0';
	s_clk_en <= '0';

	wait for 10 ns; 
	
	s_clk <= '1';
	s_clk_en <= '1';
	
	wait for 10 ns; 
	
	s_clk <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk <= '1';
	s_clk_en <= '1';
	
	wait for 10 ns; 
	
	s_clk <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk <= '1';
	s_clk_en <= '1';
	
	wait for 10 ns; 
	
	s_clk <= '0';
	s_clk_en <= '0';
 
	end process; 
end Stimulus;