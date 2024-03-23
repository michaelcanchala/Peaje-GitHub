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

-- DATE "03/21/2024 11:04:33"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	IdentificacionCategoria IS
    PORT (
	tag_id : IN std_logic_vector(4 DOWNTO 0);
	categoria : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END IdentificacionCategoria;

-- Design Ports Information
-- tag_id[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_id[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_id[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_id[3]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_id[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF IdentificacionCategoria IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_tag_id : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_categoria : std_logic_vector(2 DOWNTO 0);
SIGNAL \tag_id[0]~input_o\ : std_logic;
SIGNAL \tag_id[1]~input_o\ : std_logic;
SIGNAL \tag_id[2]~input_o\ : std_logic;
SIGNAL \categoria[0]~output_o\ : std_logic;
SIGNAL \categoria[1]~output_o\ : std_logic;
SIGNAL \categoria[2]~output_o\ : std_logic;
SIGNAL \tag_id[3]~input_o\ : std_logic;
SIGNAL \tag_id[4]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_tag_id[3]~input_o\ : std_logic;

BEGIN

ww_tag_id <= tag_id;
categoria <= ww_categoria;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_tag_id[3]~input_o\ <= NOT \tag_id[3]~input_o\;

-- Location: IOOBUF_X0_Y20_N9
\categoria[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_tag_id[3]~input_o\,
	devoe => ww_devoe,
	o => \categoria[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\categoria[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \categoria[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\categoria[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \categoria[2]~output_o\);

-- Location: IOIBUF_X0_Y27_N1
\tag_id[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_id(3),
	o => \tag_id[3]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\tag_id[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_id(4),
	o => \tag_id[4]~input_o\);

-- Location: LCCOMB_X4_Y20_N0
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = \tag_id[4]~input_o\ $ (\tag_id[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_id[4]~input_o\,
	datac => \tag_id[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X4_Y20_N2
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\tag_id[4]~input_o\ & \tag_id[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tag_id[4]~input_o\,
	datac => \tag_id[3]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X0_Y23_N8
\tag_id[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_id(0),
	o => \tag_id[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\tag_id[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_id(1),
	o => \tag_id[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\tag_id[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tag_id(2),
	o => \tag_id[2]~input_o\);

ww_categoria(0) <= \categoria[0]~output_o\;

ww_categoria(1) <= \categoria[1]~output_o\;

ww_categoria(2) <= \categoria[2]~output_o\;
END structure;


