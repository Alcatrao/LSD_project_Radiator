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
-- Generated on "05/17/2023 16:43:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          control_on_off
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY control_on_off_vhd_vec_tst IS
END control_on_off_vhd_vec_tst;
ARCHITECTURE control_on_off_arch OF control_on_off_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL on_off : STD_LOGIC;
SIGNAL Tamb : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Tref : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT control_on_off
	PORT (
	clk : IN STD_LOGIC;
	on_off : OUT STD_LOGIC;
	Tamb : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	Tref : IN STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : control_on_off
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	on_off => on_off,
	Tamb => Tamb,
	Tref => Tref
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- Tamb[8]
t_prcs_Tamb_8: PROCESS
BEGIN
	Tamb(8) <= '0';
WAIT;
END PROCESS t_prcs_Tamb_8;
-- Tamb[7]
t_prcs_Tamb_7: PROCESS
BEGIN
	Tamb(7) <= '1';
WAIT;
END PROCESS t_prcs_Tamb_7;
-- Tamb[6]
t_prcs_Tamb_6: PROCESS
BEGIN
	Tamb(6) <= '0';
	WAIT FOR 750000 ps;
	Tamb(6) <= '1';
WAIT;
END PROCESS t_prcs_Tamb_6;
-- Tamb[5]
t_prcs_Tamb_5: PROCESS
BEGIN
	Tamb(5) <= '0';
	WAIT FOR 150000 ps;
	Tamb(5) <= '1';
	WAIT FOR 600000 ps;
	Tamb(5) <= '0';
WAIT;
END PROCESS t_prcs_Tamb_5;
-- Tamb[4]
t_prcs_Tamb_4: PROCESS
BEGIN
	Tamb(4) <= '1';
	WAIT FOR 150000 ps;
	Tamb(4) <= '0';
	WAIT FOR 300000 ps;
	Tamb(4) <= '1';
	WAIT FOR 300000 ps;
	Tamb(4) <= '0';
	WAIT FOR 150000 ps;
	Tamb(4) <= '1';
WAIT;
END PROCESS t_prcs_Tamb_4;
-- Tamb[3]
t_prcs_Tamb_3: PROCESS
BEGIN
	Tamb(3) <= '0';
	WAIT FOR 300000 ps;
	Tamb(3) <= '1';
	WAIT FOR 150000 ps;
	Tamb(3) <= '0';
	WAIT FOR 150000 ps;
	Tamb(3) <= '1';
	WAIT FOR 300000 ps;
	Tamb(3) <= '0';
WAIT;
END PROCESS t_prcs_Tamb_3;
-- Tamb[2]
t_prcs_Tamb_2: PROCESS
BEGIN
	Tamb(2) <= '1';
	WAIT FOR 150000 ps;
	Tamb(2) <= '0';
	WAIT FOR 300000 ps;
	Tamb(2) <= '1';
	WAIT FOR 300000 ps;
	Tamb(2) <= '0';
WAIT;
END PROCESS t_prcs_Tamb_2;
-- Tamb[1]
t_prcs_Tamb_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Tamb(1) <= '1';
		WAIT FOR 150000 ps;
		Tamb(1) <= '0';
		WAIT FOR 150000 ps;
	END LOOP;
	Tamb(1) <= '1';
WAIT;
END PROCESS t_prcs_Tamb_1;
-- Tamb[0]
t_prcs_Tamb_0: PROCESS
BEGIN
	Tamb(0) <= '0';
WAIT;
END PROCESS t_prcs_Tamb_0;
-- Tref[8]
t_prcs_Tref_8: PROCESS
BEGIN
	Tref(8) <= '0';
WAIT;
END PROCESS t_prcs_Tref_8;
-- Tref[7]
t_prcs_Tref_7: PROCESS
BEGIN
	Tref(7) <= '1';
WAIT;
END PROCESS t_prcs_Tref_7;
-- Tref[6]
t_prcs_Tref_6: PROCESS
BEGIN
	Tref(6) <= '0';
WAIT;
END PROCESS t_prcs_Tref_6;
-- Tref[5]
t_prcs_Tref_5: PROCESS
BEGIN
	Tref(5) <= '1';
WAIT;
END PROCESS t_prcs_Tref_5;
-- Tref[4]
t_prcs_Tref_4: PROCESS
BEGIN
	Tref(4) <= '0';
WAIT;
END PROCESS t_prcs_Tref_4;
-- Tref[3]
t_prcs_Tref_3: PROCESS
BEGIN
	Tref(3) <= '1';
WAIT;
END PROCESS t_prcs_Tref_3;
-- Tref[2]
t_prcs_Tref_2: PROCESS
BEGIN
	Tref(2) <= '0';
WAIT;
END PROCESS t_prcs_Tref_2;
-- Tref[1]
t_prcs_Tref_1: PROCESS
BEGIN
	Tref(1) <= '1';
WAIT;
END PROCESS t_prcs_Tref_1;
-- Tref[0]
t_prcs_Tref_0: PROCESS
BEGIN
	Tref(0) <= '0';
WAIT;
END PROCESS t_prcs_Tref_0;
END control_on_off_arch;
