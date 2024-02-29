library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity control_on_off is

	port(	clk		: in  std_logic;
			clk_en	: in	std_logic;
			Tref		: in 	std_logic_vector(8 downto 0); --9 bits para representar uma temperatura entre 0 e 51ºC com 1 casa decimal
			Tamb		: in std_logic_vector(8 downto 0);
			on_off	: out std_logic);
			
end control_on_off;

architecture Behavioral of control_on_off is


	type TState is (t_OFF, t_ON);
	signal s_currentState, s_nextState : TState;
	signal s_histerese : unsigned(8 downto 0) := "000000010"; --0.1 ºC 
	signal s_Tamb : unsigned(8 downto 0);
	signal s_Tref : unsigned(8 downto 0);
	

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
		if clk_en = '1' then
			s_currentState <= s_nextState;
			s_Tamb <= unsigned(Tamb);
			s_Tref <= unsigned(Tref);		--a cada ciclo do clock, atualizar os valores de temperatura recebidos para efeitos de comparação
		end if;
		end if;
	end process;

	comb_proc : process(s_currentState, s_Tref, s_Tamb)
	begin
		case (s_currentState) is
		when t_ON =>
			on_off <= '1';
			if (s_Tamb > s_Tref + s_histerese/2) then
				s_nextState <= t_OFF;
			else
				s_nextState <= t_ON;
			end if;

		when t_OFF =>
			on_off <= '0';
			if (s_Tamb < s_Tref - s_histerese/2) then
				s_nextState <= t_ON;
			else
				s_nextState <= t_OFF;
			end if;
			
		when others => 
			
			s_nextState <= t_OFF;
			
		end case;

	end process;

end Behavioral;
