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
-- Generated on "05/18/2023 03:25:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bin2bcd
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bin2bcd_vhd_vec_tst IS
END bin2bcd_vhd_vec_tst;
ARCHITECTURE bin2bcd_arch OF bin2bcd_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bcd_dias : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL bcd_horas : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL bcd_minutos : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL bin_dias : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL bin_horas : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL bin_minutos : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT bin2bcd
	PORT (
	bcd_dias : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	bcd_horas : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	bcd_minutos : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	bin_dias : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	bin_horas : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	bin_minutos : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bin2bcd
	PORT MAP (
-- list connections between master ports and signals
	bcd_dias => bcd_dias,
	bcd_horas => bcd_horas,
	bcd_minutos => bcd_minutos,
	bin_dias => bin_dias,
	bin_horas => bin_horas,
	bin_minutos => bin_minutos
	);
-- bin_minutos[5]
t_prcs_bin_minutos_5: PROCESS
BEGIN
	bin_minutos(5) <= '0';
	WAIT FOR 40000 ps;
	bin_minutos(5) <= '1';
	WAIT FOR 640000 ps;
	bin_minutos(5) <= '0';
WAIT;
END PROCESS t_prcs_bin_minutos_5;
-- bin_minutos[4]
t_prcs_bin_minutos_4: PROCESS
BEGIN
	bin_minutos(4) <= '1';
	WAIT FOR 40000 ps;
	bin_minutos(4) <= '0';
	WAIT FOR 320000 ps;
	bin_minutos(4) <= '1';
	WAIT FOR 320000 ps;
	bin_minutos(4) <= '0';
WAIT;
END PROCESS t_prcs_bin_minutos_4;
-- bin_minutos[3]
t_prcs_bin_minutos_3: PROCESS
BEGIN
	bin_minutos(3) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 3
	LOOP
		bin_minutos(3) <= '0';
		WAIT FOR 160000 ps;
		bin_minutos(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_bin_minutos_3;
-- bin_minutos[2]
t_prcs_bin_minutos_2: PROCESS
BEGIN
	bin_minutos(2) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 6
	LOOP
		bin_minutos(2) <= '0';
		WAIT FOR 80000 ps;
		bin_minutos(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_bin_minutos_2;
-- bin_minutos[1]
t_prcs_bin_minutos_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		bin_minutos(1) <= '1';
		WAIT FOR 40000 ps;
		bin_minutos(1) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	bin_minutos(1) <= '1';
WAIT;
END PROCESS t_prcs_bin_minutos_1;
-- bin_minutos[0]
t_prcs_bin_minutos_0: PROCESS
BEGIN
LOOP
	bin_minutos(0) <= '0';
	WAIT FOR 20000 ps;
	bin_minutos(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_bin_minutos_0;
-- bin_horas[4]
t_prcs_bin_horas_4: PROCESS
BEGIN
	bin_horas(4) <= '0';
	WAIT FOR 624000 ps;
	bin_horas(4) <= '1';
WAIT;
END PROCESS t_prcs_bin_horas_4;
-- bin_horas[3]
t_prcs_bin_horas_3: PROCESS
BEGIN
	bin_horas(3) <= '0';
	WAIT FOR 312000 ps;
	bin_horas(3) <= '1';
	WAIT FOR 312000 ps;
	bin_horas(3) <= '0';
	WAIT FOR 312000 ps;
	bin_horas(3) <= '1';
WAIT;
END PROCESS t_prcs_bin_horas_3;
-- bin_horas[2]
t_prcs_bin_horas_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		bin_horas(2) <= '0';
		WAIT FOR 156000 ps;
		bin_horas(2) <= '1';
		WAIT FOR 156000 ps;
	END LOOP;
	bin_horas(2) <= '0';
WAIT;
END PROCESS t_prcs_bin_horas_2;
-- bin_horas[1]
t_prcs_bin_horas_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		bin_horas(1) <= '0';
		WAIT FOR 78000 ps;
		bin_horas(1) <= '1';
		WAIT FOR 78000 ps;
	END LOOP;
	bin_horas(1) <= '0';
WAIT;
END PROCESS t_prcs_bin_horas_1;
-- bin_horas[0]
t_prcs_bin_horas_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		bin_horas(0) <= '0';
		WAIT FOR 39000 ps;
		bin_horas(0) <= '1';
		WAIT FOR 39000 ps;
	END LOOP;
	bin_horas(0) <= '0';
	WAIT FOR 39000 ps;
	bin_horas(0) <= '1';
WAIT;
END PROCESS t_prcs_bin_horas_0;
-- bin_dias[2]
t_prcs_bin_dias_2: PROCESS
BEGIN
	bin_dias(2) <= '0';
	WAIT FOR 360000 ps;
	bin_dias(2) <= '1';
	WAIT FOR 360000 ps;
	bin_dias(2) <= '0';
WAIT;
END PROCESS t_prcs_bin_dias_2;
-- bin_dias[1]
t_prcs_bin_dias_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		bin_dias(1) <= '0';
		WAIT FOR 180000 ps;
		bin_dias(1) <= '1';
		WAIT FOR 180000 ps;
	END LOOP;
	bin_dias(1) <= '0';
	WAIT FOR 180000 ps;
	bin_dias(1) <= '1';
WAIT;
END PROCESS t_prcs_bin_dias_1;
-- bin_dias[0]
t_prcs_bin_dias_0: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		bin_dias(0) <= '0';
		WAIT FOR 90000 ps;
		bin_dias(0) <= '1';
		WAIT FOR 90000 ps;
	END LOOP;
	bin_dias(0) <= '0';
	WAIT FOR 90000 ps;
	bin_dias(0) <= '1';
WAIT;
END PROCESS t_prcs_bin_dias_0;
END bin2bcd_arch;
