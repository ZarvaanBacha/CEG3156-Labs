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

-- DATE "03/11/2023 13:55:51"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	oneBitFullAdder IS
    PORT (
	i_x : IN std_logic;
	i_y : IN std_logic;
	i_cin : IN std_logic;
	o_cout : OUT std_logic;
	o_s : OUT std_logic
	);
END oneBitFullAdder;

-- Design Ports Information
-- o_cout	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_s	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_x	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_cin	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_y	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF oneBitFullAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_x : std_logic;
SIGNAL ww_i_y : std_logic;
SIGNAL ww_i_cin : std_logic;
SIGNAL ww_o_cout : std_logic;
SIGNAL ww_o_s : std_logic;
SIGNAL \o_cout~output_o\ : std_logic;
SIGNAL \o_s~output_o\ : std_logic;
SIGNAL \i_x~input_o\ : std_logic;
SIGNAL \i_cin~input_o\ : std_logic;
SIGNAL \i_y~input_o\ : std_logic;
SIGNAL \int_cout~0_combout\ : std_logic;
SIGNAL \int_s~0_combout\ : std_logic;

BEGIN

ww_i_x <= i_x;
ww_i_y <= i_y;
ww_i_cin <= i_cin;
o_cout <= ww_o_cout;
o_s <= ww_o_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N9
\o_cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \int_cout~0_combout\,
	devoe => ww_devoe,
	o => \o_cout~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\o_s~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \int_s~0_combout\,
	devoe => ww_devoe,
	o => \o_s~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\i_x~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_x,
	o => \i_x~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\i_cin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_cin,
	o => \i_cin~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\i_y~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_y,
	o => \i_y~input_o\);

-- Location: LCCOMB_X12_Y1_N0
\int_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \int_cout~0_combout\ = (\i_x~input_o\ & ((\i_cin~input_o\) # (\i_y~input_o\))) # (!\i_x~input_o\ & (\i_cin~input_o\ & \i_y~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_x~input_o\,
	datab => \i_cin~input_o\,
	datad => \i_y~input_o\,
	combout => \int_cout~0_combout\);

-- Location: LCCOMB_X12_Y1_N2
\int_s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \int_s~0_combout\ = \i_x~input_o\ $ (\i_cin~input_o\ $ (\i_y~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_x~input_o\,
	datab => \i_cin~input_o\,
	datad => \i_y~input_o\,
	combout => \int_s~0_combout\);

ww_o_cout <= \o_cout~output_o\;

ww_o_s <= \o_s~output_o\;
END structure;


