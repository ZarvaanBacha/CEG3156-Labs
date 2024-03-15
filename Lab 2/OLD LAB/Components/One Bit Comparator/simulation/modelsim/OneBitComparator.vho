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

-- DATE "03/11/2023 13:41:54"

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

ENTITY 	oneBitComparator IS
    PORT (
	i_A : IN std_logic;
	i_B : IN std_logic;
	i_GTprev : IN std_logic;
	i_LTprev : IN std_logic;
	o_GT : OUT std_logic;
	o_LT : OUT std_logic;
	o_EQ : OUT std_logic
	);
END oneBitComparator;

-- Design Ports Information
-- o_GT	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LT	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_EQ	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_GTprev	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_LTprev	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF oneBitComparator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_A : std_logic;
SIGNAL ww_i_B : std_logic;
SIGNAL ww_i_GTprev : std_logic;
SIGNAL ww_i_LTprev : std_logic;
SIGNAL ww_o_GT : std_logic;
SIGNAL ww_o_LT : std_logic;
SIGNAL ww_o_EQ : std_logic;
SIGNAL \o_GT~output_o\ : std_logic;
SIGNAL \o_LT~output_o\ : std_logic;
SIGNAL \o_EQ~output_o\ : std_logic;
SIGNAL \i_LTprev~input_o\ : std_logic;
SIGNAL \i_A~input_o\ : std_logic;
SIGNAL \i_GTprev~input_o\ : std_logic;
SIGNAL \i_B~input_o\ : std_logic;
SIGNAL \int_GT~0_combout\ : std_logic;
SIGNAL \int_LT~0_combout\ : std_logic;
SIGNAL \o_EQ~0_combout\ : std_logic;
SIGNAL \ALT_INV_o_EQ~0_combout\ : std_logic;

BEGIN

ww_i_A <= i_A;
ww_i_B <= i_B;
ww_i_GTprev <= i_GTprev;
ww_i_LTprev <= i_LTprev;
o_GT <= ww_o_GT;
o_LT <= ww_o_LT;
o_EQ <= ww_o_EQ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_o_EQ~0_combout\ <= NOT \o_EQ~0_combout\;

-- Location: IOOBUF_X8_Y0_N2
\o_GT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \int_GT~0_combout\,
	devoe => ww_devoe,
	o => \o_GT~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\o_LT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \int_LT~0_combout\,
	devoe => ww_devoe,
	o => \o_LT~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\o_EQ~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_EQ~0_combout\,
	devoe => ww_devoe,
	o => \o_EQ~output_o\);

-- Location: IOIBUF_X10_Y31_N1
\i_LTprev~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_LTprev,
	o => \i_LTprev~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\i_A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A,
	o => \i_A~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\i_GTprev~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_GTprev,
	o => \i_GTprev~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\i_B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B,
	o => \i_B~input_o\);

-- Location: LCCOMB_X9_Y1_N24
\int_GT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \int_GT~0_combout\ = (\i_GTprev~input_o\) # ((!\i_LTprev~input_o\ & (\i_A~input_o\ & !\i_B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LTprev~input_o\,
	datab => \i_A~input_o\,
	datac => \i_GTprev~input_o\,
	datad => \i_B~input_o\,
	combout => \int_GT~0_combout\);

-- Location: LCCOMB_X9_Y1_N18
\int_LT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \int_LT~0_combout\ = (\i_LTprev~input_o\) # ((!\i_A~input_o\ & (!\i_GTprev~input_o\ & \i_B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LTprev~input_o\,
	datab => \i_A~input_o\,
	datac => \i_GTprev~input_o\,
	datad => \i_B~input_o\,
	combout => \int_LT~0_combout\);

-- Location: LCCOMB_X9_Y1_N12
\o_EQ~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_EQ~0_combout\ = (\i_LTprev~input_o\) # ((\i_GTprev~input_o\) # (\i_A~input_o\ $ (\i_B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LTprev~input_o\,
	datab => \i_A~input_o\,
	datac => \i_GTprev~input_o\,
	datad => \i_B~input_o\,
	combout => \o_EQ~0_combout\);

ww_o_GT <= \o_GT~output_o\;

ww_o_LT <= \o_LT~output_o\;

ww_o_EQ <= \o_EQ~output_o\;
END structure;


