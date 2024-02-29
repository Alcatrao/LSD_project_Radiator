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
-- Generated on "05/17/2023 22:45:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          simulador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY simulador_vhd_vec_tst IS
END simulador_vhd_vec_tst;
ARCHITECTURE simulador_arch OF simulador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL out_radiador : STD_LOGIC;
SIGNAL temperatura : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT simulador
	PORT (
	clk : IN STD_LOGIC;
	out_radiador : IN STD_LOGIC;
	temperatura : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : simulador
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	out_radiador => out_radiador,
	temperatura => temperatura
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- out_radiador
t_prcs_out_radiador: PROCESS
BEGIN
	out_radiador <= '0';
	WAIT FOR 390000 ps;
	out_radiador <= '1';
	WAIT FOR 250000 ps;
	out_radiador <= '0';
	WAIT FOR 160000 ps;
	out_radiador <= '1';
	WAIT FOR 190000 ps;
	out_radiador <= '0';
WAIT;
END PROCESS t_prcs_out_radiador;
END simulador_arch;
