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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "03/09/2023 12:59:20"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eightBitRegister IS
    PORT (
	i_clock : IN std_logic;
	i_gReset : IN std_logic;
	i_enable : IN std_logic;
	i_Data : IN std_logic_vector(7 DOWNTO 0);
	o_q : OUT std_logic_vector(7 DOWNTO 0)
	);
END eightBitRegister;

-- Design Ports Information
-- o_q[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_q[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_q[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_q[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_q[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_q[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_q[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_q[7]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Data[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_gReset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_enable	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Data[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Data[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Data[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Data[4]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Data[5]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Data[6]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Data[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eightBitRegister IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_gReset : std_logic;
SIGNAL ww_i_enable : std_logic;
SIGNAL ww_i_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_q : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_gReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_q[0]~output_o\ : std_logic;
SIGNAL \o_q[1]~output_o\ : std_logic;
SIGNAL \o_q[2]~output_o\ : std_logic;
SIGNAL \o_q[3]~output_o\ : std_logic;
SIGNAL \o_q[4]~output_o\ : std_logic;
SIGNAL \o_q[5]~output_o\ : std_logic;
SIGNAL \o_q[6]~output_o\ : std_logic;
SIGNAL \o_q[7]~output_o\ : std_logic;
SIGNAL \i_clock~input_o\ : std_logic;
SIGNAL \i_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_Data[0]~input_o\ : std_logic;
SIGNAL \bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \i_gReset~input_o\ : std_logic;
SIGNAL \i_gReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_enable~input_o\ : std_logic;
SIGNAL \bit0|int_q~q\ : std_logic;
SIGNAL \i_Data[1]~input_o\ : std_logic;
SIGNAL \bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \bit1|int_q~q\ : std_logic;
SIGNAL \i_Data[2]~input_o\ : std_logic;
SIGNAL \bit2|int_q~q\ : std_logic;
SIGNAL \i_Data[3]~input_o\ : std_logic;
SIGNAL \bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \bit3|int_q~q\ : std_logic;
SIGNAL \i_Data[4]~input_o\ : std_logic;
SIGNAL \bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \bit4|int_q~q\ : std_logic;
SIGNAL \i_Data[5]~input_o\ : std_logic;
SIGNAL \bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \bit5|int_q~q\ : std_logic;
SIGNAL \i_Data[6]~input_o\ : std_logic;
SIGNAL \bit6|int_q~q\ : std_logic;
SIGNAL \i_Data[7]~input_o\ : std_logic;
SIGNAL \bit7|int_q~q\ : std_logic;

BEGIN

ww_i_clock <= i_clock;
ww_i_gReset <= i_gReset;
ww_i_enable <= i_enable;
ww_i_Data <= i_Data;
o_q <= ww_o_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_gReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_gReset~input_o\);

\i_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clock~input_o\);

-- Location: IOOBUF_X33_Y25_N2
\o_q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit0|int_q~q\,
	devoe => ww_devoe,
	o => \o_q[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\o_q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit1|int_q~q\,
	devoe => ww_devoe,
	o => \o_q[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\o_q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit2|int_q~q\,
	devoe => ww_devoe,
	o => \o_q[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\o_q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit3|int_q~q\,
	devoe => ww_devoe,
	o => \o_q[3]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\o_q[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit4|int_q~q\,
	devoe => ww_devoe,
	o => \o_q[4]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\o_q[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit5|int_q~q\,
	devoe => ww_devoe,
	o => \o_q[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\o_q[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit6|int_q~q\,
	devoe => ww_devoe,
	o => \o_q[6]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\o_q[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit7|int_q~q\,
	devoe => ww_devoe,
	o => \o_q[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\i_clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clock,
	o => \i_clock~input_o\);

-- Location: CLKCTRL_G17
\i_clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y16_N8
\i_Data[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Data(0),
	o => \i_Data[0]~input_o\);

-- Location: LCCOMB_X32_Y16_N16
\bit0|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit0|int_q~feeder_combout\ = \i_Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Data[0]~input_o\,
	combout => \bit0|int_q~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\i_gReset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_gReset,
	o => \i_gReset~input_o\);

-- Location: CLKCTRL_G19
\i_gReset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_gReset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_gReset~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y16_N1
\i_enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_enable,
	o => \i_enable~input_o\);

-- Location: FF_X32_Y16_N17
\bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \bit0|int_q~feeder_combout\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit0|int_q~q\);

-- Location: IOIBUF_X33_Y14_N8
\i_Data[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Data(1),
	o => \i_Data[1]~input_o\);

-- Location: LCCOMB_X32_Y16_N26
\bit1|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit1|int_q~feeder_combout\ = \i_Data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Data[1]~input_o\,
	combout => \bit1|int_q~feeder_combout\);

-- Location: FF_X32_Y16_N27
\bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \bit1|int_q~feeder_combout\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit1|int_q~q\);

-- Location: IOIBUF_X33_Y12_N1
\i_Data[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Data(2),
	o => \i_Data[2]~input_o\);

-- Location: FF_X32_Y16_N5
\bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_Data[2]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit2|int_q~q\);

-- Location: IOIBUF_X33_Y14_N1
\i_Data[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Data(3),
	o => \i_Data[3]~input_o\);

-- Location: LCCOMB_X32_Y16_N22
\bit3|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit3|int_q~feeder_combout\ = \i_Data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Data[3]~input_o\,
	combout => \bit3|int_q~feeder_combout\);

-- Location: FF_X32_Y16_N23
\bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \bit3|int_q~feeder_combout\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit3|int_q~q\);

-- Location: IOIBUF_X31_Y0_N1
\i_Data[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Data(4),
	o => \i_Data[4]~input_o\);

-- Location: LCCOMB_X32_Y16_N24
\bit4|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit4|int_q~feeder_combout\ = \i_Data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Data[4]~input_o\,
	combout => \bit4|int_q~feeder_combout\);

-- Location: FF_X32_Y16_N25
\bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \bit4|int_q~feeder_combout\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit4|int_q~q\);

-- Location: IOIBUF_X29_Y0_N8
\i_Data[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Data(5),
	o => \i_Data[5]~input_o\);

-- Location: LCCOMB_X32_Y16_N18
\bit5|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit5|int_q~feeder_combout\ = \i_Data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Data[5]~input_o\,
	combout => \bit5|int_q~feeder_combout\);

-- Location: FF_X32_Y16_N19
\bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \bit5|int_q~feeder_combout\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit5|int_q~q\);

-- Location: IOIBUF_X33_Y11_N1
\i_Data[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Data(6),
	o => \i_Data[6]~input_o\);

-- Location: FF_X32_Y16_N13
\bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_Data[6]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit6|int_q~q\);

-- Location: IOIBUF_X33_Y15_N1
\i_Data[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Data(7),
	o => \i_Data[7]~input_o\);

-- Location: FF_X32_Y16_N31
\bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_Data[7]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \i_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit7|int_q~q\);

ww_o_q(0) <= \o_q[0]~output_o\;

ww_o_q(1) <= \o_q[1]~output_o\;

ww_o_q(2) <= \o_q[2]~output_o\;

ww_o_q(3) <= \o_q[3]~output_o\;

ww_o_q(4) <= \o_q[4]~output_o\;

ww_o_q(5) <= \o_q[5]~output_o\;

ww_o_q(6) <= \o_q[6]~output_o\;

ww_o_q(7) <= \o_q[7]~output_o\;
END structure;


