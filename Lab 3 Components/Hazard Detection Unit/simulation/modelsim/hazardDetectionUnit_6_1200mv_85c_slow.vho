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

-- DATE "04/05/2024 11:21:10"

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

ENTITY 	HazardDetectionUnit IS
    PORT (
	idExMemRead : IN std_logic;
	isBranch : IN std_logic;
	idExRegRt : IN std_logic_vector(4 DOWNTO 0);
	ifIdRegRs : IN std_logic_vector(4 DOWNTO 0);
	ifIdRegRt : IN std_logic_vector(4 DOWNTO 0);
	ifIdWrite : OUT std_logic;
	PCwrite : OUT std_logic;
	ctrlMux : OUT std_logic
	);
END HazardDetectionUnit;

-- Design Ports Information
-- ifIdWrite	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCwrite	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlMux	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isBranch	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- idExRegRt[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- idExRegRt[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ifIdRegRs[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ifIdRegRs[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ifIdRegRt[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ifIdRegRt[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- idExMemRead	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- idExRegRt[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- idExRegRt[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ifIdRegRt[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ifIdRegRt[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- idExRegRt[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ifIdRegRt[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ifIdRegRs[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ifIdRegRs[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ifIdRegRs[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HazardDetectionUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_idExMemRead : std_logic;
SIGNAL ww_isBranch : std_logic;
SIGNAL ww_idExRegRt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ifIdRegRs : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ifIdRegRt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ifIdWrite : std_logic;
SIGNAL ww_PCwrite : std_logic;
SIGNAL ww_ctrlMux : std_logic;
SIGNAL \hazard1~2_combout\ : std_logic;
SIGNAL \hazard1~3_combout\ : std_logic;
SIGNAL \idExRegRt[1]~input_o\ : std_logic;
SIGNAL \ifIdRegRt[3]~input_o\ : std_logic;
SIGNAL \ifIdRegRt[2]~input_o\ : std_logic;
SIGNAL \idExRegRt[4]~input_o\ : std_logic;
SIGNAL \ifIdRegRt[4]~input_o\ : std_logic;
SIGNAL \ifIdRegRs[2]~input_o\ : std_logic;
SIGNAL \ifIdWrite~output_o\ : std_logic;
SIGNAL \PCwrite~output_o\ : std_logic;
SIGNAL \ctrlMux~output_o\ : std_logic;
SIGNAL \ifIdRegRs[0]~input_o\ : std_logic;
SIGNAL \ifIdRegRs[1]~input_o\ : std_logic;
SIGNAL \idExRegRt[0]~input_o\ : std_logic;
SIGNAL \hazard1~0_combout\ : std_logic;
SIGNAL \ifIdRegRs[3]~input_o\ : std_logic;
SIGNAL \idExRegRt[3]~input_o\ : std_logic;
SIGNAL \idExRegRt[2]~input_o\ : std_logic;
SIGNAL \hazard1~4_combout\ : std_logic;
SIGNAL \idExMemRead~input_o\ : std_logic;
SIGNAL \ifIdRegRs[4]~input_o\ : std_logic;
SIGNAL \hazard1~5_combout\ : std_logic;
SIGNAL \ifIdRegRt[0]~input_o\ : std_logic;
SIGNAL \ifIdRegRt[1]~input_o\ : std_logic;
SIGNAL \hazard1~1_combout\ : std_logic;
SIGNAL \hazard1~6_combout\ : std_logic;
SIGNAL \isBranch~input_o\ : std_logic;
SIGNAL \ifIdWrite~0_combout\ : std_logic;
SIGNAL \ALT_INV_ifIdWrite~0_combout\ : std_logic;
SIGNAL \ALT_INV_hazard1~6_combout\ : std_logic;

BEGIN

ww_idExMemRead <= idExMemRead;
ww_isBranch <= isBranch;
ww_idExRegRt <= idExRegRt;
ww_ifIdRegRs <= ifIdRegRs;
ww_ifIdRegRt <= ifIdRegRt;
ifIdWrite <= ww_ifIdWrite;
PCwrite <= ww_PCwrite;
ctrlMux <= ww_ctrlMux;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ifIdWrite~0_combout\ <= NOT \ifIdWrite~0_combout\;
\ALT_INV_hazard1~6_combout\ <= NOT \hazard1~6_combout\;

-- Location: LCCOMB_X15_Y1_N12
\hazard1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hazard1~2_combout\ = (\ifIdRegRt[2]~input_o\ & (\idExRegRt[2]~input_o\ & (\ifIdRegRt[3]~input_o\ $ (!\idExRegRt[3]~input_o\)))) # (!\ifIdRegRt[2]~input_o\ & (!\idExRegRt[2]~input_o\ & (\ifIdRegRt[3]~input_o\ $ (!\idExRegRt[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifIdRegRt[2]~input_o\,
	datab => \ifIdRegRt[3]~input_o\,
	datac => \idExRegRt[3]~input_o\,
	datad => \idExRegRt[2]~input_o\,
	combout => \hazard1~2_combout\);

-- Location: LCCOMB_X15_Y1_N22
\hazard1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hazard1~3_combout\ = (\idExMemRead~input_o\ & (\hazard1~2_combout\ & (\idExRegRt[4]~input_o\ $ (!\ifIdRegRt[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idExRegRt[4]~input_o\,
	datab => \idExMemRead~input_o\,
	datac => \ifIdRegRt[4]~input_o\,
	datad => \hazard1~2_combout\,
	combout => \hazard1~3_combout\);

-- Location: IOIBUF_X14_Y31_N1
\idExRegRt[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_idExRegRt(1),
	o => \idExRegRt[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\ifIdRegRt[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ifIdRegRt(3),
	o => \ifIdRegRt[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\ifIdRegRt[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ifIdRegRt(2),
	o => \ifIdRegRt[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\idExRegRt[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_idExRegRt(4),
	o => \idExRegRt[4]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\ifIdRegRt[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ifIdRegRt(4),
	o => \ifIdRegRt[4]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\ifIdRegRs[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ifIdRegRs(2),
	o => \ifIdRegRs[2]~input_o\);

-- Location: IOOBUF_X22_Y0_N9
\ifIdWrite~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ifIdWrite~0_combout\,
	devoe => ww_devoe,
	o => \ifIdWrite~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\PCwrite~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_hazard1~6_combout\,
	devoe => ww_devoe,
	o => \PCwrite~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\ctrlMux~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hazard1~6_combout\,
	devoe => ww_devoe,
	o => \ctrlMux~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\ifIdRegRs[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ifIdRegRs(0),
	o => \ifIdRegRs[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\ifIdRegRs[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ifIdRegRs(1),
	o => \ifIdRegRs[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\idExRegRt[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_idExRegRt(0),
	o => \idExRegRt[0]~input_o\);

-- Location: LCCOMB_X15_Y1_N24
\hazard1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hazard1~0_combout\ = (\idExRegRt[1]~input_o\ & (\ifIdRegRs[1]~input_o\ & (\ifIdRegRs[0]~input_o\ $ (!\idExRegRt[0]~input_o\)))) # (!\idExRegRt[1]~input_o\ & (!\ifIdRegRs[1]~input_o\ & (\ifIdRegRs[0]~input_o\ $ (!\idExRegRt[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idExRegRt[1]~input_o\,
	datab => \ifIdRegRs[0]~input_o\,
	datac => \ifIdRegRs[1]~input_o\,
	datad => \idExRegRt[0]~input_o\,
	combout => \hazard1~0_combout\);

-- Location: IOIBUF_X8_Y0_N8
\ifIdRegRs[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ifIdRegRs(3),
	o => \ifIdRegRs[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\idExRegRt[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_idExRegRt(3),
	o => \idExRegRt[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\idExRegRt[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_idExRegRt(2),
	o => \idExRegRt[2]~input_o\);

-- Location: LCCOMB_X15_Y1_N0
\hazard1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hazard1~4_combout\ = (\ifIdRegRs[2]~input_o\ & (\idExRegRt[2]~input_o\ & (\ifIdRegRs[3]~input_o\ $ (!\idExRegRt[3]~input_o\)))) # (!\ifIdRegRs[2]~input_o\ & (!\idExRegRt[2]~input_o\ & (\ifIdRegRs[3]~input_o\ $ (!\idExRegRt[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifIdRegRs[2]~input_o\,
	datab => \ifIdRegRs[3]~input_o\,
	datac => \idExRegRt[3]~input_o\,
	datad => \idExRegRt[2]~input_o\,
	combout => \hazard1~4_combout\);

-- Location: IOIBUF_X20_Y0_N1
\idExMemRead~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_idExMemRead,
	o => \idExMemRead~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\ifIdRegRs[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ifIdRegRs(4),
	o => \ifIdRegRs[4]~input_o\);

-- Location: LCCOMB_X15_Y1_N26
\hazard1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hazard1~5_combout\ = (\hazard1~4_combout\ & (\idExMemRead~input_o\ & (\idExRegRt[4]~input_o\ $ (!\ifIdRegRs[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idExRegRt[4]~input_o\,
	datab => \hazard1~4_combout\,
	datac => \idExMemRead~input_o\,
	datad => \ifIdRegRs[4]~input_o\,
	combout => \hazard1~5_combout\);

-- Location: IOIBUF_X14_Y0_N8
\ifIdRegRt[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ifIdRegRt(0),
	o => \ifIdRegRt[0]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\ifIdRegRt[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ifIdRegRt(1),
	o => \ifIdRegRt[1]~input_o\);

-- Location: LCCOMB_X15_Y1_N2
\hazard1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hazard1~1_combout\ = (\idExRegRt[1]~input_o\ & (\ifIdRegRt[1]~input_o\ & (\ifIdRegRt[0]~input_o\ $ (!\idExRegRt[0]~input_o\)))) # (!\idExRegRt[1]~input_o\ & (!\ifIdRegRt[1]~input_o\ & (\ifIdRegRt[0]~input_o\ $ (!\idExRegRt[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idExRegRt[1]~input_o\,
	datab => \ifIdRegRt[0]~input_o\,
	datac => \ifIdRegRt[1]~input_o\,
	datad => \idExRegRt[0]~input_o\,
	combout => \hazard1~1_combout\);

-- Location: LCCOMB_X15_Y1_N4
\hazard1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hazard1~6_combout\ = (\hazard1~3_combout\ & ((\hazard1~1_combout\) # ((\hazard1~0_combout\ & \hazard1~5_combout\)))) # (!\hazard1~3_combout\ & (\hazard1~0_combout\ & (\hazard1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hazard1~3_combout\,
	datab => \hazard1~0_combout\,
	datac => \hazard1~5_combout\,
	datad => \hazard1~1_combout\,
	combout => \hazard1~6_combout\);

-- Location: IOIBUF_X16_Y0_N8
\isBranch~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isBranch,
	o => \isBranch~input_o\);

-- Location: LCCOMB_X15_Y1_N6
\ifIdWrite~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ifIdWrite~0_combout\ = (\hazard1~6_combout\) # (\isBranch~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hazard1~6_combout\,
	datad => \isBranch~input_o\,
	combout => \ifIdWrite~0_combout\);

ww_ifIdWrite <= \ifIdWrite~output_o\;

ww_PCwrite <= \PCwrite~output_o\;

ww_ctrlMux <= \ctrlMux~output_o\;
END structure;


