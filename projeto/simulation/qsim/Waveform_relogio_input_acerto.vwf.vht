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
-- Generated on "05/17/2023 16:13:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          relogio
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY relogio_vhd_vec_tst IS
END relogio_vhd_vec_tst;
ARCHITECTURE relogio_arch OF relogio_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dias : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL horas : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL in_acerto_dias : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL in_acerto_horas : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL in_acerto_minutos : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL minutos : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT relogio
	PORT (
	clk : IN STD_LOGIC;
	dias : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enable : IN STD_LOGIC;
	horas : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	in_acerto_dias : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	in_acerto_horas : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	in_acerto_minutos : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	minutos : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : relogio
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dias => dias,
	enable => enable,
	horas => horas,
	in_acerto_dias => in_acerto_dias,
	in_acerto_horas => in_acerto_horas,
	in_acerto_minutos => in_acerto_minutos,
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
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
	WAIT FOR 430000 ps;
	enable <= '0';
	WAIT FOR 150000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
-- in_acerto_dias[2]
t_prcs_in_acerto_dias_2: PROCESS
BEGIN
	in_acerto_dias(2) <= '0';
	WAIT FOR 410000 ps;
	in_acerto_dias(2) <= '1';
	WAIT FOR 170000 ps;
	in_acerto_dias(2) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_dias_2;
-- in_acerto_dias[1]
t_prcs_in_acerto_dias_1: PROCESS
BEGIN
	in_acerto_dias(1) <= '0';
	WAIT FOR 410000 ps;
	in_acerto_dias(1) <= '1';
	WAIT FOR 170000 ps;
	in_acerto_dias(1) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_dias_1;
-- in_acerto_dias[0]
t_prcs_in_acerto_dias_0: PROCESS
BEGIN
	in_acerto_dias(0) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_dias_0;
-- in_acerto_horas[4]
t_prcs_in_acerto_horas_4: PROCESS
BEGIN
	in_acerto_horas(4) <= '0';
	WAIT FOR 450000 ps;
	in_acerto_horas(4) <= '1';
	WAIT FOR 100000 ps;
	in_acerto_horas(4) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_horas_4;
-- in_acerto_horas[3]
t_prcs_in_acerto_horas_3: PROCESS
BEGIN
	in_acerto_horas(3) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_horas_3;
-- in_acerto_horas[2]
t_prcs_in_acerto_horas_2: PROCESS
BEGIN
	in_acerto_horas(2) <= '0';
	WAIT FOR 500000 ps;
	in_acerto_horas(2) <= '1';
	WAIT FOR 50000 ps;
	in_acerto_horas(2) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_horas_2;
-- in_acerto_horas[1]
t_prcs_in_acerto_horas_1: PROCESS
BEGIN
	in_acerto_horas(1) <= '0';
	WAIT FOR 450000 ps;
	in_acerto_horas(1) <= '1';
	WAIT FOR 50000 ps;
	in_acerto_horas(1) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_horas_1;
-- in_acerto_horas[0]
t_prcs_in_acerto_horas_0: PROCESS
BEGIN
	in_acerto_horas(0) <= '0';
	WAIT FOR 450000 ps;
	in_acerto_horas(0) <= '1';
	WAIT FOR 50000 ps;
	in_acerto_horas(0) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_horas_0;
-- in_acerto_minutos[5]
t_prcs_in_acerto_minutos_5: PROCESS
BEGIN
	in_acerto_minutos(5) <= '0';
	WAIT FOR 490000 ps;
	in_acerto_minutos(5) <= '1';
	WAIT FOR 110000 ps;
	in_acerto_minutos(5) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_minutos_5;
-- in_acerto_minutos[4]
t_prcs_in_acerto_minutos_4: PROCESS
BEGIN
	in_acerto_minutos(4) <= '0';
	WAIT FOR 490000 ps;
	in_acerto_minutos(4) <= '1';
	WAIT FOR 110000 ps;
	in_acerto_minutos(4) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_minutos_4;
-- in_acerto_minutos[3]
t_prcs_in_acerto_minutos_3: PROCESS
BEGIN
	in_acerto_minutos(3) <= '0';
	WAIT FOR 490000 ps;
	in_acerto_minutos(3) <= '1';
	WAIT FOR 110000 ps;
	in_acerto_minutos(3) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_minutos_3;
-- in_acerto_minutos[2]
t_prcs_in_acerto_minutos_2: PROCESS
BEGIN
	in_acerto_minutos(2) <= '0';
	WAIT FOR 590000 ps;
	in_acerto_minutos(2) <= '1';
	WAIT FOR 10000 ps;
	in_acerto_minutos(2) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_minutos_2;
-- in_acerto_minutos[1]
t_prcs_in_acerto_minutos_1: PROCESS
BEGIN
	in_acerto_minutos(1) <= '0';
	WAIT FOR 490000 ps;
	in_acerto_minutos(1) <= '1';
	WAIT FOR 100000 ps;
	in_acerto_minutos(1) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_minutos_1;
-- in_acerto_minutos[0]
t_prcs_in_acerto_minutos_0: PROCESS
BEGIN
	in_acerto_minutos(0) <= '0';
	WAIT FOR 540000 ps;
	in_acerto_minutos(0) <= '1';
	WAIT FOR 50000 ps;
	in_acerto_minutos(0) <= '0';
WAIT;
END PROCESS t_prcs_in_acerto_minutos_0;
END relogio_arch;
