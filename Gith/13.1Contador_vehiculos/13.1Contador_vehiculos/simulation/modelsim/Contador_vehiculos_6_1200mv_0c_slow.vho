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

-- DATE "03/21/2024 10:54:13"

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

ENTITY 	Contador_Vehiculos IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	display : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Contador_Vehiculos;

-- Design Ports Information
-- display[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador_Vehiculos IS
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
SIGNAL ww_display : std_logic_vector(6 DOWNTO 0);
SIGNAL \display[0]~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \display[4]~output_o\ : std_logic;
SIGNAL \display[5]~output_o\ : std_logic;
SIGNAL \display[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \contador[0]~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \contador[1]~0_combout\ : std_logic;
SIGNAL \contador[2]~1_combout\ : std_logic;
SIGNAL \contador[3]~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL contador : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
display <= ww_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X26_Y29_N16
\display[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\display[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\display[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\display[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\display[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\display[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\display[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display[6]~output_o\);

-- Location: IOIBUF_X0_Y25_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X24_Y25_N16
\contador[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~3_combout\ = !contador(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(0),
	combout => \contador[0]~3_combout\);

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

-- Location: FF_X24_Y25_N17
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador[0]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X24_Y25_N10
\contador[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~0_combout\ = contador(1) $ (contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	datad => contador(0),
	combout => \contador[1]~0_combout\);

-- Location: FF_X24_Y25_N11
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X24_Y25_N12
\contador[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~1_combout\ = contador(2) $ (((contador(1) & contador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datac => contador(2),
	datad => contador(0),
	combout => \contador[2]~1_combout\);

-- Location: FF_X24_Y25_N13
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador[2]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X24_Y25_N30
\contador[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~2_combout\ = contador(3) $ (((contador(2) & (contador(0) & contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datac => contador(3),
	datad => contador(1),
	combout => \contador[3]~2_combout\);

-- Location: FF_X24_Y25_N31
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contador[3]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X24_Y25_N24
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (contador(1) & (!contador(3) & ((!contador(0)) # (!contador(2))))) # (!contador(1) & (contador(2) $ ((contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => contador(3),
	datad => contador(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X24_Y25_N26
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (contador(2) & ((contador(3)) # ((contador(1) & contador(0))))) # (!contador(2) & ((contador(1)) # ((!contador(3) & contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => contador(3),
	datad => contador(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X24_Y25_N0
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (contador(0)) # ((contador(1) & ((contador(3)))) # (!contador(1) & (contador(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => contador(3),
	datad => contador(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X24_Y25_N22
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (contador(1) & ((contador(3)) # ((contador(2) & contador(0))))) # (!contador(1) & (contador(2) $ (((!contador(3) & contador(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => contador(3),
	datad => contador(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X24_Y25_N28
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (contador(2) & (((contador(3))))) # (!contador(2) & (contador(1) & ((contador(3)) # (!contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => contador(3),
	datad => contador(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X24_Y25_N14
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (contador(2) & ((contador(3)) # (contador(1) $ (contador(0))))) # (!contador(2) & (contador(1) & (contador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => contador(3),
	datad => contador(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X24_Y25_N20
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (contador(1) & (((contador(3))))) # (!contador(1) & (contador(2) $ (((!contador(3) & contador(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => contador(3),
	datad => contador(0),
	combout => \Mux0~0_combout\);

ww_display(0) <= \display[0]~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(3) <= \display[3]~output_o\;

ww_display(4) <= \display[4]~output_o\;

ww_display(5) <= \display[5]~output_o\;

ww_display(6) <= \display[6]~output_o\;
END structure;


