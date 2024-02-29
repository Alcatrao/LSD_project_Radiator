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
-- Generated on "05/16/2023 18:55:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          horario
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY horario_vhd_vec_tst IS
END horario_vhd_vec_tst;
ARCHITECTURE horario_arch OF horario_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dias : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL horas : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL minutos : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT horario
	PORT (
	clk : IN STD_LOGIC;
	dias : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enable : IN STD_LOGIC;
	horas : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	minutos : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : horario
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dias => dias,
	enable => enable,
	horas => horas,
	minutos => minutos
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 40000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
END horario_arch;