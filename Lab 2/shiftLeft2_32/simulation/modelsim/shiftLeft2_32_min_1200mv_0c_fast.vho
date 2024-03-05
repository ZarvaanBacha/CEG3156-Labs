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

-- DATE "03/05/2024 13:38:36"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
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

ENTITY 	shiftLeft2_32 IS
    PORT (
	clk : IN std_logic;
	in_q : IN std_logic_vector(31 DOWNTO 0);
	out_d : OUT std_logic_vector(31 DOWNTO 0)
	);
END shiftLeft2_32;

-- Design Ports Information
-- in_q[30]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[31]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[0]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[9]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[11]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[12]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[13]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[14]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[15]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[16]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[17]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[18]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[19]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[20]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[21]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[22]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[23]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[24]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[25]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[26]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[27]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[28]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[29]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[30]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_d[31]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[1]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[9]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[10]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[11]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[13]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[14]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[15]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[16]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[17]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[18]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[19]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[20]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[21]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[22]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[23]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[24]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[25]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[26]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[27]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[28]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_q[29]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF shiftLeft2_32 IS
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
SIGNAL ww_in_q : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_out_d : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \in_q[30]~input_o\ : std_logic;
SIGNAL \in_q[31]~input_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_q[0]~input_o\ : std_logic;
SIGNAL \shifted_data[2]~feeder_combout\ : std_logic;
SIGNAL \in_q[1]~input_o\ : std_logic;
SIGNAL \in_q[2]~input_o\ : std_logic;
SIGNAL \shifted_data[4]~feeder_combout\ : std_logic;
SIGNAL \in_q[3]~input_o\ : std_logic;
SIGNAL \shifted_data[5]~feeder_combout\ : std_logic;
SIGNAL \in_q[4]~input_o\ : std_logic;
SIGNAL \shifted_data[6]~feeder_combout\ : std_logic;
SIGNAL \in_q[5]~input_o\ : std_logic;
SIGNAL \shifted_data[7]~feeder_combout\ : std_logic;
SIGNAL \in_q[6]~input_o\ : std_logic;
SIGNAL \in_q[7]~input_o\ : std_logic;
SIGNAL \in_q[8]~input_o\ : std_logic;
SIGNAL \in_q[9]~input_o\ : std_logic;
SIGNAL \shifted_data[11]~feeder_combout\ : std_logic;
SIGNAL \in_q[10]~input_o\ : std_logic;
SIGNAL \in_q[11]~input_o\ : std_logic;
SIGNAL \shifted_data[13]~feeder_combout\ : std_logic;
SIGNAL \in_q[12]~input_o\ : std_logic;
SIGNAL \shifted_data[14]~feeder_combout\ : std_logic;
SIGNAL \in_q[13]~input_o\ : std_logic;
SIGNAL \in_q[14]~input_o\ : std_logic;
SIGNAL \in_q[15]~input_o\ : std_logic;
SIGNAL \in_q[16]~input_o\ : std_logic;
SIGNAL \shifted_data[18]~feeder_combout\ : std_logic;
SIGNAL \in_q[17]~input_o\ : std_logic;
SIGNAL \in_q[18]~input_o\ : std_logic;
SIGNAL \in_q[19]~input_o\ : std_logic;
SIGNAL \in_q[20]~input_o\ : std_logic;
SIGNAL \in_q[21]~input_o\ : std_logic;
SIGNAL \shifted_data[23]~feeder_combout\ : std_logic;
SIGNAL \in_q[22]~input_o\ : std_logic;
SIGNAL \shifted_data[24]~feeder_combout\ : std_logic;
SIGNAL \in_q[23]~input_o\ : std_logic;
SIGNAL \shifted_data[25]~feeder_combout\ : std_logic;
SIGNAL \in_q[24]~input_o\ : std_logic;
SIGNAL \in_q[25]~input_o\ : std_logic;
SIGNAL \in_q[26]~input_o\ : std_logic;
SIGNAL \shifted_data[28]~feeder_combout\ : std_logic;
SIGNAL \in_q[27]~input_o\ : std_logic;
SIGNAL \shifted_data[29]~feeder_combout\ : std_logic;
SIGNAL \in_q[28]~input_o\ : std_logic;
SIGNAL \shifted_data[30]~feeder_combout\ : std_logic;
SIGNAL \in_q[29]~input_o\ : std_logic;
SIGNAL \shifted_data[31]~feeder_combout\ : std_logic;
SIGNAL shifted_data : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_in_q <= in_q;
out_d <= ww_out_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X38_Y0_N2
\out_d[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_d[0]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\out_d[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_d[1]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\out_d[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(2),
	devoe => ww_devoe,
	o => \out_d[2]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\out_d[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(3),
	devoe => ww_devoe,
	o => \out_d[3]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\out_d[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(4),
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
	i => shifted_data(5),
	devoe => ww_devoe,
	o => \out_d[5]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\out_d[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(6),
	devoe => ww_devoe,
	o => \out_d[6]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\out_d[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(7),
	devoe => ww_devoe,
	o => \out_d[7]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\out_d[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(8),
	devoe => ww_devoe,
	o => \out_d[8]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\out_d[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(9),
	devoe => ww_devoe,
	o => \out_d[9]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\out_d[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(10),
	devoe => ww_devoe,
	o => \out_d[10]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\out_d[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(11),
	devoe => ww_devoe,
	o => \out_d[11]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\out_d[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(12),
	devoe => ww_devoe,
	o => \out_d[12]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\out_d[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(13),
	devoe => ww_devoe,
	o => \out_d[13]~output_o\);

-- Location: IOOBUF_X14_Y41_N2
\out_d[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(14),
	devoe => ww_devoe,
	o => \out_d[14]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\out_d[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(15),
	devoe => ww_devoe,
	o => \out_d[15]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\out_d[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(16),
	devoe => ww_devoe,
	o => \out_d[16]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\out_d[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(17),
	devoe => ww_devoe,
	o => \out_d[17]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\out_d[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(18),
	devoe => ww_devoe,
	o => \out_d[18]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\out_d[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(19),
	devoe => ww_devoe,
	o => \out_d[19]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\out_d[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(20),
	devoe => ww_devoe,
	o => \out_d[20]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\out_d[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(21),
	devoe => ww_devoe,
	o => \out_d[21]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\out_d[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(22),
	devoe => ww_devoe,
	o => \out_d[22]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\out_d[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(23),
	devoe => ww_devoe,
	o => \out_d[23]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\out_d[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(24),
	devoe => ww_devoe,
	o => \out_d[24]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\out_d[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(25),
	devoe => ww_devoe,
	o => \out_d[25]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\out_d[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(26),
	devoe => ww_devoe,
	o => \out_d[26]~output_o\);

-- Location: IOOBUF_X52_Y10_N9
\out_d[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(27),
	devoe => ww_devoe,
	o => \out_d[27]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\out_d[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(28),
	devoe => ww_devoe,
	o => \out_d[28]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\out_d[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(29),
	devoe => ww_devoe,
	o => \out_d[29]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\out_d[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(30),
	devoe => ww_devoe,
	o => \out_d[30]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\out_d[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => shifted_data(31),
	devoe => ww_devoe,
	o => \out_d[31]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X52_Y10_N1
\in_q[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(0),
	o => \in_q[0]~input_o\);

-- Location: LCCOMB_X51_Y4_N0
\shifted_data[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[2]~feeder_combout\ = \in_q[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[0]~input_o\,
	combout => \shifted_data[2]~feeder_combout\);

-- Location: FF_X51_Y4_N1
\shifted_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(2));

-- Location: IOIBUF_X52_Y12_N1
\in_q[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(1),
	o => \in_q[1]~input_o\);

-- Location: FF_X51_Y15_N9
\shifted_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(3));

-- Location: IOIBUF_X52_Y19_N8
\in_q[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(2),
	o => \in_q[2]~input_o\);

-- Location: LCCOMB_X51_Y19_N8
\shifted_data[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[4]~feeder_combout\ = \in_q[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[2]~input_o\,
	combout => \shifted_data[4]~feeder_combout\);

-- Location: FF_X51_Y19_N9
\shifted_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(4));

-- Location: IOIBUF_X31_Y41_N1
\in_q[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(3),
	o => \in_q[3]~input_o\);

-- Location: LCCOMB_X31_Y40_N16
\shifted_data[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[5]~feeder_combout\ = \in_q[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[3]~input_o\,
	combout => \shifted_data[5]~feeder_combout\);

-- Location: FF_X31_Y40_N17
\shifted_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(5));

-- Location: IOIBUF_X50_Y0_N1
\in_q[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(4),
	o => \in_q[4]~input_o\);

-- Location: LCCOMB_X50_Y9_N24
\shifted_data[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[6]~feeder_combout\ = \in_q[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[4]~input_o\,
	combout => \shifted_data[6]~feeder_combout\);

-- Location: FF_X50_Y9_N25
\shifted_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(6));

-- Location: IOIBUF_X52_Y28_N1
\in_q[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(5),
	o => \in_q[5]~input_o\);

-- Location: LCCOMB_X51_Y28_N8
\shifted_data[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[7]~feeder_combout\ = \in_q[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[5]~input_o\,
	combout => \shifted_data[7]~feeder_combout\);

-- Location: FF_X51_Y28_N9
\shifted_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(7));

-- Location: IOIBUF_X52_Y9_N1
\in_q[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(6),
	o => \in_q[6]~input_o\);

-- Location: FF_X49_Y7_N25
\shifted_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(8));

-- Location: IOIBUF_X41_Y41_N15
\in_q[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(7),
	o => \in_q[7]~input_o\);

-- Location: FF_X43_Y40_N17
\shifted_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(9));

-- Location: IOIBUF_X48_Y41_N1
\in_q[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(8),
	o => \in_q[8]~input_o\);

-- Location: FF_X49_Y40_N1
\shifted_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(10));

-- Location: IOIBUF_X52_Y30_N8
\in_q[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(9),
	o => \in_q[9]~input_o\);

-- Location: LCCOMB_X43_Y30_N0
\shifted_data[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[11]~feeder_combout\ = \in_q[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[9]~input_o\,
	combout => \shifted_data[11]~feeder_combout\);

-- Location: FF_X43_Y30_N1
\shifted_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(11));

-- Location: IOIBUF_X29_Y0_N8
\in_q[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(10),
	o => \in_q[10]~input_o\);

-- Location: FF_X29_Y1_N9
\shifted_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(12));

-- Location: IOIBUF_X50_Y41_N1
\in_q[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(11),
	o => \in_q[11]~input_o\);

-- Location: LCCOMB_X51_Y33_N8
\shifted_data[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[13]~feeder_combout\ = \in_q[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[11]~input_o\,
	combout => \shifted_data[13]~feeder_combout\);

-- Location: FF_X51_Y33_N9
\shifted_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(13));

-- Location: IOIBUF_X14_Y41_N8
\in_q[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(12),
	o => \in_q[12]~input_o\);

-- Location: LCCOMB_X14_Y40_N0
\shifted_data[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[14]~feeder_combout\ = \in_q[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[12]~input_o\,
	combout => \shifted_data[14]~feeder_combout\);

-- Location: FF_X14_Y40_N1
\shifted_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(14));

-- Location: IOIBUF_X46_Y0_N15
\in_q[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(13),
	o => \in_q[13]~input_o\);

-- Location: FF_X46_Y1_N25
\shifted_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(15));

-- Location: IOIBUF_X34_Y41_N8
\in_q[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(14),
	o => \in_q[14]~input_o\);

-- Location: FF_X35_Y40_N1
\shifted_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(16));

-- Location: IOIBUF_X46_Y41_N15
\in_q[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(15),
	o => \in_q[15]~input_o\);

-- Location: FF_X47_Y40_N1
\shifted_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(17));

-- Location: IOIBUF_X21_Y0_N8
\in_q[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(16),
	o => \in_q[16]~input_o\);

-- Location: LCCOMB_X19_Y1_N24
\shifted_data[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[18]~feeder_combout\ = \in_q[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[16]~input_o\,
	combout => \shifted_data[18]~feeder_combout\);

-- Location: FF_X19_Y1_N25
\shifted_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(18));

-- Location: IOIBUF_X52_Y32_N8
\in_q[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(17),
	o => \in_q[17]~input_o\);

-- Location: FF_X50_Y32_N1
\shifted_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(19));

-- Location: IOIBUF_X52_Y30_N1
\in_q[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(18),
	o => \in_q[18]~input_o\);

-- Location: FF_X51_Y29_N9
\shifted_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[18]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(20));

-- Location: IOIBUF_X16_Y41_N1
\in_q[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(19),
	o => \in_q[19]~input_o\);

-- Location: FF_X17_Y40_N25
\shifted_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[19]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(21));

-- Location: IOIBUF_X50_Y41_N8
\in_q[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(20),
	o => \in_q[20]~input_o\);

-- Location: FF_X50_Y33_N25
\shifted_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[20]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(22));

-- Location: IOIBUF_X43_Y41_N8
\in_q[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(21),
	o => \in_q[21]~input_o\);

-- Location: LCCOMB_X46_Y39_N16
\shifted_data[23]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[23]~feeder_combout\ = \in_q[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[21]~input_o\,
	combout => \shifted_data[23]~feeder_combout\);

-- Location: FF_X46_Y39_N17
\shifted_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(23));

-- Location: IOIBUF_X52_Y23_N8
\in_q[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(22),
	o => \in_q[22]~input_o\);

-- Location: LCCOMB_X51_Y23_N8
\shifted_data[24]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[24]~feeder_combout\ = \in_q[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[22]~input_o\,
	combout => \shifted_data[24]~feeder_combout\);

-- Location: FF_X51_Y23_N9
\shifted_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(24));

-- Location: IOIBUF_X27_Y41_N1
\in_q[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(23),
	o => \in_q[23]~input_o\);

-- Location: LCCOMB_X47_Y29_N16
\shifted_data[25]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[25]~feeder_combout\ = \in_q[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[23]~input_o\,
	combout => \shifted_data[25]~feeder_combout\);

-- Location: FF_X47_Y29_N17
\shifted_data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(25));

-- Location: IOIBUF_X27_Y41_N8
\in_q[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(24),
	o => \in_q[24]~input_o\);

-- Location: FF_X28_Y40_N1
\shifted_data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[24]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(26));

-- Location: IOIBUF_X52_Y11_N1
\in_q[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(25),
	o => \in_q[25]~input_o\);

-- Location: FF_X51_Y9_N1
\shifted_data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_q[25]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(27));

-- Location: IOIBUF_X43_Y41_N1
\in_q[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(26),
	o => \in_q[26]~input_o\);

-- Location: LCCOMB_X41_Y40_N16
\shifted_data[28]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[28]~feeder_combout\ = \in_q[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[26]~input_o\,
	combout => \shifted_data[28]~feeder_combout\);

-- Location: FF_X41_Y40_N17
\shifted_data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(28));

-- Location: IOIBUF_X38_Y41_N8
\in_q[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(27),
	o => \in_q[27]~input_o\);

-- Location: LCCOMB_X37_Y40_N16
\shifted_data[29]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[29]~feeder_combout\ = \in_q[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[27]~input_o\,
	combout => \shifted_data[29]~feeder_combout\);

-- Location: FF_X37_Y40_N17
\shifted_data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(29));

-- Location: IOIBUF_X29_Y41_N1
\in_q[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(28),
	o => \in_q[28]~input_o\);

-- Location: LCCOMB_X30_Y40_N0
\shifted_data[30]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[30]~feeder_combout\ = \in_q[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[28]~input_o\,
	combout => \shifted_data[30]~feeder_combout\);

-- Location: FF_X30_Y40_N1
\shifted_data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(30));

-- Location: IOIBUF_X23_Y41_N1
\in_q[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(29),
	o => \in_q[29]~input_o\);

-- Location: LCCOMB_X22_Y40_N16
\shifted_data[31]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \shifted_data[31]~feeder_combout\ = \in_q[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_q[29]~input_o\,
	combout => \shifted_data[31]~feeder_combout\);

-- Location: FF_X22_Y40_N17
\shifted_data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shifted_data[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shifted_data(31));

-- Location: IOIBUF_X46_Y0_N8
\in_q[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(30),
	o => \in_q[30]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\in_q[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_q(31),
	o => \in_q[31]~input_o\);

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


