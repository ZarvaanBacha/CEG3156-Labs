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

-- DATE "04/10/2024 15:34:09"

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

ENTITY 	EXMemRegister IS
    PORT (
	in_clk : IN std_logic;
	in_rst : IN std_logic;
	in_branchALU : IN std_logic_vector(7 DOWNTO 0);
	in_resALU : IN std_logic_vector(7 DOWNTO 0);
	in_aluZero : IN std_logic;
	in_rdData2 : IN std_logic_vector(7 DOWNTO 0);
	in_RegDstRes : IN std_logic_vector(7 DOWNTO 0);
	in_memRead : IN std_logic;
	in_memWrite : IN std_logic;
	in_branch : IN std_logic;
	in_jmp : IN std_logic;
	in_regWrite : IN std_logic;
	in_memToReg : IN std_logic;
	out_aluZero : OUT std_logic;
	out_resALU : OUT std_logic_vector(7 DOWNTO 0);
	out_branchALU : OUT std_logic_vector(7 DOWNTO 0);
	out_rdData2 : OUT std_logic_vector(7 DOWNTO 0);
	out_memRead : OUT std_logic;
	out_memWrite : OUT std_logic;
	out_branch : OUT std_logic;
	out_jmp : OUT std_logic;
	out_regWrite : OUT std_logic;
	out_memToReg : OUT std_logic;
	out_RegDstRes : OUT std_logic_vector(7 DOWNTO 0)
	);
END EXMemRegister;

-- Design Ports Information
-- out_aluZero	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_resALU[7]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_branchALU[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_branchALU[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_branchALU[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_branchALU[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_branchALU[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_branchALU[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_branchALU[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_branchALU[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rdData2[0]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rdData2[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rdData2[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rdData2[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rdData2[4]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rdData2[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rdData2[6]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_rdData2[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memRead	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memWrite	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_branch	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_jmp	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_regWrite	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memToReg	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_RegDstRes[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_RegDstRes[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_RegDstRes[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_RegDstRes[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_RegDstRes[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_RegDstRes[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_RegDstRes[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_RegDstRes[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_aluZero	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_resALU[7]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_branchALU[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_branchALU[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_branchALU[2]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_branchALU[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_branchALU[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_branchALU[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_branchALU[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_branchALU[7]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_rdData2[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_rdData2[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_rdData2[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_rdData2[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_rdData2[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_rdData2[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_rdData2[6]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_rdData2[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_memRead	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_memWrite	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_branch	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_jmp	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_regWrite	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_memToReg	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[0]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[5]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_RegDstRes[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EXMemRegister IS
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
SIGNAL ww_in_branchALU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_resALU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_aluZero : std_logic;
SIGNAL ww_in_rdData2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_RegDstRes : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_memRead : std_logic;
SIGNAL ww_in_memWrite : std_logic;
SIGNAL ww_in_branch : std_logic;
SIGNAL ww_in_jmp : std_logic;
SIGNAL ww_in_regWrite : std_logic;
SIGNAL ww_in_memToReg : std_logic;
SIGNAL ww_out_aluZero : std_logic;
SIGNAL ww_out_resALU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_branchALU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_rdData2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_memRead : std_logic;
SIGNAL ww_out_memWrite : std_logic;
SIGNAL ww_out_branch : std_logic;
SIGNAL ww_out_jmp : std_logic;
SIGNAL ww_out_regWrite : std_logic;
SIGNAL ww_out_memToReg : std_logic;
SIGNAL ww_out_RegDstRes : std_logic_vector(7 DOWNTO 0);
SIGNAL \in_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \in_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out_aluZero~output_o\ : std_logic;
SIGNAL \out_resALU[0]~output_o\ : std_logic;
SIGNAL \out_resALU[1]~output_o\ : std_logic;
SIGNAL \out_resALU[2]~output_o\ : std_logic;
SIGNAL \out_resALU[3]~output_o\ : std_logic;
SIGNAL \out_resALU[4]~output_o\ : std_logic;
SIGNAL \out_resALU[5]~output_o\ : std_logic;
SIGNAL \out_resALU[6]~output_o\ : std_logic;
SIGNAL \out_resALU[7]~output_o\ : std_logic;
SIGNAL \out_branchALU[0]~output_o\ : std_logic;
SIGNAL \out_branchALU[1]~output_o\ : std_logic;
SIGNAL \out_branchALU[2]~output_o\ : std_logic;
SIGNAL \out_branchALU[3]~output_o\ : std_logic;
SIGNAL \out_branchALU[4]~output_o\ : std_logic;
SIGNAL \out_branchALU[5]~output_o\ : std_logic;
SIGNAL \out_branchALU[6]~output_o\ : std_logic;
SIGNAL \out_branchALU[7]~output_o\ : std_logic;
SIGNAL \out_rdData2[0]~output_o\ : std_logic;
SIGNAL \out_rdData2[1]~output_o\ : std_logic;
SIGNAL \out_rdData2[2]~output_o\ : std_logic;
SIGNAL \out_rdData2[3]~output_o\ : std_logic;
SIGNAL \out_rdData2[4]~output_o\ : std_logic;
SIGNAL \out_rdData2[5]~output_o\ : std_logic;
SIGNAL \out_rdData2[6]~output_o\ : std_logic;
SIGNAL \out_rdData2[7]~output_o\ : std_logic;
SIGNAL \out_memRead~output_o\ : std_logic;
SIGNAL \out_memWrite~output_o\ : std_logic;
SIGNAL \out_branch~output_o\ : std_logic;
SIGNAL \out_jmp~output_o\ : std_logic;
SIGNAL \out_regWrite~output_o\ : std_logic;
SIGNAL \out_memToReg~output_o\ : std_logic;
SIGNAL \out_RegDstRes[0]~output_o\ : std_logic;
SIGNAL \out_RegDstRes[1]~output_o\ : std_logic;
SIGNAL \out_RegDstRes[2]~output_o\ : std_logic;
SIGNAL \out_RegDstRes[3]~output_o\ : std_logic;
SIGNAL \out_RegDstRes[4]~output_o\ : std_logic;
SIGNAL \out_RegDstRes[5]~output_o\ : std_logic;
SIGNAL \out_RegDstRes[6]~output_o\ : std_logic;
SIGNAL \out_RegDstRes[7]~output_o\ : std_logic;
SIGNAL \in_clk~input_o\ : std_logic;
SIGNAL \in_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_aluZero~input_o\ : std_logic;
SIGNAL \aluZero|int_q~feeder_combout\ : std_logic;
SIGNAL \in_rst~input_o\ : std_logic;
SIGNAL \in_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \aluZero|int_q~q\ : std_logic;
SIGNAL \in_resALU[0]~input_o\ : std_logic;
SIGNAL \resALU|dff_lsb|int_q~feeder_combout\ : std_logic;
SIGNAL \resALU|dff_lsb|int_q~q\ : std_logic;
SIGNAL \in_resALU[1]~input_o\ : std_logic;
SIGNAL \resALU|gen:1:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \resALU|gen:1:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[2]~input_o\ : std_logic;
SIGNAL \resALU|gen:2:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \resALU|gen:2:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[3]~input_o\ : std_logic;
SIGNAL \resALU|gen:3:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \resALU|gen:3:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[4]~input_o\ : std_logic;
SIGNAL \resALU|gen:4:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[5]~input_o\ : std_logic;
SIGNAL \resALU|gen:5:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[6]~input_o\ : std_logic;
SIGNAL \resALU|gen:6:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \resALU|gen:6:dff|int_q~q\ : std_logic;
SIGNAL \in_resALU[7]~input_o\ : std_logic;
SIGNAL \resALU|dff_msb|int_q~q\ : std_logic;
SIGNAL \in_branchALU[0]~input_o\ : std_logic;
SIGNAL \branchALU|dff_lsb|int_q~feeder_combout\ : std_logic;
SIGNAL \branchALU|dff_lsb|int_q~q\ : std_logic;
SIGNAL \in_branchALU[1]~input_o\ : std_logic;
SIGNAL \branchALU|gen:1:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \branchALU|gen:1:dff|int_q~q\ : std_logic;
SIGNAL \in_branchALU[2]~input_o\ : std_logic;
SIGNAL \branchALU|gen:2:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \branchALU|gen:2:dff|int_q~q\ : std_logic;
SIGNAL \in_branchALU[3]~input_o\ : std_logic;
SIGNAL \branchALU|gen:3:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \branchALU|gen:3:dff|int_q~q\ : std_logic;
SIGNAL \in_branchALU[4]~input_o\ : std_logic;
SIGNAL \branchALU|gen:4:dff|int_q~q\ : std_logic;
SIGNAL \in_branchALU[5]~input_o\ : std_logic;
SIGNAL \branchALU|gen:5:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \branchALU|gen:5:dff|int_q~q\ : std_logic;
SIGNAL \in_branchALU[6]~input_o\ : std_logic;
SIGNAL \branchALU|gen:6:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \branchALU|gen:6:dff|int_q~q\ : std_logic;
SIGNAL \in_branchALU[7]~input_o\ : std_logic;
SIGNAL \branchALU|dff_msb|int_q~feeder_combout\ : std_logic;
SIGNAL \branchALU|dff_msb|int_q~q\ : std_logic;
SIGNAL \in_rdData2[0]~input_o\ : std_logic;
SIGNAL \rdData2|dff_lsb|int_q~feeder_combout\ : std_logic;
SIGNAL \rdData2|dff_lsb|int_q~q\ : std_logic;
SIGNAL \in_rdData2[1]~input_o\ : std_logic;
SIGNAL \rdData2|gen:1:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \rdData2|gen:1:dff|int_q~q\ : std_logic;
SIGNAL \in_rdData2[2]~input_o\ : std_logic;
SIGNAL \rdData2|gen:2:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \rdData2|gen:2:dff|int_q~q\ : std_logic;
SIGNAL \in_rdData2[3]~input_o\ : std_logic;
SIGNAL \rdData2|gen:3:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \rdData2|gen:3:dff|int_q~q\ : std_logic;
SIGNAL \in_rdData2[4]~input_o\ : std_logic;
SIGNAL \rdData2|gen:4:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \rdData2|gen:4:dff|int_q~q\ : std_logic;
SIGNAL \in_rdData2[5]~input_o\ : std_logic;
SIGNAL \rdData2|gen:5:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \rdData2|gen:5:dff|int_q~q\ : std_logic;
SIGNAL \in_rdData2[6]~input_o\ : std_logic;
SIGNAL \rdData2|gen:6:dff|int_q~q\ : std_logic;
SIGNAL \in_rdData2[7]~input_o\ : std_logic;
SIGNAL \rdData2|dff_msb|int_q~feeder_combout\ : std_logic;
SIGNAL \rdData2|dff_msb|int_q~q\ : std_logic;
SIGNAL \in_memRead~input_o\ : std_logic;
SIGNAL \memRead_FF|int_q~feeder_combout\ : std_logic;
SIGNAL \memRead_FF|int_q~q\ : std_logic;
SIGNAL \in_memWrite~input_o\ : std_logic;
SIGNAL \memWrite_FF|int_q~q\ : std_logic;
SIGNAL \in_branch~input_o\ : std_logic;
SIGNAL \branch_FF|int_q~q\ : std_logic;
SIGNAL \in_jmp~input_o\ : std_logic;
SIGNAL \jmp_FF|int_q~q\ : std_logic;
SIGNAL \in_regWrite~input_o\ : std_logic;
SIGNAL \regWrite_FF|int_q~feeder_combout\ : std_logic;
SIGNAL \regWrite_FF|int_q~q\ : std_logic;
SIGNAL \in_memToReg~input_o\ : std_logic;
SIGNAL \memToReg_FF|int_q~feeder_combout\ : std_logic;
SIGNAL \memToReg_FF|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[0]~input_o\ : std_logic;
SIGNAL \RegDstRes|dff_lsb|int_q~feeder_combout\ : std_logic;
SIGNAL \RegDstRes|dff_lsb|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[1]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:1:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \RegDstRes|gen:1:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[2]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:2:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \RegDstRes|gen:2:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[3]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:3:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[4]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:4:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \RegDstRes|gen:4:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[5]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:5:dff|int_q~feeder_combout\ : std_logic;
SIGNAL \RegDstRes|gen:5:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[6]~input_o\ : std_logic;
SIGNAL \RegDstRes|gen:6:dff|int_q~q\ : std_logic;
SIGNAL \in_RegDstRes[7]~input_o\ : std_logic;
SIGNAL \RegDstRes|dff_msb|int_q~feeder_combout\ : std_logic;
SIGNAL \RegDstRes|dff_msb|int_q~q\ : std_logic;

BEGIN

ww_in_clk <= in_clk;
ww_in_rst <= in_rst;
ww_in_branchALU <= in_branchALU;
ww_in_resALU <= in_resALU;
ww_in_aluZero <= in_aluZero;
ww_in_rdData2 <= in_rdData2;
ww_in_RegDstRes <= in_RegDstRes;
ww_in_memRead <= in_memRead;
ww_in_memWrite <= in_memWrite;
ww_in_branch <= in_branch;
ww_in_jmp <= in_jmp;
ww_in_regWrite <= in_regWrite;
ww_in_memToReg <= in_memToReg;
out_aluZero <= ww_out_aluZero;
out_resALU <= ww_out_resALU;
out_branchALU <= ww_out_branchALU;
out_rdData2 <= ww_out_rdData2;
out_memRead <= ww_out_memRead;
out_memWrite <= ww_out_memWrite;
out_branch <= ww_out_branch;
out_jmp <= ww_out_jmp;
out_regWrite <= ww_out_regWrite;
out_memToReg <= ww_out_memToReg;
out_RegDstRes <= ww_out_RegDstRes;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\in_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \in_rst~input_o\);

\in_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \in_clk~input_o\);

-- Location: IOOBUF_X29_Y0_N2
\out_aluZero~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluZero|int_q~q\,
	devoe => ww_devoe,
	o => \out_aluZero~output_o\);

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X46_Y41_N16
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

-- Location: IOOBUF_X3_Y41_N2
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

-- Location: IOOBUF_X52_Y11_N9
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

-- Location: IOOBUF_X34_Y0_N9
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

-- Location: IOOBUF_X52_Y19_N9
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

-- Location: IOOBUF_X52_Y27_N2
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

-- Location: IOOBUF_X25_Y0_N9
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

-- Location: IOOBUF_X25_Y41_N9
\out_branchALU[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \branchALU|dff_lsb|int_q~q\,
	devoe => ww_devoe,
	o => \out_branchALU[0]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\out_branchALU[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \branchALU|gen:1:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_branchALU[1]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\out_branchALU[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \branchALU|gen:2:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_branchALU[2]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\out_branchALU[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \branchALU|gen:3:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_branchALU[3]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\out_branchALU[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \branchALU|gen:4:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_branchALU[4]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\out_branchALU[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \branchALU|gen:5:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_branchALU[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\out_branchALU[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \branchALU|gen:6:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_branchALU[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\out_branchALU[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \branchALU|dff_msb|int_q~q\,
	devoe => ww_devoe,
	o => \out_branchALU[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\out_rdData2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rdData2|dff_lsb|int_q~q\,
	devoe => ww_devoe,
	o => \out_rdData2[0]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\out_rdData2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rdData2|gen:1:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_rdData2[1]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\out_rdData2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rdData2|gen:2:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_rdData2[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\out_rdData2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rdData2|gen:3:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_rdData2[3]~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\out_rdData2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rdData2|gen:4:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_rdData2[4]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\out_rdData2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rdData2|gen:5:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_rdData2[5]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\out_rdData2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rdData2|gen:6:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_rdData2[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\out_rdData2[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rdData2|dff_msb|int_q~q\,
	devoe => ww_devoe,
	o => \out_rdData2[7]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\out_memRead~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memRead_FF|int_q~q\,
	devoe => ww_devoe,
	o => \out_memRead~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\out_memWrite~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memWrite_FF|int_q~q\,
	devoe => ww_devoe,
	o => \out_memWrite~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\out_branch~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \branch_FF|int_q~q\,
	devoe => ww_devoe,
	o => \out_branch~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\out_jmp~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \jmp_FF|int_q~q\,
	devoe => ww_devoe,
	o => \out_jmp~output_o\);

-- Location: IOOBUF_X29_Y41_N9
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

-- Location: IOOBUF_X52_Y25_N2
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

-- Location: IOOBUF_X52_Y16_N9
\out_RegDstRes[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|dff_lsb|int_q~q\,
	devoe => ww_devoe,
	o => \out_RegDstRes[0]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\out_RegDstRes[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:1:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_RegDstRes[1]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\out_RegDstRes[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:2:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_RegDstRes[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\out_RegDstRes[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:3:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_RegDstRes[3]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\out_RegDstRes[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:4:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_RegDstRes[4]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\out_RegDstRes[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:5:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_RegDstRes[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\out_RegDstRes[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|gen:6:dff|int_q~q\,
	devoe => ww_devoe,
	o => \out_RegDstRes[6]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\out_RegDstRes[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDstRes|dff_msb|int_q~q\,
	devoe => ww_devoe,
	o => \out_RegDstRes[7]~output_o\);

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

-- Location: IOIBUF_X27_Y0_N8
\in_aluZero~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_aluZero,
	o => \in_aluZero~input_o\);

-- Location: LCCOMB_X30_Y1_N24
\aluZero|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \aluZero|int_q~feeder_combout\ = \in_aluZero~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_aluZero~input_o\,
	combout => \aluZero|int_q~feeder_combout\);

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

-- Location: FF_X30_Y1_N25
\aluZero|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \aluZero|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluZero|int_q~q\);

-- Location: IOIBUF_X27_Y0_N1
\in_resALU[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(0),
	o => \in_resALU[0]~input_o\);

-- Location: LCCOMB_X26_Y1_N8
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

-- Location: FF_X26_Y1_N9
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

-- Location: IOIBUF_X48_Y41_N8
\in_resALU[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(1),
	o => \in_resALU[1]~input_o\);

-- Location: LCCOMB_X47_Y40_N0
\resALU|gen:1:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resALU|gen:1:dff|int_q~feeder_combout\ = \in_resALU[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_resALU[1]~input_o\,
	combout => \resALU|gen:1:dff|int_q~feeder_combout\);

-- Location: FF_X47_Y40_N1
\resALU|gen:1:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \resALU|gen:1:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resALU|gen:1:dff|int_q~q\);

-- Location: IOIBUF_X5_Y41_N8
\in_resALU[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(2),
	o => \in_resALU[2]~input_o\);

-- Location: LCCOMB_X5_Y40_N0
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

-- Location: FF_X5_Y40_N1
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

-- Location: IOIBUF_X52_Y11_N1
\in_resALU[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(3),
	o => \in_resALU[3]~input_o\);

-- Location: LCCOMB_X51_Y11_N8
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

-- Location: FF_X51_Y11_N9
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

-- Location: IOIBUF_X34_Y0_N1
\in_resALU[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(4),
	o => \in_resALU[4]~input_o\);

-- Location: FF_X35_Y1_N17
\resALU|gen:4:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_resALU[4]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resALU|gen:4:dff|int_q~q\);

-- Location: IOIBUF_X52_Y23_N8
\in_resALU[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(5),
	o => \in_resALU[5]~input_o\);

-- Location: FF_X51_Y19_N9
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

-- Location: IOIBUF_X52_Y27_N8
\in_resALU[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(6),
	o => \in_resALU[6]~input_o\);

-- Location: LCCOMB_X51_Y27_N8
\resALU|gen:6:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resALU|gen:6:dff|int_q~feeder_combout\ = \in_resALU[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_resALU[6]~input_o\,
	combout => \resALU|gen:6:dff|int_q~feeder_combout\);

-- Location: FF_X51_Y27_N9
\resALU|gen:6:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \resALU|gen:6:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resALU|gen:6:dff|int_q~q\);

-- Location: IOIBUF_X29_Y0_N8
\in_resALU[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_resALU(7),
	o => \in_resALU[7]~input_o\);

-- Location: FF_X29_Y1_N1
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

-- Location: IOIBUF_X29_Y41_N1
\in_branchALU[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_branchALU(0),
	o => \in_branchALU[0]~input_o\);

-- Location: LCCOMB_X29_Y40_N0
\branchALU|dff_lsb|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \branchALU|dff_lsb|int_q~feeder_combout\ = \in_branchALU[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_branchALU[0]~input_o\,
	combout => \branchALU|dff_lsb|int_q~feeder_combout\);

-- Location: FF_X29_Y40_N1
\branchALU|dff_lsb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \branchALU|dff_lsb|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \branchALU|dff_lsb|int_q~q\);

-- Location: IOIBUF_X52_Y13_N1
\in_branchALU[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_branchALU(1),
	o => \in_branchALU[1]~input_o\);

-- Location: LCCOMB_X51_Y13_N8
\branchALU|gen:1:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \branchALU|gen:1:dff|int_q~feeder_combout\ = \in_branchALU[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_branchALU[1]~input_o\,
	combout => \branchALU|gen:1:dff|int_q~feeder_combout\);

-- Location: FF_X51_Y13_N9
\branchALU|gen:1:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \branchALU|gen:1:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \branchALU|gen:1:dff|int_q~q\);

-- Location: IOIBUF_X52_Y15_N8
\in_branchALU[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_branchALU(2),
	o => \in_branchALU[2]~input_o\);

-- Location: LCCOMB_X51_Y15_N8
\branchALU|gen:2:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \branchALU|gen:2:dff|int_q~feeder_combout\ = \in_branchALU[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_branchALU[2]~input_o\,
	combout => \branchALU|gen:2:dff|int_q~feeder_combout\);

-- Location: FF_X51_Y15_N9
\branchALU|gen:2:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \branchALU|gen:2:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \branchALU|gen:2:dff|int_q~q\);

-- Location: IOIBUF_X23_Y0_N8
\in_branchALU[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_branchALU(3),
	o => \in_branchALU[3]~input_o\);

-- Location: LCCOMB_X23_Y1_N16
\branchALU|gen:3:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \branchALU|gen:3:dff|int_q~feeder_combout\ = \in_branchALU[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_branchALU[3]~input_o\,
	combout => \branchALU|gen:3:dff|int_q~feeder_combout\);

-- Location: FF_X23_Y1_N17
\branchALU|gen:3:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \branchALU|gen:3:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \branchALU|gen:3:dff|int_q~q\);

-- Location: IOIBUF_X34_Y41_N8
\in_branchALU[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_branchALU(4),
	o => \in_branchALU[4]~input_o\);

-- Location: FF_X35_Y40_N1
\branchALU|gen:4:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_branchALU[4]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \branchALU|gen:4:dff|int_q~q\);

-- Location: IOIBUF_X31_Y41_N1
\in_branchALU[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_branchALU(5),
	o => \in_branchALU[5]~input_o\);

-- Location: LCCOMB_X31_Y40_N0
\branchALU|gen:5:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \branchALU|gen:5:dff|int_q~feeder_combout\ = \in_branchALU[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_branchALU[5]~input_o\,
	combout => \branchALU|gen:5:dff|int_q~feeder_combout\);

-- Location: FF_X31_Y40_N1
\branchALU|gen:5:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \branchALU|gen:5:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \branchALU|gen:5:dff|int_q~q\);

-- Location: IOIBUF_X36_Y0_N8
\in_branchALU[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_branchALU(6),
	o => \in_branchALU[6]~input_o\);

-- Location: LCCOMB_X37_Y1_N8
\branchALU|gen:6:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \branchALU|gen:6:dff|int_q~feeder_combout\ = \in_branchALU[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_branchALU[6]~input_o\,
	combout => \branchALU|gen:6:dff|int_q~feeder_combout\);

-- Location: FF_X37_Y1_N9
\branchALU|gen:6:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \branchALU|gen:6:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \branchALU|gen:6:dff|int_q~q\);

-- Location: IOIBUF_X16_Y0_N8
\in_branchALU[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_branchALU(7),
	o => \in_branchALU[7]~input_o\);

-- Location: LCCOMB_X15_Y1_N24
\branchALU|dff_msb|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \branchALU|dff_msb|int_q~feeder_combout\ = \in_branchALU[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_branchALU[7]~input_o\,
	combout => \branchALU|dff_msb|int_q~feeder_combout\);

-- Location: FF_X15_Y1_N25
\branchALU|dff_msb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \branchALU|dff_msb|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \branchALU|dff_msb|int_q~q\);

-- Location: IOIBUF_X43_Y0_N8
\in_rdData2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_rdData2(0),
	o => \in_rdData2[0]~input_o\);

-- Location: LCCOMB_X44_Y1_N24
\rdData2|dff_lsb|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rdData2|dff_lsb|int_q~feeder_combout\ = \in_rdData2[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_rdData2[0]~input_o\,
	combout => \rdData2|dff_lsb|int_q~feeder_combout\);

-- Location: FF_X44_Y1_N25
\rdData2|dff_lsb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \rdData2|dff_lsb|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdData2|dff_lsb|int_q~q\);

-- Location: IOIBUF_X41_Y0_N15
\in_rdData2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_rdData2(1),
	o => \in_rdData2[1]~input_o\);

-- Location: LCCOMB_X42_Y1_N8
\rdData2|gen:1:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rdData2|gen:1:dff|int_q~feeder_combout\ = \in_rdData2[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_rdData2[1]~input_o\,
	combout => \rdData2|gen:1:dff|int_q~feeder_combout\);

-- Location: FF_X42_Y1_N9
\rdData2|gen:1:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \rdData2|gen:1:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdData2|gen:1:dff|int_q~q\);

-- Location: IOIBUF_X52_Y32_N1
\in_rdData2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_rdData2(2),
	o => \in_rdData2[2]~input_o\);

-- Location: LCCOMB_X50_Y32_N24
\rdData2|gen:2:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rdData2|gen:2:dff|int_q~feeder_combout\ = \in_rdData2[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_rdData2[2]~input_o\,
	combout => \rdData2|gen:2:dff|int_q~feeder_combout\);

-- Location: FF_X50_Y32_N25
\rdData2|gen:2:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \rdData2|gen:2:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdData2|gen:2:dff|int_q~q\);

-- Location: IOIBUF_X31_Y0_N22
\in_rdData2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_rdData2(3),
	o => \in_rdData2[3]~input_o\);

-- Location: LCCOMB_X31_Y1_N8
\rdData2|gen:3:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rdData2|gen:3:dff|int_q~feeder_combout\ = \in_rdData2[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_rdData2[3]~input_o\,
	combout => \rdData2|gen:3:dff|int_q~feeder_combout\);

-- Location: FF_X31_Y1_N9
\rdData2|gen:3:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \rdData2|gen:3:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdData2|gen:3:dff|int_q~q\);

-- Location: IOIBUF_X52_Y12_N8
\in_rdData2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_rdData2(4),
	o => \in_rdData2[4]~input_o\);

-- Location: LCCOMB_X51_Y12_N8
\rdData2|gen:4:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rdData2|gen:4:dff|int_q~feeder_combout\ = \in_rdData2[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_rdData2[4]~input_o\,
	combout => \rdData2|gen:4:dff|int_q~feeder_combout\);

-- Location: FF_X51_Y12_N9
\rdData2|gen:4:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \rdData2|gen:4:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdData2|gen:4:dff|int_q~q\);

-- Location: IOIBUF_X41_Y41_N1
\in_rdData2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_rdData2(5),
	o => \in_rdData2[5]~input_o\);

-- Location: LCCOMB_X41_Y40_N16
\rdData2|gen:5:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rdData2|gen:5:dff|int_q~feeder_combout\ = \in_rdData2[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_rdData2[5]~input_o\,
	combout => \rdData2|gen:5:dff|int_q~feeder_combout\);

-- Location: FF_X41_Y40_N17
\rdData2|gen:5:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \rdData2|gen:5:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdData2|gen:5:dff|int_q~q\);

-- Location: IOIBUF_X14_Y0_N1
\in_rdData2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_rdData2(6),
	o => \in_rdData2[6]~input_o\);

-- Location: FF_X14_Y1_N25
\rdData2|gen:6:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_rdData2[6]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdData2|gen:6:dff|int_q~q\);

-- Location: IOIBUF_X21_Y0_N8
\in_rdData2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_rdData2(7),
	o => \in_rdData2[7]~input_o\);

-- Location: LCCOMB_X21_Y1_N8
\rdData2|dff_msb|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rdData2|dff_msb|int_q~feeder_combout\ = \in_rdData2[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_rdData2[7]~input_o\,
	combout => \rdData2|dff_msb|int_q~feeder_combout\);

-- Location: FF_X21_Y1_N9
\rdData2|dff_msb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \rdData2|dff_msb|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdData2|dff_msb|int_q~q\);

-- Location: IOIBUF_X52_Y9_N1
\in_memRead~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_memRead,
	o => \in_memRead~input_o\);

-- Location: LCCOMB_X51_Y9_N8
\memRead_FF|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memRead_FF|int_q~feeder_combout\ = \in_memRead~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_memRead~input_o\,
	combout => \memRead_FF|int_q~feeder_combout\);

-- Location: FF_X51_Y9_N9
\memRead_FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \memRead_FF|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memRead_FF|int_q~q\);

-- Location: IOIBUF_X52_Y31_N1
\in_memWrite~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_memWrite,
	o => \in_memWrite~input_o\);

-- Location: FF_X49_Y32_N25
\memWrite_FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_memWrite~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memWrite_FF|int_q~q\);

-- Location: IOIBUF_X5_Y0_N8
\in_branch~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_branch,
	o => \in_branch~input_o\);

-- Location: FF_X4_Y1_N25
\branch_FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_branch~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \branch_FF|int_q~q\);

-- Location: IOIBUF_X52_Y19_N1
\in_jmp~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_jmp,
	o => \in_jmp~input_o\);

-- Location: FF_X50_Y19_N9
\jmp_FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_jmp~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jmp_FF|int_q~q\);

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

-- Location: LCCOMB_X30_Y40_N16
\regWrite_FF|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regWrite_FF|int_q~feeder_combout\ = \in_regWrite~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_regWrite~input_o\,
	combout => \regWrite_FF|int_q~feeder_combout\);

-- Location: FF_X30_Y40_N17
\regWrite_FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \regWrite_FF|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regWrite_FF|int_q~q\);

-- Location: IOIBUF_X52_Y25_N8
\in_memToReg~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_memToReg,
	o => \in_memToReg~input_o\);

-- Location: LCCOMB_X51_Y25_N8
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

-- Location: FF_X51_Y25_N9
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

-- Location: IOIBUF_X52_Y16_N1
\in_RegDstRes[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(0),
	o => \in_RegDstRes[0]~input_o\);

-- Location: LCCOMB_X51_Y16_N8
\RegDstRes|dff_lsb|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegDstRes|dff_lsb|int_q~feeder_combout\ = \in_RegDstRes[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_RegDstRes[0]~input_o\,
	combout => \RegDstRes|dff_lsb|int_q~feeder_combout\);

-- Location: FF_X51_Y16_N9
\RegDstRes|dff_lsb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \RegDstRes|dff_lsb|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|dff_lsb|int_q~q\);

-- Location: IOIBUF_X31_Y0_N1
\in_RegDstRes[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(1),
	o => \in_RegDstRes[1]~input_o\);

-- Location: LCCOMB_X32_Y1_N16
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

-- Location: FF_X32_Y1_N17
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

-- Location: IOIBUF_X52_Y32_N15
\in_RegDstRes[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(2),
	o => \in_RegDstRes[2]~input_o\);

-- Location: LCCOMB_X51_Y32_N8
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

-- Location: FF_X51_Y32_N9
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

-- Location: IOIBUF_X41_Y0_N1
\in_RegDstRes[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(3),
	o => \in_RegDstRes[3]~input_o\);

-- Location: FF_X41_Y1_N17
\RegDstRes|gen:3:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_RegDstRes[3]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|gen:3:dff|int_q~q\);

-- Location: IOIBUF_X46_Y41_N1
\in_RegDstRes[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(4),
	o => \in_RegDstRes[4]~input_o\);

-- Location: LCCOMB_X46_Y40_N0
\RegDstRes|gen:4:dff|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegDstRes|gen:4:dff|int_q~feeder_combout\ = \in_RegDstRes[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_RegDstRes[4]~input_o\,
	combout => \RegDstRes|gen:4:dff|int_q~feeder_combout\);

-- Location: FF_X46_Y40_N1
\RegDstRes|gen:4:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \RegDstRes|gen:4:dff|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|gen:4:dff|int_q~q\);

-- Location: IOIBUF_X50_Y0_N8
\in_RegDstRes[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(5),
	o => \in_RegDstRes[5]~input_o\);

-- Location: LCCOMB_X50_Y1_N24
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

-- Location: FF_X50_Y1_N25
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

-- Location: IOIBUF_X7_Y0_N15
\in_RegDstRes[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(6),
	o => \in_RegDstRes[6]~input_o\);

-- Location: FF_X7_Y1_N9
\RegDstRes|gen:6:dff|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	asdata => \in_RegDstRes[6]~input_o\,
	clrn => \in_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|gen:6:dff|int_q~q\);

-- Location: IOIBUF_X48_Y41_N1
\in_RegDstRes[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_RegDstRes(7),
	o => \in_RegDstRes[7]~input_o\);

-- Location: LCCOMB_X48_Y40_N8
\RegDstRes|dff_msb|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RegDstRes|dff_msb|int_q~feeder_combout\ = \in_RegDstRes[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_RegDstRes[7]~input_o\,
	combout => \RegDstRes|dff_msb|int_q~feeder_combout\);

-- Location: FF_X48_Y40_N9
\RegDstRes|dff_msb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clk~inputclkctrl_outclk\,
	d => \RegDstRes|dff_msb|int_q~feeder_combout\,
	clrn => \in_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegDstRes|dff_msb|int_q~q\);

ww_out_aluZero <= \out_aluZero~output_o\;

ww_out_resALU(0) <= \out_resALU[0]~output_o\;

ww_out_resALU(1) <= \out_resALU[1]~output_o\;

ww_out_resALU(2) <= \out_resALU[2]~output_o\;

ww_out_resALU(3) <= \out_resALU[3]~output_o\;

ww_out_resALU(4) <= \out_resALU[4]~output_o\;

ww_out_resALU(5) <= \out_resALU[5]~output_o\;

ww_out_resALU(6) <= \out_resALU[6]~output_o\;

ww_out_resALU(7) <= \out_resALU[7]~output_o\;

ww_out_branchALU(0) <= \out_branchALU[0]~output_o\;

ww_out_branchALU(1) <= \out_branchALU[1]~output_o\;

ww_out_branchALU(2) <= \out_branchALU[2]~output_o\;

ww_out_branchALU(3) <= \out_branchALU[3]~output_o\;

ww_out_branchALU(4) <= \out_branchALU[4]~output_o\;

ww_out_branchALU(5) <= \out_branchALU[5]~output_o\;

ww_out_branchALU(6) <= \out_branchALU[6]~output_o\;

ww_out_branchALU(7) <= \out_branchALU[7]~output_o\;

ww_out_rdData2(0) <= \out_rdData2[0]~output_o\;

ww_out_rdData2(1) <= \out_rdData2[1]~output_o\;

ww_out_rdData2(2) <= \out_rdData2[2]~output_o\;

ww_out_rdData2(3) <= \out_rdData2[3]~output_o\;

ww_out_rdData2(4) <= \out_rdData2[4]~output_o\;

ww_out_rdData2(5) <= \out_rdData2[5]~output_o\;

ww_out_rdData2(6) <= \out_rdData2[6]~output_o\;

ww_out_rdData2(7) <= \out_rdData2[7]~output_o\;

ww_out_memRead <= \out_memRead~output_o\;

ww_out_memWrite <= \out_memWrite~output_o\;

ww_out_branch <= \out_branch~output_o\;

ww_out_jmp <= \out_jmp~output_o\;

ww_out_regWrite <= \out_regWrite~output_o\;

ww_out_memToReg <= \out_memToReg~output_o\;

ww_out_RegDstRes(0) <= \out_RegDstRes[0]~output_o\;

ww_out_RegDstRes(1) <= \out_RegDstRes[1]~output_o\;

ww_out_RegDstRes(2) <= \out_RegDstRes[2]~output_o\;

ww_out_RegDstRes(3) <= \out_RegDstRes[3]~output_o\;

ww_out_RegDstRes(4) <= \out_RegDstRes[4]~output_o\;

ww_out_RegDstRes(5) <= \out_RegDstRes[5]~output_o\;

ww_out_RegDstRes(6) <= \out_RegDstRes[6]~output_o\;

ww_out_RegDstRes(7) <= \out_RegDstRes[7]~output_o\;
END structure;


