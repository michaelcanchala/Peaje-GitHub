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

-- DATE "03/21/2024 10:37:19"

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

ENTITY 	div_1seg IS
    PORT (
	clk50mhz : IN std_logic;
	clk : OUT std_logic
	);
END div_1seg;

-- Design Ports Information
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50mhz	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF div_1seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50mhz : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk50mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~output_o\ : std_logic;
SIGNAL \clk50mhz~input_o\ : std_logic;
SIGNAL \clk50mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~26_combout\ : std_logic;
SIGNAL \count[0]~27\ : std_logic;
SIGNAL \count[1]~28_combout\ : std_logic;
SIGNAL \count[1]~29\ : std_logic;
SIGNAL \count[2]~30_combout\ : std_logic;
SIGNAL \count[2]~31\ : std_logic;
SIGNAL \count[3]~32_combout\ : std_logic;
SIGNAL \count[3]~33\ : std_logic;
SIGNAL \count[4]~34_combout\ : std_logic;
SIGNAL \count[4]~35\ : std_logic;
SIGNAL \count[5]~36_combout\ : std_logic;
SIGNAL \count[5]~37\ : std_logic;
SIGNAL \count[6]~38_combout\ : std_logic;
SIGNAL \count[6]~39\ : std_logic;
SIGNAL \count[7]~40_combout\ : std_logic;
SIGNAL \count[7]~41\ : std_logic;
SIGNAL \count[8]~42_combout\ : std_logic;
SIGNAL \count[8]~43\ : std_logic;
SIGNAL \count[9]~44_combout\ : std_logic;
SIGNAL \count[9]~45\ : std_logic;
SIGNAL \count[10]~46_combout\ : std_logic;
SIGNAL \count[10]~47\ : std_logic;
SIGNAL \count[11]~48_combout\ : std_logic;
SIGNAL \count[11]~49\ : std_logic;
SIGNAL \count[12]~50_combout\ : std_logic;
SIGNAL \count[12]~51\ : std_logic;
SIGNAL \count[13]~52_combout\ : std_logic;
SIGNAL \count[13]~53\ : std_logic;
SIGNAL \count[14]~54_combout\ : std_logic;
SIGNAL \count[14]~55\ : std_logic;
SIGNAL \count[15]~56_combout\ : std_logic;
SIGNAL \count[15]~57\ : std_logic;
SIGNAL \count[16]~58_combout\ : std_logic;
SIGNAL \count[16]~59\ : std_logic;
SIGNAL \count[17]~60_combout\ : std_logic;
SIGNAL \count[17]~61\ : std_logic;
SIGNAL \count[18]~62_combout\ : std_logic;
SIGNAL \count[18]~63\ : std_logic;
SIGNAL \count[19]~64_combout\ : std_logic;
SIGNAL \count[19]~65\ : std_logic;
SIGNAL \count[20]~66_combout\ : std_logic;
SIGNAL \count[20]~67\ : std_logic;
SIGNAL \count[21]~68_combout\ : std_logic;
SIGNAL \count[21]~69\ : std_logic;
SIGNAL \count[22]~70_combout\ : std_logic;
SIGNAL \count[22]~71\ : std_logic;
SIGNAL \count[23]~72_combout\ : std_logic;
SIGNAL \count[23]~73\ : std_logic;
SIGNAL \count[24]~74_combout\ : std_logic;
SIGNAL \count[24]~75\ : std_logic;
SIGNAL \count[25]~76_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \clk_state~0_combout\ : std_logic;
SIGNAL \clk_state~q\ : std_logic;
SIGNAL count : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;

BEGIN

ww_clk50mhz <= clk50mhz;
clk <= ww_clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50mhz~input_o\);
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;

-- Location: IOOBUF_X0_Y20_N9
\clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_state~q\,
	devoe => ww_devoe,
	o => \clk~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk50mhz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50mhz,
	o => \clk50mhz~input_o\);

-- Location: CLKCTRL_G9
\clk50mhz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y21_N6
\count[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~26_combout\ = count(0) $ (VCC)
-- \count[0]~27\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~26_combout\,
	cout => \count[0]~27\);

-- Location: FF_X2_Y21_N7
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[0]~26_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X2_Y21_N8
\count[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~28_combout\ = (count(1) & (!\count[0]~27\)) # (!count(1) & ((\count[0]~27\) # (GND)))
-- \count[1]~29\ = CARRY((!\count[0]~27\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~27\,
	combout => \count[1]~28_combout\,
	cout => \count[1]~29\);

-- Location: FF_X2_Y21_N9
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[1]~28_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X2_Y21_N10
\count[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~30_combout\ = (count(2) & (\count[1]~29\ $ (GND))) # (!count(2) & (!\count[1]~29\ & VCC))
-- \count[2]~31\ = CARRY((count(2) & !\count[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~29\,
	combout => \count[2]~30_combout\,
	cout => \count[2]~31\);

-- Location: FF_X2_Y21_N11
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[2]~30_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X2_Y21_N12
\count[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~32_combout\ = (count(3) & (!\count[2]~31\)) # (!count(3) & ((\count[2]~31\) # (GND)))
-- \count[3]~33\ = CARRY((!\count[2]~31\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~31\,
	combout => \count[3]~32_combout\,
	cout => \count[3]~33\);

-- Location: FF_X2_Y21_N13
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[3]~32_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X2_Y21_N14
\count[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~34_combout\ = (count(4) & (\count[3]~33\ $ (GND))) # (!count(4) & (!\count[3]~33\ & VCC))
-- \count[4]~35\ = CARRY((count(4) & !\count[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~33\,
	combout => \count[4]~34_combout\,
	cout => \count[4]~35\);

-- Location: FF_X2_Y21_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[4]~34_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X2_Y21_N16
\count[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~36_combout\ = (count(5) & (!\count[4]~35\)) # (!count(5) & ((\count[4]~35\) # (GND)))
-- \count[5]~37\ = CARRY((!\count[4]~35\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~35\,
	combout => \count[5]~36_combout\,
	cout => \count[5]~37\);

-- Location: FF_X2_Y21_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[5]~36_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X2_Y21_N18
\count[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~38_combout\ = (count(6) & (\count[5]~37\ $ (GND))) # (!count(6) & (!\count[5]~37\ & VCC))
-- \count[6]~39\ = CARRY((count(6) & !\count[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~37\,
	combout => \count[6]~38_combout\,
	cout => \count[6]~39\);

-- Location: FF_X2_Y21_N19
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[6]~38_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X2_Y21_N20
\count[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~40_combout\ = (count(7) & (!\count[6]~39\)) # (!count(7) & ((\count[6]~39\) # (GND)))
-- \count[7]~41\ = CARRY((!\count[6]~39\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~39\,
	combout => \count[7]~40_combout\,
	cout => \count[7]~41\);

-- Location: FF_X2_Y21_N21
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[7]~40_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X2_Y21_N22
\count[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~42_combout\ = (count(8) & (\count[7]~41\ $ (GND))) # (!count(8) & (!\count[7]~41\ & VCC))
-- \count[8]~43\ = CARRY((count(8) & !\count[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~41\,
	combout => \count[8]~42_combout\,
	cout => \count[8]~43\);

-- Location: FF_X2_Y21_N23
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[8]~42_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X2_Y21_N24
\count[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~44_combout\ = (count(9) & (!\count[8]~43\)) # (!count(9) & ((\count[8]~43\) # (GND)))
-- \count[9]~45\ = CARRY((!\count[8]~43\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \count[8]~43\,
	combout => \count[9]~44_combout\,
	cout => \count[9]~45\);

-- Location: FF_X2_Y21_N25
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[9]~44_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X2_Y21_N26
\count[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[10]~46_combout\ = (count(10) & (\count[9]~45\ $ (GND))) # (!count(10) & (!\count[9]~45\ & VCC))
-- \count[10]~47\ = CARRY((count(10) & !\count[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~45\,
	combout => \count[10]~46_combout\,
	cout => \count[10]~47\);

-- Location: FF_X2_Y21_N27
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[10]~46_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X2_Y21_N28
\count[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[11]~48_combout\ = (count(11) & (!\count[10]~47\)) # (!count(11) & ((\count[10]~47\) # (GND)))
-- \count[11]~49\ = CARRY((!\count[10]~47\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~47\,
	combout => \count[11]~48_combout\,
	cout => \count[11]~49\);

-- Location: FF_X2_Y21_N29
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[11]~48_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X2_Y21_N30
\count[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[12]~50_combout\ = (count(12) & (\count[11]~49\ $ (GND))) # (!count(12) & (!\count[11]~49\ & VCC))
-- \count[12]~51\ = CARRY((count(12) & !\count[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \count[11]~49\,
	combout => \count[12]~50_combout\,
	cout => \count[12]~51\);

-- Location: FF_X1_Y20_N1
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	asdata => \count[12]~50_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X2_Y20_N0
\count[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[13]~52_combout\ = (count(13) & (!\count[12]~51\)) # (!count(13) & ((\count[12]~51\) # (GND)))
-- \count[13]~53\ = CARRY((!\count[12]~51\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~51\,
	combout => \count[13]~52_combout\,
	cout => \count[13]~53\);

-- Location: FF_X2_Y20_N1
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[13]~52_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X2_Y20_N2
\count[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[14]~54_combout\ = (count(14) & (\count[13]~53\ $ (GND))) # (!count(14) & (!\count[13]~53\ & VCC))
-- \count[14]~55\ = CARRY((count(14) & !\count[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~53\,
	combout => \count[14]~54_combout\,
	cout => \count[14]~55\);

-- Location: FF_X2_Y20_N3
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[14]~54_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X2_Y20_N4
\count[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~56_combout\ = (count(15) & (!\count[14]~55\)) # (!count(15) & ((\count[14]~55\) # (GND)))
-- \count[15]~57\ = CARRY((!\count[14]~55\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~55\,
	combout => \count[15]~56_combout\,
	cout => \count[15]~57\);

-- Location: FF_X2_Y20_N5
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[15]~56_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X2_Y20_N6
\count[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[16]~58_combout\ = (count(16) & (\count[15]~57\ $ (GND))) # (!count(16) & (!\count[15]~57\ & VCC))
-- \count[16]~59\ = CARRY((count(16) & !\count[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~57\,
	combout => \count[16]~58_combout\,
	cout => \count[16]~59\);

-- Location: FF_X2_Y20_N7
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[16]~58_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X2_Y20_N8
\count[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[17]~60_combout\ = (count(17) & (!\count[16]~59\)) # (!count(17) & ((\count[16]~59\) # (GND)))
-- \count[17]~61\ = CARRY((!\count[16]~59\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~59\,
	combout => \count[17]~60_combout\,
	cout => \count[17]~61\);

-- Location: FF_X2_Y20_N9
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[17]~60_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X2_Y20_N10
\count[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[18]~62_combout\ = (count(18) & (\count[17]~61\ $ (GND))) # (!count(18) & (!\count[17]~61\ & VCC))
-- \count[18]~63\ = CARRY((count(18) & !\count[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~61\,
	combout => \count[18]~62_combout\,
	cout => \count[18]~63\);

-- Location: FF_X2_Y20_N11
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[18]~62_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X2_Y20_N12
\count[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[19]~64_combout\ = (count(19) & (!\count[18]~63\)) # (!count(19) & ((\count[18]~63\) # (GND)))
-- \count[19]~65\ = CARRY((!\count[18]~63\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~63\,
	combout => \count[19]~64_combout\,
	cout => \count[19]~65\);

-- Location: FF_X2_Y20_N13
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[19]~64_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X2_Y20_N14
\count[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[20]~66_combout\ = (count(20) & (\count[19]~65\ $ (GND))) # (!count(20) & (!\count[19]~65\ & VCC))
-- \count[20]~67\ = CARRY((count(20) & !\count[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~65\,
	combout => \count[20]~66_combout\,
	cout => \count[20]~67\);

-- Location: FF_X2_Y20_N15
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[20]~66_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X2_Y20_N16
\count[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[21]~68_combout\ = (count(21) & (!\count[20]~67\)) # (!count(21) & ((\count[20]~67\) # (GND)))
-- \count[21]~69\ = CARRY((!\count[20]~67\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~67\,
	combout => \count[21]~68_combout\,
	cout => \count[21]~69\);

-- Location: FF_X2_Y20_N17
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[21]~68_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X2_Y20_N18
\count[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[22]~70_combout\ = (count(22) & (\count[21]~69\ $ (GND))) # (!count(22) & (!\count[21]~69\ & VCC))
-- \count[22]~71\ = CARRY((count(22) & !\count[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~69\,
	combout => \count[22]~70_combout\,
	cout => \count[22]~71\);

-- Location: FF_X2_Y20_N19
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[22]~70_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X2_Y20_N20
\count[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[23]~72_combout\ = (count(23) & (!\count[22]~71\)) # (!count(23) & ((\count[22]~71\) # (GND)))
-- \count[23]~73\ = CARRY((!\count[22]~71\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~71\,
	combout => \count[23]~72_combout\,
	cout => \count[23]~73\);

-- Location: FF_X2_Y20_N21
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[23]~72_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X2_Y20_N22
\count[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[24]~74_combout\ = (count(24) & (\count[23]~73\ $ (GND))) # (!count(24) & (!\count[23]~73\ & VCC))
-- \count[24]~75\ = CARRY((count(24) & !\count[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datad => VCC,
	cin => \count[23]~73\,
	combout => \count[24]~74_combout\,
	cout => \count[24]~75\);

-- Location: FF_X2_Y20_N23
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[24]~74_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X2_Y20_N24
\count[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[25]~76_combout\ = \count[24]~75\ $ (count(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(25),
	cin => \count[24]~75\,
	combout => \count[25]~76_combout\);

-- Location: FF_X2_Y20_N25
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[25]~76_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X1_Y20_N10
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!count(18) & !count(17))) # (!count(20))) # (!count(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(17),
	datac => count(19),
	datad => count(20),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X1_Y20_N4
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((\LessThan0~4_combout\) # (!count(22))) # (!count(21))) # (!count(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(21),
	datac => count(22),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X2_Y20_N26
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!count(13)) # (!count(15))) # (!count(14))) # (!count(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(14),
	datac => count(15),
	datad => count(13),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y20_N16
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(24) & (!count(18) & !count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datac => count(18),
	datad => count(16),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y21_N0
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!count(8) & (!count(9) & (!count(10) & !count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(9),
	datac => count(10),
	datad => count(7),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X2_Y20_N28
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((!count(11) & \LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => count(11),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X2_Y20_N30
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((\LessThan0~3_combout\) # ((!count(24) & \LessThan0~5_combout\))) # (!count(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(25),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X1_Y20_N18
\clk_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_state~0_combout\ = \LessThan0~6_combout\ $ (!\clk_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datac => \clk_state~q\,
	combout => \clk_state~0_combout\);

-- Location: FF_X1_Y20_N19
clk_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \clk_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_state~q\);

ww_clk <= \clk~output_o\;
END structure;


