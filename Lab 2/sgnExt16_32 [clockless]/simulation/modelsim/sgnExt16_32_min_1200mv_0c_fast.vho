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

-- DATE "03/08/2024 11:55:54"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sgnExt16_32 IS
    PORT (
	in_q : IN std_logic_vector(15 DOWNTO 0);
	out_d : OUT std_logic_vector(31 DOWNTO 0)
	);
END sgnExt16_32;

-- Design Ports Information
-- out_d[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[9]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[10]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[11]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[12]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[13]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[14]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[15]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[16]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[17]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[18]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[19]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[20]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[21]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[22]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[23]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[24]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[25]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[26]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[27]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[28]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[29]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[30]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[31]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[0]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[8]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[9]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[10]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[11]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[12]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[14]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[15]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sgnExt16_32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_q : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_d : std_logic_vector(31 DOWNTO 0);
SIGNAL \out_d[0]~output_o\ : std_logic;
SIGNAL \out_d[1]~output_o\ : std_logic;
SIGNAL \out_d[2]~output_o\ : std_logic;
SIGNAL \out_d[3]~output_o\ : std_logic;
SIGNAL \out_d[4]~output_o\ : std_logic;
SIGNAL \out_d[5]~output_o\ : std_logic;
SIGNAL \out_d[6]~output_o\ : std_logic;
SIGNAL \out_d[7]~output_o\ : std_logic;
SIGNAL \out_d[8]~output_o\ : std_logic;
SIGNAL \out_d[9]~output_o\ : std_logic;
SIGNAL \out_d[10]~output_o\ : std_logic;
SIGNAL \out_d[11]~output_o\ : std_logic;
SIGNAL \out_d[12]~output_o\ : std_logic;
SIGNAL \out_d[13]~output_o\ : std_logic;
SIGNAL \out_d[14]~output_o\ : std_logic;
SIGNAL \out_d[15]~output_o\ : std_logic;
SIGNAL \out_d[16]~output_o\ : std_logic;
SIGNAL \out_d[17]~output_o\ : std_logic;
SIGNAL \out_d[18]~output_o\ : std_logic;
SIGNAL \out_d[19]~output_o\ : std_logic;
SIGNAL \out_d[20]~output_o\ : std_logic;
SIGNAL \out_d[21]~output_o\ : std_logic;
SIGNAL \out_d[22]~output_o\ : std_logic;
SIGNAL \out_d[23]~output_o\ : std_logic;
SIGNAL \out_d[24]~output_o\ : std_logic;
SIGNAL \out_d[25]~output_o\ : std_logic;
SIGNAL \out_d[26]~output_o\ : std_logic;
SIGNAL \out_d[27]~output_o\ : std_logic;
SIGNAL \out_d[28]~output_o\ : std_logic;
SIGNAL \out_d[29]~output_o\ : std_logic;
SIGNAL \out_d[30]~output_o\ : std_logic;
SIGNAL \out_d[31]~output_o\ : std_logic;
SIGNAL \in_q[0]~input_o\ : std_logic;
SIGNAL \in_q[1]~input_o\ : std_logic;
SIGNAL \in_q[2]~input_o\ : std_logic;
SIGNAL \in_q[3]~input_o\ : std_logic;
SIGNAL \in_q[4]~input_o\ : std_logic;
SIGNAL \in_q[5]~input_o\ : std_logic;
SIGNAL \in_q[6]~input_o\ : std_logic;
SIGNAL \in_q[7]~input_o\ : std_logic;
SIGNAL \in_q[8]~input_o\ : std_logic;
SIGNAL \in_q[9]~input_o\ : std_logic;
SIGNAL \in_q[10]~input_o\ : std_logic;
SIGNAL \in_q[11]~input_o\ : std_logic;
SIGNAL \in_q[12]~input_o\ : std_logic;
SIGNAL \in_q[13]~input_o\ : std_logic;
SIGNAL \in_q[14]~input_o\ : std_logic;
SIGNAL \in_q[15]~input_o\ : std_logic;

BEGIN

ww_in_q <= in_q;
out_d <= ww_out_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X43_Y0_N9
\out_d[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[0]~input_o\,
	devoe => ww_devoe,
	o => \out_d[0]~output_o\);

-- Location: IOOBUF_X7_Y41_N16
\out_d[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[1]~input_o\,
	devoe => ww_devoe,
	o => \out_d[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\out_d[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[2]~input_o\,
	devoe => ww_devoe,
	o => \out_d[2]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\out_d[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[3]~input_o\,
	devoe => ww_devoe,
	o => \out_d[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\out_d[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[4]~input_o\,
	devoe => ww_devoe,
	o => \out_d[4]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\out_d[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[5]~input_o\,
	devoe => ww_devoe,
	o => \out_d[5]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\out_d[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[6]~input_o\,
	devoe => ww_devoe,
	o => \out_d[6]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\out_d[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[7]~input_o\,
	devoe => ww_devoe,
	o => \out_d[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\out_d[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[8]~input_o\,
	devoe => ww_devoe,
	o => \out_d[8]~output_o\);

-- Location: IOOBUF_X14_Y41_N2
\out_d[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[9]~input_o\,
	devoe => ww_devoe,
	o => \out_d[9]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\out_d[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[10]~input_o\,
	devoe => ww_devoe,
	o => \out_d[10]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\out_d[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[11]~input_o\,
	devoe => ww_devoe,
	o => \out_d[11]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\out_d[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[12]~input_o\,
	devoe => ww_devoe,
	o => \out_d[12]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\out_d[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[13]~input_o\,
	devoe => ww_devoe,
	o => \out_d[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\out_d[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[14]~input_o\,
	devoe => ww_devoe,
	o => \out_d[14]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\out_d[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[15]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\out_d[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[16]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\out_d[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[17]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\out_d[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[18]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\out_d[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[19]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\out_d[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[20]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\out_d[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[21]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\out_d[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[22]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\out_d[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[23]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\out_d[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[24]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\out_d[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[25]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\out_d[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[26]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\out_d[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[27]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\out_d[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[28]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\out_d[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[29]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\out_d[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[30]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\out_d[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_q[15]~input_o\,
	devoe => ww_devoe,
	o => \out_d[31]~output_o\);

-- Location: IOIBUF_X43_Y0_N1
\in_q[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(0),
	o => \in_q[0]~input_o\);

-- Location: IOIBUF_X7_Y41_N1
\in_q[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(1),
	o => \in_q[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\in_q[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(2),
	o => \in_q[2]~input_o\);

-- Location: IOIBUF_X52_Y19_N8
\in_q[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(3),
	o => \in_q[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\in_q[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(4),
	o => \in_q[4]~input_o\);

-- Location: IOIBUF_X31_Y41_N22
\in_q[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(5),
	o => \in_q[5]~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\in_q[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(6),
	o => \in_q[6]~input_o\);

-- Location: IOIBUF_X52_Y32_N1
\in_q[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(7),
	o => \in_q[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\in_q[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(8),
	o => \in_q[8]~input_o\);

-- Location: IOIBUF_X14_Y41_N8
\in_q[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(9),
	o => \in_q[9]~input_o\);

-- Location: IOIBUF_X10_Y0_N1
\in_q[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(10),
	o => \in_q[10]~input_o\);

-- Location: IOIBUF_X52_Y13_N1
\in_q[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(11),
	o => \in_q[11]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\in_q[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(12),
	o => \in_q[12]~input_o\);

-- Location: IOIBUF_X12_Y41_N1
\in_q[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(13),
	o => \in_q[13]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\in_q[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(14),
	o => \in_q[14]~input_o\);

-- Location: IOIBUF_X52_Y25_N8
\in_q[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(15),
	o => \in_q[15]~input_o\);

ww_out_d(0) <= \out_d[0]~output_o\;

ww_out_d(1) <= \out_d[1]~output_o\;

ww_out_d(2) <= \out_d[2]~output_o\;

ww_out_d(3) <= \out_d[3]~output_o\;

ww_out_d(4) <= \out_d[4]~output_o\;

ww_out_d(5) <= \out_d[5]~output_o\;

ww_out_d(6) <= \out_d[6]~output_o\;

ww_out_d(7) <= \out_d[7]~output_o\;

ww_out_d(8) <= \out_d[8]~output_o\;

ww_out_d(9) <= \out_d[9]~output_o\;

ww_out_d(10) <= \out_d[10]~output_o\;

ww_out_d(11) <= \out_d[11]~output_o\;

ww_out_d(12) <= \out_d[12]~output_o\;

ww_out_d(13) <= \out_d[13]~output_o\;

ww_out_d(14) <= \out_d[14]~output_o\;

ww_out_d(15) <= \out_d[15]~output_o\;

ww_out_d(16) <= \out_d[16]~output_o\;

ww_out_d(17) <= \out_d[17]~output_o\;

ww_out_d(18) <= \out_d[18]~output_o\;

ww_out_d(19) <= \out_d[19]~output_o\;

ww_out_d(20) <= \out_d[20]~output_o\;

ww_out_d(21) <= \out_d[21]~output_o\;

ww_out_d(22) <= \out_d[22]~output_o\;

ww_out_d(23) <= \out_d[23]~output_o\;

ww_out_d(24) <= \out_d[24]~output_o\;

ww_out_d(25) <= \out_d[25]~output_o\;

ww_out_d(26) <= \out_d[26]~output_o\;

ww_out_d(27) <= \out_d[27]~output_o\;

ww_out_d(28) <= \out_d[28]~output_o\;

ww_out_d(29) <= \out_d[29]~output_o\;

ww_out_d(30) <= \out_d[30]~output_o\;

ww_out_d(31) <= \out_d[31]~output_o\;
END structure;


