library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

-- Entidade sem portos 
entity Relogio_SM_TB is 
end Relogio_SM_TB; 

architecture Stimulus of Relogio_SM_TB is 

	-- Sinais para ligar às entradas da UUT 
	signal s_clk_glob		: std_logic;
	signal s_clk_en		: std_logic;
			
	signal s_ajustar		: std_logic;
	signal s_mais			: std_logic;
	signal s_menos			: std_logic;
 
	-- Sinal para ligar às saídas da UUT 
	signal s_out_index : std_logic_vector(5 downto 0);
	signal s_sel		: std_logic;
			
	signal s_en_min	: std_logic;
	signal s_en_hour	: std_logic;
	signal s_en_day	: std_logic;
			
	signal s_days		: std_logic_vector(2 downto 0);
	signal s_hours		: std_logic_vector(4 downto 0);
	signal s_minutes	: std_logic_vector(5 downto 0); 
	
begin 

	-- Instanciação da Unit Under Test (UUT) 
	uut: entity work.Relogio_SM(Behavioral) 
	
	port map(	clk_glob => s_clk_glob,
					clk_en => s_clk_en,
														
					ajustar => s_ajustar,
					mais => s_mais,
					menos => s_menos,
														
					out_index => s_out_index,
					sel => s_sel,
														
					en_day => s_en_day,
					en_hour => s_en_hour,
					en_min => s_en_min,
														
					days => s_days,
					hours => s_hours,
					minutes => s_minutes); 
 
	--Process stim 
	stim_proc : process 
	begin
	
	wait for 10 ns; -- test mode normal
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';

	wait for 10 ns; 
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; -- test mode min
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_ajustar <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_ajustar <= '0';
	s_mais <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_mais <= '0';
	s_menos <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_menos <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; -- test mode hour
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_ajustar <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_ajustar <= '0';
	s_mais <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_mais <= '0';
	s_menos <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_menos <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; -- test mode day
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_ajustar <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_ajustar <= '0';
	s_mais <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_mais <= '0';
	s_menos <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_menos <= '0';
	
	wait for 10 ns; -- return to mode normal
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_ajustar <= '1';
	
	wait for 10 ns; 
	
	s_clk_glob <= '0';
	s_clk_en <= '0';
	
	wait for 10 ns; 
	
	s_clk_glob <= '1';
	s_clk_en <= '1';
	
	s_ajustar <= '0';
 
	end process; 
end Stimulus;