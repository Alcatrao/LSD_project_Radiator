library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity projeto_radiador is
	--generic (size : positive := 8;
	--		divFactor : positive :=50_000_000);
	
	port(	CLOCK_50 : in std_logic;	--clk
			SW : in std_logic_vector(1 downto 0); -- acel
			KEY : in std_logic_vector(2 downto 0); --S, +, -
			LEDR : out std_logic_vector(0 downto 0);	-- on/off; output radiador
			LEDG : out std_logic_vector(7 downto 0);	-- output sol, lua, gelo
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7  : out std_logic_vector(6 downto 0));	--displays (0 a 4 para tempo; 5 a 7 para temperatura)

end projeto_radiador;


architecture shell of projeto_radiador is

	signal clkGlob : std_logic;
	signal clkTemp : std_logic;
	
	signal s_blink : std_logic;
	signal en_min	: std_logic;
	signal en_hour	: std_logic;
	signal en_day	: std_logic;
	
	signal rom_sel	: std_logic;
	
	signal input_SW	: std_logic_vector(1 downto 0);
	signal input_KEY	: std_logic_vector(2 downto 0);
	
	signal minutos : std_logic_vector(5 downto 0);
	signal horas : std_logic_vector(4 downto 0);
	signal dias : std_logic_vector(2 downto 0);
	
	signal bcd_minutos : std_logic_vector(7 downto 0);
	signal bcd_horas : std_logic_vector(7 downto 0);
	signal bcd_dias : std_logic_vector(3 downto 0);
	signal bcd_temperatura : std_logic_vector(11 downto 0);
	
	signal acerto_minutos : std_logic_vector(5 downto 0);
	signal acerto_horas : std_logic_vector(4 downto 0);
	signal acerto_dias : std_logic_vector(2 downto 0);
	
	
	signal index : std_logic_vector(5 downto 0);
	signal rom_data : std_logic_vector(2 downto 0);
	signal rom_data0 : std_logic_vector(2 downto 0);
	signal rom_data1 : std_logic_vector(2 downto 0);
	
	signal Tref : std_logic_vector(8 downto 0);
	signal Tamb : std_logic_vector(8 downto 0);
	
	signal acerto_enable : std_logic;
	signal on_off_radiador : std_logic;
	
begin
	
		input_reg	:
		
		process(clkGlob)
		begin
		
			if rising_edge(CLOCK_50) then
			
				input_SW <= SW(1 downto 0);		
			
			end if;
		
		end process;
		
		Debounce0:	entity work.DebounceUnit(Behavioral)
		
						port map(	refClk => CLOCK_50,
										dirtyIn => KEY(0),
										pulsedOut => input_KEY(0));
										
		Debounce1:	entity work.DebounceUnit(Behavioral)
		
						port map(	refClk => CLOCK_50,
										dirtyIn => KEY(1),
										pulsedOut => input_KEY(1));
		
		Debounce2:	entity work.DebounceUnit(Behavioral)
		
						port map(	refClk => CLOCK_50,
										dirtyIn => KEY(2),
										pulsedOut => input_KEY(2));	
		
		clock_divider	:
					entity work.ClockDiv(Behavioral)
	
				port map(	clk_in => CLOCK_50,
								freq_out => s_blink);
		
	
		clock : entity work.Pulse_Gen(Behavioral)
		
						 --generic map(divFactor => divFactor)
						 
										port map(clkIn => CLOCK_50,
													acel => input_SW(1 downto 0),
													clkOut => clkTemp);
																					
								
		relogio	: entity work.Relogio_SM(Behavioral)

										port map(	clk_glob => CLOCK_50,
														clk_en => clkTemp,
														
														ajustar => input_KEY(2),
														mais => input_KEY(1),
														menos => input_KEY(0),
														
														out_index => index,
														sel => rom_sel,
														
														en_day => en_day,
														en_hour => en_hour,
														en_min => en_min,
														
														days => dias,
														hours => horas,
														minutes => minutos);													
													
		rom0 : entity work.rom(Behavioral)
		
										port map(address => index, --input
													data => rom_data0);	--output
													
		rom1 : entity work.rom(Structural)
		
										port map(address => index, --input
													data => rom_data1);	--output												
		
		-- mux 2:1 select program
		rom_data <= rom_data0 when (rom_sel = '0') else rom_data1;									
													
													
		mux4_1 : entity work.mux4_1(Behavioral)
										
										port map(sel => rom_data,	--input
													Tref => Tref);	--output
													
													
													
													
		
		control_radiador : entity work.control_on_off(Behavioral)
		
										port map(clk => CLOCK_50,	
													clk_en => clkTemp,
													Tref => Tref,	--input
													Tamb => Tamb, --input
													on_off => on_off_radiador); 
													
													
													
													
													
		simulador : entity work.simulador(Behavioral)
										
										port map(clk => CLOCK_50,
													clk_en => clkTemp,
													out_radiador => on_off_radiador,
													temperatura => Tamb);
													
													
													
													
		bin2bcd_tempo : entity work.bin2bcd(Behavioral)
		
										port map(bin_minutos => minutos, --input
													bin_horas => horas, --input
													bin_dias => dias, --input
													bin_temperatura => Tamb, --input
													
													bcd_minutos => bcd_minutos, --output
													bcd_horas => bcd_horas, --output
													bcd_dias => bcd_dias, --output
													bcd_temperatura => bcd_temperatura); --output
													
											
									
							
							
		bin7segDecoderMinutos1 : entity work.bin7segDecoder(Behav_Time)
		
										port map(enable => en_min,
													blink => s_blink,
													binInput => bcd_minutos(3 downto 0),
													decOut_n => HEX0(6 downto 0));
													
										
													
		bin7segDecoderMinutos2 : entity work.bin7segDecoder(Behav_Time)
		
										port map(enable => en_min,
													blink => s_blink,
													binInput => bcd_minutos(7 downto 4),
													decOut_n => HEX1(6 downto 0));
			
			

		bin7segDecoderHoras1 : entity work.bin7segDecoder(Behav_Time)
		
										port map(enable => en_hour,
													blink => s_blink,
													binInput => bcd_horas(3 downto 0),
													decOut_n => HEX2(6 downto 0));
													
													
													
		bin7segDecoderHoras2 : entity work.bin7segDecoder(Behav_Time)
		
										port map(enable => en_hour,
													blink => s_blink,
													binInput => bcd_horas(7 downto 4),
													decOut_n => HEX3(6 downto 0));
													
													
													
		bin7segDecoderDias : entity work.bin7segDecDay(Behavioral)
		
										port map(enable => en_day,
													blink => s_blink,
													binInput => bcd_dias,
													decOut_n => HEX4(6 downto 0));
													
													
													
		bin7segDecoderTemperatura1 : entity work.bin7segDecoder(Behavioral)
		
										port map(binInput => bcd_temperatura(3 downto 0),
													decOut_n => HEX5(6 downto 0));
													
													
													
		bin7segDecoderTemperatura2 : entity work.bin7segDecoder(Behavioral)
		
										port map(binInput => bcd_temperatura(7 downto 4),
													decOut_n => HEX6(6 downto 0));
													
													
													
		bin7segDecoderTemperatura3 : entity work.bin7segDecoder(Behavioral)
		
										port map(binInput => bcd_temperatura(11 downto 8),
													decOut_n => HEX7(6 downto 0));
		
		LEDR(0) <= on_off_radiador;
		
		LEDG(0) <= rom_data(0);
		
		LEDG(3) <= rom_data(1);
		
		LEDG(6) <= rom_data(2);	
													
end shell;