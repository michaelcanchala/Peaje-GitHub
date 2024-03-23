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

-- DATE "03/14/2024 12:44:44"

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

ENTITY 	div_500ms IS
    PORT (
	clk50mhz : IN std_logic;
	clk : OUT std_logic
	);
END div_500ms;

-- Design Ports Information
-- clk	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50mhz	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF div_500ms IS
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
SIGNAL \count[0]~25_combout\ : std_logic;
SIGNAL \count[0]~26\ : std_logic;
SIGNAL \count[1]~27_combout\ : std_logic;
SIGNAL \count[1]~28\ : std_logic;
SIGNAL \count[2]~29_combout\ : std_logic;
SIGNAL \count[2]~30\ : std_logic;
SIGNAL \count[3]~31_combout\ : std_logic;
SIGNAL \count[3]~32\ : std_logic;
SIGNAL \count[4]~33_combout\ : std_logic;
SIGNAL \count[4]~34\ : std_logic;
SIGNAL \count[5]~35_combout\ : std_logic;
SIGNAL \count[5]~36\ : std_logic;
SIGNAL \count[6]~37_combout\ : std_logic;
SIGNAL \count[6]~38\ : std_logic;
SIGNAL \count[7]~39_combout\ : std_logic;
SIGNAL \count[7]~40\ : std_logic;
SIGNAL \count[8]~41_combout\ : std_logic;
SIGNAL \count[8]~42\ : std_logic;
SIGNAL \count[9]~43_combout\ : std_logic;
SIGNAL \count[9]~44\ : std_logic;
SIGNAL \count[10]~45_combout\ : std_logic;
SIGNAL \count[10]~46\ : std_logic;
SIGNAL \count[11]~47_combout\ : std_logic;
SIGNAL \count[11]~48\ : std_logic;
SIGNAL \count[12]~49_combout\ : std_logic;
SIGNAL \count[12]~50\ : std_logic;
SIGNAL \count[13]~51_combout\ : std_logic;
SIGNAL \count[13]~52\ : std_logic;
SIGNAL \count[14]~53_combout\ : std_logic;
SIGNAL \count[14]~54\ : std_logic;
SIGNAL \count[15]~55_combout\ : std_logic;
SIGNAL \count[15]~56\ : std_logic;
SIGNAL \count[16]~57_combout\ : std_logic;
SIGNAL \count[16]~58\ : std_logic;
SIGNAL \count[17]~59_combout\ : std_logic;
SIGNAL \count[17]~60\ : std_logic;
SIGNAL \count[18]~61_combout\ : std_logic;
SIGNAL \count[18]~62\ : std_logic;
SIGNAL \count[19]~63_combout\ : std_logic;
SIGNAL \count[19]~64\ : std_logic;
SIGNAL \count[20]~65_combout\ : std_logic;
SIGNAL \count[20]~66\ : std_logic;
SIGNAL \count[21]~67_combout\ : std_logic;
SIGNAL \count[21]~68\ : std_logic;
SIGNAL \count[22]~69_combout\ : std_logic;
SIGNAL \count[22]~70\ : std_logic;
SIGNAL \count[23]~71_combout\ : std_logic;
SIGNAL \count[23]~72\ : std_logic;
SIGNAL \count[24]~73_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \clk_state~0_combout\ : std_logic;
SIGNAL \clk_state~q\ : std_logic;
SIGNAL count : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;

BEGIN

ww_clk50mhz <= clk50mhz;
clk <= ww_clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50mhz~input_o\);
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;

-- Location: IOOBUF_X0_Y20_N2
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

-- Location: LCCOMB_X15_Y17_N8
\count[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~25_combout\ = count(0) $ (VCC)
-- \count[0]~26\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~25_combout\,
	cout => \count[0]~26\);

-- Location: FF_X15_Y17_N9
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[0]~25_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X15_Y17_N10
\count[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~27_combout\ = (count(1) & (!\count[0]~26\)) # (!count(1) & ((\count[0]~26\) # (GND)))
-- \count[1]~28\ = CARRY((!\count[0]~26\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \count[0]~26\,
	combout => \count[1]~27_combout\,
	cout => \count[1]~28\);

-- Location: FF_X15_Y17_N11
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[1]~27_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X15_Y17_N12
\count[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~29_combout\ = (count(2) & (\count[1]~28\ $ (GND))) # (!count(2) & (!\count[1]~28\ & VCC))
-- \count[2]~30\ = CARRY((count(2) & !\count[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~28\,
	combout => \count[2]~29_combout\,
	cout => \count[2]~30\);

-- Location: FF_X15_Y17_N13
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[2]~29_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X15_Y17_N14
\count[3]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~31_combout\ = (count(3) & (!\count[2]~30\)) # (!count(3) & ((\count[2]~30\) # (GND)))
-- \count[3]~32\ = CARRY((!\count[2]~30\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~30\,
	combout => \count[3]~31_combout\,
	cout => \count[3]~32\);

-- Location: FF_X15_Y17_N15
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[3]~31_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X15_Y17_N16
\count[4]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~33_combout\ = (count(4) & (\count[3]~32\ $ (GND))) # (!count(4) & (!\count[3]~32\ & VCC))
-- \count[4]~34\ = CARRY((count(4) & !\count[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~32\,
	combout => \count[4]~33_combout\,
	cout => \count[4]~34\);

-- Location: FF_X15_Y17_N17
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[4]~33_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X15_Y17_N18
\count[5]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~35_combout\ = (count(5) & (!\count[4]~34\)) # (!count(5) & ((\count[4]~34\) # (GND)))
-- \count[5]~36\ = CARRY((!\count[4]~34\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~34\,
	combout => \count[5]~35_combout\,
	cout => \count[5]~36\);

-- Location: FF_X15_Y17_N19
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[5]~35_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X15_Y17_N20
\count[6]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~37_combout\ = (count(6) & (\count[5]~36\ $ (GND))) # (!count(6) & (!\count[5]~36\ & VCC))
-- \count[6]~38\ = CARRY((count(6) & !\count[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~36\,
	combout => \count[6]~37_combout\,
	cout => \count[6]~38\);

-- Location: FF_X15_Y17_N21
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[6]~37_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X15_Y17_N22
\count[7]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~39_combout\ = (count(7) & (!\count[6]~38\)) # (!count(7) & ((\count[6]~38\) # (GND)))
-- \count[7]~40\ = CARRY((!\count[6]~38\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \count[6]~38\,
	combout => \count[7]~39_combout\,
	cout => \count[7]~40\);

-- Location: FF_X15_Y17_N23
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[7]~39_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X15_Y17_N24
\count[8]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~41_combout\ = (count(8) & (\count[7]~40\ $ (GND))) # (!count(8) & (!\count[7]~40\ & VCC))
-- \count[8]~42\ = CARRY((count(8) & !\count[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~40\,
	combout => \count[8]~41_combout\,
	cout => \count[8]~42\);

-- Location: FF_X15_Y17_N25
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[8]~41_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X15_Y17_N26
\count[9]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~43_combout\ = (count(9) & (!\count[8]~42\)) # (!count(9) & ((\count[8]~42\) # (GND)))
-- \count[9]~44\ = CARRY((!\count[8]~42\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \count[8]~42\,
	combout => \count[9]~43_combout\,
	cout => \count[9]~44\);

-- Location: FF_X15_Y17_N27
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[9]~43_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X15_Y17_N28
\count[10]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[10]~45_combout\ = (count(10) & (\count[9]~44\ $ (GND))) # (!count(10) & (!\count[9]~44\ & VCC))
-- \count[10]~46\ = CARRY((count(10) & !\count[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~44\,
	combout => \count[10]~45_combout\,
	cout => \count[10]~46\);

-- Location: FF_X15_Y17_N29
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[10]~45_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X15_Y17_N30
\count[11]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[11]~47_combout\ = (count(11) & (!\count[10]~46\)) # (!count(11) & ((\count[10]~46\) # (GND)))
-- \count[11]~48\ = CARRY((!\count[10]~46\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~46\,
	combout => \count[11]~47_combout\,
	cout => \count[11]~48\);

-- Location: FF_X15_Y17_N31
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[11]~47_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X15_Y16_N0
\count[12]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[12]~49_combout\ = (count(12) & (\count[11]~48\ $ (GND))) # (!count(12) & (!\count[11]~48\ & VCC))
-- \count[12]~50\ = CARRY((count(12) & !\count[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~48\,
	combout => \count[12]~49_combout\,
	cout => \count[12]~50\);

-- Location: FF_X15_Y16_N1
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[12]~49_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X15_Y16_N2
\count[13]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[13]~51_combout\ = (count(13) & (!\count[12]~50\)) # (!count(13) & ((\count[12]~50\) # (GND)))
-- \count[13]~52\ = CARRY((!\count[12]~50\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~50\,
	combout => \count[13]~51_combout\,
	cout => \count[13]~52\);

-- Location: FF_X15_Y16_N3
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[13]~51_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X15_Y16_N4
\count[14]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[14]~53_combout\ = (count(14) & (\count[13]~52\ $ (GND))) # (!count(14) & (!\count[13]~52\ & VCC))
-- \count[14]~54\ = CARRY((count(14) & !\count[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~52\,
	combout => \count[14]~53_combout\,
	cout => \count[14]~54\);

-- Location: FF_X15_Y16_N5
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[14]~53_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X15_Y16_N6
\count[15]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~55_combout\ = (count(15) & (!\count[14]~54\)) # (!count(15) & ((\count[14]~54\) # (GND)))
-- \count[15]~56\ = CARRY((!\count[14]~54\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~54\,
	combout => \count[15]~55_combout\,
	cout => \count[15]~56\);

-- Location: FF_X15_Y16_N7
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[15]~55_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X15_Y16_N8
\count[16]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[16]~57_combout\ = (count(16) & (\count[15]~56\ $ (GND))) # (!count(16) & (!\count[15]~56\ & VCC))
-- \count[16]~58\ = CARRY((count(16) & !\count[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~56\,
	combout => \count[16]~57_combout\,
	cout => \count[16]~58\);

-- Location: FF_X15_Y16_N9
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[16]~57_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X15_Y16_N10
\count[17]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[17]~59_combout\ = (count(17) & (!\count[16]~58\)) # (!count(17) & ((\count[16]~58\) # (GND)))
-- \count[17]~60\ = CARRY((!\count[16]~58\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \count[16]~58\,
	combout => \count[17]~59_combout\,
	cout => \count[17]~60\);

-- Location: FF_X15_Y16_N11
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[17]~59_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X15_Y16_N12
\count[18]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[18]~61_combout\ = (count(18) & (\count[17]~60\ $ (GND))) # (!count(18) & (!\count[17]~60\ & VCC))
-- \count[18]~62\ = CARRY((count(18) & !\count[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~60\,
	combout => \count[18]~61_combout\,
	cout => \count[18]~62\);

-- Location: FF_X15_Y16_N13
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[18]~61_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X15_Y16_N14
\count[19]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[19]~63_combout\ = (count(19) & (!\count[18]~62\)) # (!count(19) & ((\count[18]~62\) # (GND)))
-- \count[19]~64\ = CARRY((!\count[18]~62\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~62\,
	combout => \count[19]~63_combout\,
	cout => \count[19]~64\);

-- Location: FF_X15_Y16_N15
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[19]~63_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X15_Y16_N16
\count[20]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[20]~65_combout\ = (count(20) & (\count[19]~64\ $ (GND))) # (!count(20) & (!\count[19]~64\ & VCC))
-- \count[20]~66\ = CARRY((count(20) & !\count[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~64\,
	combout => \count[20]~65_combout\,
	cout => \count[20]~66\);

-- Location: FF_X15_Y16_N17
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[20]~65_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X15_Y16_N18
\count[21]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[21]~67_combout\ = (count(21) & (!\count[20]~66\)) # (!count(21) & ((\count[20]~66\) # (GND)))
-- \count[21]~68\ = CARRY((!\count[20]~66\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~66\,
	combout => \count[21]~67_combout\,
	cout => \count[21]~68\);

-- Location: FF_X15_Y16_N19
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[21]~67_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X15_Y16_N20
\count[22]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[22]~69_combout\ = (count(22) & (\count[21]~68\ $ (GND))) # (!count(22) & (!\count[21]~68\ & VCC))
-- \count[22]~70\ = CARRY((count(22) & !\count[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~68\,
	combout => \count[22]~69_combout\,
	cout => \count[22]~70\);

-- Location: FF_X15_Y16_N21
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[22]~69_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X15_Y16_N22
\count[23]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[23]~71_combout\ = (count(23) & (!\count[22]~70\)) # (!count(23) & ((\count[22]~70\) # (GND)))
-- \count[23]~72\ = CARRY((!\count[22]~70\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~70\,
	combout => \count[23]~71_combout\,
	cout => \count[23]~72\);

-- Location: FF_X15_Y16_N23
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[23]~71_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X15_Y16_N24
\count[24]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[24]~73_combout\ = \count[23]~72\ $ (!count(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(24),
	cin => \count[23]~72\,
	combout => \count[24]~73_combout\);

-- Location: FF_X15_Y16_N25
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50mhz~inputclkctrl_outclk\,
	d => \count[24]~73_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X15_Y16_N28
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!count(16) & !count(17))) # (!count(19))) # (!count(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(19),
	datac => count(16),
	datad => count(17),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X15_Y16_N30
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((\LessThan0~4_combout\) # (!count(22))) # (!count(20))) # (!count(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(20),
	datac => count(22),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X15_Y17_N6
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!count(7) & (!count(8) & (!count(9) & !count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(8),
	datac => count(9),
	datad => count(6),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X15_Y17_N4
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!count(13)) # (!count(14))) # (!count(12))) # (!count(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(12),
	datac => count(14),
	datad => count(13),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y16_N26
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(17) & (!count(23) & !count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datac => count(23),
	datad => count(15),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y17_N0
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((\LessThan0~2_combout\ & !count(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => count(10),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X15_Y17_N2
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((\LessThan0~3_combout\) # ((!count(23) & \LessThan0~5_combout\))) # (!count(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(24),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X14_Y17_N12
\clk_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_state~0_combout\ = \clk_state~q\ $ (!\LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_state~q\,
	datad => \LessThan0~6_combout\,
	combout => \clk_state~0_combout\);

-- Location: FF_X14_Y17_N13
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


