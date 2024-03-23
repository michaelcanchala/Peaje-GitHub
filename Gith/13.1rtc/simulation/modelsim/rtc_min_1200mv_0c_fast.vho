-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/21/2024 11:02:34"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rtc IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	stop : IN std_logic;
	clk_div_1seg : BUFFER std_logic;
	display_unidades : OUT std_logic_vector(6 DOWNTO 0);
	display_decenas : OUT std_logic_vector(6 DOWNTO 0)
	);
END rtc;

-- Design Ports Information
-- clk_div_1seg	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_unidades[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_unidades[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_unidades[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_unidades[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_unidades[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_unidades[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_unidades[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_decenas[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_decenas[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_decenas[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_decenas[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_decenas[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_decenas[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_decenas[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rtc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_clk_div_1seg : std_logic;
SIGNAL ww_display_unidades : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_decenas : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk_div_1seg_state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_div_1seg~output_o\ : std_logic;
SIGNAL \display_unidades[0]~output_o\ : std_logic;
SIGNAL \display_unidades[1]~output_o\ : std_logic;
SIGNAL \display_unidades[2]~output_o\ : std_logic;
SIGNAL \display_unidades[3]~output_o\ : std_logic;
SIGNAL \display_unidades[4]~output_o\ : std_logic;
SIGNAL \display_unidades[5]~output_o\ : std_logic;
SIGNAL \display_unidades[6]~output_o\ : std_logic;
SIGNAL \display_decenas[0]~output_o\ : std_logic;
SIGNAL \display_decenas[1]~output_o\ : std_logic;
SIGNAL \display_decenas[2]~output_o\ : std_logic;
SIGNAL \display_decenas[3]~output_o\ : std_logic;
SIGNAL \display_decenas[4]~output_o\ : std_logic;
SIGNAL \display_decenas[5]~output_o\ : std_logic;
SIGNAL \display_decenas[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_1seg_inst|count[0]~24_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[0]~25\ : std_logic;
SIGNAL \div_1seg_inst|count[1]~26_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[1]~27\ : std_logic;
SIGNAL \div_1seg_inst|count[2]~28_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[2]~29\ : std_logic;
SIGNAL \div_1seg_inst|count[3]~30_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[3]~31\ : std_logic;
SIGNAL \div_1seg_inst|count[4]~32_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[4]~33\ : std_logic;
SIGNAL \div_1seg_inst|count[5]~34_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[5]~35\ : std_logic;
SIGNAL \div_1seg_inst|count[6]~36_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[6]~37\ : std_logic;
SIGNAL \div_1seg_inst|count[7]~38_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[7]~39\ : std_logic;
SIGNAL \div_1seg_inst|count[8]~40_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[8]~41\ : std_logic;
SIGNAL \div_1seg_inst|count[9]~42_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[9]~43\ : std_logic;
SIGNAL \div_1seg_inst|count[10]~44_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[10]~45\ : std_logic;
SIGNAL \div_1seg_inst|count[11]~46_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[11]~feeder_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[11]~47\ : std_logic;
SIGNAL \div_1seg_inst|count[12]~48_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[12]~49\ : std_logic;
SIGNAL \div_1seg_inst|count[13]~50_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[13]~51\ : std_logic;
SIGNAL \div_1seg_inst|count[14]~52_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[14]~53\ : std_logic;
SIGNAL \div_1seg_inst|count[15]~54_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[15]~55\ : std_logic;
SIGNAL \div_1seg_inst|count[16]~56_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[16]~57\ : std_logic;
SIGNAL \div_1seg_inst|count[17]~58_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[17]~59\ : std_logic;
SIGNAL \div_1seg_inst|count[18]~60_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[18]~61\ : std_logic;
SIGNAL \div_1seg_inst|count[19]~62_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[19]~63\ : std_logic;
SIGNAL \div_1seg_inst|count[20]~64_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[20]~65\ : std_logic;
SIGNAL \div_1seg_inst|count[21]~66_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[21]~67\ : std_logic;
SIGNAL \div_1seg_inst|count[22]~68_combout\ : std_logic;
SIGNAL \div_1seg_inst|count[22]~69\ : std_logic;
SIGNAL \div_1seg_inst|count[23]~70_combout\ : std_logic;
SIGNAL \div_1seg_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \div_1seg_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \div_1seg_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \div_1seg_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \div_1seg_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \div_1seg_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \div_1seg_inst|clk_state~0_combout\ : std_logic;
SIGNAL \div_1seg_inst|clk_state~feeder_combout\ : std_logic;
SIGNAL \div_1seg_inst|clk_state~q\ : std_logic;
SIGNAL \clk_div_1seg_state~0_combout\ : std_logic;
SIGNAL \clk_div_1seg_state~q\ : std_logic;
SIGNAL \clk_div_1seg_state~clkctrl_outclk\ : std_logic;
SIGNAL \contador[0]~21_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \proceso_contador~0_combout\ : std_logic;
SIGNAL \contador[1]~7_combout\ : std_logic;
SIGNAL \contador[1]~8\ : std_logic;
SIGNAL \contador[2]~9_combout\ : std_logic;
SIGNAL \contador[2]~10\ : std_logic;
SIGNAL \contador[3]~11_combout\ : std_logic;
SIGNAL \contador[3]~12\ : std_logic;
SIGNAL \contador[4]~13_combout\ : std_logic;
SIGNAL \contador[4]~14\ : std_logic;
SIGNAL \contador[5]~15_combout\ : std_logic;
SIGNAL \contador[5]~16\ : std_logic;
SIGNAL \contador[6]~17_combout\ : std_logic;
SIGNAL \contador[6]~18\ : std_logic;
SIGNAL \contador[7]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~100_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~101_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[34]~102_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~97_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~104_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~96_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~90_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~92_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \display_unidades~0_combout\ : std_logic;
SIGNAL \display_unidades~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \display_unidades~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \display_unidades~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \display_unidades~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \display_unidades~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \display_decenas~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \display_decenas~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \display_decenas~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \display_decenas~3_combout\ : std_logic;
SIGNAL \div_1seg_inst|count\ : std_logic_vector(23 DOWNTO 0);
SIGNAL contador_decenas : std_logic_vector(3 DOWNTO 0);
SIGNAL contador : std_logic_vector(7 DOWNTO 0);
SIGNAL contador_unidades : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \div_1seg_inst|ALT_INV_LessThan0~5_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
ww_stop <= stop;
clk_div_1seg <= ww_clk_div_1seg;
display_unidades <= ww_display_unidades;
display_decenas <= ww_display_decenas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_div_1seg_state~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div_1seg_state~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\div_1seg_inst|ALT_INV_LessThan0~5_combout\ <= NOT \div_1seg_inst|LessThan0~5_combout\;

-- Location: IOOBUF_X9_Y29_N16
\clk_div_1seg~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_div_1seg_state~q\,
	devoe => ww_devoe,
	o => \clk_div_1seg~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\display_unidades[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \display_unidades[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\display_unidades[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \display_unidades[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\display_unidades[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \display_unidades[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\display_unidades[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidades~2_combout\,
	devoe => ww_devoe,
	o => \display_unidades[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\display_unidades[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidades~3_combout\,
	devoe => ww_devoe,
	o => \display_unidades[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\display_unidades[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidades~4_combout\,
	devoe => ww_devoe,
	o => \display_unidades[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\display_unidades[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidades~5_combout\,
	devoe => ww_devoe,
	o => \display_unidades[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\display_decenas[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	devoe => ww_devoe,
	o => \display_decenas[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\display_decenas[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \display_decenas[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\display_decenas[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \display_decenas[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\display_decenas[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decenas~0_combout\,
	devoe => ww_devoe,
	o => \display_decenas[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\display_decenas[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decenas~1_combout\,
	devoe => ww_devoe,
	o => \display_decenas[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\display_decenas[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decenas~2_combout\,
	devoe => ww_devoe,
	o => \display_decenas[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\display_decenas[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decenas~3_combout\,
	devoe => ww_devoe,
	o => \display_decenas[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y21_N8
\div_1seg_inst|count[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[0]~24_combout\ = \div_1seg_inst|count\(0) $ (VCC)
-- \div_1seg_inst|count[0]~25\ = CARRY(\div_1seg_inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(0),
	datad => VCC,
	combout => \div_1seg_inst|count[0]~24_combout\,
	cout => \div_1seg_inst|count[0]~25\);

-- Location: FF_X2_Y21_N9
\div_1seg_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[0]~24_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(0));

-- Location: LCCOMB_X2_Y21_N10
\div_1seg_inst|count[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[1]~26_combout\ = (\div_1seg_inst|count\(1) & (!\div_1seg_inst|count[0]~25\)) # (!\div_1seg_inst|count\(1) & ((\div_1seg_inst|count[0]~25\) # (GND)))
-- \div_1seg_inst|count[1]~27\ = CARRY((!\div_1seg_inst|count[0]~25\) # (!\div_1seg_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(1),
	datad => VCC,
	cin => \div_1seg_inst|count[0]~25\,
	combout => \div_1seg_inst|count[1]~26_combout\,
	cout => \div_1seg_inst|count[1]~27\);

-- Location: FF_X2_Y21_N11
\div_1seg_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[1]~26_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(1));

-- Location: LCCOMB_X2_Y21_N12
\div_1seg_inst|count[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[2]~28_combout\ = (\div_1seg_inst|count\(2) & (\div_1seg_inst|count[1]~27\ $ (GND))) # (!\div_1seg_inst|count\(2) & (!\div_1seg_inst|count[1]~27\ & VCC))
-- \div_1seg_inst|count[2]~29\ = CARRY((\div_1seg_inst|count\(2) & !\div_1seg_inst|count[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(2),
	datad => VCC,
	cin => \div_1seg_inst|count[1]~27\,
	combout => \div_1seg_inst|count[2]~28_combout\,
	cout => \div_1seg_inst|count[2]~29\);

-- Location: FF_X2_Y21_N13
\div_1seg_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[2]~28_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(2));

-- Location: LCCOMB_X2_Y21_N14
\div_1seg_inst|count[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[3]~30_combout\ = (\div_1seg_inst|count\(3) & (!\div_1seg_inst|count[2]~29\)) # (!\div_1seg_inst|count\(3) & ((\div_1seg_inst|count[2]~29\) # (GND)))
-- \div_1seg_inst|count[3]~31\ = CARRY((!\div_1seg_inst|count[2]~29\) # (!\div_1seg_inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(3),
	datad => VCC,
	cin => \div_1seg_inst|count[2]~29\,
	combout => \div_1seg_inst|count[3]~30_combout\,
	cout => \div_1seg_inst|count[3]~31\);

-- Location: FF_X2_Y21_N15
\div_1seg_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[3]~30_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(3));

-- Location: LCCOMB_X2_Y21_N16
\div_1seg_inst|count[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[4]~32_combout\ = (\div_1seg_inst|count\(4) & (\div_1seg_inst|count[3]~31\ $ (GND))) # (!\div_1seg_inst|count\(4) & (!\div_1seg_inst|count[3]~31\ & VCC))
-- \div_1seg_inst|count[4]~33\ = CARRY((\div_1seg_inst|count\(4) & !\div_1seg_inst|count[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(4),
	datad => VCC,
	cin => \div_1seg_inst|count[3]~31\,
	combout => \div_1seg_inst|count[4]~32_combout\,
	cout => \div_1seg_inst|count[4]~33\);

-- Location: FF_X2_Y21_N17
\div_1seg_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[4]~32_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(4));

-- Location: LCCOMB_X2_Y21_N18
\div_1seg_inst|count[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[5]~34_combout\ = (\div_1seg_inst|count\(5) & (!\div_1seg_inst|count[4]~33\)) # (!\div_1seg_inst|count\(5) & ((\div_1seg_inst|count[4]~33\) # (GND)))
-- \div_1seg_inst|count[5]~35\ = CARRY((!\div_1seg_inst|count[4]~33\) # (!\div_1seg_inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(5),
	datad => VCC,
	cin => \div_1seg_inst|count[4]~33\,
	combout => \div_1seg_inst|count[5]~34_combout\,
	cout => \div_1seg_inst|count[5]~35\);

-- Location: FF_X2_Y21_N19
\div_1seg_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[5]~34_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(5));

-- Location: LCCOMB_X2_Y21_N20
\div_1seg_inst|count[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[6]~36_combout\ = (\div_1seg_inst|count\(6) & (\div_1seg_inst|count[5]~35\ $ (GND))) # (!\div_1seg_inst|count\(6) & (!\div_1seg_inst|count[5]~35\ & VCC))
-- \div_1seg_inst|count[6]~37\ = CARRY((\div_1seg_inst|count\(6) & !\div_1seg_inst|count[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(6),
	datad => VCC,
	cin => \div_1seg_inst|count[5]~35\,
	combout => \div_1seg_inst|count[6]~36_combout\,
	cout => \div_1seg_inst|count[6]~37\);

-- Location: FF_X2_Y21_N21
\div_1seg_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[6]~36_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(6));

-- Location: LCCOMB_X2_Y21_N22
\div_1seg_inst|count[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[7]~38_combout\ = (\div_1seg_inst|count\(7) & (!\div_1seg_inst|count[6]~37\)) # (!\div_1seg_inst|count\(7) & ((\div_1seg_inst|count[6]~37\) # (GND)))
-- \div_1seg_inst|count[7]~39\ = CARRY((!\div_1seg_inst|count[6]~37\) # (!\div_1seg_inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(7),
	datad => VCC,
	cin => \div_1seg_inst|count[6]~37\,
	combout => \div_1seg_inst|count[7]~38_combout\,
	cout => \div_1seg_inst|count[7]~39\);

-- Location: FF_X2_Y21_N23
\div_1seg_inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[7]~38_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(7));

-- Location: LCCOMB_X2_Y21_N24
\div_1seg_inst|count[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[8]~40_combout\ = (\div_1seg_inst|count\(8) & (\div_1seg_inst|count[7]~39\ $ (GND))) # (!\div_1seg_inst|count\(8) & (!\div_1seg_inst|count[7]~39\ & VCC))
-- \div_1seg_inst|count[8]~41\ = CARRY((\div_1seg_inst|count\(8) & !\div_1seg_inst|count[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(8),
	datad => VCC,
	cin => \div_1seg_inst|count[7]~39\,
	combout => \div_1seg_inst|count[8]~40_combout\,
	cout => \div_1seg_inst|count[8]~41\);

-- Location: FF_X2_Y21_N25
\div_1seg_inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[8]~40_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(8));

-- Location: LCCOMB_X2_Y21_N26
\div_1seg_inst|count[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[9]~42_combout\ = (\div_1seg_inst|count\(9) & (!\div_1seg_inst|count[8]~41\)) # (!\div_1seg_inst|count\(9) & ((\div_1seg_inst|count[8]~41\) # (GND)))
-- \div_1seg_inst|count[9]~43\ = CARRY((!\div_1seg_inst|count[8]~41\) # (!\div_1seg_inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(9),
	datad => VCC,
	cin => \div_1seg_inst|count[8]~41\,
	combout => \div_1seg_inst|count[9]~42_combout\,
	cout => \div_1seg_inst|count[9]~43\);

-- Location: FF_X2_Y21_N27
\div_1seg_inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[9]~42_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(9));

-- Location: LCCOMB_X2_Y21_N28
\div_1seg_inst|count[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[10]~44_combout\ = (\div_1seg_inst|count\(10) & (\div_1seg_inst|count[9]~43\ $ (GND))) # (!\div_1seg_inst|count\(10) & (!\div_1seg_inst|count[9]~43\ & VCC))
-- \div_1seg_inst|count[10]~45\ = CARRY((\div_1seg_inst|count\(10) & !\div_1seg_inst|count[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(10),
	datad => VCC,
	cin => \div_1seg_inst|count[9]~43\,
	combout => \div_1seg_inst|count[10]~44_combout\,
	cout => \div_1seg_inst|count[10]~45\);

-- Location: FF_X3_Y20_N21
\div_1seg_inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \div_1seg_inst|count[10]~44_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(10));

-- Location: LCCOMB_X2_Y21_N30
\div_1seg_inst|count[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[11]~46_combout\ = (\div_1seg_inst|count\(11) & (!\div_1seg_inst|count[10]~45\)) # (!\div_1seg_inst|count\(11) & ((\div_1seg_inst|count[10]~45\) # (GND)))
-- \div_1seg_inst|count[11]~47\ = CARRY((!\div_1seg_inst|count[10]~45\) # (!\div_1seg_inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(11),
	datad => VCC,
	cin => \div_1seg_inst|count[10]~45\,
	combout => \div_1seg_inst|count[11]~46_combout\,
	cout => \div_1seg_inst|count[11]~47\);

-- Location: LCCOMB_X2_Y20_N24
\div_1seg_inst|count[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[11]~feeder_combout\ = \div_1seg_inst|count[11]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_1seg_inst|count[11]~46_combout\,
	combout => \div_1seg_inst|count[11]~feeder_combout\);

-- Location: FF_X2_Y20_N25
\div_1seg_inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[11]~feeder_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(11));

-- Location: LCCOMB_X2_Y20_N0
\div_1seg_inst|count[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[12]~48_combout\ = (\div_1seg_inst|count\(12) & (\div_1seg_inst|count[11]~47\ $ (GND))) # (!\div_1seg_inst|count\(12) & (!\div_1seg_inst|count[11]~47\ & VCC))
-- \div_1seg_inst|count[12]~49\ = CARRY((\div_1seg_inst|count\(12) & !\div_1seg_inst|count[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(12),
	datad => VCC,
	cin => \div_1seg_inst|count[11]~47\,
	combout => \div_1seg_inst|count[12]~48_combout\,
	cout => \div_1seg_inst|count[12]~49\);

-- Location: FF_X2_Y20_N1
\div_1seg_inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[12]~48_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(12));

-- Location: LCCOMB_X2_Y20_N2
\div_1seg_inst|count[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[13]~50_combout\ = (\div_1seg_inst|count\(13) & (!\div_1seg_inst|count[12]~49\)) # (!\div_1seg_inst|count\(13) & ((\div_1seg_inst|count[12]~49\) # (GND)))
-- \div_1seg_inst|count[13]~51\ = CARRY((!\div_1seg_inst|count[12]~49\) # (!\div_1seg_inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(13),
	datad => VCC,
	cin => \div_1seg_inst|count[12]~49\,
	combout => \div_1seg_inst|count[13]~50_combout\,
	cout => \div_1seg_inst|count[13]~51\);

-- Location: FF_X2_Y20_N3
\div_1seg_inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[13]~50_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(13));

-- Location: LCCOMB_X2_Y20_N4
\div_1seg_inst|count[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[14]~52_combout\ = (\div_1seg_inst|count\(14) & (\div_1seg_inst|count[13]~51\ $ (GND))) # (!\div_1seg_inst|count\(14) & (!\div_1seg_inst|count[13]~51\ & VCC))
-- \div_1seg_inst|count[14]~53\ = CARRY((\div_1seg_inst|count\(14) & !\div_1seg_inst|count[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(14),
	datad => VCC,
	cin => \div_1seg_inst|count[13]~51\,
	combout => \div_1seg_inst|count[14]~52_combout\,
	cout => \div_1seg_inst|count[14]~53\);

-- Location: FF_X2_Y20_N5
\div_1seg_inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[14]~52_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(14));

-- Location: LCCOMB_X2_Y20_N6
\div_1seg_inst|count[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[15]~54_combout\ = (\div_1seg_inst|count\(15) & (!\div_1seg_inst|count[14]~53\)) # (!\div_1seg_inst|count\(15) & ((\div_1seg_inst|count[14]~53\) # (GND)))
-- \div_1seg_inst|count[15]~55\ = CARRY((!\div_1seg_inst|count[14]~53\) # (!\div_1seg_inst|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(15),
	datad => VCC,
	cin => \div_1seg_inst|count[14]~53\,
	combout => \div_1seg_inst|count[15]~54_combout\,
	cout => \div_1seg_inst|count[15]~55\);

-- Location: FF_X2_Y20_N7
\div_1seg_inst|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[15]~54_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(15));

-- Location: LCCOMB_X2_Y20_N8
\div_1seg_inst|count[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[16]~56_combout\ = (\div_1seg_inst|count\(16) & (\div_1seg_inst|count[15]~55\ $ (GND))) # (!\div_1seg_inst|count\(16) & (!\div_1seg_inst|count[15]~55\ & VCC))
-- \div_1seg_inst|count[16]~57\ = CARRY((\div_1seg_inst|count\(16) & !\div_1seg_inst|count[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(16),
	datad => VCC,
	cin => \div_1seg_inst|count[15]~55\,
	combout => \div_1seg_inst|count[16]~56_combout\,
	cout => \div_1seg_inst|count[16]~57\);

-- Location: FF_X2_Y20_N9
\div_1seg_inst|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[16]~56_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(16));

-- Location: LCCOMB_X2_Y20_N10
\div_1seg_inst|count[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[17]~58_combout\ = (\div_1seg_inst|count\(17) & (!\div_1seg_inst|count[16]~57\)) # (!\div_1seg_inst|count\(17) & ((\div_1seg_inst|count[16]~57\) # (GND)))
-- \div_1seg_inst|count[17]~59\ = CARRY((!\div_1seg_inst|count[16]~57\) # (!\div_1seg_inst|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(17),
	datad => VCC,
	cin => \div_1seg_inst|count[16]~57\,
	combout => \div_1seg_inst|count[17]~58_combout\,
	cout => \div_1seg_inst|count[17]~59\);

-- Location: FF_X2_Y20_N11
\div_1seg_inst|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[17]~58_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(17));

-- Location: LCCOMB_X2_Y20_N12
\div_1seg_inst|count[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[18]~60_combout\ = (\div_1seg_inst|count\(18) & (\div_1seg_inst|count[17]~59\ $ (GND))) # (!\div_1seg_inst|count\(18) & (!\div_1seg_inst|count[17]~59\ & VCC))
-- \div_1seg_inst|count[18]~61\ = CARRY((\div_1seg_inst|count\(18) & !\div_1seg_inst|count[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(18),
	datad => VCC,
	cin => \div_1seg_inst|count[17]~59\,
	combout => \div_1seg_inst|count[18]~60_combout\,
	cout => \div_1seg_inst|count[18]~61\);

-- Location: FF_X2_Y20_N13
\div_1seg_inst|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[18]~60_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(18));

-- Location: LCCOMB_X2_Y20_N14
\div_1seg_inst|count[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[19]~62_combout\ = (\div_1seg_inst|count\(19) & (!\div_1seg_inst|count[18]~61\)) # (!\div_1seg_inst|count\(19) & ((\div_1seg_inst|count[18]~61\) # (GND)))
-- \div_1seg_inst|count[19]~63\ = CARRY((!\div_1seg_inst|count[18]~61\) # (!\div_1seg_inst|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(19),
	datad => VCC,
	cin => \div_1seg_inst|count[18]~61\,
	combout => \div_1seg_inst|count[19]~62_combout\,
	cout => \div_1seg_inst|count[19]~63\);

-- Location: FF_X2_Y20_N15
\div_1seg_inst|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[19]~62_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(19));

-- Location: LCCOMB_X2_Y20_N16
\div_1seg_inst|count[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[20]~64_combout\ = (\div_1seg_inst|count\(20) & (\div_1seg_inst|count[19]~63\ $ (GND))) # (!\div_1seg_inst|count\(20) & (!\div_1seg_inst|count[19]~63\ & VCC))
-- \div_1seg_inst|count[20]~65\ = CARRY((\div_1seg_inst|count\(20) & !\div_1seg_inst|count[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(20),
	datad => VCC,
	cin => \div_1seg_inst|count[19]~63\,
	combout => \div_1seg_inst|count[20]~64_combout\,
	cout => \div_1seg_inst|count[20]~65\);

-- Location: FF_X2_Y20_N17
\div_1seg_inst|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[20]~64_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(20));

-- Location: LCCOMB_X2_Y20_N18
\div_1seg_inst|count[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[21]~66_combout\ = (\div_1seg_inst|count\(21) & (!\div_1seg_inst|count[20]~65\)) # (!\div_1seg_inst|count\(21) & ((\div_1seg_inst|count[20]~65\) # (GND)))
-- \div_1seg_inst|count[21]~67\ = CARRY((!\div_1seg_inst|count[20]~65\) # (!\div_1seg_inst|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(21),
	datad => VCC,
	cin => \div_1seg_inst|count[20]~65\,
	combout => \div_1seg_inst|count[21]~66_combout\,
	cout => \div_1seg_inst|count[21]~67\);

-- Location: FF_X2_Y20_N19
\div_1seg_inst|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[21]~66_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(21));

-- Location: LCCOMB_X2_Y20_N20
\div_1seg_inst|count[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[22]~68_combout\ = (\div_1seg_inst|count\(22) & (\div_1seg_inst|count[21]~67\ $ (GND))) # (!\div_1seg_inst|count\(22) & (!\div_1seg_inst|count[21]~67\ & VCC))
-- \div_1seg_inst|count[22]~69\ = CARRY((\div_1seg_inst|count\(22) & !\div_1seg_inst|count[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(22),
	datad => VCC,
	cin => \div_1seg_inst|count[21]~67\,
	combout => \div_1seg_inst|count[22]~68_combout\,
	cout => \div_1seg_inst|count[22]~69\);

-- Location: FF_X2_Y20_N21
\div_1seg_inst|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[22]~68_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(22));

-- Location: LCCOMB_X2_Y20_N22
\div_1seg_inst|count[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|count[23]~70_combout\ = \div_1seg_inst|count\(23) $ (\div_1seg_inst|count[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(23),
	cin => \div_1seg_inst|count[22]~69\,
	combout => \div_1seg_inst|count[23]~70_combout\);

-- Location: FF_X2_Y20_N23
\div_1seg_inst|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|count[23]~70_combout\,
	sclr => \div_1seg_inst|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|count\(23));

-- Location: LCCOMB_X2_Y20_N26
\div_1seg_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|LessThan0~0_combout\ = ((!\div_1seg_inst|count\(21)) # (!\div_1seg_inst|count\(23))) # (!\div_1seg_inst|count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_1seg_inst|count\(22),
	datac => \div_1seg_inst|count\(23),
	datad => \div_1seg_inst|count\(21),
	combout => \div_1seg_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y21_N0
\div_1seg_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|LessThan0~1_combout\ = (!\div_1seg_inst|count\(9) & (((!\div_1seg_inst|count\(6)) # (!\div_1seg_inst|count\(8))) # (!\div_1seg_inst|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(7),
	datab => \div_1seg_inst|count\(8),
	datac => \div_1seg_inst|count\(9),
	datad => \div_1seg_inst|count\(6),
	combout => \div_1seg_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y20_N28
\div_1seg_inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|LessThan0~2_combout\ = (!\div_1seg_inst|count\(11) & (!\div_1seg_inst|count\(12) & (!\div_1seg_inst|count\(10) & \div_1seg_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(11),
	datab => \div_1seg_inst|count\(12),
	datac => \div_1seg_inst|count\(10),
	datad => \div_1seg_inst|LessThan0~1_combout\,
	combout => \div_1seg_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X2_Y20_N30
\div_1seg_inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|LessThan0~3_combout\ = (\div_1seg_inst|count\(15) & (\div_1seg_inst|count\(13) & (\div_1seg_inst|count\(14) & !\div_1seg_inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(15),
	datab => \div_1seg_inst|count\(13),
	datac => \div_1seg_inst|count\(14),
	datad => \div_1seg_inst|LessThan0~2_combout\,
	combout => \div_1seg_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X2_Y21_N2
\div_1seg_inst|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|LessThan0~4_combout\ = ((!\div_1seg_inst|count\(17) & (!\div_1seg_inst|count\(16) & !\div_1seg_inst|LessThan0~3_combout\))) # (!\div_1seg_inst|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(17),
	datab => \div_1seg_inst|count\(18),
	datac => \div_1seg_inst|count\(16),
	datad => \div_1seg_inst|LessThan0~3_combout\,
	combout => \div_1seg_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X2_Y21_N4
\div_1seg_inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|LessThan0~5_combout\ = (\div_1seg_inst|LessThan0~0_combout\) # ((!\div_1seg_inst|count\(19) & (!\div_1seg_inst|count\(20) & \div_1seg_inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_1seg_inst|count\(19),
	datab => \div_1seg_inst|LessThan0~0_combout\,
	datac => \div_1seg_inst|count\(20),
	datad => \div_1seg_inst|LessThan0~4_combout\,
	combout => \div_1seg_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X1_Y21_N12
\div_1seg_inst|clk_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|clk_state~0_combout\ = \div_1seg_inst|clk_state~q\ $ (!\div_1seg_inst|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_1seg_inst|clk_state~q\,
	datad => \div_1seg_inst|LessThan0~5_combout\,
	combout => \div_1seg_inst|clk_state~0_combout\);

-- Location: LCCOMB_X1_Y21_N0
\div_1seg_inst|clk_state~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_1seg_inst|clk_state~feeder_combout\ = \div_1seg_inst|clk_state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \div_1seg_inst|clk_state~0_combout\,
	combout => \div_1seg_inst|clk_state~feeder_combout\);

-- Location: FF_X1_Y21_N1
\div_1seg_inst|clk_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_1seg_inst|clk_state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_1seg_inst|clk_state~q\);

-- Location: LCCOMB_X1_Y21_N26
\clk_div_1seg_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div_1seg_state~0_combout\ = !\clk_div_1seg_state~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_1seg_state~q\,
	combout => \clk_div_1seg_state~0_combout\);

-- Location: FF_X1_Y21_N31
clk_div_1seg_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_1seg_inst|clk_state~q\,
	asdata => \clk_div_1seg_state~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_1seg_state~q\);

-- Location: CLKCTRL_G1
\clk_div_1seg_state~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_1seg_state~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_1seg_state~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y27_N28
\contador[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~21_combout\ = !contador(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(0),
	combout => \contador[0]~21_combout\);

-- Location: IOIBUF_X0_Y23_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\stop~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: LCCOMB_X31_Y27_N30
\proceso_contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \proceso_contador~0_combout\ = (\start~input_o\ & !\stop~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \stop~input_o\,
	combout => \proceso_contador~0_combout\);

-- Location: FF_X32_Y27_N29
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	d => \contador[0]~21_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X32_Y27_N12
\contador[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~7_combout\ = (contador(1) & (contador(0) $ (VCC))) # (!contador(1) & (contador(0) & VCC))
-- \contador[1]~8\ = CARRY((contador(1) & contador(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(0),
	datad => VCC,
	combout => \contador[1]~7_combout\,
	cout => \contador[1]~8\);

-- Location: FF_X32_Y27_N13
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	d => \contador[1]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X32_Y27_N14
\contador[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~9_combout\ = (contador(2) & (!\contador[1]~8\)) # (!contador(2) & ((\contador[1]~8\) # (GND)))
-- \contador[2]~10\ = CARRY((!\contador[1]~8\) # (!contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datad => VCC,
	cin => \contador[1]~8\,
	combout => \contador[2]~9_combout\,
	cout => \contador[2]~10\);

-- Location: FF_X32_Y27_N15
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	d => \contador[2]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X32_Y27_N16
\contador[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~11_combout\ = (contador(3) & (\contador[2]~10\ $ (GND))) # (!contador(3) & (!\contador[2]~10\ & VCC))
-- \contador[3]~12\ = CARRY((contador(3) & !\contador[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(3),
	datad => VCC,
	cin => \contador[2]~10\,
	combout => \contador[3]~11_combout\,
	cout => \contador[3]~12\);

-- Location: FF_X32_Y27_N17
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	d => \contador[3]~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X32_Y27_N18
\contador[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[4]~13_combout\ = (contador(4) & (!\contador[3]~12\)) # (!contador(4) & ((\contador[3]~12\) # (GND)))
-- \contador[4]~14\ = CARRY((!\contador[3]~12\) # (!contador(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(4),
	datad => VCC,
	cin => \contador[3]~12\,
	combout => \contador[4]~13_combout\,
	cout => \contador[4]~14\);

-- Location: FF_X32_Y27_N19
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	d => \contador[4]~13_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X32_Y27_N20
\contador[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[5]~15_combout\ = (contador(5) & (\contador[4]~14\ $ (GND))) # (!contador(5) & (!\contador[4]~14\ & VCC))
-- \contador[5]~16\ = CARRY((contador(5) & !\contador[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(5),
	datad => VCC,
	cin => \contador[4]~14\,
	combout => \contador[5]~15_combout\,
	cout => \contador[5]~16\);

-- Location: FF_X32_Y27_N21
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	d => \contador[5]~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X32_Y27_N22
\contador[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[6]~17_combout\ = (contador(6) & (!\contador[5]~16\)) # (!contador(6) & ((\contador[5]~16\) # (GND)))
-- \contador[6]~18\ = CARRY((!\contador[5]~16\) # (!contador(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(6),
	datad => VCC,
	cin => \contador[5]~16\,
	combout => \contador[6]~17_combout\,
	cout => \contador[6]~18\);

-- Location: FF_X32_Y27_N23
\contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	d => \contador[6]~17_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(6));

-- Location: LCCOMB_X32_Y27_N24
\contador[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[7]~19_combout\ = contador(7) $ (!\contador[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(7),
	cin => \contador[6]~18\,
	combout => \contador[7]~19_combout\);

-- Location: FF_X32_Y27_N25
\contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	d => \contador[7]~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(7));

-- Location: LCCOMB_X29_Y26_N18
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = contador(5) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(contador(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(5),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X29_Y26_N20
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (contador(6) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!contador(6) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!contador(6) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(6),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X29_Y26_N22
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (contador(7) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!contador(7) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((contador(7) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(7),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X29_Y26_N24
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X29_Y26_N12
\Mod0|auto_generated|divider|divider|StageOut[27]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & contador(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => contador(7),
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X29_Y26_N16
\Mod0|auto_generated|divider|divider|StageOut[27]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X29_Y26_N26
\Mod0|auto_generated|divider|divider|StageOut[26]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ = (contador(6) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X29_Y26_N28
\Mod0|auto_generated|divider|divider|StageOut[26]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X30_Y26_N20
\Mod0|auto_generated|divider|divider|StageOut[25]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ = (contador(5) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X29_Y26_N14
\Mod0|auto_generated|divider|divider|StageOut[25]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X30_Y26_N6
\Mod0|auto_generated|divider|divider|StageOut[24]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ = (contador(4) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X29_Y26_N0
\Mod0|auto_generated|divider|divider|StageOut[24]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ = (contador(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X29_Y26_N2
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X29_Y26_N4
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X29_Y26_N6
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X29_Y26_N8
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X29_Y26_N10
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X30_Y26_N4
\Mod0|auto_generated|divider|divider|StageOut[36]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~100_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((contador(7)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => contador(7),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~100_combout\);

-- Location: LCCOMB_X32_Y26_N8
\Mod0|auto_generated|divider|divider|StageOut[36]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X32_Y26_N10
\Mod0|auto_generated|divider|divider|StageOut[35]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X29_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[35]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~101_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((contador(6)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => contador(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~101_combout\);

-- Location: LCCOMB_X30_Y26_N18
\Mod0|auto_generated|divider|divider|StageOut[34]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[34]~102_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (contador(5))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => contador(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[34]~102_combout\);

-- Location: LCCOMB_X30_Y26_N12
\Mod0|auto_generated|divider|divider|StageOut[34]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X30_Y26_N22
\Mod0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X32_Y26_N16
\Mod0|auto_generated|divider|divider|StageOut[33]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ = (contador(4) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X32_Y26_N12
\Mod0|auto_generated|divider|divider|StageOut[32]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (contador(3) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X32_Y26_N14
\Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (contador(3) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X32_Y26_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X32_Y26_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X32_Y26_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[34]~102_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[34]~102_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[34]~102_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[34]~102_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X32_Y26_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[35]~101_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[35]~101_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[35]~101_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~101_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X32_Y26_N26
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[36]~100_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[36]~100_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[36]~100_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~100_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X32_Y26_N28
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X32_Y26_N6
\Mod0|auto_generated|divider|divider|StageOut[45]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~100_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~100_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\);

-- Location: LCCOMB_X31_Y26_N28
\Mod0|auto_generated|divider|divider|StageOut[45]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X31_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[44]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X32_Y26_N0
\Mod0|auto_generated|divider|divider|StageOut[44]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[35]~101_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~101_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\);

-- Location: LCCOMB_X30_Y26_N14
\Mod0|auto_generated|divider|divider|StageOut[43]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[34]~102_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[34]~102_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\);

-- Location: LCCOMB_X31_Y26_N4
\Mod0|auto_generated|divider|divider|StageOut[43]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X32_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[42]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X30_Y26_N24
\Mod0|auto_generated|divider|divider|StageOut[42]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((contador(4)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => contador(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\);

-- Location: LCCOMB_X32_Y26_N4
\Mod0|auto_generated|divider|divider|StageOut[41]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X31_Y26_N26
\Mod0|auto_generated|divider|divider|StageOut[41]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & contador(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => contador(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X30_Y26_N16
\Mod0|auto_generated|divider|divider|StageOut[40]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ = (contador(2) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X30_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[40]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ = (contador(2) & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X31_Y26_N8
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X31_Y26_N10
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X31_Y26_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X31_Y26_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X31_Y26_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X31_Y26_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X31_Y26_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X30_Y26_N8
\Mod0|auto_generated|divider|divider|StageOut[53]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X31_Y26_N22
\Mod0|auto_generated|divider|divider|StageOut[53]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~97_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[44]~94_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~97_combout\);

-- Location: LCCOMB_X31_Y26_N24
\Mod0|auto_generated|divider|divider|StageOut[52]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~95_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\);

-- Location: LCCOMB_X30_Y26_N2
\Mod0|auto_generated|divider|divider|StageOut[52]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X30_Y26_N0
\Mod0|auto_generated|divider|divider|StageOut[51]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X31_Y26_N6
\Mod0|auto_generated|divider|divider|StageOut[51]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\);

-- Location: LCCOMB_X32_Y26_N2
\Mod0|auto_generated|divider|divider|StageOut[50]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~104_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((contador(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => contador(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~104_combout\);

-- Location: LCCOMB_X30_Y26_N26
\Mod0|auto_generated|divider|divider|StageOut[50]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X31_Y26_N2
\Mod0|auto_generated|divider|divider|StageOut[49]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X30_Y26_N28
\Mod0|auto_generated|divider|divider|StageOut[49]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ = (contador(2) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X31_Y27_N4
\Mod0|auto_generated|divider|divider|StageOut[48]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ = (contador(1) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X31_Y27_N10
\Mod0|auto_generated|divider|divider|StageOut[48]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ = (contador(1) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X30_Y27_N0
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X30_Y27_N2
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X30_Y27_N4
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[50]~104_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[50]~104_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[50]~104_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~104_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X30_Y27_N6
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X30_Y27_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X30_Y27_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~97_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[53]~97_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[53]~97_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[53]~97_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X31_Y27_N0
\Mod0|auto_generated|divider|divider|StageOut[54]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X31_Y26_N0
\Mod0|auto_generated|divider|divider|StageOut[54]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~96_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~93_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~96_combout\);

-- Location: LCCOMB_X30_Y27_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[54]~96_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[54]~96_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[54]~96_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[54]~96_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X30_Y27_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X30_Y27_N30
\Mod0|auto_generated|divider|divider|StageOut[62]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~90_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~97_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[53]~97_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~90_combout\);

-- Location: LCCOMB_X30_Y27_N24
\Mod0|auto_generated|divider|divider|StageOut[61]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~98_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\);

-- Location: LCCOMB_X30_Y27_N22
\Mod0|auto_generated|divider|divider|StageOut[60]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~92_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[51]~99_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~92_combout\);

-- Location: LCCOMB_X30_Y27_N16
\Mod0|auto_generated|divider|divider|StageOut[63]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[54]~96_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[54]~96_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\);

-- Location: LCCOMB_X30_Y27_N20
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[62]~90_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[60]~92_combout\ & 
-- !\Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~90_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[60]~92_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X31_Y27_N6
\Mod0|auto_generated|divider|divider|StageOut[57]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (contador(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X30_Y27_N28
\Mod0|auto_generated|divider|divider|StageOut[58]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X30_Y27_N26
\Mod0|auto_generated|divider|divider|StageOut[59]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~104_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[50]~104_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X31_Y27_N24
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((!contador(0)) # (!\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ ((\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => contador(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X31_Y27_N18
\Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (!\stop~input_o\ & ((!\Mux6~0_combout\) # (!\Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~1_combout\,
	datac => \stop~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X31_Y27_N16
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & contador(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => contador(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X31_Y27_N26
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (!\stop~input_o\ & ((\Mux5~0_combout\) # (!\Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~1_combout\,
	datac => \stop~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X31_Y27_N28
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (contador(0)) # ((\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => contador(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X31_Y27_N2
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\stop~input_o\ & ((\Mux4~0_combout\) # (!\Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~1_combout\,
	datac => \stop~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X29_Y27_N28
\display_unidades~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_unidades~0_combout\ = (\stop~input_o\) # ((!\Mod0|auto_generated|divider|divider|StageOut[60]~92_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[60]~92_combout\,
	datac => \stop~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\,
	combout => \display_unidades~0_combout\);

-- Location: LCCOMB_X29_Y27_N22
\display_unidades~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_unidades~1_combout\ = (\display_unidades~0_combout\ & ((\stop~input_o\) # ((!\Mod0|auto_generated|divider|divider|StageOut[62]~90_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \display_unidades~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[62]~90_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[61]~91_combout\,
	combout => \display_unidades~1_combout\);

-- Location: FF_X32_Y27_N1
\contador_unidades[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	asdata => contador(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_unidades(0));

-- Location: LCCOMB_X31_Y27_N20
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & contador(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & contador(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => contador(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X32_Y27_N0
\display_unidades~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_unidades~2_combout\ = ((\stop~input_o\ & (contador_unidades(0))) # (!\stop~input_o\ & ((\Mux3~0_combout\)))) # (!\display_unidades~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidades~1_combout\,
	datab => \stop~input_o\,
	datac => contador_unidades(0),
	datad => \Mux3~0_combout\,
	combout => \display_unidades~2_combout\);

-- Location: FF_X32_Y27_N31
\contador_unidades[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	asdata => contador(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_unidades(1));

-- Location: LCCOMB_X31_Y27_N22
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\) # (!contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => contador(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X32_Y27_N30
\display_unidades~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_unidades~3_combout\ = ((\stop~input_o\ & (contador_unidades(1))) # (!\stop~input_o\ & ((\Mux2~0_combout\)))) # (!\display_unidades~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidades~1_combout\,
	datab => \stop~input_o\,
	datac => contador_unidades(1),
	datad => \Mux2~0_combout\,
	combout => \display_unidades~3_combout\);

-- Location: FF_X32_Y27_N27
\contador_unidades[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	asdata => contador(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_unidades(2));

-- Location: LCCOMB_X31_Y27_N8
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (contador(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => contador(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X32_Y27_N26
\display_unidades~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_unidades~4_combout\ = ((\stop~input_o\ & (contador_unidades(2))) # (!\stop~input_o\ & ((\Mux1~0_combout\)))) # (!\display_unidades~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidades~1_combout\,
	datab => \stop~input_o\,
	datac => contador_unidades(2),
	datad => \Mux1~0_combout\,
	combout => \display_unidades~4_combout\);

-- Location: FF_X32_Y27_N9
\contador_unidades[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	asdata => contador(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_unidades(3));

-- Location: LCCOMB_X31_Y27_N14
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & contador(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => contador(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X32_Y27_N8
\display_unidades~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_unidades~5_combout\ = ((\stop~input_o\ & (contador_unidades(3))) # (!\stop~input_o\ & ((\Mux0~0_combout\)))) # (!\display_unidades~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unidades~1_combout\,
	datab => \stop~input_o\,
	datac => contador_unidades(3),
	datad => \Mux0~0_combout\,
	combout => \display_unidades~5_combout\);

-- Location: LCCOMB_X28_Y27_N6
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = contador(5) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(contador(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(5),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X28_Y27_N8
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (contador(6) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!contador(6) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!contador(6) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X28_Y27_N10
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (contador(7) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!contador(7) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((contador(7) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(7),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X28_Y27_N12
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X29_Y27_N10
\Div0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (contador(5) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X29_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X29_Y27_N30
\Div0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (contador(4) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X29_Y27_N2
\Div0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (contador(4) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X29_Y27_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X29_Y27_N14
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~40_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X28_Y27_N16
\Div0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X29_Y27_N24
\Div0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & contador(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => contador(7),
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X28_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X28_Y27_N18
\Div0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (contador(6) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X29_Y27_N16
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X29_Y27_N18
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y27_N20
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X29_Y28_N0
\Div0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X28_Y27_N22
\Div0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (contador(6))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => contador(6),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X29_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (contador(5))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => contador(5),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X30_Y28_N0
\Div0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X30_Y28_N10
\Div0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (contador(4) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X30_Y28_N8
\Div0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X30_Y28_N12
\Div0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (contador(3) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X30_Y28_N18
\Div0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (contador(3) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X30_Y28_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X30_Y28_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X30_Y28_N24
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X30_Y28_N26
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X30_Y28_N28
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X30_Y28_N2
\Div0|auto_generated|divider|divider|StageOut[28]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X30_Y28_N6
\Div0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X30_Y28_N14
\Div0|auto_generated|divider|divider|StageOut[27]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (contador(4))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X31_Y28_N4
\Div0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X31_Y28_N26
\Div0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (contador(3) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X31_Y28_N28
\Div0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X30_Y28_N16
\Div0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (contador(2) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X31_Y28_N2
\Div0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (contador(2) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X31_Y28_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X31_Y28_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X31_Y28_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X31_Y28_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X31_Y28_N24
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X31_Y28_N12
\Div0|auto_generated|divider|divider|StageOut[33]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X32_Y28_N28
\Div0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X32_Y28_N22
\Div0|auto_generated|divider|divider|StageOut[32]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X31_Y28_N6
\Div0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (contador(3))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X32_Y28_N26
\Div0|auto_generated|divider|divider|StageOut[31]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X32_Y28_N24
\Div0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (contador(2) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X32_Y28_N4
\Div0|auto_generated|divider|divider|StageOut[30]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ = (contador(1) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X32_Y28_N0
\Div0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (contador(1) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X32_Y28_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~61_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X32_Y28_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X32_Y28_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X32_Y28_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y28_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X31_Y28_N0
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X31_Y27_N12
\Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!\stop~input_o\ & ((!\Mux13~0_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stop~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X30_Y28_N30
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X29_Y27_N8
\Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (!\stop~input_o\ & ((\Mux12~0_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \stop~input_o\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X30_Y28_N4
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X29_Y27_N6
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (!\stop~input_o\ & ((\Mux11~0_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \stop~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: FF_X32_Y27_N3
\contador_decenas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	asdata => contador(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_decenas(0));

-- Location: LCCOMB_X31_Y28_N30
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X32_Y27_N2
\display_decenas~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_decenas~0_combout\ = (\stop~input_o\ & (((contador_decenas(0))))) # (!\stop~input_o\ & (((\Mux10~0_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \stop~input_o\,
	datac => contador_decenas(0),
	datad => \Mux10~0_combout\,
	combout => \display_decenas~0_combout\);

-- Location: FF_X32_Y27_N5
\contador_decenas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	asdata => contador(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_decenas(1));

-- Location: LCCOMB_X31_Y28_N8
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X32_Y27_N4
\display_decenas~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_decenas~1_combout\ = (\stop~input_o\ & (((contador_decenas(1))))) # (!\stop~input_o\ & (((\Mux9~0_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \stop~input_o\,
	datac => contador_decenas(1),
	datad => \Mux9~0_combout\,
	combout => \display_decenas~1_combout\);

-- Location: LCCOMB_X31_Y28_N10
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X32_Y27_N11
\contador_decenas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	asdata => contador(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_decenas(2));

-- Location: LCCOMB_X32_Y27_N10
\display_decenas~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_decenas~2_combout\ = (\stop~input_o\ & (((contador_decenas(2))))) # (!\stop~input_o\ & ((\Mux8~0_combout\) # ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \stop~input_o\,
	datac => contador_decenas(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \display_decenas~2_combout\);

-- Location: FF_X32_Y27_N7
\contador_decenas[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_1seg_state~clkctrl_outclk\,
	asdata => contador(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \proceso_contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_decenas(3));

-- Location: LCCOMB_X31_Y28_N14
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X32_Y27_N6
\display_decenas~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_decenas~3_combout\ = (\stop~input_o\ & (((contador_decenas(3))))) # (!\stop~input_o\ & (((\Mux7~0_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \stop~input_o\,
	datac => contador_decenas(3),
	datad => \Mux7~0_combout\,
	combout => \display_decenas~3_combout\);

ww_clk_div_1seg <= \clk_div_1seg~output_o\;

ww_display_unidades(0) <= \display_unidades[0]~output_o\;

ww_display_unidades(1) <= \display_unidades[1]~output_o\;

ww_display_unidades(2) <= \display_unidades[2]~output_o\;

ww_display_unidades(3) <= \display_unidades[3]~output_o\;

ww_display_unidades(4) <= \display_unidades[4]~output_o\;

ww_display_unidades(5) <= \display_unidades[5]~output_o\;

ww_display_unidades(6) <= \display_unidades[6]~output_o\;

ww_display_decenas(0) <= \display_decenas[0]~output_o\;

ww_display_decenas(1) <= \display_decenas[1]~output_o\;

ww_display_decenas(2) <= \display_decenas[2]~output_o\;

ww_display_decenas(3) <= \display_decenas[3]~output_o\;

ww_display_decenas(4) <= \display_decenas[4]~output_o\;

ww_display_decenas(5) <= \display_decenas[5]~output_o\;

ww_display_decenas(6) <= \display_decenas[6]~output_o\;
END structure;


