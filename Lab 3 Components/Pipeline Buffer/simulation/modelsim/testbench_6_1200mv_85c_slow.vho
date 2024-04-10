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

-- DATE "04/10/2024 11:20:19"

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

ENTITY 	MEMWBRegister IS
    PORT (
	in_clk : IN std_logic;
	in_rst : IN std_logic;
	in_dataMem : IN std_logic_vector(7 DOWNTO 0);
	in_RegDstRes : IN std_logic_vector(7 DOWNTO 0);
	in_resALU : IN std_logic_vector(7 DOWNTO 0);
	in_regWrite : IN std_logic;
	in_memToReg : IN std_logic;
	out_resALU : OUT std_logic_vector(7 DOWNTO 0);
	out_dataMem : OUT std_logic_vector(7 DOWNTO 0);
	out_regWrite : OUT std_logic;
	out_memToReg : OUT std_logic;
	out_writeReg : OUT std_logic_vector(7 DOWNTO 0)
	);
END MEMWBRegister;

-- Design Ports Information
-- out_resALU[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[1]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[5]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[7]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_dataMem[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_dataMem[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_dataMem[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_dataMem[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_dataMem[4]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_dataMem[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_dataMem[6]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_dataMem[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_regWrite	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memToReg	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_writeReg[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_writeReg[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_writeReg[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_writeReg[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_writeReg[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_writeReg[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_writeReg[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_writeReg[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[6]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_dataMem[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_dataMem[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_dataMem[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_dataMem[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_dataMem[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_dataMem[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_dataMem[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_dataMem[7]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_regWrite	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_memToReg	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[1]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MEMWBRegister IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_clk : std_logic;
SIGNAL ww_in_rst : std_logic;
SIGNAL ww_in_dataMem : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_RegDstRes : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_resALU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_regWrite : std_logic;
SIGNAL ww_in_memToReg : std_logic;
SIGNAL ww_out_resALU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_dataMem : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_regWrite : std_logic;
SIGNAL ww_out_memToReg : std_logic;
SIGNAL ww_out_writeReg : std_logic_vector(7 DOWNTO 0);
SIGNAL \in_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \in_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out_resALU[0]~output_o\ : std_logic;
SIGNAL \out_resALU[1]~output_o\ : std_logic;
SIGNAL \out_resALU[2]~output_o\ : std_logic;
SIGNAL \out_resALU[3]~output_o\ : std_logic;
SIGNAL \out_resALU[4]~output_o\ : std_logic;
SIGNAL \out_resALU[5]~output_o\ : std_logic;
SIGNAL \out_resALU[6]~output_o\ : std_logic;
SIGNAL \out_resALU[7]~output_o\ : std_logic;
SIGNAL \out_dataMem[0]~output_o\ : std_logic;
SIGNAL \out_dataMem[1]~output_o\ : std_logic;
SIGNAL \out_dataMem[2]~output_o\ : std_logic;
SIGNAL \out_dataMem[3]~output_o\ : std_logic;
SIGNAL \out_dataMem[4]~output_o\ : std_logic;
SIGNAL \out_dataMem[5]~output_o\ : std_logic;
SIGNAL \out_dataMem[6]~output_o\ : std_logic;
SIGNAL \out_dataMem[7]~output_o\ : std_logic;
SIGNAL \out_regWrite~output_o\ : std_logic;
SIGNAL \out_memToReg~output_o\ : std_logic;
SIGNAL \out_writeReg[0]~output_o\ : std_logic;
SIGNAL \out_writeReg[1]~output_o\ : std_logic;
SIGNAL \out_writeReg[2]~output_o\ : std_logic;
SIGNAL \out_writeReg[3]~output_o\ : std_logic;
SIGNAL \out_writeReg[4]~output_o\ : std_logic;
SIGNAL \out_writeReg[5]~output_o\ : std_logic;
SIGNAL \out_writeReg[6]~output_o\ : std_logic;
SIGNAL \out_writeReg[7]~output_o\ : std_logic;
SIGNAL \in_clk~input_o\ : std_logic;
SIGNAL \in_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_resALU[0]~input_o\ : std_logic;
SIGNAL \resALU|dff_lsb|int_q~feeder_combout\ : std_logic;
SIGNAL \in_rst~input_o\ : std_logic;
SIGNAL \in_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \resALU|dff_lsb|int_q~q\ : std_logic;
SIGNAL \in_resALU[1]~input_o\ : std_logic;
SIGNAL \resALU|gen:1:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[2]~input_o\ : std_logic;
SIGNAL \resALU|gen:2:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \resALU|gen:2:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[3]~input_o\ : std_logic;
SIGNAL \resALU|gen:3:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \resALU|gen:3:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[4]~input_o\ : std_logic;
SIGNAL \resALU|gen:4:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \resALU|gen:4:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[5]~input_o\ : std_logic;
SIGNAL \resALU|gen:5:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[6]~input_o\ : std_logic;
SIGNAL \resALU|gen:6:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[7]~input_o\ : std_logic;
SIGNAL \resALU|dff_msb|int_q~q\ : std_logic;
SIGNAL \in_dataMem[0]~input_o\ : std_logic;
SIGNAL \dataMem|dff_lsb|int_q~feeder_combout\ : std_logic;
SIGNAL \dataMem|dff_lsb|int_q~q\ : std_logic;
SIGNAL \in_dataMem[1]~input_o\ : std_logic;
SIGNAL \dataMem|gen:1:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \dataMem|gen:1:dff|int_q~q\ : std_logic;
SIGNAL \in_dataMem[2]~input_o\ : std_logic;
SIGNAL \dataMem|gen:2:dff|int_q~q\ : std_logic;
SIGNAL \in_dataMem[3]~input_o\ : std_logic;
SIGNAL \dataMem|gen:3:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \dataMem|gen:3:dff|int_q~q\ : std_logic;
SIGNAL \in_dataMem[4]~input_o\ : std_logic;
SIGNAL \dataMem|gen:4:dff|int_q~q\ : std_logic;
SIGNAL \in_dataMem[5]~input_o\ : std_logic;
SIGNAL \dataMem|gen:5:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \dataMem|gen:5:dff|int_q~q\ : std_logic;
SIGNAL \in_dataMem[6]~input_o\ : std_logic;
SIGNAL \dataMem|gen:6:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \dataMem|gen:6:dff|int_q~q\ : std_logic;
SIGNAL \in_dataMem[7]~input_o\ : std_logic;
SIGNAL \dataMem|dff_msb|int_q~feeder_combout\ : std_logic;
SIGNAL \dataMem|dff_msb|int_q~q\ : std_logic;
SIGNAL \in_regWrite~input_o\ : std_logic;
SIGNAL \regWrite_FF|int_q~q\ : std_logic;
SIGNAL \in_memToReg~input_o\ : std_logic;
SIGNAL \memToReg_FF|int_q~feeder_combout\ : std_logic;
SIGNAL \memToReg_FF|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[0]~input_o\ : std_logic;
SIGNAL \RegDstRes|dff_lsb|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[1]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:1:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \RegDstRes|gen:1:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[2]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:2:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \RegDstRes|gen:2:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[3]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:3:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \RegDstRes|gen:3:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[4]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:4:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[5]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:5:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \RegDstRes|gen:5:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[6]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:6:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \RegDstRes|gen:6:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[7]~input_o\ : std_logic;
SIGNAL \RegDstRes|dff_msb|int_q~q\ : std_logic;

BEGIN

ww_in_clk <= in_clk;
ww_in_rst <= in_rst;
ww_in_dataMem <= in_dataMem;
ww_in_RegDstRes <= in_RegDstRes;
ww_in_resALU <= in_resALU;
ww_in_regWrite <= in_regWrite;
ww_in_memToReg <= in_memToReg;
out_resALU <= ww_out_resALU;
out_dataMem <= ww_out_dataMem;
out_regWrite <= ww_out_regWrite;
out_memToReg <= ww_out_memToReg;
out_writeReg <= ww_out_writeReg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\in_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \in_rst~input_o\);

\in_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \in_clk~input_o\);

-- Location: IOOBUF_X46_Y41_N23
\out_resALU[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resALU|dff_lsb|int_q~q\,
	devoe => ww_devoe,
	o => \out_resALU[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\out_resALU[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resALU|gen:1:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_resALU[1]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\out_resALU[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resALU|gen:2:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_resALU[2]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\out_resALU[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resALU|gen:3:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_resALU[3]~output_o\);

-- Location: IOOBUF_X3_Y41_N2
\out_resALU[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resALU|gen:4:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_resALU[4]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\out_resALU[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resALU|gen:5:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_resALU[5]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\out_resALU[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resALU|gen:6:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_resALU[6]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\out_resALU[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resALU|dff_msb|int_q~q\,
	devoe => ww_devoe,
	o => \out_resALU[7]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\out_dataMem[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataMem|dff_lsb|int_q~q\,
	devoe => ww_devoe,
	o => \out_dataMem[0]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\out_dataMem[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataMem|gen:1:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_dataMem[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\out_dataMem[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataMem|gen:2:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_dataMem[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\out_dataMem[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataMem|gen:3:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_dataMem[3]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\out_dataMem[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataMem|gen:4:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_dataMem[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\out_dataMem[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataMem|gen:5:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_dataMem[5]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\out_dataMem[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataMem|gen:6:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_dataMem[6]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\out_dataMem[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataMem|dff_msb|int_q~q\,
	devoe => ww_devoe,
	o => \out_dataMem[7]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\out_regWrite~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regWrite_FF|int_q~q\,
	devoe => ww_devoe,
	o => \out_regWrite~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\out_memToReg~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memToReg_FF|int_q~q\,
	devoe => ww_devoe,
	o => \out_memToReg~output_o\);

-- Location: IOOBUF_X5_Y41_N2
\out_writeReg[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|dff_lsb|int_q~q\,
	devoe => ww_devoe,
	o => \out_writeReg[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\out_writeReg[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:1:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_writeReg[1]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\out_writeReg[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:2:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_writeReg[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\out_writeReg[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:3:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_writeReg[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\out_writeReg[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:4:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_writeReg[4]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\out_writeReg[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:5:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_writeReg[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\out_writeReg[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:6:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_writeReg[6]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\out_writeReg[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|dff_msb|int_q~q\,
	devoe => ww_devoe,
	o => \out_writeReg[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\in_clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_clk,
	o => \in_clk~input_o\);

-- Location: CLKCTRL_G17
\in_clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \in_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \in_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X46_Y41_N1
\in_resALU[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(0),
	o => \in_resALU[0]~input_o\);

-- Location: LCCOMB_X46_Y40_N0
\resALU|dff_lsb|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resALU|dff_lsb|int_q~feeder_combout\ = \in_resALU[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_resALU[0]~input_o\,
	combout => \resALU|dff_lsb|int_q~feeder_combout\);

-- Location: IOIBUF_X27_Y0_N22
\in_rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_rst,
	o => \in_rst~input_o\);

-- Location: CLKCTRL_G19
\in_rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \in_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \in_rst~inputclkctrl_outclk\);

-- Location: FF_X46_Y40_N1
\resALU|dff_lsb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \resALU|dff_lsb|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resALU|dff_lsb|int_q~q\);

-- Location: IOIBUF_X29_Y0_N1
\in_resALU[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(1),
	o => \in_resALU[1]~input_o\);

-- Location: FF_X29_Y1_N1
\resALU|gen:1:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_resALU[1]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resALU|gen:1:dff|int_q~q\);

-- Location: IOIBUF_X41_Y41_N22
\in_resALU[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(2),
	o => \in_resALU[2]~input_o\);

-- Location: LCCOMB_X41_Y40_N16
\resALU|gen:2:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resALU|gen:2:dff|int_q~feeder_combout\ = \in_resALU[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_resALU[2]~input_o\,
	combout => \resALU|gen:2:dff|int_q~feeder_combout\);

-- Location: FF_X41_Y40_N17
\resALU|gen:2:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \resALU|gen:2:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resALU|gen:2:dff|int_q~q\);

-- Location: IOIBUF_X31_Y41_N15
\in_resALU[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(3),
	o => \in_resALU[3]~input_o\);

-- Location: LCCOMB_X31_Y40_N0
\resALU|gen:3:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resALU|gen:3:dff|int_q~feeder_combout\ = \in_resALU[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_resALU[3]~input_o\,
	combout => \resALU|gen:3:dff|int_q~feeder_combout\);

-- Location: FF_X31_Y40_N1
\resALU|gen:3:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \resALU|gen:3:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resALU|gen:3:dff|int_q~q\);

-- Location: IOIBUF_X5_Y41_N8
\in_resALU[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(4),
	o => \in_resALU[4]~input_o\);

-- Location: LCCOMB_X5_Y40_N0
\resALU|gen:4:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resALU|gen:4:dff|int_q~feeder_combout\ = \in_resALU[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_resALU[4]~input_o\,
	combout => \resALU|gen:4:dff|int_q~feeder_combout\);

-- Location: FF_X5_Y40_N1
\resALU|gen:4:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \resALU|gen:4:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resALU|gen:4:dff|int_q~q\);

-- Location: IOIBUF_X48_Y0_N1
\in_resALU[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(5),
	o => \in_resALU[5]~input_o\);

-- Location: FF_X47_Y1_N25
\resALU|gen:5:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_resALU[5]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resALU|gen:5:dff|int_q~q\);

-- Location: IOIBUF_X41_Y0_N1
\in_resALU[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(6),
	o => \in_resALU[6]~input_o\);

-- Location: FF_X41_Y1_N17
\resALU|gen:6:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_resALU[6]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resALU|gen:6:dff|int_q~q\);

-- Location: IOIBUF_X43_Y0_N8
\in_resALU[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(7),
	o => \in_resALU[7]~input_o\);

-- Location: FF_X43_Y1_N1
\resALU|dff_msb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_resALU[7]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resALU|dff_msb|int_q~q\);

-- Location: IOIBUF_X52_Y23_N1
\in_dataMem[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_dataMem(0),
	o => \in_dataMem[0]~input_o\);

-- Location: LCCOMB_X51_Y23_N8
\dataMem|dff_lsb|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dataMem|dff_lsb|int_q~feeder_combout\ = \in_dataMem[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_dataMem[0]~input_o\,
	combout => \dataMem|dff_lsb|int_q~feeder_combout\);

-- Location: FF_X51_Y23_N9
\dataMem|dff_lsb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \dataMem|dff_lsb|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataMem|dff_lsb|int_q~q\);

-- Location: IOIBUF_X29_Y41_N8
\in_dataMem[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_dataMem(1),
	o => \in_dataMem[1]~input_o\);

-- Location: LCCOMB_X30_Y40_N16
\dataMem|gen:1:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dataMem|gen:1:dff|int_q~feeder_combout\ = \in_dataMem[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_dataMem[1]~input_o\,
	combout => \dataMem|gen:1:dff|int_q~feeder_combout\);

-- Location: FF_X30_Y40_N17
\dataMem|gen:1:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \dataMem|gen:1:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataMem|gen:1:dff|int_q~q\);

-- Location: IOIBUF_X36_Y0_N1
\in_dataMem[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_dataMem(2),
	o => \in_dataMem[2]~input_o\);

-- Location: FF_X36_Y1_N25
\dataMem|gen:2:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_dataMem[2]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataMem|gen:2:dff|int_q~q\);

-- Location: IOIBUF_X41_Y0_N22
\in_dataMem[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_dataMem(3),
	o => \in_dataMem[3]~input_o\);

-- Location: LCCOMB_X42_Y1_N8
\dataMem|gen:3:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dataMem|gen:3:dff|int_q~feeder_combout\ = \in_dataMem[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_dataMem[3]~input_o\,
	combout => \dataMem|gen:3:dff|int_q~feeder_combout\);

-- Location: FF_X42_Y1_N9
\dataMem|gen:3:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \dataMem|gen:3:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataMem|gen:3:dff|int_q~q\);

-- Location: IOIBUF_X52_Y10_N1
\in_dataMem[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_dataMem(4),
	o => \in_dataMem[4]~input_o\);

-- Location: FF_X51_Y9_N9
\dataMem|gen:4:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_dataMem[4]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataMem|gen:4:dff|int_q~q\);

-- Location: IOIBUF_X31_Y0_N1
\in_dataMem[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_dataMem(5),
	o => \in_dataMem[5]~input_o\);

-- Location: LCCOMB_X31_Y1_N8
\dataMem|gen:5:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dataMem|gen:5:dff|int_q~feeder_combout\ = \in_dataMem[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_dataMem[5]~input_o\,
	combout => \dataMem|gen:5:dff|int_q~feeder_combout\);

-- Location: FF_X31_Y1_N9
\dataMem|gen:5:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \dataMem|gen:5:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataMem|gen:5:dff|int_q~q\);

-- Location: IOIBUF_X52_Y13_N8
\in_dataMem[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_dataMem(6),
	o => \in_dataMem[6]~input_o\);

-- Location: LCCOMB_X51_Y13_N8
\dataMem|gen:6:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dataMem|gen:6:dff|int_q~feeder_combout\ = \in_dataMem[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_dataMem[6]~input_o\,
	combout => \dataMem|gen:6:dff|int_q~feeder_combout\);

-- Location: FF_X51_Y13_N9
\dataMem|gen:6:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \dataMem|gen:6:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataMem|gen:6:dff|int_q~q\);

-- Location: IOIBUF_X52_Y31_N8
\in_dataMem[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_dataMem(7),
	o => \in_dataMem[7]~input_o\);

-- Location: LCCOMB_X51_Y31_N8
\dataMem|dff_msb|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dataMem|dff_msb|int_q~feeder_combout\ = \in_dataMem[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_dataMem[7]~input_o\,
	combout => \dataMem|dff_msb|int_q~feeder_combout\);

-- Location: FF_X51_Y31_N9
\dataMem|dff_msb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \dataMem|dff_msb|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataMem|dff_msb|int_q~q\);

-- Location: IOIBUF_X31_Y41_N8
\in_regWrite~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_regWrite,
	o => \in_regWrite~input_o\);

-- Location: FF_X32_Y40_N1
\regWrite_FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_regWrite~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regWrite_FF|int_q~q\);

-- Location: IOIBUF_X52_Y10_N8
\in_memToReg~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_memToReg,
	o => \in_memToReg~input_o\);

-- Location: LCCOMB_X50_Y9_N24
\memToReg_FF|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memToReg_FF|int_q~feeder_combout\ = \in_memToReg~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_memToReg~input_o\,
	combout => \memToReg_FF|int_q~feeder_combout\);

-- Location: FF_X50_Y9_N25
\memToReg_FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \memToReg_FF|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memToReg_FF|int_q~q\);

-- Location: IOIBUF_X7_Y41_N15
\in_RegDstRes[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(0),
	o => \in_RegDstRes[0]~input_o\);

-- Location: FF_X6_Y40_N17
\RegDstRes|dff_lsb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_RegDstRes[0]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|dff_lsb|int_q~q\);

-- Location: IOIBUF_X46_Y0_N22
\in_RegDstRes[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(1),
	o => \in_RegDstRes[1]~input_o\);

-- Location: LCCOMB_X46_Y1_N16
\RegDstRes|gen:1:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegDstRes|gen:1:dff|int_q~feeder_combout\ = \in_RegDstRes[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_RegDstRes[1]~input_o\,
	combout => \RegDstRes|gen:1:dff|int_q~feeder_combout\);

-- Location: FF_X46_Y1_N17
\RegDstRes|gen:1:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \RegDstRes|gen:1:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|gen:1:dff|int_q~q\);

-- Location: IOIBUF_X52_Y27_N8
\in_RegDstRes[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(2),
	o => \in_RegDstRes[2]~input_o\);

-- Location: LCCOMB_X51_Y27_N8
\RegDstRes|gen:2:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegDstRes|gen:2:dff|int_q~feeder_combout\ = \in_RegDstRes[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_RegDstRes[2]~input_o\,
	combout => \RegDstRes|gen:2:dff|int_q~feeder_combout\);

-- Location: FF_X51_Y27_N9
\RegDstRes|gen:2:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \RegDstRes|gen:2:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|gen:2:dff|int_q~q\);

-- Location: IOIBUF_X34_Y0_N8
\in_RegDstRes[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(3),
	o => \in_RegDstRes[3]~input_o\);

-- Location: LCCOMB_X34_Y1_N0
\RegDstRes|gen:3:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegDstRes|gen:3:dff|int_q~feeder_combout\ = \in_RegDstRes[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_RegDstRes[3]~input_o\,
	combout => \RegDstRes|gen:3:dff|int_q~feeder_combout\);

-- Location: FF_X34_Y1_N1
\RegDstRes|gen:3:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \RegDstRes|gen:3:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|gen:3:dff|int_q~q\);

-- Location: IOIBUF_X36_Y0_N8
\in_RegDstRes[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(4),
	o => \in_RegDstRes[4]~input_o\);

-- Location: FF_X35_Y1_N17
\RegDstRes|gen:4:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_RegDstRes[4]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|gen:4:dff|int_q~q\);

-- Location: IOIBUF_X36_Y41_N8
\in_RegDstRes[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(5),
	o => \in_RegDstRes[5]~input_o\);

-- Location: LCCOMB_X36_Y40_N8
\RegDstRes|gen:5:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegDstRes|gen:5:dff|int_q~feeder_combout\ = \in_RegDstRes[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_RegDstRes[5]~input_o\,
	combout => \RegDstRes|gen:5:dff|int_q~feeder_combout\);

-- Location: FF_X36_Y40_N9
\RegDstRes|gen:5:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \RegDstRes|gen:5:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|gen:5:dff|int_q~q\);

-- Location: IOIBUF_X31_Y0_N22
\in_RegDstRes[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(6),
	o => \in_RegDstRes[6]~input_o\);

-- Location: LCCOMB_X30_Y1_N24
\RegDstRes|gen:6:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegDstRes|gen:6:dff|int_q~feeder_combout\ = \in_RegDstRes[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_RegDstRes[6]~input_o\,
	combout => \RegDstRes|gen:6:dff|int_q~feeder_combout\);

-- Location: FF_X30_Y1_N25
\RegDstRes|gen:6:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \RegDstRes|gen:6:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|gen:6:dff|int_q~q\);

-- Location: IOIBUF_X27_Y41_N1
\in_RegDstRes[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(7),
	o => \in_RegDstRes[7]~input_o\);

-- Location: FF_X27_Y40_N17
\RegDstRes|dff_msb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_RegDstRes[7]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|dff_msb|int_q~q\);

ww_out_resALU(0) <= \out_resALU[0]~output_o\;

ww_out_resALU(1) <= \out_resALU[1]~output_o\;

ww_out_resALU(2) <= \out_resALU[2]~output_o\;

ww_out_resALU(3) <= \out_resALU[3]~output_o\;

ww_out_resALU(4) <= \out_resALU[4]~output_o\;

ww_out_resALU(5) <= \out_resALU[5]~output_o\;

ww_out_resALU(6) <= \out_resALU[6]~output_o\;

ww_out_resALU(7) <= \out_resALU[7]~output_o\;

ww_out_dataMem(0) <= \out_dataMem[0]~output_o\;

ww_out_dataMem(1) <= \out_dataMem[1]~output_o\;

ww_out_dataMem(2) <= \out_dataMem[2]~output_o\;

ww_out_dataMem(3) <= \out_dataMem[3]~output_o\;

ww_out_dataMem(4) <= \out_dataMem[4]~output_o\;

ww_out_dataMem(5) <= \out_dataMem[5]~output_o\;

ww_out_dataMem(6) <= \out_dataMem[6]~output_o\;

ww_out_dataMem(7) <= \out_dataMem[7]~output_o\;

ww_out_regWrite <= \out_regWrite~output_o\;

ww_out_memToReg <= \out_memToReg~output_o\;

ww_out_writeReg(0) <= \out_writeReg[0]~output_o\;

ww_out_writeReg(1) <= \out_writeReg[1]~output_o\;

ww_out_writeReg(2) <= \out_writeReg[2]~output_o\;

ww_out_writeReg(3) <= \out_writeReg[3]~output_o\;

ww_out_writeReg(4) <= \out_writeReg[4]~output_o\;

ww_out_writeReg(5) <= \out_writeReg[5]~output_o\;

ww_out_writeReg(6) <= \out_writeReg[6]~output_o\;

ww_out_writeReg(7) <= \out_writeReg[7]~output_o\;
END structure;


