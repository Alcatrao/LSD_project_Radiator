-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/17/2023 23:39:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Pulse_Clk_N
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Pulse_Clk_N_vhd_vec_tst IS
END Pulse_Clk_N_vhd_vec_tst;
ARCHITECTURE Pulse_Clk_N_arch OF Pulse_Clk_N_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL acel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clkIn : STD_LOGIC;
SIGNAL clkOut : STD_LOGIC;
COMPONENT Pulse_Clk_N
	PORT (
	acel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	clkIn : IN STD_LOGIC;
	clkOut : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Pulse_Clk_N
	PORT MAP (
-- list connections between master ports and signals
	acel => acel,
	clkIn => clkIn,
	clkOut => clkOut
	);

-- clkIn
t_prcs_clkIn: PROCESS
BEGIN
LOOP
	clkIn <= '0';
	WAIT FOR 10000 ps;
	clkIn <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkIn;
-- acel[1]
t_prcs_acel_1: PROCESS
BEGIN
	acel(1) <= '1';
WAIT;
END PROCESS t_prcs_acel_1;
-- acel[0]
t_prcs_acel_0: PROCESS
BEGIN
	acel(0) <= '1';
WAIT;
END PROCESS t_prcs_acel_0;
END Pulse_Clk_N_arch;
