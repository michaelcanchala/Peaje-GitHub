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

-- DATE "03/21/2024 10:59:59"

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

ENTITY 	semaforo01 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	cambio_color : IN std_logic;
	semaforo_verde : OUT std_logic;
	semaforo_rojo : OUT std_logic;
	barrera_abierta : OUT std_logic;
	barrera_cerrada : OUT std_logic
	);
END semaforo01;

-- Design Ports Information
-- semaforo_verde	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_rojo	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_abierta	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_cerrada	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio_color	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF semaforo01 IS
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
SIGNAL ww_cambio_color : std_logic;
SIGNAL ww_semaforo_verde : std_logic;
SIGNAL ww_semaforo_rojo : std_logic;
SIGNAL ww_barrera_abierta : std_logic;
SIGNAL ww_barrera_cerrada : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \semaforo_verde~output_o\ : std_logic;
SIGNAL \semaforo_rojo~output_o\ : std_logic;
SIGNAL \barrera_abierta~output_o\ : std_logic;
SIGNAL \barrera_cerrada~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cambio_color~input_o\ : std_logic;
SIGNAL \estado_actual_semaforo~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \estado_actual_semaforo~q\ : std_logic;
SIGNAL \semaforo_verde~reg0feeder_combout\ : std_logic;
SIGNAL \semaforo_verde~reg0_q\ : std_logic;
SIGNAL \semaforo_rojo~0_combout\ : std_logic;
SIGNAL \semaforo_rojo~reg0_q\ : std_logic;
SIGNAL \barrera_abierta~reg0feeder_combout\ : std_logic;
SIGNAL \barrera_abierta~reg0_q\ : std_logic;
SIGNAL \barrera_cerrada~0_combout\ : std_logic;
SIGNAL \barrera_cerrada~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_cambio_color <= cambio_color;
semaforo_verde <= ww_semaforo_verde;
semaforo_rojo <= ww_semaforo_rojo;
barrera_abierta <= ww_barrera_abierta;
barrera_cerrada <= ww_barrera_cerrada;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X0_Y27_N16
\semaforo_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semaforo_verde~reg0_q\,
	devoe => ww_devoe,
	o => \semaforo_verde~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\semaforo_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semaforo_rojo~reg0_q\,
	devoe => ww_devoe,
	o => \semaforo_rojo~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\barrera_abierta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \barrera_abierta~reg0_q\,
	devoe => ww_devoe,
	o => \barrera_abierta~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\barrera_cerrada~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \barrera_cerrada~reg0_q\,
	devoe => ww_devoe,
	o => \barrera_cerrada~output_o\);

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

-- Location: IOIBUF_X0_Y24_N1
\cambio_color~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cambio_color,
	o => \cambio_color~input_o\);

-- Location: LCCOMB_X1_Y27_N0
\estado_actual_semaforo~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual_semaforo~feeder_combout\ = \cambio_color~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cambio_color~input_o\,
	combout => \estado_actual_semaforo~feeder_combout\);

-- Location: IOIBUF_X0_Y27_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y27_N1
estado_actual_semaforo : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual_semaforo~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual_semaforo~q\);

-- Location: LCCOMB_X1_Y27_N16
\semaforo_verde~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \semaforo_verde~reg0feeder_combout\ = \estado_actual_semaforo~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_actual_semaforo~q\,
	combout => \semaforo_verde~reg0feeder_combout\);

-- Location: FF_X1_Y27_N17
\semaforo_verde~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semaforo_verde~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semaforo_verde~reg0_q\);

-- Location: LCCOMB_X1_Y27_N14
\semaforo_rojo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \semaforo_rojo~0_combout\ = !\estado_actual_semaforo~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_actual_semaforo~q\,
	combout => \semaforo_rojo~0_combout\);

-- Location: FF_X1_Y27_N15
\semaforo_rojo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semaforo_rojo~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semaforo_rojo~reg0_q\);

-- Location: LCCOMB_X1_Y27_N4
\barrera_abierta~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \barrera_abierta~reg0feeder_combout\ = \estado_actual_semaforo~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_actual_semaforo~q\,
	combout => \barrera_abierta~reg0feeder_combout\);

-- Location: FF_X1_Y27_N5
\barrera_abierta~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \barrera_abierta~reg0feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \barrera_abierta~reg0_q\);

-- Location: LCCOMB_X1_Y27_N30
\barrera_cerrada~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \barrera_cerrada~0_combout\ = !\estado_actual_semaforo~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_actual_semaforo~q\,
	combout => \barrera_cerrada~0_combout\);

-- Location: FF_X1_Y27_N31
\barrera_cerrada~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \barrera_cerrada~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \barrera_cerrada~reg0_q\);

ww_semaforo_verde <= \semaforo_verde~output_o\;

ww_semaforo_rojo <= \semaforo_rojo~output_o\;

ww_barrera_abierta <= \barrera_abierta~output_o\;

ww_barrera_cerrada <= \barrera_cerrada~output_o\;
END structure;


