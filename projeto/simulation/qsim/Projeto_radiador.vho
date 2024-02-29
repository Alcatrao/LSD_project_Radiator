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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/18/2023 03:25:46"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bin2bcd IS
    PORT (
	bin_minutos : IN std_logic_vector(5 DOWNTO 0);
	bin_horas : IN std_logic_vector(4 DOWNTO 0);
	bin_dias : IN std_logic_vector(2 DOWNTO 0);
	bcd_minutos : OUT std_logic_vector(7 DOWNTO 0);
	bcd_horas : OUT std_logic_vector(7 DOWNTO 0);
	bcd_dias : OUT std_logic_vector(3 DOWNTO 0)
	);
END bin2bcd;

ARCHITECTURE structure OF bin2bcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bin_minutos : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_bin_horas : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_bin_dias : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_bcd_minutos : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bcd_horas : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bcd_dias : std_logic_vector(3 DOWNTO 0);
SIGNAL \bcd_minutos[0]~output_o\ : std_logic;
SIGNAL \bcd_minutos[1]~output_o\ : std_logic;
SIGNAL \bcd_minutos[2]~output_o\ : std_logic;
SIGNAL \bcd_minutos[3]~output_o\ : std_logic;
SIGNAL \bcd_minutos[4]~output_o\ : std_logic;
SIGNAL \bcd_minutos[5]~output_o\ : std_logic;
SIGNAL \bcd_minutos[6]~output_o\ : std_logic;
SIGNAL \bcd_minutos[7]~output_o\ : std_logic;
SIGNAL \bcd_horas[0]~output_o\ : std_logic;
SIGNAL \bcd_horas[1]~output_o\ : std_logic;
SIGNAL \bcd_horas[2]~output_o\ : std_logic;
SIGNAL \bcd_horas[3]~output_o\ : std_logic;
SIGNAL \bcd_horas[4]~output_o\ : std_logic;
SIGNAL \bcd_horas[5]~output_o\ : std_logic;
SIGNAL \bcd_horas[6]~output_o\ : std_logic;
SIGNAL \bcd_horas[7]~output_o\ : std_logic;
SIGNAL \bcd_dias[0]~output_o\ : std_logic;
SIGNAL \bcd_dias[1]~output_o\ : std_logic;
SIGNAL \bcd_dias[2]~output_o\ : std_logic;
SIGNAL \bcd_dias[3]~output_o\ : std_logic;
SIGNAL \bin_minutos[0]~input_o\ : std_logic;
SIGNAL \bin_minutos[1]~input_o\ : std_logic;
SIGNAL \bin_minutos[5]~input_o\ : std_logic;
SIGNAL \bin_minutos[4]~input_o\ : std_logic;
SIGNAL \bin_minutos[3]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[875]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[874]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[873]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[872]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[871]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[871]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[870]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[870]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[869]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_20~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[869]~41_combout\ : std_logic;
SIGNAL \bin_minutos[2]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[868]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[868]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[899]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[899]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[908]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[908]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[907]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[907]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[906]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[906]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[905]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[905]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[904]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[904]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[903]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[903]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[902]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[902]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[901]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[901]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[900]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_21~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[900]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~11_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~13_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~15_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~17_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~19_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~21_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[931]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[932]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_23~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[933]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[143]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[143]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin_horas[0]~input_o\ : std_logic;
SIGNAL \bin_horas[1]~input_o\ : std_logic;
SIGNAL \bin_horas[4]~input_o\ : std_logic;
SIGNAL \bin_horas[3]~input_o\ : std_logic;
SIGNAL \bin_horas[2]~input_o\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~13\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[899]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[899]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[906]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[905]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[904]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[903]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[902]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[902]~7_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[901]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[901]~9_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[900]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_21~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[900]~11_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~11_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~13_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~15_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~17_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~18_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[931]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[932]~13_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_23~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[933]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[148]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[148]~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[147]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[147]~3_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[146]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[146]~5_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[145]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[145]~7_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin_dias[0]~input_o\ : std_logic;
SIGNAL \bin_dias[1]~input_o\ : std_logic;
SIGNAL \bin_dias[2]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_30_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_29_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_30_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_29_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_28_result_int[5]~8_combout\ : std_logic;

BEGIN

ww_bin_minutos <= bin_minutos;
ww_bin_horas <= bin_horas;
ww_bin_dias <= bin_dias;
bcd_minutos <= ww_bcd_minutos;
bcd_horas <= ww_bcd_horas;
bcd_dias <= ww_bcd_dias;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_30_result_int[5]~8_combout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_29_result_int[5]~8_combout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_30_result_int[5]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_29_result_int[5]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_28_result_int[5]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\;

\bcd_minutos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_minutos[0]~input_o\,
	devoe => ww_devoe,
	o => \bcd_minutos[0]~output_o\);

\bcd_minutos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod0|auto_generated|divider|divider|StageOut[931]~57_combout\,
	devoe => ww_devoe,
	o => \bcd_minutos[1]~output_o\);

\bcd_minutos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod0|auto_generated|divider|divider|StageOut[932]~58_combout\,
	devoe => ww_devoe,
	o => \bcd_minutos[2]~output_o\);

\bcd_minutos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod0|auto_generated|divider|divider|StageOut[933]~59_combout\,
	devoe => ww_devoe,
	o => \bcd_minutos[3]~output_o\);

\bcd_minutos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_30_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \bcd_minutos[4]~output_o\);

\bcd_minutos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_29_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \bcd_minutos[5]~output_o\);

\bcd_minutos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_28_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \bcd_minutos[6]~output_o\);

\bcd_minutos[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_minutos[7]~output_o\);

\bcd_horas[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_horas[0]~input_o\,
	devoe => ww_devoe,
	o => \bcd_horas[0]~output_o\);

\bcd_horas[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod1|auto_generated|divider|divider|StageOut[931]~12_combout\,
	devoe => ww_devoe,
	o => \bcd_horas[1]~output_o\);

\bcd_horas[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod1|auto_generated|divider|divider|StageOut[932]~13_combout\,
	devoe => ww_devoe,
	o => \bcd_horas[2]~output_o\);

\bcd_horas[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod1|auto_generated|divider|divider|StageOut[933]~14_combout\,
	devoe => ww_devoe,
	o => \bcd_horas[3]~output_o\);

\bcd_horas[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_30_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \bcd_horas[4]~output_o\);

\bcd_horas[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_29_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \bcd_horas[5]~output_o\);

\bcd_horas[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_horas[6]~output_o\);

\bcd_horas[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_horas[7]~output_o\);

\bcd_dias[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_dias[0]~input_o\,
	devoe => ww_devoe,
	o => \bcd_dias[0]~output_o\);

\bcd_dias[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_dias[1]~input_o\,
	devoe => ww_devoe,
	o => \bcd_dias[1]~output_o\);

\bcd_dias[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_dias[2]~input_o\,
	devoe => ww_devoe,
	o => \bcd_dias[2]~output_o\);

\bcd_dias[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd_dias[3]~output_o\);

\bin_minutos[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_minutos(0),
	o => \bin_minutos[0]~input_o\);

\bin_minutos[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_minutos(1),
	o => \bin_minutos[1]~input_o\);

\bin_minutos[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_minutos(5),
	o => \bin_minutos[5]~input_o\);

\bin_minutos[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_minutos(4),
	o => \bin_minutos[4]~input_o\);

\bin_minutos[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_minutos(3),
	o => \bin_minutos[3]~input_o\);

\Mod0|auto_generated|divider|divider|op_20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_20~0_combout\ = \bin_minutos[3]~input_o\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|op_20~1\ = CARRY(\bin_minutos[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[3]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_20~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_20~1\);

\Mod0|auto_generated|divider|divider|op_20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_20~2_combout\ = (\bin_minutos[4]~input_o\ & (\Mod0|auto_generated|divider|divider|op_20~1\ & VCC)) # (!\bin_minutos[4]~input_o\ & (!\Mod0|auto_generated|divider|divider|op_20~1\))
-- \Mod0|auto_generated|divider|divider|op_20~3\ = CARRY((!\bin_minutos[4]~input_o\ & !\Mod0|auto_generated|divider|divider|op_20~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[4]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_20~1\,
	combout => \Mod0|auto_generated|divider|divider|op_20~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_20~3\);

\Mod0|auto_generated|divider|divider|op_20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_20~4_combout\ = (\bin_minutos[5]~input_o\ & (\Mod0|auto_generated|divider|divider|op_20~3\ $ (GND))) # (!\bin_minutos[5]~input_o\ & (!\Mod0|auto_generated|divider|divider|op_20~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|op_20~5\ = CARRY((\bin_minutos[5]~input_o\ & !\Mod0|auto_generated|divider|divider|op_20~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[5]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_20~3\,
	combout => \Mod0|auto_generated|divider|divider|op_20~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_20~5\);

\Mod0|auto_generated|divider|divider|op_20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_20~6_combout\ = !\Mod0|auto_generated|divider|divider|op_20~5\
-- \Mod0|auto_generated|divider|divider|op_20~7\ = CARRY(!\Mod0|auto_generated|divider|divider|op_20~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_20~5\,
	combout => \Mod0|auto_generated|divider|divider|op_20~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_20~7\);

\Mod0|auto_generated|divider|divider|op_20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_20~8_combout\ = \Mod0|auto_generated|divider|divider|op_20~7\ $ (GND)
-- \Mod0|auto_generated|divider|divider|op_20~9\ = CARRY(!\Mod0|auto_generated|divider|divider|op_20~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_20~7\,
	combout => \Mod0|auto_generated|divider|divider|op_20~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_20~9\);

\Mod0|auto_generated|divider|divider|op_20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_20~10_combout\ = !\Mod0|auto_generated|divider|divider|op_20~9\
-- \Mod0|auto_generated|divider|divider|op_20~11\ = CARRY(!\Mod0|auto_generated|divider|divider|op_20~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_20~9\,
	combout => \Mod0|auto_generated|divider|divider|op_20~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_20~11\);

\Mod0|auto_generated|divider|divider|op_20~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_20~12_combout\ = \Mod0|auto_generated|divider|divider|op_20~11\ $ (GND)
-- \Mod0|auto_generated|divider|divider|op_20~13\ = CARRY(!\Mod0|auto_generated|divider|divider|op_20~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_20~11\,
	combout => \Mod0|auto_generated|divider|divider|op_20~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_20~13\);

\Mod0|auto_generated|divider|divider|op_20~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_20~14_combout\ = !\Mod0|auto_generated|divider|divider|op_20~13\
-- \Mod0|auto_generated|divider|divider|op_20~15\ = CARRY(!\Mod0|auto_generated|divider|divider|op_20~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_20~13\,
	combout => \Mod0|auto_generated|divider|divider|op_20~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_20~15\);

\Mod0|auto_generated|divider|divider|op_20~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_20~16_combout\ = \Mod0|auto_generated|divider|divider|op_20~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_20~15\,
	combout => \Mod0|auto_generated|divider|divider|op_20~16_combout\);

\Mod0|auto_generated|divider|divider|StageOut[875]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[875]~32_combout\ = (\Mod0|auto_generated|divider|divider|op_20~12_combout\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[875]~32_combout\);

\Mod0|auto_generated|divider|divider|StageOut[874]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[874]~33_combout\ = (\Mod0|auto_generated|divider|divider|op_20~10_combout\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[874]~33_combout\);

\Mod0|auto_generated|divider|divider|StageOut[873]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[873]~34_combout\ = (\Mod0|auto_generated|divider|divider|op_20~8_combout\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[873]~34_combout\);

\Mod0|auto_generated|divider|divider|StageOut[872]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[872]~35_combout\ = (\Mod0|auto_generated|divider|divider|op_20~6_combout\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[872]~35_combout\);

\Mod0|auto_generated|divider|divider|StageOut[871]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[871]~36_combout\ = (\bin_minutos[5]~input_o\ & \Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[5]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[871]~36_combout\);

\Mod0|auto_generated|divider|divider|StageOut[871]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[871]~37_combout\ = (\Mod0|auto_generated|divider|divider|op_20~4_combout\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[871]~37_combout\);

\Mod0|auto_generated|divider|divider|StageOut[870]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[870]~38_combout\ = (\bin_minutos[4]~input_o\ & \Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[4]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[870]~38_combout\);

\Mod0|auto_generated|divider|divider|StageOut[870]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[870]~39_combout\ = (\Mod0|auto_generated|divider|divider|op_20~2_combout\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[870]~39_combout\);

\Mod0|auto_generated|divider|divider|StageOut[869]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[869]~40_combout\ = (\bin_minutos[3]~input_o\ & \Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[3]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[869]~40_combout\);

\Mod0|auto_generated|divider|divider|StageOut[869]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[869]~41_combout\ = (\Mod0|auto_generated|divider|divider|op_20~0_combout\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[869]~41_combout\);

\bin_minutos[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_minutos(2),
	o => \bin_minutos[2]~input_o\);

\Mod0|auto_generated|divider|divider|StageOut[868]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[868]~42_combout\ = (\Mod0|auto_generated|divider|divider|op_20~16_combout\ & \bin_minutos[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	datab => \bin_minutos[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[868]~42_combout\);

\Mod0|auto_generated|divider|divider|StageOut[868]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[868]~43_combout\ = (\bin_minutos[2]~input_o\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[2]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[868]~43_combout\);

\Mod0|auto_generated|divider|divider|op_21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_21~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[868]~42_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[868]~43_combout\)))
-- \Mod0|auto_generated|divider|divider|op_21~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[868]~42_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[868]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[868]~42_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[868]~43_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_21~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_21~1\);

\Mod0|auto_generated|divider|divider|op_21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_21~2_combout\ = (\Mod0|auto_generated|divider|divider|op_21~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[869]~40_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[869]~41_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_21~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[869]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[869]~41_combout\)))
-- \Mod0|auto_generated|divider|divider|op_21~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[869]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[869]~41_combout\ & !\Mod0|auto_generated|divider|divider|op_21~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[869]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[869]~41_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_21~1\,
	combout => \Mod0|auto_generated|divider|divider|op_21~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_21~3\);

\Mod0|auto_generated|divider|divider|op_21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_21~4_combout\ = (\Mod0|auto_generated|divider|divider|op_21~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[870]~38_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[870]~39_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_21~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[870]~38_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[870]~39_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_21~5\ = CARRY((!\Mod0|auto_generated|divider|divider|op_21~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[870]~38_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[870]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[870]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[870]~39_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_21~3\,
	combout => \Mod0|auto_generated|divider|divider|op_21~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_21~5\);

\Mod0|auto_generated|divider|divider|op_21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_21~6_combout\ = (\Mod0|auto_generated|divider|divider|op_21~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[871]~36_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[871]~37_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_21~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[871]~36_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[871]~37_combout\)))
-- \Mod0|auto_generated|divider|divider|op_21~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[871]~36_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[871]~37_combout\ & !\Mod0|auto_generated|divider|divider|op_21~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[871]~36_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[871]~37_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_21~5\,
	combout => \Mod0|auto_generated|divider|divider|op_21~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_21~7\);

\Mod0|auto_generated|divider|divider|op_21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_21~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[872]~35_combout\ & ((GND) # (!\Mod0|auto_generated|divider|divider|op_21~7\))) # (!\Mod0|auto_generated|divider|divider|StageOut[872]~35_combout\ & 
-- (\Mod0|auto_generated|divider|divider|op_21~7\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|op_21~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[872]~35_combout\) # (!\Mod0|auto_generated|divider|divider|op_21~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[872]~35_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_21~7\,
	combout => \Mod0|auto_generated|divider|divider|op_21~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_21~9\);

\Mod0|auto_generated|divider|divider|op_21~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_21~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[873]~34_combout\ & (\Mod0|auto_generated|divider|divider|op_21~9\ & VCC)) # (!\Mod0|auto_generated|divider|divider|StageOut[873]~34_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|op_21~9\))
-- \Mod0|auto_generated|divider|divider|op_21~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[873]~34_combout\ & !\Mod0|auto_generated|divider|divider|op_21~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[873]~34_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_21~9\,
	combout => \Mod0|auto_generated|divider|divider|op_21~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_21~11\);

\Mod0|auto_generated|divider|divider|op_21~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_21~12_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[874]~33_combout\ & ((GND) # (!\Mod0|auto_generated|divider|divider|op_21~11\))) # (!\Mod0|auto_generated|divider|divider|StageOut[874]~33_combout\ & 
-- (\Mod0|auto_generated|divider|divider|op_21~11\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|op_21~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[874]~33_combout\) # (!\Mod0|auto_generated|divider|divider|op_21~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[874]~33_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_21~11\,
	combout => \Mod0|auto_generated|divider|divider|op_21~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_21~13\);

\Mod0|auto_generated|divider|divider|op_21~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_21~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[875]~32_combout\ & (\Mod0|auto_generated|divider|divider|op_21~13\ & VCC)) # (!\Mod0|auto_generated|divider|divider|StageOut[875]~32_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|op_21~13\))
-- \Mod0|auto_generated|divider|divider|op_21~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[875]~32_combout\ & !\Mod0|auto_generated|divider|divider|op_21~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[875]~32_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_21~13\,
	combout => \Mod0|auto_generated|divider|divider|op_21~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_21~15\);

\Mod0|auto_generated|divider|divider|op_21~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_21~16_combout\ = (\Mod0|auto_generated|divider|divider|op_21~15\ & ((((\Mod0|auto_generated|divider|divider|op_20~14_combout\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|op_21~15\ & (((\Mod0|auto_generated|divider|divider|op_20~14_combout\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|op_21~17\ = CARRY(((\Mod0|auto_generated|divider|divider|op_20~14_combout\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\)) # (!\Mod0|auto_generated|divider|divider|op_21~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_21~15\,
	combout => \Mod0|auto_generated|divider|divider|op_21~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_21~17\);

\Mod0|auto_generated|divider|divider|op_21~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_21~18_combout\ = !\Mod0|auto_generated|divider|divider|op_21~17\
-- \Mod0|auto_generated|divider|divider|op_21~19\ = CARRY(!\Mod0|auto_generated|divider|divider|op_21~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_21~17\,
	combout => \Mod0|auto_generated|divider|divider|op_21~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_21~19\);

\Mod0|auto_generated|divider|divider|op_21~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_21~20_combout\ = \Mod0|auto_generated|divider|divider|op_21~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_21~19\,
	combout => \Mod0|auto_generated|divider|divider|op_21~20_combout\);

\Mod0|auto_generated|divider|divider|StageOut[899]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[899]~44_combout\ = (\bin_minutos[1]~input_o\ & \Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[1]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[899]~44_combout\);

\Mod0|auto_generated|divider|divider|StageOut[899]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[899]~45_combout\ = (\bin_minutos[1]~input_o\ & !\Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[1]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[899]~45_combout\);

\Mod0|auto_generated|divider|divider|op_23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[899]~44_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[899]~45_combout\)))
-- \Mod0|auto_generated|divider|divider|op_23~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[899]~44_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[899]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[899]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[899]~45_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_23~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_23~1\);

\Mod0|auto_generated|divider|divider|StageOut[908]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[908]~46_combout\ = (\Mod0|auto_generated|divider|divider|op_20~14_combout\ & (\Mod0|auto_generated|divider|divider|op_21~20_combout\ & !\Mod0|auto_generated|divider|divider|op_20~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[908]~46_combout\);

\Mod0|auto_generated|divider|divider|StageOut[908]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[908]~47_combout\ = (\Mod0|auto_generated|divider|divider|op_21~16_combout\ & !\Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_21~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[908]~47_combout\);

\Mod0|auto_generated|divider|divider|StageOut[907]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[907]~60_combout\ = (\Mod0|auto_generated|divider|divider|op_20~12_combout\ & (!\Mod0|auto_generated|divider|divider|op_20~16_combout\ & \Mod0|auto_generated|divider|divider|op_21~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[907]~60_combout\);

\Mod0|auto_generated|divider|divider|StageOut[907]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[907]~48_combout\ = (\Mod0|auto_generated|divider|divider|op_21~14_combout\ & !\Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_21~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[907]~48_combout\);

\Mod0|auto_generated|divider|divider|StageOut[906]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[906]~61_combout\ = (\Mod0|auto_generated|divider|divider|op_20~10_combout\ & (!\Mod0|auto_generated|divider|divider|op_20~16_combout\ & \Mod0|auto_generated|divider|divider|op_21~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[906]~61_combout\);

\Mod0|auto_generated|divider|divider|StageOut[906]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[906]~49_combout\ = (\Mod0|auto_generated|divider|divider|op_21~12_combout\ & !\Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_21~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[906]~49_combout\);

\Mod0|auto_generated|divider|divider|StageOut[905]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[905]~62_combout\ = (\Mod0|auto_generated|divider|divider|op_20~8_combout\ & (!\Mod0|auto_generated|divider|divider|op_20~16_combout\ & \Mod0|auto_generated|divider|divider|op_21~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[905]~62_combout\);

\Mod0|auto_generated|divider|divider|StageOut[905]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[905]~50_combout\ = (\Mod0|auto_generated|divider|divider|op_21~10_combout\ & !\Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_21~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[905]~50_combout\);

\Mod0|auto_generated|divider|divider|StageOut[904]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[904]~63_combout\ = (\Mod0|auto_generated|divider|divider|op_20~6_combout\ & (!\Mod0|auto_generated|divider|divider|op_20~16_combout\ & \Mod0|auto_generated|divider|divider|op_21~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[904]~63_combout\);

\Mod0|auto_generated|divider|divider|StageOut[904]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[904]~51_combout\ = (\Mod0|auto_generated|divider|divider|op_21~8_combout\ & !\Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_21~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[904]~51_combout\);

\Mod0|auto_generated|divider|divider|StageOut[903]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[903]~64_combout\ = (\Mod0|auto_generated|divider|divider|op_21~20_combout\ & ((\Mod0|auto_generated|divider|divider|op_20~16_combout\ & ((\bin_minutos[5]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|op_20~16_combout\ & (\Mod0|auto_generated|divider|divider|op_20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	datac => \bin_minutos[5]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[903]~64_combout\);

\Mod0|auto_generated|divider|divider|StageOut[903]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[903]~52_combout\ = (\Mod0|auto_generated|divider|divider|op_21~6_combout\ & !\Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_21~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[903]~52_combout\);

\Mod0|auto_generated|divider|divider|StageOut[902]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[902]~65_combout\ = (\Mod0|auto_generated|divider|divider|op_21~20_combout\ & ((\Mod0|auto_generated|divider|divider|op_20~16_combout\ & ((\bin_minutos[4]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|op_20~16_combout\ & (\Mod0|auto_generated|divider|divider|op_20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	datac => \bin_minutos[4]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[902]~65_combout\);

\Mod0|auto_generated|divider|divider|StageOut[902]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[902]~53_combout\ = (\Mod0|auto_generated|divider|divider|op_21~4_combout\ & !\Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_21~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[902]~53_combout\);

\Mod0|auto_generated|divider|divider|StageOut[901]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[901]~66_combout\ = (\Mod0|auto_generated|divider|divider|op_21~20_combout\ & ((\Mod0|auto_generated|divider|divider|op_20~16_combout\ & ((\bin_minutos[3]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|op_20~16_combout\ & (\Mod0|auto_generated|divider|divider|op_20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_20~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_20~16_combout\,
	datac => \bin_minutos[3]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[901]~66_combout\);

\Mod0|auto_generated|divider|divider|StageOut[901]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[901]~54_combout\ = (\Mod0|auto_generated|divider|divider|op_21~2_combout\ & !\Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_21~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[901]~54_combout\);

\Mod0|auto_generated|divider|divider|StageOut[900]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[900]~55_combout\ = (\bin_minutos[2]~input_o\ & \Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[2]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[900]~55_combout\);

\Mod0|auto_generated|divider|divider|StageOut[900]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[900]~56_combout\ = (\Mod0|auto_generated|divider|divider|op_21~0_combout\ & !\Mod0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_21~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[900]~56_combout\);

\Mod0|auto_generated|divider|divider|op_23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~2_combout\ = (\Mod0|auto_generated|divider|divider|op_23~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[900]~55_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[900]~56_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_23~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[900]~55_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[900]~56_combout\)))
-- \Mod0|auto_generated|divider|divider|op_23~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[900]~55_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[900]~56_combout\ & !\Mod0|auto_generated|divider|divider|op_23~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[900]~55_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[900]~56_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_23~1\,
	combout => \Mod0|auto_generated|divider|divider|op_23~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_23~3\);

\Mod0|auto_generated|divider|divider|op_23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~4_combout\ = (\Mod0|auto_generated|divider|divider|op_23~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[901]~66_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[901]~54_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_23~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[901]~66_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[901]~54_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_23~5\ = CARRY((!\Mod0|auto_generated|divider|divider|op_23~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[901]~66_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[901]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[901]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[901]~54_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_23~3\,
	combout => \Mod0|auto_generated|divider|divider|op_23~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_23~5\);

\Mod0|auto_generated|divider|divider|op_23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[902]~65_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[902]~53_combout\ & !\Mod0|auto_generated|divider|divider|op_23~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[902]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[902]~53_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_23~5\,
	cout => \Mod0|auto_generated|divider|divider|op_23~7_cout\);

\Mod0|auto_generated|divider|divider|op_23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[903]~64_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[903]~52_combout\) # (!\Mod0|auto_generated|divider|divider|op_23~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[903]~64_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[903]~52_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_23~7_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_23~9_cout\);

\Mod0|auto_generated|divider|divider|op_23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~11_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[904]~63_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[904]~51_combout\ & !\Mod0|auto_generated|divider|divider|op_23~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[904]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[904]~51_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_23~9_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_23~11_cout\);

\Mod0|auto_generated|divider|divider|op_23~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~13_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[905]~62_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[905]~50_combout\) # (!\Mod0|auto_generated|divider|divider|op_23~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[905]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[905]~50_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_23~11_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_23~13_cout\);

\Mod0|auto_generated|divider|divider|op_23~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~15_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[906]~61_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[906]~49_combout\ & !\Mod0|auto_generated|divider|divider|op_23~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[906]~61_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[906]~49_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_23~13_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_23~15_cout\);

\Mod0|auto_generated|divider|divider|op_23~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~17_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[907]~60_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[907]~48_combout\) # (!\Mod0|auto_generated|divider|divider|op_23~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[907]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[907]~48_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_23~15_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_23~17_cout\);

\Mod0|auto_generated|divider|divider|op_23~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~19_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[908]~46_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[908]~47_combout\ & !\Mod0|auto_generated|divider|divider|op_23~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[908]~46_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[908]~47_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_23~17_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_23~19_cout\);

\Mod0|auto_generated|divider|divider|op_23~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~21_cout\ = CARRY(((\Mod0|auto_generated|divider|divider|op_21~18_combout\ & !\Mod0|auto_generated|divider|divider|op_21~20_combout\)) # (!\Mod0|auto_generated|divider|divider|op_23~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_21~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_21~20_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_23~19_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_23~21_cout\);

\Mod0|auto_generated|divider|divider|op_23~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_23~22_combout\ = !\Mod0|auto_generated|divider|divider|op_23~21_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_23~21_cout\,
	combout => \Mod0|auto_generated|divider|divider|op_23~22_combout\);

\Mod0|auto_generated|divider|divider|StageOut[931]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[931]~57_combout\ = (\Mod0|auto_generated|divider|divider|op_23~22_combout\ & (\bin_minutos[1]~input_o\)) # (!\Mod0|auto_generated|divider|divider|op_23~22_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[1]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|op_23~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_23~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[931]~57_combout\);

\Mod0|auto_generated|divider|divider|StageOut[932]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[932]~58_combout\ = (\Mod0|auto_generated|divider|divider|op_23~22_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[900]~55_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[900]~56_combout\)))) # (!\Mod0|auto_generated|divider|divider|op_23~22_combout\ & (\Mod0|auto_generated|divider|divider|op_23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_23~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_23~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[900]~55_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[900]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[932]~58_combout\);

\Mod0|auto_generated|divider|divider|StageOut[933]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[933]~59_combout\ = (\Mod0|auto_generated|divider|divider|op_23~22_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[901]~66_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[901]~54_combout\)))) # (!\Mod0|auto_generated|divider|divider|op_23~22_combout\ & (\Mod0|auto_generated|divider|divider|op_23~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_23~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_23~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[901]~66_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[901]~54_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[933]~59_combout\);

\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ = \bin_minutos[3]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ = CARRY(\bin_minutos[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[3]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\);

\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ = (\bin_minutos[4]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & VCC)) # (!\bin_minutos[4]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ = CARRY((!\bin_minutos[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\);

\Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ = (\bin_minutos[5]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ $ (GND))) # (!\bin_minutos[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ = CARRY((\bin_minutos[5]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\);

\Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\);

\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\);

\Div0|auto_generated|divider|divider|StageOut[143]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[143]~16_combout\ = (\bin_minutos[5]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[143]~16_combout\);

\Div0|auto_generated|divider|divider|StageOut[143]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[143]~17_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[143]~17_combout\);

\Div0|auto_generated|divider|divider|StageOut[142]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~18_combout\ = (\bin_minutos[4]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~18_combout\);

\Div0|auto_generated|divider|divider|StageOut[142]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~19_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~19_combout\);

\Div0|auto_generated|divider|divider|StageOut[141]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~20_combout\ = (\bin_minutos[3]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~20_combout\);

\Div0|auto_generated|divider|divider|StageOut[141]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~21_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~21_combout\);

\Div0|auto_generated|divider|divider|StageOut[140]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~22_combout\ = (\bin_minutos[2]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~22_combout\);

\Div0|auto_generated|divider|divider|StageOut[140]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~23_combout\ = (\bin_minutos[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[2]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~23_combout\);

\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[140]~22_combout\) # (\Div0|auto_generated|divider|divider|StageOut[140]~23_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[140]~22_combout\) # (\Div0|auto_generated|divider|divider|StageOut[140]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[140]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[140]~23_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[141]~20_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[141]~21_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[141]~20_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[141]~21_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[141]~20_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[141]~21_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[141]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[141]~21_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[142]~18_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~19_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[142]~18_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~19_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[142]~18_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[142]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[142]~19_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

\Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[143]~16_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[143]~17_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[143]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[143]~17_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\);

\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\);

\Div0|auto_generated|divider|divider|StageOut[148]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~30_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\bin_minutos[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datac => \bin_minutos[4]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~30_combout\);

\Div0|auto_generated|divider|divider|StageOut[148]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~24_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~24_combout\);

\Div0|auto_generated|divider|divider|StageOut[147]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\bin_minutos[3]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datac => \bin_minutos[3]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~31_combout\);

\Div0|auto_generated|divider|divider|StageOut[147]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~25_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~25_combout\);

\Div0|auto_generated|divider|divider|StageOut[146]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~26_combout\ = (\bin_minutos[2]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~26_combout\);

\Div0|auto_generated|divider|divider|StageOut[146]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~27_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~27_combout\);

\Div0|auto_generated|divider|divider|StageOut[145]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~28_combout\ = (\bin_minutos[1]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~28_combout\);

\Div0|auto_generated|divider|divider|StageOut[145]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~29_combout\ = (\bin_minutos[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_minutos[1]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~29_combout\);

\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[145]~28_combout\) # (\Div0|auto_generated|divider|divider|StageOut[145]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[145]~28_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[145]~29_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\);

\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[146]~26_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[146]~27_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[146]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[146]~27_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\);

\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[147]~31_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[147]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[147]~31_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[147]~25_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\);

\Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[148]~30_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[148]~24_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[148]~30_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[148]~24_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\);

\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\);

\bin_horas[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_horas(0),
	o => \bin_horas[0]~input_o\);

\bin_horas[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_horas(1),
	o => \bin_horas[1]~input_o\);

\bin_horas[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_horas(4),
	o => \bin_horas[4]~input_o\);

\bin_horas[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_horas(3),
	o => \bin_horas[3]~input_o\);

\bin_horas[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_horas(2),
	o => \bin_horas[2]~input_o\);

\Mod1|auto_generated|divider|divider|op_21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_21~0_combout\ = \bin_horas[2]~input_o\ $ (VCC)
-- \Mod1|auto_generated|divider|divider|op_21~1\ = CARRY(\bin_horas[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[2]~input_o\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|op_21~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_21~1\);

\Mod1|auto_generated|divider|divider|op_21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_21~2_combout\ = (\bin_horas[3]~input_o\ & (\Mod1|auto_generated|divider|divider|op_21~1\ & VCC)) # (!\bin_horas[3]~input_o\ & (!\Mod1|auto_generated|divider|divider|op_21~1\))
-- \Mod1|auto_generated|divider|divider|op_21~3\ = CARRY((!\bin_horas[3]~input_o\ & !\Mod1|auto_generated|divider|divider|op_21~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[3]~input_o\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_21~1\,
	combout => \Mod1|auto_generated|divider|divider|op_21~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_21~3\);

\Mod1|auto_generated|divider|divider|op_21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_21~4_combout\ = (\bin_horas[4]~input_o\ & (\Mod1|auto_generated|divider|divider|op_21~3\ $ (GND))) # (!\bin_horas[4]~input_o\ & (!\Mod1|auto_generated|divider|divider|op_21~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|op_21~5\ = CARRY((\bin_horas[4]~input_o\ & !\Mod1|auto_generated|divider|divider|op_21~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[4]~input_o\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_21~3\,
	combout => \Mod1|auto_generated|divider|divider|op_21~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_21~5\);

\Mod1|auto_generated|divider|divider|op_21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_21~6_combout\ = !\Mod1|auto_generated|divider|divider|op_21~5\
-- \Mod1|auto_generated|divider|divider|op_21~7\ = CARRY(!\Mod1|auto_generated|divider|divider|op_21~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_21~5\,
	combout => \Mod1|auto_generated|divider|divider|op_21~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_21~7\);

\Mod1|auto_generated|divider|divider|op_21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_21~8_combout\ = \Mod1|auto_generated|divider|divider|op_21~7\ $ (GND)
-- \Mod1|auto_generated|divider|divider|op_21~9\ = CARRY(!\Mod1|auto_generated|divider|divider|op_21~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_21~7\,
	combout => \Mod1|auto_generated|divider|divider|op_21~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_21~9\);

\Mod1|auto_generated|divider|divider|op_21~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_21~10_combout\ = !\Mod1|auto_generated|divider|divider|op_21~9\
-- \Mod1|auto_generated|divider|divider|op_21~11\ = CARRY(!\Mod1|auto_generated|divider|divider|op_21~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_21~9\,
	combout => \Mod1|auto_generated|divider|divider|op_21~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_21~11\);

\Mod1|auto_generated|divider|divider|op_21~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_21~12_combout\ = \Mod1|auto_generated|divider|divider|op_21~11\ $ (GND)
-- \Mod1|auto_generated|divider|divider|op_21~13\ = CARRY(!\Mod1|auto_generated|divider|divider|op_21~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_21~11\,
	combout => \Mod1|auto_generated|divider|divider|op_21~12_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_21~13\);

\Mod1|auto_generated|divider|divider|op_21~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_21~14_combout\ = !\Mod1|auto_generated|divider|divider|op_21~13\
-- \Mod1|auto_generated|divider|divider|op_21~15\ = CARRY(!\Mod1|auto_generated|divider|divider|op_21~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_21~13\,
	combout => \Mod1|auto_generated|divider|divider|op_21~14_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_21~15\);

\Mod1|auto_generated|divider|divider|op_21~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_21~16_combout\ = \Mod1|auto_generated|divider|divider|op_21~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_21~15\,
	combout => \Mod1|auto_generated|divider|divider|op_21~16_combout\);

\Mod1|auto_generated|divider|divider|StageOut[899]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[899]~0_combout\ = (\bin_horas[1]~input_o\ & \Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[1]~input_o\,
	datab => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[899]~0_combout\);

\Mod1|auto_generated|divider|divider|StageOut[899]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[899]~1_combout\ = (\bin_horas[1]~input_o\ & !\Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[1]~input_o\,
	datad => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[899]~1_combout\);

\Mod1|auto_generated|divider|divider|op_23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_23~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[899]~0_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[899]~1_combout\)))
-- \Mod1|auto_generated|divider|divider|op_23~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[899]~0_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[899]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[899]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[899]~1_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|op_23~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_23~1\);

\Mod1|auto_generated|divider|divider|StageOut[906]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[906]~2_combout\ = (\Mod1|auto_generated|divider|divider|op_21~12_combout\ & !\Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|op_21~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[906]~2_combout\);

\Mod1|auto_generated|divider|divider|StageOut[905]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[905]~3_combout\ = (\Mod1|auto_generated|divider|divider|op_21~10_combout\ & !\Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|op_21~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[905]~3_combout\);

\Mod1|auto_generated|divider|divider|StageOut[904]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[904]~4_combout\ = (\Mod1|auto_generated|divider|divider|op_21~8_combout\ & !\Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|op_21~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[904]~4_combout\);

\Mod1|auto_generated|divider|divider|StageOut[903]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[903]~5_combout\ = (\Mod1|auto_generated|divider|divider|op_21~6_combout\ & !\Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|op_21~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[903]~5_combout\);

\Mod1|auto_generated|divider|divider|StageOut[902]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[902]~6_combout\ = (\bin_horas[4]~input_o\ & \Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[4]~input_o\,
	datab => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[902]~6_combout\);

\Mod1|auto_generated|divider|divider|StageOut[902]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[902]~7_combout\ = (\Mod1|auto_generated|divider|divider|op_21~4_combout\ & !\Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|op_21~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[902]~7_combout\);

\Mod1|auto_generated|divider|divider|StageOut[901]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[901]~8_combout\ = (\bin_horas[3]~input_o\ & \Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[3]~input_o\,
	datab => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[901]~8_combout\);

\Mod1|auto_generated|divider|divider|StageOut[901]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[901]~9_combout\ = (\Mod1|auto_generated|divider|divider|op_21~2_combout\ & !\Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|op_21~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[901]~9_combout\);

\Mod1|auto_generated|divider|divider|StageOut[900]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[900]~10_combout\ = (\bin_horas[2]~input_o\ & \Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[2]~input_o\,
	datab => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[900]~10_combout\);

\Mod1|auto_generated|divider|divider|StageOut[900]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[900]~11_combout\ = (\Mod1|auto_generated|divider|divider|op_21~0_combout\ & !\Mod1|auto_generated|divider|divider|op_21~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|op_21~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[900]~11_combout\);

\Mod1|auto_generated|divider|divider|op_23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_23~2_combout\ = (\Mod1|auto_generated|divider|divider|op_23~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[900]~10_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[900]~11_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|op_23~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[900]~10_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[900]~11_combout\)))
-- \Mod1|auto_generated|divider|divider|op_23~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[900]~10_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[900]~11_combout\ & !\Mod1|auto_generated|divider|divider|op_23~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[900]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[900]~11_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_23~1\,
	combout => \Mod1|auto_generated|divider|divider|op_23~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_23~3\);

\Mod1|auto_generated|divider|divider|op_23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_23~4_combout\ = (\Mod1|auto_generated|divider|divider|op_23~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[901]~8_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[901]~9_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|op_23~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[901]~8_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[901]~9_combout\)))))
-- \Mod1|auto_generated|divider|divider|op_23~5\ = CARRY((!\Mod1|auto_generated|divider|divider|op_23~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[901]~8_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[901]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[901]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[901]~9_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_23~3\,
	combout => \Mod1|auto_generated|divider|divider|op_23~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_23~5\);

\Mod1|auto_generated|divider|divider|op_23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_23~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[902]~6_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[902]~7_combout\ & !\Mod1|auto_generated|divider|divider|op_23~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[902]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[902]~7_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_23~5\,
	cout => \Mod1|auto_generated|divider|divider|op_23~7_cout\);

\Mod1|auto_generated|divider|divider|op_23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_23~9_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[903]~5_combout\) # (!\Mod1|auto_generated|divider|divider|op_23~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[903]~5_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_23~7_cout\,
	cout => \Mod1|auto_generated|divider|divider|op_23~9_cout\);

\Mod1|auto_generated|divider|divider|op_23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_23~11_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[904]~4_combout\ & !\Mod1|auto_generated|divider|divider|op_23~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[904]~4_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_23~9_cout\,
	cout => \Mod1|auto_generated|divider|divider|op_23~11_cout\);

\Mod1|auto_generated|divider|divider|op_23~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_23~13_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[905]~3_combout\) # (!\Mod1|auto_generated|divider|divider|op_23~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[905]~3_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_23~11_cout\,
	cout => \Mod1|auto_generated|divider|divider|op_23~13_cout\);

\Mod1|auto_generated|divider|divider|op_23~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_23~15_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[906]~2_combout\ & !\Mod1|auto_generated|divider|divider|op_23~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[906]~2_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_23~13_cout\,
	cout => \Mod1|auto_generated|divider|divider|op_23~15_cout\);

\Mod1|auto_generated|divider|divider|op_23~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_23~17_cout\ = CARRY(((\Mod1|auto_generated|divider|divider|op_21~14_combout\ & !\Mod1|auto_generated|divider|divider|op_21~16_combout\)) # (!\Mod1|auto_generated|divider|divider|op_23~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|op_21~14_combout\,
	datab => \Mod1|auto_generated|divider|divider|op_21~16_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_23~15_cout\,
	cout => \Mod1|auto_generated|divider|divider|op_23~17_cout\);

\Mod1|auto_generated|divider|divider|op_23~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_23~18_combout\ = !\Mod1|auto_generated|divider|divider|op_23~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_23~17_cout\,
	combout => \Mod1|auto_generated|divider|divider|op_23~18_combout\);

\Mod1|auto_generated|divider|divider|StageOut[931]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[931]~12_combout\ = (\Mod1|auto_generated|divider|divider|op_23~18_combout\ & (\bin_horas[1]~input_o\)) # (!\Mod1|auto_generated|divider|divider|op_23~18_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|op_23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[1]~input_o\,
	datab => \Mod1|auto_generated|divider|divider|op_23~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_23~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[931]~12_combout\);

\Mod1|auto_generated|divider|divider|StageOut[932]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[932]~13_combout\ = (\Mod1|auto_generated|divider|divider|op_23~18_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[900]~10_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[900]~11_combout\)))) # (!\Mod1|auto_generated|divider|divider|op_23~18_combout\ & (\Mod1|auto_generated|divider|divider|op_23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|op_23~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|op_23~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[900]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[900]~11_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[932]~13_combout\);

\Mod1|auto_generated|divider|divider|StageOut[933]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[933]~14_combout\ = (\Mod1|auto_generated|divider|divider|op_23~18_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[901]~8_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[901]~9_combout\)))) # (!\Mod1|auto_generated|divider|divider|op_23~18_combout\ & (\Mod1|auto_generated|divider|divider|op_23~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|op_23~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|op_23~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[901]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[901]~9_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[933]~14_combout\);

\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = \bin_horas[2]~input_o\ $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY(\bin_horas[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[2]~input_o\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\bin_horas[3]~input_o\ & (\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & VCC)) # (!\bin_horas[3]~input_o\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\bin_horas[3]~input_o\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[3]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

\Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\bin_horas[4]~input_o\ & (\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ $ (GND))) # (!\bin_horas[4]~input_o\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((\bin_horas[4]~input_o\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[4]~input_o\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

\Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ = CARRY(!\Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\);

\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\);

\Div1|auto_generated|divider|divider|StageOut[148]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[148]~0_combout\ = (\bin_horas[4]~input_o\ & \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[4]~input_o\,
	datab => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[148]~0_combout\);

\Div1|auto_generated|divider|divider|StageOut[148]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[148]~1_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[148]~1_combout\);

\Div1|auto_generated|divider|divider|StageOut[147]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[147]~2_combout\ = (\bin_horas[3]~input_o\ & \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[3]~input_o\,
	datab => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[147]~2_combout\);

\Div1|auto_generated|divider|divider|StageOut[147]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[147]~3_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[147]~3_combout\);

\Div1|auto_generated|divider|divider|StageOut[146]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[146]~4_combout\ = (\bin_horas[2]~input_o\ & \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[2]~input_o\,
	datab => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[146]~4_combout\);

\Div1|auto_generated|divider|divider|StageOut[146]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[146]~5_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[146]~5_combout\);

\Div1|auto_generated|divider|divider|StageOut[145]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[145]~6_combout\ = (\bin_horas[1]~input_o\ & \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[1]~input_o\,
	datab => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[145]~6_combout\);

\Div1|auto_generated|divider|divider|StageOut[145]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[145]~7_combout\ = (\bin_horas[1]~input_o\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_horas[1]~input_o\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[145]~7_combout\);

\Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[145]~6_combout\) # (\Div1|auto_generated|divider|divider|StageOut[145]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[145]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[145]~7_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\);

\Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[146]~4_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[146]~5_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[146]~4_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[146]~5_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\);

\Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[147]~2_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[147]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[147]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[147]~3_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\);

\Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[148]~0_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[148]~1_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[148]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[148]~1_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\);

\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\);

\bin_dias[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_dias(0),
	o => \bin_dias[0]~input_o\);

\bin_dias[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_dias(1),
	o => \bin_dias[1]~input_o\);

\bin_dias[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_dias(2),
	o => \bin_dias[2]~input_o\);

ww_bcd_minutos(0) <= \bcd_minutos[0]~output_o\;

ww_bcd_minutos(1) <= \bcd_minutos[1]~output_o\;

ww_bcd_minutos(2) <= \bcd_minutos[2]~output_o\;

ww_bcd_minutos(3) <= \bcd_minutos[3]~output_o\;

ww_bcd_minutos(4) <= \bcd_minutos[4]~output_o\;

ww_bcd_minutos(5) <= \bcd_minutos[5]~output_o\;

ww_bcd_minutos(6) <= \bcd_minutos[6]~output_o\;

ww_bcd_minutos(7) <= \bcd_minutos[7]~output_o\;

ww_bcd_horas(0) <= \bcd_horas[0]~output_o\;

ww_bcd_horas(1) <= \bcd_horas[1]~output_o\;

ww_bcd_horas(2) <= \bcd_horas[2]~output_o\;

ww_bcd_horas(3) <= \bcd_horas[3]~output_o\;

ww_bcd_horas(4) <= \bcd_horas[4]~output_o\;

ww_bcd_horas(5) <= \bcd_horas[5]~output_o\;

ww_bcd_horas(6) <= \bcd_horas[6]~output_o\;

ww_bcd_horas(7) <= \bcd_horas[7]~output_o\;

ww_bcd_dias(0) <= \bcd_dias[0]~output_o\;

ww_bcd_dias(1) <= \bcd_dias[1]~output_o\;

ww_bcd_dias(2) <= \bcd_dias[2]~output_o\;

ww_bcd_dias(3) <= \bcd_dias[3]~output_o\;
END structure;


