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

-- DATE "03/23/2023 16:34:04"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ThirtyTwoBitToSevenSeg IS
    PORT (
	i_thirtyTwoBit : IN std_logic_vector(2 DOWNTO 0);
	o_display1 : OUT std_logic_vector(6 DOWNTO 0);
	o_display2 : OUT std_logic_vector(6 DOWNTO 0);
	o_display3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END ThirtyTwoBitToSevenSeg;

-- Design Ports Information
-- o_display1[0]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[1]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[4]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[5]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[6]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[1]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[1]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[3]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[5]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_thirtyTwoBit[2]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_thirtyTwoBit[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_thirtyTwoBit[0]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ThirtyTwoBitToSevenSeg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_thirtyTwoBit : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \o_display1[0]~output_o\ : std_logic;
SIGNAL \o_display1[1]~output_o\ : std_logic;
SIGNAL \o_display1[2]~output_o\ : std_logic;
SIGNAL \o_display1[3]~output_o\ : std_logic;
SIGNAL \o_display1[4]~output_o\ : std_logic;
SIGNAL \o_display1[5]~output_o\ : std_logic;
SIGNAL \o_display1[6]~output_o\ : std_logic;
SIGNAL \o_display2[0]~output_o\ : std_logic;
SIGNAL \o_display2[1]~output_o\ : std_logic;
SIGNAL \o_display2[2]~output_o\ : std_logic;
SIGNAL \o_display2[3]~output_o\ : std_logic;
SIGNAL \o_display2[4]~output_o\ : std_logic;
SIGNAL \o_display2[5]~output_o\ : std_logic;
SIGNAL \o_display2[6]~output_o\ : std_logic;
SIGNAL \o_display3[0]~output_o\ : std_logic;
SIGNAL \o_display3[1]~output_o\ : std_logic;
SIGNAL \o_display3[2]~output_o\ : std_logic;
SIGNAL \o_display3[3]~output_o\ : std_logic;
SIGNAL \o_display3[4]~output_o\ : std_logic;
SIGNAL \o_display3[5]~output_o\ : std_logic;
SIGNAL \o_display3[6]~output_o\ : std_logic;
SIGNAL \i_thirtyTwoBit[2]~input_o\ : std_logic;
SIGNAL \i_thirtyTwoBit[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \i_thirtyTwoBit[0]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ALT_INV_display2 : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_i_thirtyTwoBit <= i_thirtyTwoBit;
o_display1 <= ww_o_display1;
o_display2 <= ww_o_display2;
o_display3 <= ww_o_display3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_display2(0) <= NOT display2(0);
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X32_Y0_N9
\o_display1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \o_display1[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\o_display1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \o_display1[1]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\o_display1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \o_display1[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\o_display1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \o_display1[3]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\o_display1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \o_display1[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\o_display1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \o_display1[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\o_display1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \o_display1[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\o_display2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_display2(0),
	devoe => ww_devoe,
	o => \o_display2[0]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\o_display2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display2[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\o_display2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display2[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\o_display2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display2[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\o_display2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display2[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\o_display2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display2[5]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\o_display2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display2[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\o_display3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_display2(0),
	devoe => ww_devoe,
	o => \o_display3[0]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\o_display3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display3[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\o_display3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display3[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\o_display3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display3[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\o_display3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display3[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\o_display3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display3[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\o_display3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_display3[6]~output_o\);

-- Location: IOIBUF_X34_Y2_N22
\i_thirtyTwoBit[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_thirtyTwoBit(2),
	o => \i_thirtyTwoBit[2]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\i_thirtyTwoBit[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_thirtyTwoBit(1),
	o => \i_thirtyTwoBit[1]~input_o\);

-- Location: LCCOMB_X33_Y4_N30
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\i_thirtyTwoBit[2]~input_o\) # (!\i_thirtyTwoBit[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_thirtyTwoBit[2]~input_o\,
	datac => \i_thirtyTwoBit[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X34_Y4_N15
\i_thirtyTwoBit[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_thirtyTwoBit(0),
	o => \i_thirtyTwoBit[0]~input_o\);

-- Location: LCCOMB_X33_Y4_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ((!\i_thirtyTwoBit[2]~input_o\ & !\i_thirtyTwoBit[0]~input_o\)) # (!\i_thirtyTwoBit[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_thirtyTwoBit[2]~input_o\,
	datac => \i_thirtyTwoBit[1]~input_o\,
	datad => \i_thirtyTwoBit[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X33_Y4_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\i_thirtyTwoBit[1]~input_o\) # (!\i_thirtyTwoBit[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_thirtyTwoBit[2]~input_o\,
	datad => \i_thirtyTwoBit[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X33_Y4_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = \i_thirtyTwoBit[2]~input_o\ $ (((\i_thirtyTwoBit[1]~input_o\) # (\i_thirtyTwoBit[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_thirtyTwoBit[2]~input_o\,
	datac => \i_thirtyTwoBit[1]~input_o\,
	datad => \i_thirtyTwoBit[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X33_Y4_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\i_thirtyTwoBit[2]~input_o\) # ((\i_thirtyTwoBit[1]~input_o\ & !\i_thirtyTwoBit[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_thirtyTwoBit[2]~input_o\,
	datac => \i_thirtyTwoBit[1]~input_o\,
	datad => \i_thirtyTwoBit[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X33_Y4_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\i_thirtyTwoBit[2]~input_o\) # (\i_thirtyTwoBit[1]~input_o\ $ (\i_thirtyTwoBit[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_thirtyTwoBit[2]~input_o\,
	datac => \i_thirtyTwoBit[1]~input_o\,
	datad => \i_thirtyTwoBit[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X33_Y4_N14
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\i_thirtyTwoBit[2]~input_o\ & (\i_thirtyTwoBit[1]~input_o\)) # (!\i_thirtyTwoBit[2]~input_o\ & ((\i_thirtyTwoBit[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_thirtyTwoBit[2]~input_o\,
	datac => \i_thirtyTwoBit[1]~input_o\,
	datad => \i_thirtyTwoBit[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X33_Y4_N22
\display2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- display2(0) = (\Mux4~0_combout\ & ((display2(0)))) # (!\Mux4~0_combout\ & (\i_thirtyTwoBit[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_thirtyTwoBit[1]~input_o\,
	datac => display2(0),
	datad => \Mux4~0_combout\,
	combout => display2(0));

ww_o_display1(0) <= \o_display1[0]~output_o\;

ww_o_display1(1) <= \o_display1[1]~output_o\;

ww_o_display1(2) <= \o_display1[2]~output_o\;

ww_o_display1(3) <= \o_display1[3]~output_o\;

ww_o_display1(4) <= \o_display1[4]~output_o\;

ww_o_display1(5) <= \o_display1[5]~output_o\;

ww_o_display1(6) <= \o_display1[6]~output_o\;

ww_o_display2(0) <= \o_display2[0]~output_o\;

ww_o_display2(1) <= \o_display2[1]~output_o\;

ww_o_display2(2) <= \o_display2[2]~output_o\;

ww_o_display2(3) <= \o_display2[3]~output_o\;

ww_o_display2(4) <= \o_display2[4]~output_o\;

ww_o_display2(5) <= \o_display2[5]~output_o\;

ww_o_display2(6) <= \o_display2[6]~output_o\;

ww_o_display3(0) <= \o_display3[0]~output_o\;

ww_o_display3(1) <= \o_display3[1]~output_o\;

ww_o_display3(2) <= \o_display3[2]~output_o\;

ww_o_display3(3) <= \o_display3[3]~output_o\;

ww_o_display3(4) <= \o_display3[4]~output_o\;

ww_o_display3(5) <= \o_display3[5]~output_o\;

ww_o_display3(6) <= \o_display3[6]~output_o\;
END structure;


