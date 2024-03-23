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

-- DATE "03/14/2024 17:35:59"

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

ENTITY 	semasalida IS
    PORT (
	LED_Verde : BUFFER std_logic;
	LED_Rojo : BUFFER std_logic;
	Boton : IN std_logic
	);
END semasalida;

-- Design Ports Information
-- LED_Verde	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Rojo	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Boton	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF semasalida IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED_Verde : std_logic;
SIGNAL ww_LED_Rojo : std_logic;
SIGNAL ww_Boton : std_logic;
SIGNAL \LED_Verde~output_o\ : std_logic;
SIGNAL \LED_Rojo~output_o\ : std_logic;
SIGNAL \Boton~input_o\ : std_logic;
SIGNAL \estado_siguiente~0_combout\ : std_logic;
SIGNAL \estado_siguiente~q\ : std_logic;
SIGNAL \ALT_INV_estado_siguiente~q\ : std_logic;

BEGIN

LED_Verde <= ww_LED_Verde;
LED_Rojo <= ww_LED_Rojo;
ww_Boton <= Boton;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_estado_siguiente~q\ <= NOT \estado_siguiente~q\;

-- Location: IOOBUF_X0_Y20_N9
\LED_Verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_estado_siguiente~q\,
	devoe => ww_devoe,
	o => \LED_Verde~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LED_Rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_siguiente~q\,
	devoe => ww_devoe,
	o => \LED_Rojo~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\Boton~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Boton,
	o => \Boton~input_o\);

-- Location: LCCOMB_X1_Y21_N28
\estado_siguiente~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~0_combout\ = !\estado_siguiente~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_siguiente~q\,
	combout => \estado_siguiente~0_combout\);

-- Location: FF_X1_Y21_N29
estado_siguiente : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Boton~input_o\,
	d => \estado_siguiente~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_siguiente~q\);

ww_LED_Verde <= \LED_Verde~output_o\;

ww_LED_Rojo <= \LED_Rojo~output_o\;
END structure;


