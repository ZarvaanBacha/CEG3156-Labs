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

-- DATE "03/15/2024 16:11:15"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	singleCycleProcessor IS
    PORT (
	CLOCK_50 : IN std_logic;
	CLOCK2_50 : IN std_logic;
	swapButton : IN std_logic;
	GReset : IN std_logic;
	GClock : IN std_logic;
	ValueSelect : IN std_logic_vector(2 DOWNTO 0);
	MuxOut : OUT std_logic_vector(7 DOWNTO 0);
	InstructionOut : OUT std_logic_vector(31 DOWNTO 0);
	BranchOut : OUT std_logic;
	ZeroOut : OUT std_logic;
	MemWriteOut : OUT std_logic;
	RegWriteOut : OUT std_logic;
	o_display1 : OUT std_logic_vector(6 DOWNTO 0);
	o_display2 : OUT std_logic_vector(6 DOWNTO 0);
	o_display3 : OUT std_logic_vector(6 DOWNTO 0);
	o_display4 : OUT std_logic_vector(6 DOWNTO 0);
	o_display5 : OUT std_logic_vector(6 DOWNTO 0);
	o_display6 : OUT std_logic_vector(6 DOWNTO 0);
	o_display7 : OUT std_logic_vector(6 DOWNTO 0);
	o_display8 : OUT std_logic_vector(6 DOWNTO 0)
	);
END singleCycleProcessor;

-- Design Ports Information
-- MuxOut[0]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[1]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[2]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[3]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[4]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[6]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[7]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[0]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[1]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[2]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[3]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[4]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[5]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[6]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[7]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[8]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[9]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[10]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[11]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[12]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[13]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[14]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[15]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[16]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[17]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[18]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[19]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[20]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[21]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[22]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[23]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[24]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[25]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[26]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[27]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[28]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[29]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[30]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[31]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOut	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZeroOut	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWriteOut	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWriteOut	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display4[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display4[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display4[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display4[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display4[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display4[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display4[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display5[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display5[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display5[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display5[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display5[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display5[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display5[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display6[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display6[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display6[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display6[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display6[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display6[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display6[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display7[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display7[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display7[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display7[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display7[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display7[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display7[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display8[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display8[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display8[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display8[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display8[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display8[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display8[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValueSelect[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValueSelect[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValueSelect[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- swapButton	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF singleCycleProcessor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_CLOCK2_50 : std_logic;
SIGNAL ww_swapButton : std_logic;
SIGNAL ww_GReset : std_logic;
SIGNAL ww_GClock : std_logic;
SIGNAL ww_ValueSelect : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_MuxOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_InstructionOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_BranchOut : std_logic;
SIGNAL ww_ZeroOut : std_logic;
SIGNAL ww_MemWriteOut : std_logic;
SIGNAL ww_RegWriteOut : std_logic;
SIGNAL ww_o_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display8 : std_logic_vector(6 DOWNTO 0);
SIGNAL \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK2_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \registers|readData2|Mux0~0_combout\ : std_logic;
SIGNAL \registers|readData2|Mux0~1_combout\ : std_logic;
SIGNAL \registers|register2|bit7|int_q~q\ : std_logic;
SIGNAL \registers|register2|bit6|int_q~q\ : std_logic;
SIGNAL \registers|register0|bit6|int_q~q\ : std_logic;
SIGNAL \registers|register4|bit5|int_q~q\ : std_logic;
SIGNAL \registers|register7|bit5|int_q~q\ : std_logic;
SIGNAL \registers|register1|bit5|int_q~q\ : std_logic;
SIGNAL \registers|register0|bit5|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux2~2_combout\ : std_logic;
SIGNAL \registers|readData1|Mux2~0_combout\ : std_logic;
SIGNAL \registers|readData1|Mux2~1_combout\ : std_logic;
SIGNAL \registers|readData1|Mux2~2_combout\ : std_logic;
SIGNAL \alu|comparator|comp5|o_GT~0_combout\ : std_logic;
SIGNAL \registers|readData1|Mux3~2_combout\ : std_logic;
SIGNAL \registers|register5|bit3|int_q~q\ : std_logic;
SIGNAL \registers|register4|bit3|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux4~0_combout\ : std_logic;
SIGNAL \registers|readData1|Mux4~1_combout\ : std_logic;
SIGNAL \registers|register2|bit2|int_q~q\ : std_logic;
SIGNAL \registers|register0|bit1|int_q~q\ : std_logic;
SIGNAL \writeRegMUX|Selector5~0_combout\ : std_logic;
SIGNAL \PCAdder|adder3|o_s~combout\ : std_logic;
SIGNAL \branchAdder|adder4|o_s~combout\ : std_logic;
SIGNAL \PCAdder|adder5|o_s~combout\ : std_logic;
SIGNAL \PCAdder|adder6|o_s~combout\ : std_logic;
SIGNAL \PCAdder|adder7|o_s~combout\ : std_logic;
SIGNAL \displayOutput|Mux17~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux15~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux27~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux55~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux62~0_combout\ : std_logic;
SIGNAL \readData2MUX|Selector4~2_combout\ : std_logic;
SIGNAL \swapButton~input_o\ : std_logic;
SIGNAL \registers|register4|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \registers|register2|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \registers|register0|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \MuxOut[0]~output_o\ : std_logic;
SIGNAL \MuxOut[1]~output_o\ : std_logic;
SIGNAL \MuxOut[2]~output_o\ : std_logic;
SIGNAL \MuxOut[3]~output_o\ : std_logic;
SIGNAL \MuxOut[4]~output_o\ : std_logic;
SIGNAL \MuxOut[5]~output_o\ : std_logic;
SIGNAL \MuxOut[6]~output_o\ : std_logic;
SIGNAL \MuxOut[7]~output_o\ : std_logic;
SIGNAL \InstructionOut[0]~output_o\ : std_logic;
SIGNAL \InstructionOut[1]~output_o\ : std_logic;
SIGNAL \InstructionOut[2]~output_o\ : std_logic;
SIGNAL \InstructionOut[3]~output_o\ : std_logic;
SIGNAL \InstructionOut[4]~output_o\ : std_logic;
SIGNAL \InstructionOut[5]~output_o\ : std_logic;
SIGNAL \InstructionOut[6]~output_o\ : std_logic;
SIGNAL \InstructionOut[7]~output_o\ : std_logic;
SIGNAL \InstructionOut[8]~output_o\ : std_logic;
SIGNAL \InstructionOut[9]~output_o\ : std_logic;
SIGNAL \InstructionOut[10]~output_o\ : std_logic;
SIGNAL \InstructionOut[11]~output_o\ : std_logic;
SIGNAL \InstructionOut[12]~output_o\ : std_logic;
SIGNAL \InstructionOut[13]~output_o\ : std_logic;
SIGNAL \InstructionOut[14]~output_o\ : std_logic;
SIGNAL \InstructionOut[15]~output_o\ : std_logic;
SIGNAL \InstructionOut[16]~output_o\ : std_logic;
SIGNAL \InstructionOut[17]~output_o\ : std_logic;
SIGNAL \InstructionOut[18]~output_o\ : std_logic;
SIGNAL \InstructionOut[19]~output_o\ : std_logic;
SIGNAL \InstructionOut[20]~output_o\ : std_logic;
SIGNAL \InstructionOut[21]~output_o\ : std_logic;
SIGNAL \InstructionOut[22]~output_o\ : std_logic;
SIGNAL \InstructionOut[23]~output_o\ : std_logic;
SIGNAL \InstructionOut[24]~output_o\ : std_logic;
SIGNAL \InstructionOut[25]~output_o\ : std_logic;
SIGNAL \InstructionOut[26]~output_o\ : std_logic;
SIGNAL \InstructionOut[27]~output_o\ : std_logic;
SIGNAL \InstructionOut[28]~output_o\ : std_logic;
SIGNAL \InstructionOut[29]~output_o\ : std_logic;
SIGNAL \InstructionOut[30]~output_o\ : std_logic;
SIGNAL \InstructionOut[31]~output_o\ : std_logic;
SIGNAL \BranchOut~output_o\ : std_logic;
SIGNAL \ZeroOut~output_o\ : std_logic;
SIGNAL \MemWriteOut~output_o\ : std_logic;
SIGNAL \RegWriteOut~output_o\ : std_logic;
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
SIGNAL \o_display4[0]~output_o\ : std_logic;
SIGNAL \o_display4[1]~output_o\ : std_logic;
SIGNAL \o_display4[2]~output_o\ : std_logic;
SIGNAL \o_display4[3]~output_o\ : std_logic;
SIGNAL \o_display4[4]~output_o\ : std_logic;
SIGNAL \o_display4[5]~output_o\ : std_logic;
SIGNAL \o_display4[6]~output_o\ : std_logic;
SIGNAL \o_display5[0]~output_o\ : std_logic;
SIGNAL \o_display5[1]~output_o\ : std_logic;
SIGNAL \o_display5[2]~output_o\ : std_logic;
SIGNAL \o_display5[3]~output_o\ : std_logic;
SIGNAL \o_display5[4]~output_o\ : std_logic;
SIGNAL \o_display5[5]~output_o\ : std_logic;
SIGNAL \o_display5[6]~output_o\ : std_logic;
SIGNAL \o_display6[0]~output_o\ : std_logic;
SIGNAL \o_display6[1]~output_o\ : std_logic;
SIGNAL \o_display6[2]~output_o\ : std_logic;
SIGNAL \o_display6[3]~output_o\ : std_logic;
SIGNAL \o_display6[4]~output_o\ : std_logic;
SIGNAL \o_display6[5]~output_o\ : std_logic;
SIGNAL \o_display6[6]~output_o\ : std_logic;
SIGNAL \o_display7[0]~output_o\ : std_logic;
SIGNAL \o_display7[1]~output_o\ : std_logic;
SIGNAL \o_display7[2]~output_o\ : std_logic;
SIGNAL \o_display7[3]~output_o\ : std_logic;
SIGNAL \o_display7[4]~output_o\ : std_logic;
SIGNAL \o_display7[5]~output_o\ : std_logic;
SIGNAL \o_display7[6]~output_o\ : std_logic;
SIGNAL \o_display8[0]~output_o\ : std_logic;
SIGNAL \o_display8[1]~output_o\ : std_logic;
SIGNAL \o_display8[2]~output_o\ : std_logic;
SIGNAL \o_display8[3]~output_o\ : std_logic;
SIGNAL \o_display8[4]~output_o\ : std_logic;
SIGNAL \o_display8[5]~output_o\ : std_logic;
SIGNAL \o_display8[6]~output_o\ : std_logic;
SIGNAL \ValueSelect[2]~input_o\ : std_logic;
SIGNAL \ValueSelect[1]~input_o\ : std_logic;
SIGNAL \ValueSelect[0]~input_o\ : std_logic;
SIGNAL \ioMUX|Mux6~3_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLOCK2_50~input_o\ : std_logic;
SIGNAL \CLOCK2_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \PCAdder|adder4|o_s~combout\ : std_logic;
SIGNAL \PCAdder|adder4|int_cout~0_combout\ : std_logic;
SIGNAL \PCAdder|adder5|int_cout~0_combout\ : std_logic;
SIGNAL \branchAdder|adder6|o_cout~0_combout\ : std_logic;
SIGNAL \branchAdder|adder7|o_s~0_combout\ : std_logic;
SIGNAL \branchOrJump|Selector0~0_combout\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \PC|bit7|int_q~q\ : std_logic;
SIGNAL \PCAdder|adder3|int_cout~0_combout\ : std_logic;
SIGNAL \branchAdder|adder3|o_cout~0_combout\ : std_logic;
SIGNAL \branchAdder|adder4|o_cout~0_combout\ : std_logic;
SIGNAL \branchAdder|adder5|o_cout~0_combout\ : std_logic;
SIGNAL \branchAdder|adder6|o_s~combout\ : std_logic;
SIGNAL \PC|bit6|int_q~0_combout\ : std_logic;
SIGNAL \PC|bit6|int_q~q\ : std_logic;
SIGNAL \branchAdder|adder5|o_s~combout\ : std_logic;
SIGNAL \PC|bit5|int_q~0_combout\ : std_logic;
SIGNAL \PC|bit5|int_q~q\ : std_logic;
SIGNAL \control|o_ALUOp[0]~0_combout\ : std_logic;
SIGNAL \control|o_ALUOp[0]~1_combout\ : std_logic;
SIGNAL \alu|mux|Mux7~0_combout\ : std_logic;
SIGNAL \control|o_MemWrite~0_combout\ : std_logic;
SIGNAL \readData2MUX|Selector7~2_combout\ : std_logic;
SIGNAL \writeRegMUX|Selector7~0_combout\ : std_logic;
SIGNAL \writeRegMUX|Selector6~0_combout\ : std_logic;
SIGNAL \control|o_RegWrite~2_combout\ : std_logic;
SIGNAL \registers|decoder|Mux7~0_combout\ : std_logic;
SIGNAL \registers|register5|bit0|int_q~q\ : std_logic;
SIGNAL \registers|decoder|Mux7~2_combout\ : std_logic;
SIGNAL \registers|register4|bit0|int_q~q\ : std_logic;
SIGNAL \registers|decoder|Mux7~1_combout\ : std_logic;
SIGNAL \registers|register6|bit0|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux7~0_combout\ : std_logic;
SIGNAL \registers|readData1|Mux7~1_combout\ : std_logic;
SIGNAL \registers|decoder|Mux7~4_combout\ : std_logic;
SIGNAL \registers|register2|bit0|int_q~q\ : std_logic;
SIGNAL \registers|register1|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \registers|decoder|Mux7~5_combout\ : std_logic;
SIGNAL \registers|register1|bit0|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux7~2_combout\ : std_logic;
SIGNAL \registers|readData1|Mux7~3_combout\ : std_logic;
SIGNAL \registers|readData1|Mux7~4_combout\ : std_logic;
SIGNAL \alu|mux|Mux7~1_combout\ : std_logic;
SIGNAL \alu|mux|Mux7~2_combout\ : std_logic;
SIGNAL \registers|decoder|Mux7~6_combout\ : std_logic;
SIGNAL \registers|register0|bit7|int_q~q\ : std_logic;
SIGNAL \registers|register1|bit7|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux0~2_combout\ : std_logic;
SIGNAL \registers|readData2|Mux0~3_combout\ : std_logic;
SIGNAL \registers|readData2|Mux0~4_combout\ : std_logic;
SIGNAL \readData2MUX|Selector0~2_combout\ : std_logic;
SIGNAL \alu|mux|Mux3~2_combout\ : std_logic;
SIGNAL \alu|subtractor|adder7|o_s~0_combout\ : std_logic;
SIGNAL \alu|mux|Mux3~0_combout\ : std_logic;
SIGNAL \controlUnitALUunit|o_control[0]~0_combout\ : std_logic;
SIGNAL \registers|register4|bit6|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux1~0_combout\ : std_logic;
SIGNAL \registers|register5|bit6|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux1~1_combout\ : std_logic;
SIGNAL \registers|decoder|Mux7~7_combout\ : std_logic;
SIGNAL \registers|register3|bit6|int_q~q\ : std_logic;
SIGNAL \registers|register1|bit6|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux1~2_combout\ : std_logic;
SIGNAL \registers|readData1|Mux1~3_combout\ : std_logic;
SIGNAL \registers|readData1|Mux1~4_combout\ : std_logic;
SIGNAL \alu|mux|Mux3~1_combout\ : std_logic;
SIGNAL \alu|subtractor|adder6|o_s~0_combout\ : std_logic;
SIGNAL \registers|register3|bit3|int_q~q\ : std_logic;
SIGNAL \registers|register0|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \registers|register0|bit3|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux4~2_combout\ : std_logic;
SIGNAL \registers|readData2|Mux4~3_combout\ : std_logic;
SIGNAL \registers|decoder|Mux7~3_combout\ : std_logic;
SIGNAL \registers|register7|bit3|int_q~q\ : std_logic;
SIGNAL \registers|register6|bit3|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux4~0_combout\ : std_logic;
SIGNAL \registers|readData2|Mux4~1_combout\ : std_logic;
SIGNAL \registers|readData2|Mux4~4_combout\ : std_logic;
SIGNAL \alu|comparator|comp3|int_GT~0_combout\ : std_logic;
SIGNAL \alu|comparator|comp3|int_LT~0_combout\ : std_logic;
SIGNAL \registers|register7|bit1|int_q~q\ : std_logic;
SIGNAL \registers|register4|bit1|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux6~0_combout\ : std_logic;
SIGNAL \registers|readData2|Mux6~1_combout\ : std_logic;
SIGNAL \registers|register2|bit1|int_q~q\ : std_logic;
SIGNAL \registers|register1|bit1|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux6~2_combout\ : std_logic;
SIGNAL \registers|readData2|Mux6~3_combout\ : std_logic;
SIGNAL \registers|readData2|Mux6~4_combout\ : std_logic;
SIGNAL \readData2MUX|Selector6~2_combout\ : std_logic;
SIGNAL \alu|subtractor|adder1|o_cout~0_combout\ : std_logic;
SIGNAL \alu|subtractor|adder3|o_cout~0_combout\ : std_logic;
SIGNAL \alu|subtractor|adder4|o_cout~0_combout\ : std_logic;
SIGNAL \alu|subtractor|adder6|o_s~combout\ : std_logic;
SIGNAL \registers|register4|bit4|int_q~q\ : std_logic;
SIGNAL \registers|register6|bit4|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux3~0_combout\ : std_logic;
SIGNAL \registers|register5|bit4|int_q~q\ : std_logic;
SIGNAL \registers|register7|bit4|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux3~1_combout\ : std_logic;
SIGNAL \registers|register2|bit4|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux3~3_combout\ : std_logic;
SIGNAL \registers|readData1|Mux3~4_combout\ : std_logic;
SIGNAL \alu|adder|adder1|o_cout~0_combout\ : std_logic;
SIGNAL \alu|adder|adder2|o_cout~0_combout\ : std_logic;
SIGNAL \registers|register5|bit2|int_q~q\ : std_logic;
SIGNAL \registers|register4|bit2|int_q~q\ : std_logic;
SIGNAL \registers|register6|bit2|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux5~0_combout\ : std_logic;
SIGNAL \registers|readData1|Mux5~1_combout\ : std_logic;
SIGNAL \registers|register3|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \registers|register3|bit2|int_q~q\ : std_logic;
SIGNAL \registers|register1|bit2|int_q~q\ : std_logic;
SIGNAL \registers|register0|bit2|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux5~2_combout\ : std_logic;
SIGNAL \registers|readData1|Mux5~3_combout\ : std_logic;
SIGNAL \registers|readData1|Mux5~4_combout\ : std_logic;
SIGNAL \alu|adder|adder2|o_cout~1_combout\ : std_logic;
SIGNAL \alu|adder|adder3|o_cout~0_combout\ : std_logic;
SIGNAL \alu|adder|adder4|o_cout~1_combout\ : std_logic;
SIGNAL \alu|adder|adder4|o_cout~0_combout\ : std_logic;
SIGNAL \alu|adder|adder5|o_cout~0_combout\ : std_logic;
SIGNAL \alu|mux|Mux1~0_combout\ : std_logic;
SIGNAL \alu|mux|Mux1~1_combout\ : std_logic;
SIGNAL \alu|mux|Mux1~combout\ : std_logic;
SIGNAL \registers|register3|bit5|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux2~3_combout\ : std_logic;
SIGNAL \registers|register5|bit5|int_q~q\ : std_logic;
SIGNAL \registers|register6|bit5|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux2~0_combout\ : std_logic;
SIGNAL \registers|readData2|Mux2~1_combout\ : std_logic;
SIGNAL \registers|readData2|Mux2~4_combout\ : std_logic;
SIGNAL \dataMUX|Selector2~0_combout\ : std_logic;
SIGNAL \registers|register2|bit5|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux2~3_combout\ : std_logic;
SIGNAL \registers|readData1|Mux2~4_combout\ : std_logic;
SIGNAL \alu|mux|Mux2~0_combout\ : std_logic;
SIGNAL \alu|subtractor|adder5|o_s~0_combout\ : std_logic;
SIGNAL \alu|subtractor|adder5|o_s~combout\ : std_logic;
SIGNAL \alu|mux|Mux2~1_combout\ : std_logic;
SIGNAL \alu|mux|Mux2~combout\ : std_logic;
SIGNAL \dataMUX|Selector3~0_combout\ : std_logic;
SIGNAL \registers|register3|bit4|int_q~q\ : std_logic;
SIGNAL \registers|register1|bit4|int_q~q\ : std_logic;
SIGNAL \registers|register0|bit4|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux3~2_combout\ : std_logic;
SIGNAL \registers|readData2|Mux3~3_combout\ : std_logic;
SIGNAL \registers|readData2|Mux3~0_combout\ : std_logic;
SIGNAL \registers|readData2|Mux3~1_combout\ : std_logic;
SIGNAL \registers|readData2|Mux3~4_combout\ : std_logic;
SIGNAL \readData2MUX|Selector3~2_combout\ : std_logic;
SIGNAL \alu|subtractor|adder4|o_s~combout\ : std_logic;
SIGNAL \alu|mux|Mux3~3_combout\ : std_logic;
SIGNAL \alu|mux|Mux3~4_combout\ : std_logic;
SIGNAL \alu|mux|Mux3~combout\ : std_logic;
SIGNAL \dataMUX|Selector5~0_combout\ : std_logic;
SIGNAL \registers|register7|bit2|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux5~0_combout\ : std_logic;
SIGNAL \registers|readData2|Mux5~1_combout\ : std_logic;
SIGNAL \registers|readData2|Mux5~2_combout\ : std_logic;
SIGNAL \registers|readData2|Mux5~3_combout\ : std_logic;
SIGNAL \registers|readData2|Mux5~4_combout\ : std_logic;
SIGNAL \readData2MUX|Selector5~2_combout\ : std_logic;
SIGNAL \alu|mux|Mux5~0_combout\ : std_logic;
SIGNAL \alu|subtractor|adder2|o_s~combout\ : std_logic;
SIGNAL \alu|mux|Mux5~1_combout\ : std_logic;
SIGNAL \alu|mux|Mux5~combout\ : std_logic;
SIGNAL \dataMUX|Selector6~0_combout\ : std_logic;
SIGNAL \registers|register3|bit1|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux6~2_combout\ : std_logic;
SIGNAL \registers|readData1|Mux6~3_combout\ : std_logic;
SIGNAL \registers|register5|bit1|int_q~q\ : std_logic;
SIGNAL \registers|register6|bit1|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux6~0_combout\ : std_logic;
SIGNAL \registers|readData1|Mux6~1_combout\ : std_logic;
SIGNAL \registers|readData1|Mux6~4_combout\ : std_logic;
SIGNAL \alu|adder|adder1|o_s~combout\ : std_logic;
SIGNAL \alu|mux|Mux6~0_combout\ : std_logic;
SIGNAL \alu|subtractor|adder1|o_s~combout\ : std_logic;
SIGNAL \alu|mux|Mux6~1_combout\ : std_logic;
SIGNAL \alu|mux|Mux6~combout\ : std_logic;
SIGNAL \dataMUX|Selector1~0_combout\ : std_logic;
SIGNAL \registers|register6|bit6|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux1~0_combout\ : std_logic;
SIGNAL \registers|register7|bit6|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux1~1_combout\ : std_logic;
SIGNAL \registers|readData2|Mux1~2_combout\ : std_logic;
SIGNAL \registers|readData2|Mux1~3_combout\ : std_logic;
SIGNAL \registers|readData2|Mux1~4_combout\ : std_logic;
SIGNAL \readData2MUX|Selector1~2_combout\ : std_logic;
SIGNAL \readData2MUX|Selector2~2_combout\ : std_logic;
SIGNAL \alu|adder|adder6|o_cout~0_combout\ : std_logic;
SIGNAL \alu|adder|adder6|o_cout~1_combout\ : std_logic;
SIGNAL \alu|mux|Mux0~0_combout\ : std_logic;
SIGNAL \alu|subtractor|adder5|o_cout~0_combout\ : std_logic;
SIGNAL \alu|subtractor|adder7|o_s~combout\ : std_logic;
SIGNAL \alu|mux|Mux0~1_combout\ : std_logic;
SIGNAL \alu|mux|Mux0~combout\ : std_logic;
SIGNAL \dataMUX|Selector0~0_combout\ : std_logic;
SIGNAL \registers|register3|bit7|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux0~2_combout\ : std_logic;
SIGNAL \registers|readData1|Mux0~3_combout\ : std_logic;
SIGNAL \registers|register7|bit7|int_q~q\ : std_logic;
SIGNAL \registers|register5|bit7|int_q~q\ : std_logic;
SIGNAL \registers|register4|bit7|int_q~q\ : std_logic;
SIGNAL \registers|register6|bit7|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux0~0_combout\ : std_logic;
SIGNAL \registers|readData1|Mux0~1_combout\ : std_logic;
SIGNAL \registers|readData1|Mux0~4_combout\ : std_logic;
SIGNAL \alu|comparator|comp5|o_LT~0_combout\ : std_logic;
SIGNAL \alu|comparator|comp0|o_LT~0_combout\ : std_logic;
SIGNAL \alu|comparator|comp0|o_LT~1_combout\ : std_logic;
SIGNAL \alu|comparator|comp0|o_LT~2_combout\ : std_logic;
SIGNAL \alu|comparator|comp0|o_LT~3_combout\ : std_logic;
SIGNAL \alu|comparator|comp0|o_LT~4_combout\ : std_logic;
SIGNAL \alu|mux|Mux7~3_combout\ : std_logic;
SIGNAL \alu|mux|Mux7~4_combout\ : std_logic;
SIGNAL \dataMUX|Selector7~0_combout\ : std_logic;
SIGNAL \registers|register3|bit0|int_q~q\ : std_logic;
SIGNAL \registers|register0|bit0|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux7~2_combout\ : std_logic;
SIGNAL \registers|readData2|Mux7~3_combout\ : std_logic;
SIGNAL \registers|register7|bit0|int_q~q\ : std_logic;
SIGNAL \registers|readData2|Mux7~0_combout\ : std_logic;
SIGNAL \registers|readData2|Mux7~1_combout\ : std_logic;
SIGNAL \registers|readData2|Mux7~4_combout\ : std_logic;
SIGNAL \dataMUX|Selector4~0_combout\ : std_logic;
SIGNAL \registers|register2|bit3|int_q~q\ : std_logic;
SIGNAL \registers|register1|bit3|int_q~q\ : std_logic;
SIGNAL \registers|readData1|Mux4~2_combout\ : std_logic;
SIGNAL \registers|readData1|Mux4~3_combout\ : std_logic;
SIGNAL \registers|readData1|Mux4~4_combout\ : std_logic;
SIGNAL \alu|subtractor|adder3|o_s~0_combout\ : std_logic;
SIGNAL \alu|mux|Mux4~0_combout\ : std_logic;
SIGNAL \alu|subtractor|adder3|o_s~combout\ : std_logic;
SIGNAL \alu|mux|Mux4~1_combout\ : std_logic;
SIGNAL \alu|mux|Mux4~combout\ : std_logic;
SIGNAL \alu|Equal0~1_combout\ : std_logic;
SIGNAL \alu|Equal0~0_combout\ : std_logic;
SIGNAL \alu|Equal0~2_combout\ : std_logic;
SIGNAL \int_beq~combout\ : std_logic;
SIGNAL \PC|bit4|int_q~0_combout\ : std_logic;
SIGNAL \PC|bit4|int_q~q\ : std_logic;
SIGNAL \branchAdder|adder3|o_s~0_combout\ : std_logic;
SIGNAL \PC|bit3|int_q~0_combout\ : std_logic;
SIGNAL \PC|bit3|int_q~q\ : std_logic;
SIGNAL \control|o_Jump~0_combout\ : std_logic;
SIGNAL \branchOrJump|Selector5~0_combout\ : std_logic;
SIGNAL \PC|bit2|int_q~q\ : std_logic;
SIGNAL \control|o_MemWrite~1_combout\ : std_logic;
SIGNAL \ioMUX|Mux6~0_combout\ : std_logic;
SIGNAL \ioMUX|Mux6~2_combout\ : std_logic;
SIGNAL \ioMUX|Mux6~1_combout\ : std_logic;
SIGNAL \ioMUX|Mux7~0_combout\ : std_logic;
SIGNAL \ioMUX|Mux7~1_combout\ : std_logic;
SIGNAL \ioMUX|Mux7~2_combout\ : std_logic;
SIGNAL \ioMUX|Mux6~4_combout\ : std_logic;
SIGNAL \ioMUX|Mux6~5_combout\ : std_logic;
SIGNAL \ioMUX|Mux6~6_combout\ : std_logic;
SIGNAL \ioMUX|Mux5~0_combout\ : std_logic;
SIGNAL \ioMUX|Mux5~1_combout\ : std_logic;
SIGNAL \ioMUX|Mux5~2_combout\ : std_logic;
SIGNAL \ioMUX|Mux5~3_combout\ : std_logic;
SIGNAL \ioMUX|Mux4~0_combout\ : std_logic;
SIGNAL \ioMUX|Mux4~1_combout\ : std_logic;
SIGNAL \ioMUX|Mux4~2_combout\ : std_logic;
SIGNAL \ioMUX|Mux4~3_combout\ : std_logic;
SIGNAL \ioMUX|Mux3~0_combout\ : std_logic;
SIGNAL \ioMUX|Mux3~1_combout\ : std_logic;
SIGNAL \ioMUX|Mux3~2_combout\ : std_logic;
SIGNAL \ioMUX|Mux3~3_combout\ : std_logic;
SIGNAL \ioMUX|Mux2~1_combout\ : std_logic;
SIGNAL \ioMUX|Mux2~2_combout\ : std_logic;
SIGNAL \ioMUX|Mux2~0_combout\ : std_logic;
SIGNAL \ioMUX|Mux2~3_combout\ : std_logic;
SIGNAL \ioMUX|Mux1~1_combout\ : std_logic;
SIGNAL \ioMUX|Mux1~2_combout\ : std_logic;
SIGNAL \ioMUX|Mux1~0_combout\ : std_logic;
SIGNAL \ioMUX|Mux1~3_combout\ : std_logic;
SIGNAL \ioMUX|Mux0~0_combout\ : std_logic;
SIGNAL \ioMUX|Mux0~1_combout\ : std_logic;
SIGNAL \ioMUX|Mux0~2_combout\ : std_logic;
SIGNAL \control|o_MemWrite~2_combout\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \displayOutput|Mux20~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux6~0_combout\ : std_logic;
SIGNAL \displayOutput|swap~0_combout\ : std_logic;
SIGNAL \displayOutput|swap~q\ : std_logic;
SIGNAL \displayOutput|int_display1~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux19~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux5~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display1~1_combout\ : std_logic;
SIGNAL \displayOutput|Mux18~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux4~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display1~2_combout\ : std_logic;
SIGNAL \displayOutput|Mux3~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display1~3_combout\ : std_logic;
SIGNAL \displayOutput|Mux16~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux2~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display1~4_combout\ : std_logic;
SIGNAL \displayOutput|Mux1~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display1~5_combout\ : std_logic;
SIGNAL \displayOutput|Mux14~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux0~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display1~6_combout\ : std_logic;
SIGNAL \displayOutput|Mux13~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display2~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux26~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux12~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display2~1_combout\ : std_logic;
SIGNAL \displayOutput|Mux25~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux11~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display2~2_combout\ : std_logic;
SIGNAL \displayOutput|Mux24~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux10~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display2~3_combout\ : std_logic;
SIGNAL \displayOutput|Mux23~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux9~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display2~4_combout\ : std_logic;
SIGNAL \displayOutput|Mux22~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux8~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display2~5_combout\ : std_logic;
SIGNAL \displayOutput|Mux21~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux7~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display2~6_combout\ : std_logic;
SIGNAL \displayOutput|Mux34~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display3[0]~feeder_combout\ : std_logic;
SIGNAL \displayOutput|Mux33~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux32~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux31~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux30~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux29~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux28~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux41~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display4[0]~feeder_combout\ : std_logic;
SIGNAL \displayOutput|Mux40~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux39~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux38~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux37~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux36~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux35~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux48~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display5[0]~feeder_combout\ : std_logic;
SIGNAL \displayOutput|Mux47~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux46~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux45~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux44~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux43~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux42~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display6[0]~feeder_combout\ : std_logic;
SIGNAL \displayOutput|Mux54~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux53~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux52~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux51~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux50~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux49~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display7[0]~feeder_combout\ : std_logic;
SIGNAL \displayOutput|Mux61~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux60~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux59~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux58~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux57~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux56~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux69~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display8[0]~feeder_combout\ : std_logic;
SIGNAL \displayOutput|Mux68~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux67~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux66~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux65~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux64~0_combout\ : std_logic;
SIGNAL \displayOutput|Mux63~0_combout\ : std_logic;
SIGNAL \displayOutput|int_display8\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \displayOutput|int_display7\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \displayOutput|int_display6\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \displayOutput|int_display5\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \displayOutput|int_display4\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \displayOutput|int_display3\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \displayOutput|int_display2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \displayOutput|int_display1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \control|o_ALUOp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \controlUnitALUunit|o_control\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dataMem|dataMem|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_CLOCK2_50 <= CLOCK2_50;
ww_swapButton <= swapButton;
ww_GReset <= GReset;
ww_GClock <= GClock;
ww_ValueSelect <= ValueSelect;
MuxOut <= ww_MuxOut;
InstructionOut <= ww_InstructionOut;
BranchOut <= ww_BranchOut;
ZeroOut <= ww_ZeroOut;
MemWriteOut <= ww_MemWriteOut;
RegWriteOut <= ww_RegWriteOut;
o_display1 <= ww_o_display1;
o_display2 <= ww_o_display2;
o_display3 <= ww_o_display3;
o_display4 <= ww_o_display4;
o_display5 <= ww_o_display5;
o_display6 <= ww_o_display6;
o_display7 <= ww_o_display7;
o_display8 <= ww_o_display8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PC|bit7|int_q~q\ & \PC|bit6|int_q~q\ & \PC|bit5|int_q~q\ & \PC|bit4|int_q~q\ & \PC|bit3|int_q~q\ & \PC|bit2|int_q~q\ & \~GND~combout\ & \~GND~combout\);

\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) <= \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \registers|readData2|Mux0~4_combout\ & \registers|readData2|Mux1~4_combout\ & \registers|readData2|Mux2~4_combout\
& \registers|readData2|Mux3~4_combout\ & \registers|readData2|Mux4~4_combout\ & \registers|readData2|Mux5~4_combout\ & \registers|readData2|Mux6~4_combout\ & \registers|readData2|Mux7~4_combout\);

\dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\alu|mux|Mux0~combout\ & \alu|mux|Mux1~combout\ & \alu|mux|Mux2~combout\ & \alu|mux|Mux3~combout\ & \alu|mux|Mux4~combout\ & \alu|mux|Mux5~combout\ & \alu|mux|Mux6~combout\ & 
\alu|mux|Mux7~4_combout\);

\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(0) <= \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(1) <= \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(2) <= \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(3) <= \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(4) <= \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(5) <= \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(6) <= \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(7) <= \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\CLOCK2_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK2_50~input_o\);

-- Location: M9K_X78_Y10_N0
\dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002A80055",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "dataMemory:dataMem|lpm_ram_dq:dataMem|altram:sram|altsyncram:ram_block|altsyncram_bg91:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \control|o_MemWrite~2_combout\,
	portare => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK2_50~inputclkctrl_outclk\,
	portadatain => \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dataMem|dataMem|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X80_Y9_N16
\registers|readData2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux0~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16)) # ((\registers|register6|bit7|int_q~q\)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (\registers|register4|bit7|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register4|bit7|int_q~q\,
	datad => \registers|register6|bit7|int_q~q\,
	combout => \registers|readData2|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y9_N26
\registers|readData2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux0~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|readData2|Mux0~0_combout\ & ((\registers|register7|bit7|int_q~q\))) # (!\registers|readData2|Mux0~0_combout\ & 
-- (\registers|register5|bit7|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\registers|readData2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register5|bit7|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register7|bit7|int_q~q\,
	datad => \registers|readData2|Mux0~0_combout\,
	combout => \registers|readData2|Mux0~1_combout\);

-- Location: FF_X80_Y8_N1
\registers|register2|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector0~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register2|bit7|int_q~q\);

-- Location: FF_X77_Y10_N17
\registers|register2|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \registers|register2|bit6|int_q~feeder_combout\,
	clrn => \GReset~input_o\,
	ena => \registers|decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register2|bit6|int_q~q\);

-- Location: FF_X77_Y10_N27
\registers|register0|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \registers|register0|bit6|int_q~feeder_combout\,
	clrn => \GReset~input_o\,
	ena => \registers|decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register0|bit6|int_q~q\);

-- Location: FF_X80_Y8_N15
\registers|register4|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector2~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register4|bit5|int_q~q\);

-- Location: FF_X80_Y9_N21
\registers|register7|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector2~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register7|bit5|int_q~q\);

-- Location: FF_X82_Y9_N27
\registers|register1|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector2~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register1|bit5|int_q~q\);

-- Location: FF_X81_Y9_N7
\registers|register0|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector2~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register0|bit5|int_q~q\);

-- Location: LCCOMB_X82_Y9_N12
\registers|readData2|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux2~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|register1|bit5|int_q~q\) # ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\registers|register0|bit5|int_q~q\ & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register1|bit5|int_q~q\,
	datab => \registers|register0|bit5|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	combout => \registers|readData2|Mux2~2_combout\);

-- Location: LCCOMB_X79_Y9_N28
\registers|readData1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux2~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|register6|bit5|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (\registers|register4|bit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register4|bit5|int_q~q\,
	datab => \registers|register6|bit5|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	combout => \registers|readData1|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y9_N20
\registers|readData1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux2~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|readData1|Mux2~0_combout\ & ((\registers|register7|bit5|int_q~q\))) # (!\registers|readData1|Mux2~0_combout\ & 
-- (\registers|register5|bit5|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\registers|readData1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register5|bit5|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datac => \registers|register7|bit5|int_q~q\,
	datad => \registers|readData1|Mux2~0_combout\,
	combout => \registers|readData1|Mux2~1_combout\);

-- Location: LCCOMB_X82_Y9_N26
\registers|readData1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux2~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22)) # ((\registers|register1|bit5|int_q~q\)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|register0|bit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datac => \registers|register1|bit5|int_q~q\,
	datad => \registers|register0|bit5|int_q~q\,
	combout => \registers|readData1|Mux2~2_combout\);

-- Location: LCCOMB_X81_Y10_N30
\alu|comparator|comp5|o_GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|comparator|comp5|o_GT~0_combout\ = (\registers|readData1|Mux1~4_combout\ & (((!\readData2MUX|Selector2~2_combout\ & \registers|readData1|Mux2~4_combout\)) # (!\readData2MUX|Selector1~2_combout\))) # (!\registers|readData1|Mux1~4_combout\ & 
-- (!\readData2MUX|Selector2~2_combout\ & (\registers|readData1|Mux2~4_combout\ & !\readData2MUX|Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector2~2_combout\,
	datab => \registers|readData1|Mux2~4_combout\,
	datac => \registers|readData1|Mux1~4_combout\,
	datad => \readData2MUX|Selector1~2_combout\,
	combout => \alu|comparator|comp5|o_GT~0_combout\);

-- Location: LCCOMB_X82_Y9_N22
\registers|readData1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux3~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (\registers|register1|bit4|int_q~q\)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|register0|bit4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register1|bit4|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datad => \registers|register0|bit4|int_q~q\,
	combout => \registers|readData1|Mux3~2_combout\);

-- Location: FF_X79_Y9_N13
\registers|register5|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector4~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register5|bit3|int_q~q\);

-- Location: FF_X77_Y9_N13
\registers|register4|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \registers|register4|bit3|int_q~feeder_combout\,
	clrn => \GReset~input_o\,
	ena => \registers|decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register4|bit3|int_q~q\);

-- Location: LCCOMB_X79_Y9_N20
\registers|readData1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux4~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (\registers|register6|bit3|int_q~q\)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|register4|bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|register6|bit3|int_q~q\,
	datac => \registers|register4|bit3|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	combout => \registers|readData1|Mux4~0_combout\);

-- Location: LCCOMB_X79_Y9_N12
\registers|readData1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux4~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|readData1|Mux4~0_combout\ & (\registers|register7|bit3|int_q~q\)) # (!\registers|readData1|Mux4~0_combout\ & 
-- ((\registers|register5|bit3|int_q~q\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\registers|readData1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|register7|bit3|int_q~q\,
	datac => \registers|register5|bit3|int_q~q\,
	datad => \registers|readData1|Mux4~0_combout\,
	combout => \registers|readData1|Mux4~1_combout\);

-- Location: FF_X84_Y10_N17
\registers|register2|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector5~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register2|bit2|int_q~q\);

-- Location: FF_X85_Y10_N25
\registers|register0|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector6~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register0|bit1|int_q~q\);

-- Location: LCCOMB_X80_Y7_N22
\writeRegMUX|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeRegMUX|Selector5~0_combout\ = (\control|o_ALUOp\(1) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18))) # (!\control|o_ALUOp\(1) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13),
	datad => \control|o_ALUOp\(1),
	combout => \writeRegMUX|Selector5~0_combout\);

-- Location: LCCOMB_X80_Y8_N0
\PCAdder|adder3|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCAdder|adder3|o_s~combout\ = \PC|bit3|int_q~q\ $ (\PC|bit2|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit3|int_q~q\,
	datad => \PC|bit2|int_q~q\,
	combout => \PCAdder|adder3|o_s~combout\);

-- Location: LCCOMB_X84_Y9_N30
\branchAdder|adder4|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchAdder|adder4|o_s~combout\ = \PC|bit4|int_q~q\ $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) $ (\PCAdder|adder3|int_cout~0_combout\ $ (\branchAdder|adder3|o_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit4|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	datac => \PCAdder|adder3|int_cout~0_combout\,
	datad => \branchAdder|adder3|o_cout~0_combout\,
	combout => \branchAdder|adder4|o_s~combout\);

-- Location: LCCOMB_X79_Y8_N26
\PCAdder|adder5|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCAdder|adder5|o_s~combout\ = \PC|bit5|int_q~q\ $ (((\PC|bit4|int_q~q\ & (\PC|bit2|int_q~q\ & \PC|bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit4|int_q~q\,
	datab => \PC|bit2|int_q~q\,
	datac => \PC|bit3|int_q~q\,
	datad => \PC|bit5|int_q~q\,
	combout => \PCAdder|adder5|o_s~combout\);

-- Location: LCCOMB_X80_Y8_N14
\PCAdder|adder6|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCAdder|adder6|o_s~combout\ = \PC|bit6|int_q~q\ $ (((\PC|bit5|int_q~q\ & \PCAdder|adder4|int_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit5|int_q~q\,
	datab => \PCAdder|adder4|int_cout~0_combout\,
	datad => \PC|bit6|int_q~q\,
	combout => \PCAdder|adder6|o_s~combout\);

-- Location: LCCOMB_X79_Y8_N28
\PCAdder|adder7|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCAdder|adder7|o_s~combout\ = \PC|bit7|int_q~q\ $ (((\PC|bit6|int_q~q\ & \PCAdder|adder5|int_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit6|int_q~q\,
	datac => \PC|bit7|int_q~q\,
	datad => \PCAdder|adder5|int_cout~0_combout\,
	combout => \PCAdder|adder7|o_s~combout\);

-- Location: LCCOMB_X84_Y11_N12
\displayOutput|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux17~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) $ (((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2)))))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) & 
-- !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) & 
-- \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	combout => \displayOutput|Mux17~0_combout\);

-- Location: LCCOMB_X83_Y8_N6
\displayOutput|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux15~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	combout => \displayOutput|Mux15~0_combout\);

-- Location: LCCOMB_X77_Y8_N16
\displayOutput|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux27~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	combout => \displayOutput|Mux27~0_combout\);

-- Location: LCCOMB_X84_Y9_N2
\displayOutput|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux55~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20),
	combout => \displayOutput|Mux55~0_combout\);

-- Location: LCCOMB_X79_Y11_N24
\displayOutput|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux62~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24),
	combout => \displayOutput|Mux62~0_combout\);

-- Location: LCCOMB_X83_Y9_N2
\readData2MUX|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \readData2MUX|Selector4~2_combout\ = (\control|o_MemWrite~0_combout\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & ((\registers|readData2|Mux4~4_combout\))))) # (!\control|o_MemWrite~0_combout\ & (((\registers|readData2|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|o_MemWrite~0_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datad => \registers|readData2|Mux4~4_combout\,
	combout => \readData2MUX|Selector4~2_combout\);

-- Location: IOIBUF_X115_Y35_N22
\swapButton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_swapButton,
	o => \swapButton~input_o\);

-- Location: LCCOMB_X77_Y9_N12
\registers|register4|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|register4|bit3|int_q~feeder_combout\ = \dataMUX|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMUX|Selector4~0_combout\,
	combout => \registers|register4|bit3|int_q~feeder_combout\);

-- Location: LCCOMB_X77_Y10_N16
\registers|register2|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|register2|bit6|int_q~feeder_combout\ = \dataMUX|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMUX|Selector1~0_combout\,
	combout => \registers|register2|bit6|int_q~feeder_combout\);

-- Location: LCCOMB_X77_Y10_N26
\registers|register0|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|register0|bit6|int_q~feeder_combout\ = \dataMUX|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMUX|Selector1~0_combout\,
	combout => \registers|register0|bit6|int_q~feeder_combout\);

-- Location: IOOBUF_X91_Y0_N23
\MuxOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ioMUX|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \MuxOut[0]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\MuxOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ioMUX|Mux6~6_combout\,
	devoe => ww_devoe,
	o => \MuxOut[1]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\MuxOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ioMUX|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[2]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\MuxOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ioMUX|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\MuxOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ioMUX|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[4]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\MuxOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ioMUX|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\MuxOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ioMUX|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[6]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\MuxOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ioMUX|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \MuxOut[7]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\InstructionOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \InstructionOut[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\InstructionOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \InstructionOut[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\InstructionOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \InstructionOut[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\InstructionOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \InstructionOut[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\InstructionOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \InstructionOut[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\InstructionOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \InstructionOut[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\InstructionOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \InstructionOut[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\InstructionOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \InstructionOut[7]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\InstructionOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \InstructionOut[8]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\InstructionOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \InstructionOut[9]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\InstructionOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \InstructionOut[10]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\InstructionOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \InstructionOut[11]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\InstructionOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \InstructionOut[12]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\InstructionOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \InstructionOut[13]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\InstructionOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \InstructionOut[14]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\InstructionOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \InstructionOut[15]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\InstructionOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \InstructionOut[16]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\InstructionOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \InstructionOut[17]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\InstructionOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \InstructionOut[18]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\InstructionOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \InstructionOut[19]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\InstructionOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \InstructionOut[20]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\InstructionOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \InstructionOut[21]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\InstructionOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \InstructionOut[22]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\InstructionOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \InstructionOut[23]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\InstructionOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \InstructionOut[24]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\InstructionOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \InstructionOut[25]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\InstructionOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \InstructionOut[26]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\InstructionOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \InstructionOut[27]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\InstructionOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \InstructionOut[28]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\InstructionOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \InstructionOut[29]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\InstructionOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \InstructionOut[30]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\InstructionOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \InstructionOut[31]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\BranchOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control|o_ALUOp[0]~1_combout\,
	devoe => ww_devoe,
	o => \BranchOut~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\ZeroOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \ZeroOut~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\MemWriteOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control|o_MemWrite~2_combout\,
	devoe => ww_devoe,
	o => \MemWriteOut~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\RegWriteOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control|o_RegWrite~2_combout\,
	devoe => ww_devoe,
	o => \RegWriteOut~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\o_display1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display1\(0),
	devoe => ww_devoe,
	o => \o_display1[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\o_display1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display1\(1),
	devoe => ww_devoe,
	o => \o_display1[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\o_display1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display1\(2),
	devoe => ww_devoe,
	o => \o_display1[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\o_display1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display1\(3),
	devoe => ww_devoe,
	o => \o_display1[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\o_display1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display1\(4),
	devoe => ww_devoe,
	o => \o_display1[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\o_display1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display1\(5),
	devoe => ww_devoe,
	o => \o_display1[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\o_display1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display1\(6),
	devoe => ww_devoe,
	o => \o_display1[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\o_display2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display2\(0),
	devoe => ww_devoe,
	o => \o_display2[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\o_display2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display2\(1),
	devoe => ww_devoe,
	o => \o_display2[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\o_display2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display2\(2),
	devoe => ww_devoe,
	o => \o_display2[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\o_display2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display2\(3),
	devoe => ww_devoe,
	o => \o_display2[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\o_display2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display2\(4),
	devoe => ww_devoe,
	o => \o_display2[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\o_display2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display2\(5),
	devoe => ww_devoe,
	o => \o_display2[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\o_display2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display2\(6),
	devoe => ww_devoe,
	o => \o_display2[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\o_display3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display3\(0),
	devoe => ww_devoe,
	o => \o_display3[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\o_display3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display3\(1),
	devoe => ww_devoe,
	o => \o_display3[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\o_display3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display3\(2),
	devoe => ww_devoe,
	o => \o_display3[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\o_display3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display3\(3),
	devoe => ww_devoe,
	o => \o_display3[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\o_display3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display3\(4),
	devoe => ww_devoe,
	o => \o_display3[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\o_display3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display3\(5),
	devoe => ww_devoe,
	o => \o_display3[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\o_display3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display3\(6),
	devoe => ww_devoe,
	o => \o_display3[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\o_display4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display4\(0),
	devoe => ww_devoe,
	o => \o_display4[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\o_display4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display4\(1),
	devoe => ww_devoe,
	o => \o_display4[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\o_display4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display4\(2),
	devoe => ww_devoe,
	o => \o_display4[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\o_display4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display4\(3),
	devoe => ww_devoe,
	o => \o_display4[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\o_display4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display4\(4),
	devoe => ww_devoe,
	o => \o_display4[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\o_display4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display4\(5),
	devoe => ww_devoe,
	o => \o_display4[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\o_display4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display4\(6),
	devoe => ww_devoe,
	o => \o_display4[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\o_display5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display5\(0),
	devoe => ww_devoe,
	o => \o_display5[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\o_display5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display5\(1),
	devoe => ww_devoe,
	o => \o_display5[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\o_display5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display5\(2),
	devoe => ww_devoe,
	o => \o_display5[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\o_display5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display5\(3),
	devoe => ww_devoe,
	o => \o_display5[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\o_display5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display5\(4),
	devoe => ww_devoe,
	o => \o_display5[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\o_display5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display5\(5),
	devoe => ww_devoe,
	o => \o_display5[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\o_display5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display5\(6),
	devoe => ww_devoe,
	o => \o_display5[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\o_display6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display6\(0),
	devoe => ww_devoe,
	o => \o_display6[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\o_display6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display6\(1),
	devoe => ww_devoe,
	o => \o_display6[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\o_display6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display6\(2),
	devoe => ww_devoe,
	o => \o_display6[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\o_display6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display6\(3),
	devoe => ww_devoe,
	o => \o_display6[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\o_display6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display6\(4),
	devoe => ww_devoe,
	o => \o_display6[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\o_display6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display6\(5),
	devoe => ww_devoe,
	o => \o_display6[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\o_display6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display6\(6),
	devoe => ww_devoe,
	o => \o_display6[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\o_display7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display7\(0),
	devoe => ww_devoe,
	o => \o_display7[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\o_display7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display7\(1),
	devoe => ww_devoe,
	o => \o_display7[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\o_display7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display7\(2),
	devoe => ww_devoe,
	o => \o_display7[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\o_display7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display7\(3),
	devoe => ww_devoe,
	o => \o_display7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\o_display7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display7\(4),
	devoe => ww_devoe,
	o => \o_display7[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\o_display7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display7\(5),
	devoe => ww_devoe,
	o => \o_display7[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\o_display7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display7\(6),
	devoe => ww_devoe,
	o => \o_display7[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\o_display8[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display8\(0),
	devoe => ww_devoe,
	o => \o_display8[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\o_display8[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display8\(1),
	devoe => ww_devoe,
	o => \o_display8[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\o_display8[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display8\(2),
	devoe => ww_devoe,
	o => \o_display8[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\o_display8[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display8\(3),
	devoe => ww_devoe,
	o => \o_display8[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\o_display8[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display8\(4),
	devoe => ww_devoe,
	o => \o_display8[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\o_display8[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display8\(5),
	devoe => ww_devoe,
	o => \o_display8[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\o_display8[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayOutput|int_display8\(6),
	devoe => ww_devoe,
	o => \o_display8[6]~output_o\);

-- Location: IOIBUF_X115_Y15_N8
\ValueSelect[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(2),
	o => \ValueSelect[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\ValueSelect[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(1),
	o => \ValueSelect[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\ValueSelect[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(0),
	o => \ValueSelect[0]~input_o\);

-- Location: LCCOMB_X84_Y10_N26
\ioMUX|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux6~3_combout\ = (\ValueSelect[1]~input_o\) # (\ValueSelect[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ValueSelect[1]~input_o\,
	datad => \ValueSelect[0]~input_o\,
	combout => \ioMUX|Mux6~3_combout\);

-- Location: IOIBUF_X58_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X58_Y0_N8
\CLOCK2_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK2_50,
	o => \CLOCK2_50~input_o\);

-- Location: CLKCTRL_G17
\CLOCK2_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK2_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK2_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X79_Y9_N2
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X80_Y8_N22
\PCAdder|adder4|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCAdder|adder4|o_s~combout\ = \PC|bit4|int_q~q\ $ (((\PC|bit3|int_q~q\ & \PC|bit2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|bit4|int_q~q\,
	datac => \PC|bit3|int_q~q\,
	datad => \PC|bit2|int_q~q\,
	combout => \PCAdder|adder4|o_s~combout\);

-- Location: LCCOMB_X80_Y8_N4
\PCAdder|adder4|int_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCAdder|adder4|int_cout~0_combout\ = (\PC|bit3|int_q~q\ & (\PC|bit4|int_q~q\ & \PC|bit2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit3|int_q~q\,
	datab => \PC|bit4|int_q~q\,
	datad => \PC|bit2|int_q~q\,
	combout => \PCAdder|adder4|int_cout~0_combout\);

-- Location: M9K_X78_Y9_N0
\instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000102200E00000000000000000000000000000102100EE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800001100000000000000000000000000008C03000400000000000000000000000000008C0200030000000000000000000000000000AC0100040000000000000000000000000000004308200000000000000000000000000000AC04000300000000000000000000000000000023200500000000000000000000000000000043080200000000000000000000000000008C03000100000000000000000000000000008C020000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "instruction.mif",
	init_file_layout => "port_a",
	logical_ram_name => "instructionMemory:instructionMem|lpm_rom:instructionMem|altrom:srom|altsyncram:rom_block|altsyncram_8o01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK2_50~inputclkctrl_outclk\,
	portaaddr => \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \instructionMem|instructionMem|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X79_Y8_N20
\PCAdder|adder5|int_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCAdder|adder5|int_cout~0_combout\ = (\PC|bit4|int_q~q\ & (\PC|bit2|int_q~q\ & (\PC|bit3|int_q~q\ & \PC|bit5|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit4|int_q~q\,
	datab => \PC|bit2|int_q~q\,
	datac => \PC|bit3|int_q~q\,
	datad => \PC|bit5|int_q~q\,
	combout => \PCAdder|adder5|int_cout~0_combout\);

-- Location: LCCOMB_X79_Y8_N10
\branchAdder|adder6|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchAdder|adder6|o_cout~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) & ((\branchAdder|adder5|o_cout~0_combout\) # (\PC|bit6|int_q~q\ $ (\PCAdder|adder5|int_cout~0_combout\)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) & (\branchAdder|adder5|o_cout~0_combout\ & (\PC|bit6|int_q~q\ $ (\PCAdder|adder5|int_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	datab => \branchAdder|adder5|o_cout~0_combout\,
	datac => \PC|bit6|int_q~q\,
	datad => \PCAdder|adder5|int_cout~0_combout\,
	combout => \branchAdder|adder6|o_cout~0_combout\);

-- Location: LCCOMB_X79_Y8_N16
\branchAdder|adder7|o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchAdder|adder7|o_s~0_combout\ = \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) $ (\branchAdder|adder6|o_cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5),
	datad => \branchAdder|adder6|o_cout~0_combout\,
	combout => \branchAdder|adder7|o_s~0_combout\);

-- Location: LCCOMB_X79_Y8_N4
\branchOrJump|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchOrJump|Selector0~0_combout\ = \PCAdder|adder7|o_s~combout\ $ (((!\control|o_Jump~0_combout\ & (\branchAdder|adder7|o_s~0_combout\ & \int_beq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCAdder|adder7|o_s~combout\,
	datab => \control|o_Jump~0_combout\,
	datac => \branchAdder|adder7|o_s~0_combout\,
	datad => \int_beq~combout\,
	combout => \branchOrJump|Selector0~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\GReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

-- Location: FF_X79_Y8_N5
\PC|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \branchOrJump|Selector0~0_combout\,
	clrn => \GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|bit7|int_q~q\);

-- Location: LCCOMB_X83_Y8_N24
\PCAdder|adder3|int_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PCAdder|adder3|int_cout~0_combout\ = (\PC|bit3|int_q~q\ & \PC|bit2|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|bit3|int_q~q\,
	datad => \PC|bit2|int_q~q\,
	combout => \PCAdder|adder3|int_cout~0_combout\);

-- Location: LCCOMB_X84_Y9_N12
\branchAdder|adder3|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchAdder|adder3|o_cout~0_combout\ = (\PC|bit3|int_q~q\ & (!\PC|bit2|int_q~q\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0))))) # (!\PC|bit3|int_q~q\ & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0)) # (\PC|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit3|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	datad => \PC|bit2|int_q~q\,
	combout => \branchAdder|adder3|o_cout~0_combout\);

-- Location: LCCOMB_X84_Y9_N28
\branchAdder|adder4|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchAdder|adder4|o_cout~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) & ((\branchAdder|adder3|o_cout~0_combout\) # (\PC|bit4|int_q~q\ $ (\PCAdder|adder3|int_cout~0_combout\)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) & (\branchAdder|adder3|o_cout~0_combout\ & (\PC|bit4|int_q~q\ $ (\PCAdder|adder3|int_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit4|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	datac => \PCAdder|adder3|int_cout~0_combout\,
	datad => \branchAdder|adder3|o_cout~0_combout\,
	combout => \branchAdder|adder4|o_cout~0_combout\);

-- Location: LCCOMB_X83_Y8_N0
\branchAdder|adder5|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchAdder|adder5|o_cout~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) & ((\branchAdder|adder4|o_cout~0_combout\) # (\PC|bit5|int_q~q\ $ (\PCAdder|adder4|int_cout~0_combout\)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) & (\branchAdder|adder4|o_cout~0_combout\ & (\PC|bit5|int_q~q\ $ (\PCAdder|adder4|int_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit5|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datac => \PCAdder|adder4|int_cout~0_combout\,
	datad => \branchAdder|adder4|o_cout~0_combout\,
	combout => \branchAdder|adder5|o_cout~0_combout\);

-- Location: LCCOMB_X79_Y8_N2
\branchAdder|adder6|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchAdder|adder6|o_s~combout\ = \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) $ (\branchAdder|adder5|o_cout~0_combout\ $ (\PC|bit6|int_q~q\ $ (\PCAdder|adder5|int_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	datab => \branchAdder|adder5|o_cout~0_combout\,
	datac => \PC|bit6|int_q~q\,
	datad => \PCAdder|adder5|int_cout~0_combout\,
	combout => \branchAdder|adder6|o_s~combout\);

-- Location: LCCOMB_X79_Y8_N30
\PC|bit6|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|bit6|int_q~0_combout\ = (\int_beq~combout\ & ((\branchAdder|adder6|o_s~combout\))) # (!\int_beq~combout\ & (\PCAdder|adder6|o_s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCAdder|adder6|o_s~combout\,
	datab => \branchAdder|adder6|o_s~combout\,
	datad => \int_beq~combout\,
	combout => \PC|bit6|int_q~0_combout\);

-- Location: FF_X79_Y8_N31
\PC|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \PC|bit6|int_q~0_combout\,
	asdata => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	clrn => \GReset~input_o\,
	sload => \control|o_Jump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|bit6|int_q~q\);

-- Location: LCCOMB_X83_Y8_N14
\branchAdder|adder5|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchAdder|adder5|o_s~combout\ = \PC|bit5|int_q~q\ $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) $ (\PCAdder|adder4|int_cout~0_combout\ $ (\branchAdder|adder4|o_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit5|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datac => \PCAdder|adder4|int_cout~0_combout\,
	datad => \branchAdder|adder4|o_cout~0_combout\,
	combout => \branchAdder|adder5|o_s~combout\);

-- Location: LCCOMB_X79_Y8_N0
\PC|bit5|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|bit5|int_q~0_combout\ = (\int_beq~combout\ & ((\branchAdder|adder5|o_s~combout\))) # (!\int_beq~combout\ & (\PCAdder|adder5|o_s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCAdder|adder5|o_s~combout\,
	datab => \branchAdder|adder5|o_s~combout\,
	datad => \int_beq~combout\,
	combout => \PC|bit5|int_q~0_combout\);

-- Location: FF_X79_Y8_N1
\PC|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \PC|bit5|int_q~0_combout\,
	asdata => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	clrn => \GReset~input_o\,
	sload => \control|o_Jump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|bit5|int_q~q\);

-- Location: LCCOMB_X82_Y9_N24
\control|o_ALUOp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|o_ALUOp[0]~0_combout\ = (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26) & 
-- !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	combout => \control|o_ALUOp[0]~0_combout\);

-- Location: LCCOMB_X82_Y9_N2
\control|o_ALUOp[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|o_ALUOp\(1) = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27)) # ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28)) # (!\control|o_ALUOp[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	datad => \control|o_ALUOp[0]~0_combout\,
	combout => \control|o_ALUOp\(1));

-- Location: LCCOMB_X82_Y9_N8
\control|o_ALUOp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|o_ALUOp[0]~1_combout\ = (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & \control|o_ALUOp[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	datad => \control|o_ALUOp[0]~0_combout\,
	combout => \control|o_ALUOp[0]~1_combout\);

-- Location: LCCOMB_X82_Y9_N6
\alu|mux|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux7~0_combout\ = (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) & (!\control|o_ALUOp\(1) & !\control|o_ALUOp[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	datac => \control|o_ALUOp\(1),
	datad => \control|o_ALUOp[0]~1_combout\,
	combout => \alu|mux|Mux7~0_combout\);

-- Location: LCCOMB_X82_Y9_N16
\control|o_MemWrite~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|o_MemWrite~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & 
-- \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	combout => \control|o_MemWrite~0_combout\);

-- Location: LCCOMB_X80_Y10_N8
\readData2MUX|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \readData2MUX|Selector7~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & ((\control|o_MemWrite~0_combout\ & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0))) # (!\control|o_MemWrite~0_combout\ & 
-- ((\registers|readData2|Mux7~4_combout\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & (((\registers|readData2|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	datac => \control|o_MemWrite~0_combout\,
	datad => \registers|readData2|Mux7~4_combout\,
	combout => \readData2MUX|Selector7~2_combout\);

-- Location: LCCOMB_X80_Y7_N24
\writeRegMUX|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeRegMUX|Selector7~0_combout\ = (\control|o_ALUOp\(1) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16)))) # (!\control|o_ALUOp\(1) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datad => \control|o_ALUOp\(1),
	combout => \writeRegMUX|Selector7~0_combout\);

-- Location: LCCOMB_X80_Y7_N4
\writeRegMUX|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeRegMUX|Selector6~0_combout\ = (\control|o_ALUOp\(1) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)))) # (!\control|o_ALUOp\(1) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datad => \control|o_ALUOp\(1),
	combout => \writeRegMUX|Selector6~0_combout\);

-- Location: LCCOMB_X80_Y7_N20
\control|o_RegWrite~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|o_RegWrite~2_combout\ = ((\control|o_MemWrite~0_combout\ & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31)))) # (!\control|o_ALUOp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|o_MemWrite~0_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datad => \control|o_ALUOp\(1),
	combout => \control|o_RegWrite~2_combout\);

-- Location: LCCOMB_X80_Y7_N2
\registers|decoder|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|decoder|Mux7~0_combout\ = (\writeRegMUX|Selector5~0_combout\ & (\writeRegMUX|Selector7~0_combout\ & (!\writeRegMUX|Selector6~0_combout\ & \control|o_RegWrite~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeRegMUX|Selector5~0_combout\,
	datab => \writeRegMUX|Selector7~0_combout\,
	datac => \writeRegMUX|Selector6~0_combout\,
	datad => \control|o_RegWrite~2_combout\,
	combout => \registers|decoder|Mux7~0_combout\);

-- Location: FF_X82_Y10_N5
\registers|register5|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector7~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register5|bit0|int_q~q\);

-- Location: LCCOMB_X80_Y7_N10
\registers|decoder|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|decoder|Mux7~2_combout\ = (\writeRegMUX|Selector5~0_combout\ & (!\writeRegMUX|Selector7~0_combout\ & (!\writeRegMUX|Selector6~0_combout\ & \control|o_RegWrite~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeRegMUX|Selector5~0_combout\,
	datab => \writeRegMUX|Selector7~0_combout\,
	datac => \writeRegMUX|Selector6~0_combout\,
	datad => \control|o_RegWrite~2_combout\,
	combout => \registers|decoder|Mux7~2_combout\);

-- Location: FF_X80_Y9_N29
\registers|register4|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector7~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register4|bit0|int_q~q\);

-- Location: LCCOMB_X80_Y7_N12
\registers|decoder|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|decoder|Mux7~1_combout\ = (\writeRegMUX|Selector5~0_combout\ & (!\writeRegMUX|Selector7~0_combout\ & (\writeRegMUX|Selector6~0_combout\ & \control|o_RegWrite~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeRegMUX|Selector5~0_combout\,
	datab => \writeRegMUX|Selector7~0_combout\,
	datac => \writeRegMUX|Selector6~0_combout\,
	datad => \control|o_RegWrite~2_combout\,
	combout => \registers|decoder|Mux7~1_combout\);

-- Location: FF_X79_Y9_N1
\registers|register6|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector7~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register6|bit0|int_q~q\);

-- Location: LCCOMB_X79_Y9_N0
\registers|readData1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux7~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|register6|bit0|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (\registers|register4|bit0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|register4|bit0|int_q~q\,
	datac => \registers|register6|bit0|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	combout => \registers|readData1|Mux7~0_combout\);

-- Location: LCCOMB_X82_Y10_N4
\registers|readData1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux7~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|readData1|Mux7~0_combout\ & (\registers|register7|bit0|int_q~q\)) # (!\registers|readData1|Mux7~0_combout\ & 
-- ((\registers|register5|bit0|int_q~q\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\registers|readData1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register7|bit0|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datac => \registers|register5|bit0|int_q~q\,
	datad => \registers|readData1|Mux7~0_combout\,
	combout => \registers|readData1|Mux7~1_combout\);

-- Location: LCCOMB_X80_Y7_N6
\registers|decoder|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|decoder|Mux7~4_combout\ = (!\writeRegMUX|Selector5~0_combout\ & (!\writeRegMUX|Selector7~0_combout\ & (\writeRegMUX|Selector6~0_combout\ & \control|o_RegWrite~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeRegMUX|Selector5~0_combout\,
	datab => \writeRegMUX|Selector7~0_combout\,
	datac => \writeRegMUX|Selector6~0_combout\,
	datad => \control|o_RegWrite~2_combout\,
	combout => \registers|decoder|Mux7~4_combout\);

-- Location: FF_X82_Y10_N11
\registers|register2|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector7~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register2|bit0|int_q~q\);

-- Location: LCCOMB_X83_Y10_N16
\registers|register1|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|register1|bit0|int_q~feeder_combout\ = \dataMUX|Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMUX|Selector7~0_combout\,
	combout => \registers|register1|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X80_Y7_N0
\registers|decoder|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|decoder|Mux7~5_combout\ = (!\writeRegMUX|Selector5~0_combout\ & (\writeRegMUX|Selector7~0_combout\ & (!\writeRegMUX|Selector6~0_combout\ & \control|o_RegWrite~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeRegMUX|Selector5~0_combout\,
	datab => \writeRegMUX|Selector7~0_combout\,
	datac => \writeRegMUX|Selector6~0_combout\,
	datad => \control|o_RegWrite~2_combout\,
	combout => \registers|decoder|Mux7~5_combout\);

-- Location: FF_X83_Y10_N17
\registers|register1|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \registers|register1|bit0|int_q~feeder_combout\,
	clrn => \GReset~input_o\,
	ena => \registers|decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register1|bit0|int_q~q\);

-- Location: LCCOMB_X81_Y9_N22
\registers|readData1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux7~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22)) # (\registers|register1|bit0|int_q~q\)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (\registers|register0|bit0|int_q~q\ & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register0|bit0|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \registers|register1|bit0|int_q~q\,
	combout => \registers|readData1|Mux7~2_combout\);

-- Location: LCCOMB_X82_Y10_N10
\registers|readData1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux7~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|readData1|Mux7~2_combout\ & (\registers|register3|bit0|int_q~q\)) # (!\registers|readData1|Mux7~2_combout\ & 
-- ((\registers|register2|bit0|int_q~q\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (((\registers|readData1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datab => \registers|register3|bit0|int_q~q\,
	datac => \registers|register2|bit0|int_q~q\,
	datad => \registers|readData1|Mux7~2_combout\,
	combout => \registers|readData1|Mux7~3_combout\);

-- Location: LCCOMB_X82_Y10_N12
\registers|readData1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux7~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & (\registers|readData1|Mux7~1_combout\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & 
-- ((\registers|readData1|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datac => \registers|readData1|Mux7~1_combout\,
	datad => \registers|readData1|Mux7~3_combout\,
	combout => \registers|readData1|Mux7~4_combout\);

-- Location: LCCOMB_X83_Y10_N22
\alu|mux|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux7~1_combout\ = (\alu|mux|Mux7~0_combout\ & ((\controlUnitALUunit|o_control[0]~0_combout\ & ((\readData2MUX|Selector7~2_combout\) # (\registers|readData1|Mux7~4_combout\))) # (!\controlUnitALUunit|o_control[0]~0_combout\ & 
-- (\readData2MUX|Selector7~2_combout\ & \registers|readData1|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlUnitALUunit|o_control[0]~0_combout\,
	datab => \alu|mux|Mux7~0_combout\,
	datac => \readData2MUX|Selector7~2_combout\,
	datad => \registers|readData1|Mux7~4_combout\,
	combout => \alu|mux|Mux7~1_combout\);

-- Location: LCCOMB_X83_Y9_N30
\controlUnitALUunit|o_control[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlUnitALUunit|o_control\(2) = (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) & (\control|o_ALUOp[0]~0_combout\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datab => \control|o_ALUOp[0]~0_combout\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	combout => \controlUnitALUunit|o_control\(2));

-- Location: LCCOMB_X83_Y10_N8
\alu|mux|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux7~2_combout\ = (!\controlUnitALUunit|o_control[0]~0_combout\ & (\readData2MUX|Selector7~2_combout\ $ (\registers|readData1|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlUnitALUunit|o_control[0]~0_combout\,
	datac => \readData2MUX|Selector7~2_combout\,
	datad => \registers|readData1|Mux7~4_combout\,
	combout => \alu|mux|Mux7~2_combout\);

-- Location: LCCOMB_X80_Y7_N18
\registers|decoder|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|decoder|Mux7~6_combout\ = (!\writeRegMUX|Selector5~0_combout\ & (!\writeRegMUX|Selector7~0_combout\ & (!\writeRegMUX|Selector6~0_combout\ & \control|o_RegWrite~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeRegMUX|Selector5~0_combout\,
	datab => \writeRegMUX|Selector7~0_combout\,
	datac => \writeRegMUX|Selector6~0_combout\,
	datad => \control|o_RegWrite~2_combout\,
	combout => \registers|decoder|Mux7~6_combout\);

-- Location: FF_X81_Y9_N15
\registers|register0|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector0~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register0|bit7|int_q~q\);

-- Location: FF_X81_Y8_N1
\registers|register1|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dataMUX|Selector0~0_combout\,
	clrn => \GReset~input_o\,
	ena => \registers|decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register1|bit7|int_q~q\);

-- Location: LCCOMB_X81_Y9_N14
\registers|readData2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux0~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|register1|bit7|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (\registers|register0|bit7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register0|bit7|int_q~q\,
	datad => \registers|register1|bit7|int_q~q\,
	combout => \registers|readData2|Mux0~2_combout\);

-- Location: LCCOMB_X81_Y9_N16
\registers|readData2|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux0~3_combout\ = (\registers|readData2|Mux0~2_combout\ & (((\registers|register3|bit7|int_q~q\) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))) # (!\registers|readData2|Mux0~2_combout\ & 
-- (\registers|register2|bit7|int_q~q\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register2|bit7|int_q~q\,
	datab => \registers|readData2|Mux0~2_combout\,
	datac => \registers|register3|bit7|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	combout => \registers|readData2|Mux0~3_combout\);

-- Location: LCCOMB_X81_Y9_N6
\registers|readData2|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux0~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & (\registers|readData2|Mux0~1_combout\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & 
-- ((\registers|readData2|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData2|Mux0~1_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datad => \registers|readData2|Mux0~3_combout\,
	combout => \registers|readData2|Mux0~4_combout\);

-- Location: LCCOMB_X81_Y9_N12
\readData2MUX|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \readData2MUX|Selector0~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & ((\control|o_MemWrite~0_combout\ & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6))) # (!\control|o_MemWrite~0_combout\ & 
-- ((\registers|readData2|Mux0~4_combout\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & (((\registers|readData2|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	datac => \control|o_MemWrite~0_combout\,
	datad => \registers|readData2|Mux0~4_combout\,
	combout => \readData2MUX|Selector0~2_combout\);

-- Location: LCCOMB_X83_Y9_N26
\alu|mux|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux3~2_combout\ = (\controlUnitALUunit|o_control\(2)) # ((!\alu|mux|Mux3~0_combout\ & (!\control|o_ALUOp\(1) & \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux3~0_combout\,
	datab => \controlUnitALUunit|o_control\(2),
	datac => \control|o_ALUOp\(1),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	combout => \alu|mux|Mux3~2_combout\);

-- Location: LCCOMB_X81_Y9_N26
\alu|subtractor|adder7|o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder7|o_s~0_combout\ = \registers|readData1|Mux0~4_combout\ $ (((\control|o_MemWrite~1_combout\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6)))) # (!\control|o_MemWrite~1_combout\ & 
-- (\registers|readData2|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData2|Mux0~4_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	datac => \control|o_MemWrite~1_combout\,
	datad => \registers|readData1|Mux0~4_combout\,
	combout => \alu|subtractor|adder7|o_s~0_combout\);

-- Location: LCCOMB_X83_Y9_N24
\alu|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux3~0_combout\ = (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	combout => \alu|mux|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y9_N22
\controlUnitALUunit|o_control[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlUnitALUunit|o_control[0]~0_combout\ = (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) & (!\alu|mux|Mux3~0_combout\ & 
-- \control|o_ALUOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datac => \alu|mux|Mux3~0_combout\,
	datad => \control|o_ALUOp[0]~0_combout\,
	combout => \controlUnitALUunit|o_control[0]~0_combout\);

-- Location: FF_X80_Y9_N9
\registers|register4|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector1~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register4|bit6|int_q~q\);

-- Location: LCCOMB_X80_Y9_N4
\registers|readData1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux1~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|register6|bit6|int_q~q\) # ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (((\registers|register4|bit6|int_q~q\ & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datab => \registers|register6|bit6|int_q~q\,
	datac => \registers|register4|bit6|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	combout => \registers|readData1|Mux1~0_combout\);

-- Location: FF_X79_Y9_N3
\registers|register5|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector1~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register5|bit6|int_q~q\);

-- Location: LCCOMB_X80_Y9_N18
\registers|readData1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux1~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|readData1|Mux1~0_combout\ & (\registers|register7|bit6|int_q~q\)) # (!\registers|readData1|Mux1~0_combout\ & 
-- ((\registers|register5|bit6|int_q~q\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\registers|readData1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register7|bit6|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datac => \registers|readData1|Mux1~0_combout\,
	datad => \registers|register5|bit6|int_q~q\,
	combout => \registers|readData1|Mux1~1_combout\);

-- Location: LCCOMB_X80_Y7_N16
\registers|decoder|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|decoder|Mux7~7_combout\ = (!\writeRegMUX|Selector5~0_combout\ & (\writeRegMUX|Selector7~0_combout\ & (\writeRegMUX|Selector6~0_combout\ & \control|o_RegWrite~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeRegMUX|Selector5~0_combout\,
	datab => \writeRegMUX|Selector7~0_combout\,
	datac => \writeRegMUX|Selector6~0_combout\,
	datad => \control|o_RegWrite~2_combout\,
	combout => \registers|decoder|Mux7~7_combout\);

-- Location: FF_X81_Y10_N9
\registers|register3|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector1~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register3|bit6|int_q~q\);

-- Location: FF_X79_Y10_N27
\registers|register1|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector1~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register1|bit6|int_q~q\);

-- Location: LCCOMB_X79_Y10_N26
\registers|readData1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux1~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|register1|bit6|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (\registers|register0|bit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register0|bit6|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datac => \registers|register1|bit6|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	combout => \registers|readData1|Mux1~2_combout\);

-- Location: LCCOMB_X77_Y10_N14
\registers|readData1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux1~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|readData1|Mux1~2_combout\ & ((\registers|register3|bit6|int_q~q\))) # (!\registers|readData1|Mux1~2_combout\ & 
-- (\registers|register2|bit6|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (((\registers|readData1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register2|bit6|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datac => \registers|register3|bit6|int_q~q\,
	datad => \registers|readData1|Mux1~2_combout\,
	combout => \registers|readData1|Mux1~3_combout\);

-- Location: LCCOMB_X81_Y10_N4
\registers|readData1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux1~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & (\registers|readData1|Mux1~1_combout\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & 
-- ((\registers|readData1|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datac => \registers|readData1|Mux1~1_combout\,
	datad => \registers|readData1|Mux1~3_combout\,
	combout => \registers|readData1|Mux1~4_combout\);

-- Location: LCCOMB_X83_Y9_N8
\alu|mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux3~1_combout\ = (\control|o_ALUOp\(1)) # ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) & ((\alu|mux|Mux3~0_combout\) # (!\controlUnitALUunit|o_control\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux3~0_combout\,
	datab => \controlUnitALUunit|o_control\(2),
	datac => \control|o_ALUOp\(1),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	combout => \alu|mux|Mux3~1_combout\);

-- Location: LCCOMB_X79_Y10_N30
\alu|subtractor|adder6|o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder6|o_s~0_combout\ = \registers|readData1|Mux1~4_combout\ $ (((\control|o_MemWrite~1_combout\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6)))) # (!\control|o_MemWrite~1_combout\ & 
-- (\registers|readData2|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData2|Mux1~4_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	datac => \registers|readData1|Mux1~4_combout\,
	datad => \control|o_MemWrite~1_combout\,
	combout => \alu|subtractor|adder6|o_s~0_combout\);

-- Location: FF_X83_Y9_N5
\registers|register3|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector4~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register3|bit3|int_q~q\);

-- Location: LCCOMB_X83_Y9_N28
\registers|register0|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|register0|bit3|int_q~feeder_combout\ = \dataMUX|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataMUX|Selector4~0_combout\,
	combout => \registers|register0|bit3|int_q~feeder_combout\);

-- Location: FF_X83_Y9_N29
\registers|register0|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \registers|register0|bit3|int_q~feeder_combout\,
	clrn => \GReset~input_o\,
	ena => \registers|decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register0|bit3|int_q~q\);

-- Location: LCCOMB_X83_Y9_N18
\registers|readData2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux4~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|register1|bit3|int_q~q\) # ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\registers|register0|bit3|int_q~q\ & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register1|bit3|int_q~q\,
	datab => \registers|register0|bit3|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	combout => \registers|readData2|Mux4~2_combout\);

-- Location: LCCOMB_X83_Y9_N4
\registers|readData2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux4~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|readData2|Mux4~2_combout\ & ((\registers|register3|bit3|int_q~q\))) # (!\registers|readData2|Mux4~2_combout\ & 
-- (\registers|register2|bit3|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (((\registers|readData2|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register2|bit3|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datac => \registers|register3|bit3|int_q~q\,
	datad => \registers|readData2|Mux4~2_combout\,
	combout => \registers|readData2|Mux4~3_combout\);

-- Location: LCCOMB_X80_Y7_N8
\registers|decoder|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|decoder|Mux7~3_combout\ = (\writeRegMUX|Selector5~0_combout\ & (\writeRegMUX|Selector7~0_combout\ & (\writeRegMUX|Selector6~0_combout\ & \control|o_RegWrite~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeRegMUX|Selector5~0_combout\,
	datab => \writeRegMUX|Selector7~0_combout\,
	datac => \writeRegMUX|Selector6~0_combout\,
	datad => \control|o_RegWrite~2_combout\,
	combout => \registers|decoder|Mux7~3_combout\);

-- Location: FF_X80_Y9_N23
\registers|register7|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector4~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register7|bit3|int_q~q\);

-- Location: FF_X79_Y9_N19
\registers|register6|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector4~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register6|bit3|int_q~q\);

-- Location: LCCOMB_X79_Y9_N18
\registers|readData2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux4~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|register6|bit3|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (\registers|register4|bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register4|bit3|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register6|bit3|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	combout => \registers|readData2|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y9_N22
\registers|readData2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux4~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|readData2|Mux4~0_combout\ & ((\registers|register7|bit3|int_q~q\))) # (!\registers|readData2|Mux4~0_combout\ & 
-- (\registers|register5|bit3|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\registers|readData2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register5|bit3|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register7|bit3|int_q~q\,
	datad => \registers|readData2|Mux4~0_combout\,
	combout => \registers|readData2|Mux4~1_combout\);

-- Location: LCCOMB_X83_Y9_N10
\registers|readData2|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux4~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & ((\registers|readData2|Mux4~1_combout\))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & 
-- (\registers|readData2|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \registers|readData2|Mux4~3_combout\,
	datad => \registers|readData2|Mux4~1_combout\,
	combout => \registers|readData2|Mux4~4_combout\);

-- Location: LCCOMB_X82_Y10_N30
\alu|comparator|comp3|int_GT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|comparator|comp3|int_GT~0_combout\ = (\registers|readData1|Mux4~4_combout\ & ((\control|o_MemWrite~1_combout\ & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3))) # (!\control|o_MemWrite~1_combout\ & 
-- ((!\registers|readData2|Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datab => \control|o_MemWrite~1_combout\,
	datac => \registers|readData2|Mux4~4_combout\,
	datad => \registers|readData1|Mux4~4_combout\,
	combout => \alu|comparator|comp3|int_GT~0_combout\);

-- Location: LCCOMB_X82_Y10_N22
\alu|comparator|comp3|int_LT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|comparator|comp3|int_LT~0_combout\ = (!\registers|readData1|Mux4~4_combout\ & ((\control|o_MemWrite~1_combout\ & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3))) # (!\control|o_MemWrite~1_combout\ & 
-- ((\registers|readData2|Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datab => \control|o_MemWrite~1_combout\,
	datac => \registers|readData2|Mux4~4_combout\,
	datad => \registers|readData1|Mux4~4_combout\,
	combout => \alu|comparator|comp3|int_LT~0_combout\);

-- Location: FF_X80_Y9_N7
\registers|register7|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector6~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register7|bit1|int_q~q\);

-- Location: FF_X80_Y9_N1
\registers|register4|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector6~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register4|bit1|int_q~q\);

-- Location: LCCOMB_X80_Y9_N0
\registers|readData2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux6~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (\registers|register6|bit1|int_q~q\)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|register4|bit1|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register6|bit1|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register4|bit1|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	combout => \registers|readData2|Mux6~0_combout\);

-- Location: LCCOMB_X80_Y9_N6
\registers|readData2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux6~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|readData2|Mux6~0_combout\ & ((\registers|register7|bit1|int_q~q\))) # (!\registers|readData2|Mux6~0_combout\ & 
-- (\registers|register5|bit1|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\registers|readData2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register5|bit1|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register7|bit1|int_q~q\,
	datad => \registers|readData2|Mux6~0_combout\,
	combout => \registers|readData2|Mux6~1_combout\);

-- Location: FF_X82_Y10_N9
\registers|register2|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector6~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register2|bit1|int_q~q\);

-- Location: FF_X81_Y10_N3
\registers|register1|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector6~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register1|bit1|int_q~q\);

-- Location: LCCOMB_X81_Y10_N12
\registers|readData2|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux6~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|register1|bit1|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (\registers|register0|bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register0|bit1|int_q~q\,
	datab => \registers|register1|bit1|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	combout => \registers|readData2|Mux6~2_combout\);

-- Location: LCCOMB_X81_Y10_N22
\registers|readData2|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux6~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|readData2|Mux6~2_combout\ & ((\registers|register3|bit1|int_q~q\))) # (!\registers|readData2|Mux6~2_combout\ & 
-- (\registers|register2|bit1|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (((\registers|readData2|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datab => \registers|register2|bit1|int_q~q\,
	datac => \registers|register3|bit1|int_q~q\,
	datad => \registers|readData2|Mux6~2_combout\,
	combout => \registers|readData2|Mux6~3_combout\);

-- Location: LCCOMB_X80_Y10_N4
\registers|readData2|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux6~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & (\registers|readData2|Mux6~1_combout\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & 
-- ((\registers|readData2|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \registers|readData2|Mux6~1_combout\,
	datad => \registers|readData2|Mux6~3_combout\,
	combout => \registers|readData2|Mux6~4_combout\);

-- Location: LCCOMB_X80_Y10_N14
\readData2MUX|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \readData2MUX|Selector6~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & ((\control|o_MemWrite~0_combout\ & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1))) # (!\control|o_MemWrite~0_combout\ & 
-- ((\registers|readData2|Mux6~4_combout\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & (((\registers|readData2|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datac => \registers|readData2|Mux6~4_combout\,
	datad => \control|o_MemWrite~0_combout\,
	combout => \readData2MUX|Selector6~2_combout\);

-- Location: LCCOMB_X82_Y10_N6
\alu|subtractor|adder1|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder1|o_cout~0_combout\ = (\registers|readData1|Mux6~4_combout\ & ((\registers|readData1|Mux7~4_combout\) # ((!\readData2MUX|Selector7~2_combout\) # (!\readData2MUX|Selector6~2_combout\)))) # (!\registers|readData1|Mux6~4_combout\ & 
-- (!\readData2MUX|Selector6~2_combout\ & ((\registers|readData1|Mux7~4_combout\) # (!\readData2MUX|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux7~4_combout\,
	datab => \registers|readData1|Mux6~4_combout\,
	datac => \readData2MUX|Selector6~2_combout\,
	datad => \readData2MUX|Selector7~2_combout\,
	combout => \alu|subtractor|adder1|o_cout~0_combout\);

-- Location: LCCOMB_X82_Y10_N0
\alu|subtractor|adder3|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder3|o_cout~0_combout\ = (!\alu|comparator|comp3|int_LT~0_combout\ & ((\registers|readData1|Mux5~4_combout\ & ((\alu|subtractor|adder1|o_cout~0_combout\) # (!\readData2MUX|Selector5~2_combout\))) # (!\registers|readData1|Mux5~4_combout\ 
-- & (!\readData2MUX|Selector5~2_combout\ & \alu|subtractor|adder1|o_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux5~4_combout\,
	datab => \readData2MUX|Selector5~2_combout\,
	datac => \alu|comparator|comp3|int_LT~0_combout\,
	datad => \alu|subtractor|adder1|o_cout~0_combout\,
	combout => \alu|subtractor|adder3|o_cout~0_combout\);

-- Location: LCCOMB_X82_Y10_N28
\alu|subtractor|adder4|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder4|o_cout~0_combout\ = (\registers|readData1|Mux3~4_combout\ & (((\alu|comparator|comp3|int_GT~0_combout\) # (\alu|subtractor|adder3|o_cout~0_combout\)) # (!\readData2MUX|Selector3~2_combout\))) # (!\registers|readData1|Mux3~4_combout\ 
-- & (!\readData2MUX|Selector3~2_combout\ & ((\alu|comparator|comp3|int_GT~0_combout\) # (\alu|subtractor|adder3|o_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux3~4_combout\,
	datab => \readData2MUX|Selector3~2_combout\,
	datac => \alu|comparator|comp3|int_GT~0_combout\,
	datad => \alu|subtractor|adder3|o_cout~0_combout\,
	combout => \alu|subtractor|adder4|o_cout~0_combout\);

-- Location: LCCOMB_X79_Y10_N8
\alu|subtractor|adder6|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder6|o_s~combout\ = \alu|subtractor|adder6|o_s~0_combout\ $ (((\readData2MUX|Selector2~2_combout\ & (\registers|readData1|Mux2~4_combout\ & \alu|subtractor|adder4|o_cout~0_combout\)) # (!\readData2MUX|Selector2~2_combout\ & 
-- ((\registers|readData1|Mux2~4_combout\) # (\alu|subtractor|adder4|o_cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector2~2_combout\,
	datab => \registers|readData1|Mux2~4_combout\,
	datac => \alu|subtractor|adder6|o_s~0_combout\,
	datad => \alu|subtractor|adder4|o_cout~0_combout\,
	combout => \alu|subtractor|adder6|o_s~combout\);

-- Location: FF_X80_Y9_N3
\registers|register4|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector3~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register4|bit4|int_q~q\);

-- Location: FF_X79_Y9_N5
\registers|register6|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector3~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register6|bit4|int_q~q\);

-- Location: LCCOMB_X79_Y9_N4
\registers|readData1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux3~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|register6|bit4|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (\registers|register4|bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|register4|bit4|int_q~q\,
	datac => \registers|register6|bit4|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	combout => \registers|readData1|Mux3~0_combout\);

-- Location: FF_X79_Y9_N31
\registers|register5|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector3~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register5|bit4|int_q~q\);

-- Location: FF_X80_Y9_N25
\registers|register7|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector3~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register7|bit4|int_q~q\);

-- Location: LCCOMB_X79_Y9_N30
\registers|readData1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux3~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|readData1|Mux3~0_combout\ & ((\registers|register7|bit4|int_q~q\))) # (!\registers|readData1|Mux3~0_combout\ & 
-- (\registers|register5|bit4|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (\registers|readData1|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|readData1|Mux3~0_combout\,
	datac => \registers|register5|bit4|int_q~q\,
	datad => \registers|register7|bit4|int_q~q\,
	combout => \registers|readData1|Mux3~1_combout\);

-- Location: FF_X80_Y8_N5
\registers|register2|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector3~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register2|bit4|int_q~q\);

-- Location: LCCOMB_X82_Y9_N20
\registers|readData1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux3~3_combout\ = (\registers|readData1|Mux3~2_combout\ & ((\registers|register3|bit4|int_q~q\) # ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))) # (!\registers|readData1|Mux3~2_combout\ & 
-- (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & \registers|register2|bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux3~2_combout\,
	datab => \registers|register3|bit4|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \registers|register2|bit4|int_q~q\,
	combout => \registers|readData1|Mux3~3_combout\);

-- Location: LCCOMB_X79_Y9_N22
\registers|readData1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux3~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & (\registers|readData1|Mux3~1_combout\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & 
-- ((\registers|readData1|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datac => \registers|readData1|Mux3~1_combout\,
	datad => \registers|readData1|Mux3~3_combout\,
	combout => \registers|readData1|Mux3~4_combout\);

-- Location: LCCOMB_X80_Y10_N6
\alu|adder|adder1|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|adder1|o_cout~0_combout\ = (\registers|readData1|Mux6~4_combout\ & ((\readData2MUX|Selector6~2_combout\) # ((\readData2MUX|Selector7~2_combout\ & \registers|readData1|Mux7~4_combout\)))) # (!\registers|readData1|Mux6~4_combout\ & 
-- (\readData2MUX|Selector6~2_combout\ & (\readData2MUX|Selector7~2_combout\ & \registers|readData1|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux6~4_combout\,
	datab => \readData2MUX|Selector6~2_combout\,
	datac => \readData2MUX|Selector7~2_combout\,
	datad => \registers|readData1|Mux7~4_combout\,
	combout => \alu|adder|adder1|o_cout~0_combout\);

-- Location: LCCOMB_X80_Y10_N24
\alu|adder|adder2|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|adder2|o_cout~0_combout\ = (\readData2MUX|Selector5~2_combout\ & \alu|adder|adder1|o_cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \readData2MUX|Selector5~2_combout\,
	datad => \alu|adder|adder1|o_cout~0_combout\,
	combout => \alu|adder|adder2|o_cout~0_combout\);

-- Location: FF_X79_Y9_N27
\registers|register5|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector5~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register5|bit2|int_q~q\);

-- Location: FF_X80_Y9_N13
\registers|register4|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector5~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register4|bit2|int_q~q\);

-- Location: FF_X79_Y9_N17
\registers|register6|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector5~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register6|bit2|int_q~q\);

-- Location: LCCOMB_X79_Y9_N16
\registers|readData1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux5~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|register6|bit2|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (\registers|register4|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|register4|bit2|int_q~q\,
	datac => \registers|register6|bit2|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	combout => \registers|readData1|Mux5~0_combout\);

-- Location: LCCOMB_X79_Y9_N26
\registers|readData1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux5~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|readData1|Mux5~0_combout\ & (\registers|register7|bit2|int_q~q\)) # (!\registers|readData1|Mux5~0_combout\ & 
-- ((\registers|register5|bit2|int_q~q\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\registers|readData1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|register7|bit2|int_q~q\,
	datac => \registers|register5|bit2|int_q~q\,
	datad => \registers|readData1|Mux5~0_combout\,
	combout => \registers|readData1|Mux5~1_combout\);

-- Location: LCCOMB_X83_Y9_N14
\registers|register3|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|register3|bit2|int_q~feeder_combout\ = \dataMUX|Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMUX|Selector5~0_combout\,
	combout => \registers|register3|bit2|int_q~feeder_combout\);

-- Location: FF_X83_Y9_N15
\registers|register3|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \registers|register3|bit2|int_q~feeder_combout\,
	clrn => \GReset~input_o\,
	ena => \registers|decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register3|bit2|int_q~q\);

-- Location: FF_X82_Y9_N9
\registers|register1|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector5~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register1|bit2|int_q~q\);

-- Location: FF_X83_Y9_N25
\registers|register0|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector5~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register0|bit2|int_q~q\);

-- Location: LCCOMB_X82_Y9_N18
\registers|readData1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux5~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|register1|bit2|int_q~q\) # ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & \registers|register0|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|register1|bit2|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \registers|register0|bit2|int_q~q\,
	combout => \registers|readData1|Mux5~2_combout\);

-- Location: LCCOMB_X83_Y9_N6
\registers|readData1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux5~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|readData1|Mux5~2_combout\ & ((\registers|register3|bit2|int_q~q\))) # (!\registers|readData1|Mux5~2_combout\ & 
-- (\registers|register2|bit2|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (((\registers|readData1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register2|bit2|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datac => \registers|register3|bit2|int_q~q\,
	datad => \registers|readData1|Mux5~2_combout\,
	combout => \registers|readData1|Mux5~3_combout\);

-- Location: LCCOMB_X83_Y9_N0
\registers|readData1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux5~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & (\registers|readData1|Mux5~1_combout\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & 
-- ((\registers|readData1|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datac => \registers|readData1|Mux5~1_combout\,
	datad => \registers|readData1|Mux5~3_combout\,
	combout => \registers|readData1|Mux5~4_combout\);

-- Location: LCCOMB_X80_Y10_N2
\alu|adder|adder2|o_cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|adder2|o_cout~1_combout\ = (\registers|readData1|Mux5~4_combout\ & ((\readData2MUX|Selector5~2_combout\) # (\alu|adder|adder1|o_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registers|readData1|Mux5~4_combout\,
	datac => \readData2MUX|Selector5~2_combout\,
	datad => \alu|adder|adder1|o_cout~0_combout\,
	combout => \alu|adder|adder2|o_cout~1_combout\);

-- Location: LCCOMB_X80_Y10_N20
\alu|adder|adder3|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|adder3|o_cout~0_combout\ = (\readData2MUX|Selector4~2_combout\ & ((\alu|adder|adder2|o_cout~0_combout\) # ((\registers|readData1|Mux4~4_combout\) # (\alu|adder|adder2|o_cout~1_combout\)))) # (!\readData2MUX|Selector4~2_combout\ & 
-- (\registers|readData1|Mux4~4_combout\ & ((\alu|adder|adder2|o_cout~0_combout\) # (\alu|adder|adder2|o_cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector4~2_combout\,
	datab => \alu|adder|adder2|o_cout~0_combout\,
	datac => \registers|readData1|Mux4~4_combout\,
	datad => \alu|adder|adder2|o_cout~1_combout\,
	combout => \alu|adder|adder3|o_cout~0_combout\);

-- Location: LCCOMB_X80_Y10_N12
\alu|adder|adder4|o_cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|adder4|o_cout~1_combout\ = (\registers|readData1|Mux3~4_combout\ & ((\readData2MUX|Selector3~2_combout\) # (\alu|adder|adder3|o_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registers|readData1|Mux3~4_combout\,
	datac => \readData2MUX|Selector3~2_combout\,
	datad => \alu|adder|adder3|o_cout~0_combout\,
	combout => \alu|adder|adder4|o_cout~1_combout\);

-- Location: LCCOMB_X80_Y10_N22
\alu|adder|adder4|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|adder4|o_cout~0_combout\ = (\readData2MUX|Selector3~2_combout\ & \alu|adder|adder3|o_cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \readData2MUX|Selector3~2_combout\,
	datad => \alu|adder|adder3|o_cout~0_combout\,
	combout => \alu|adder|adder4|o_cout~0_combout\);

-- Location: LCCOMB_X79_Y10_N6
\alu|adder|adder5|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|adder5|o_cout~0_combout\ = (\readData2MUX|Selector2~2_combout\ & ((\registers|readData1|Mux2~4_combout\) # ((\alu|adder|adder4|o_cout~1_combout\) # (\alu|adder|adder4|o_cout~0_combout\)))) # (!\readData2MUX|Selector2~2_combout\ & 
-- (\registers|readData1|Mux2~4_combout\ & ((\alu|adder|adder4|o_cout~1_combout\) # (\alu|adder|adder4|o_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector2~2_combout\,
	datab => \registers|readData1|Mux2~4_combout\,
	datac => \alu|adder|adder4|o_cout~1_combout\,
	datad => \alu|adder|adder4|o_cout~0_combout\,
	combout => \alu|adder|adder5|o_cout~0_combout\);

-- Location: LCCOMB_X79_Y10_N24
\alu|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux1~0_combout\ = (!\controlUnitALUunit|o_control[0]~0_combout\ & (\alu|subtractor|adder6|o_s~0_combout\ $ (\alu|adder|adder5|o_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlUnitALUunit|o_control[0]~0_combout\,
	datac => \alu|subtractor|adder6|o_s~0_combout\,
	datad => \alu|adder|adder5|o_cout~0_combout\,
	combout => \alu|mux|Mux1~0_combout\);

-- Location: LCCOMB_X79_Y10_N18
\alu|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux1~1_combout\ = (\alu|mux|Mux3~2_combout\ & (\alu|mux|Mux3~1_combout\ & (!\alu|subtractor|adder6|o_s~combout\))) # (!\alu|mux|Mux3~2_combout\ & (((\alu|mux|Mux1~0_combout\)) # (!\alu|mux|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux3~2_combout\,
	datab => \alu|mux|Mux3~1_combout\,
	datac => \alu|subtractor|adder6|o_s~combout\,
	datad => \alu|mux|Mux1~0_combout\,
	combout => \alu|mux|Mux1~1_combout\);

-- Location: LCCOMB_X79_Y10_N0
\alu|mux|Mux1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux1~combout\ = (\alu|mux|Mux7~0_combout\ & ((\readData2MUX|Selector1~2_combout\ & ((\registers|readData1|Mux1~4_combout\) # (!\alu|mux|Mux1~1_combout\))) # (!\readData2MUX|Selector1~2_combout\ & (\registers|readData1|Mux1~4_combout\ & 
-- !\alu|mux|Mux1~1_combout\)))) # (!\alu|mux|Mux7~0_combout\ & (((\alu|mux|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector1~2_combout\,
	datab => \alu|mux|Mux7~0_combout\,
	datac => \registers|readData1|Mux1~4_combout\,
	datad => \alu|mux|Mux1~1_combout\,
	combout => \alu|mux|Mux1~combout\);

-- Location: FF_X81_Y10_N15
\registers|register3|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector2~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register3|bit5|int_q~q\);

-- Location: LCCOMB_X81_Y10_N14
\registers|readData2|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux2~3_combout\ = (\registers|readData2|Mux2~2_combout\ & (((\registers|register3|bit5|int_q~q\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)))) # (!\registers|readData2|Mux2~2_combout\ & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|register2|bit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData2|Mux2~2_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datac => \registers|register3|bit5|int_q~q\,
	datad => \registers|register2|bit5|int_q~q\,
	combout => \registers|readData2|Mux2~3_combout\);

-- Location: FF_X79_Y9_N9
\registers|register5|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector2~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register5|bit5|int_q~q\);

-- Location: FF_X79_Y9_N7
\registers|register6|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector2~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register6|bit5|int_q~q\);

-- Location: LCCOMB_X79_Y9_N6
\registers|readData2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux2~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|register6|bit5|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (\registers|register4|bit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register4|bit5|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register6|bit5|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	combout => \registers|readData2|Mux2~0_combout\);

-- Location: LCCOMB_X79_Y9_N8
\registers|readData2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux2~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|readData2|Mux2~0_combout\ & (\registers|register7|bit5|int_q~q\)) # (!\registers|readData2|Mux2~0_combout\ & 
-- ((\registers|register5|bit5|int_q~q\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\registers|readData2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register7|bit5|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register5|bit5|int_q~q\,
	datad => \registers|readData2|Mux2~0_combout\,
	combout => \registers|readData2|Mux2~1_combout\);

-- Location: LCCOMB_X81_Y10_N20
\registers|readData2|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux2~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & ((\registers|readData2|Mux2~1_combout\))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & 
-- (\registers|readData2|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datab => \registers|readData2|Mux2~3_combout\,
	datad => \registers|readData2|Mux2~1_combout\,
	combout => \registers|readData2|Mux2~4_combout\);

-- Location: LCCOMB_X80_Y8_N28
\dataMUX|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMUX|Selector2~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & (((\alu|mux|Mux2~combout\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & ((\control|o_MemWrite~1_combout\ & 
-- (\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(5))) # (!\control|o_MemWrite~1_combout\ & ((\alu|mux|Mux2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datab => \control|o_MemWrite~1_combout\,
	datac => \dataMem|dataMem|sram|ram_block|auto_generated|q_a\(5),
	datad => \alu|mux|Mux2~combout\,
	combout => \dataMUX|Selector2~0_combout\);

-- Location: FF_X82_Y9_N5
\registers|register2|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector2~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register2|bit5|int_q~q\);

-- Location: LCCOMB_X82_Y9_N4
\registers|readData1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux2~3_combout\ = (\registers|readData1|Mux2~2_combout\ & (((\registers|register3|bit5|int_q~q\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22)))) # (!\registers|readData1|Mux2~2_combout\ & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (\registers|register2|bit5|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux2~2_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datac => \registers|register2|bit5|int_q~q\,
	datad => \registers|register3|bit5|int_q~q\,
	combout => \registers|readData1|Mux2~3_combout\);

-- Location: LCCOMB_X81_Y10_N2
\registers|readData1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux2~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & (\registers|readData1|Mux2~1_combout\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & 
-- ((\registers|readData1|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux2~1_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datad => \registers|readData1|Mux2~3_combout\,
	combout => \registers|readData1|Mux2~4_combout\);

-- Location: LCCOMB_X79_Y10_N4
\alu|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux2~0_combout\ = (!\controlUnitALUunit|o_control[0]~0_combout\ & (\alu|subtractor|adder5|o_s~0_combout\ $ (((\alu|adder|adder4|o_cout~1_combout\) # (\alu|adder|adder4|o_cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtractor|adder5|o_s~0_combout\,
	datab => \controlUnitALUunit|o_control[0]~0_combout\,
	datac => \alu|adder|adder4|o_cout~1_combout\,
	datad => \alu|adder|adder4|o_cout~0_combout\,
	combout => \alu|mux|Mux2~0_combout\);

-- Location: LCCOMB_X81_Y10_N26
\alu|subtractor|adder5|o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder5|o_s~0_combout\ = \registers|readData1|Mux2~4_combout\ $ (((\control|o_MemWrite~1_combout\ & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5))) # (!\control|o_MemWrite~1_combout\ & 
-- ((\registers|readData2|Mux2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5),
	datab => \registers|readData2|Mux2~4_combout\,
	datac => \registers|readData1|Mux2~4_combout\,
	datad => \control|o_MemWrite~1_combout\,
	combout => \alu|subtractor|adder5|o_s~0_combout\);

-- Location: LCCOMB_X79_Y10_N10
\alu|subtractor|adder5|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder5|o_s~combout\ = \alu|subtractor|adder5|o_s~0_combout\ $ (\alu|subtractor|adder4|o_cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|subtractor|adder5|o_s~0_combout\,
	datad => \alu|subtractor|adder4|o_cout~0_combout\,
	combout => \alu|subtractor|adder5|o_s~combout\);

-- Location: LCCOMB_X79_Y10_N2
\alu|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux2~1_combout\ = (\alu|mux|Mux3~2_combout\ & (\alu|mux|Mux3~1_combout\ & ((!\alu|subtractor|adder5|o_s~combout\)))) # (!\alu|mux|Mux3~2_combout\ & (((\alu|mux|Mux2~0_combout\)) # (!\alu|mux|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux3~2_combout\,
	datab => \alu|mux|Mux3~1_combout\,
	datac => \alu|mux|Mux2~0_combout\,
	datad => \alu|subtractor|adder5|o_s~combout\,
	combout => \alu|mux|Mux2~1_combout\);

-- Location: LCCOMB_X79_Y10_N28
\alu|mux|Mux2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux2~combout\ = (\alu|mux|Mux7~0_combout\ & ((\readData2MUX|Selector2~2_combout\ & ((\registers|readData1|Mux2~4_combout\) # (!\alu|mux|Mux2~1_combout\))) # (!\readData2MUX|Selector2~2_combout\ & (\registers|readData1|Mux2~4_combout\ & 
-- !\alu|mux|Mux2~1_combout\)))) # (!\alu|mux|Mux7~0_combout\ & (((\alu|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector2~2_combout\,
	datab => \alu|mux|Mux7~0_combout\,
	datac => \registers|readData1|Mux2~4_combout\,
	datad => \alu|mux|Mux2~1_combout\,
	combout => \alu|mux|Mux2~combout\);

-- Location: LCCOMB_X80_Y8_N2
\dataMUX|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMUX|Selector3~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & (((\alu|mux|Mux3~combout\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & ((\control|o_MemWrite~1_combout\ & 
-- ((\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(4)))) # (!\control|o_MemWrite~1_combout\ & (\alu|mux|Mux3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datab => \control|o_MemWrite~1_combout\,
	datac => \alu|mux|Mux3~combout\,
	datad => \dataMem|dataMem|sram|ram_block|auto_generated|q_a\(4),
	combout => \dataMUX|Selector3~0_combout\);

-- Location: FF_X81_Y9_N31
\registers|register3|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector3~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register3|bit4|int_q~q\);

-- Location: FF_X82_Y9_N11
\registers|register1|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector3~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register1|bit4|int_q~q\);

-- Location: FF_X81_Y9_N25
\registers|register0|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector3~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register0|bit4|int_q~q\);

-- Location: LCCOMB_X81_Y9_N24
\registers|readData2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux3~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|register1|bit4|int_q~q\) # ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\registers|register0|bit4|int_q~q\ & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datab => \registers|register1|bit4|int_q~q\,
	datac => \registers|register0|bit4|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	combout => \registers|readData2|Mux3~2_combout\);

-- Location: LCCOMB_X81_Y9_N30
\registers|readData2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux3~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|readData2|Mux3~2_combout\ & ((\registers|register3|bit4|int_q~q\))) # (!\registers|readData2|Mux3~2_combout\ & 
-- (\registers|register2|bit4|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (((\registers|readData2|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register2|bit4|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datac => \registers|register3|bit4|int_q~q\,
	datad => \registers|readData2|Mux3~2_combout\,
	combout => \registers|readData2|Mux3~3_combout\);

-- Location: LCCOMB_X80_Y9_N2
\registers|readData2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux3~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|register6|bit4|int_q~q\) # ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (((\registers|register4|bit4|int_q~q\ & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datab => \registers|register6|bit4|int_q~q\,
	datac => \registers|register4|bit4|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	combout => \registers|readData2|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y9_N24
\registers|readData2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux3~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|readData2|Mux3~0_combout\ & ((\registers|register7|bit4|int_q~q\))) # (!\registers|readData2|Mux3~0_combout\ & 
-- (\registers|register5|bit4|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\registers|readData2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register5|bit4|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register7|bit4|int_q~q\,
	datad => \registers|readData2|Mux3~0_combout\,
	combout => \registers|readData2|Mux3~1_combout\);

-- Location: LCCOMB_X81_Y9_N28
\registers|readData2|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux3~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & ((\registers|readData2|Mux3~1_combout\))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & 
-- (\registers|readData2|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \registers|readData2|Mux3~3_combout\,
	datad => \registers|readData2|Mux3~1_combout\,
	combout => \registers|readData2|Mux3~4_combout\);

-- Location: LCCOMB_X81_Y9_N10
\readData2MUX|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \readData2MUX|Selector3~2_combout\ = (\control|o_MemWrite~0_combout\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & ((\registers|readData2|Mux3~4_combout\))))) # (!\control|o_MemWrite~0_combout\ & (((\registers|readData2|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	datab => \registers|readData2|Mux3~4_combout\,
	datac => \control|o_MemWrite~0_combout\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	combout => \readData2MUX|Selector3~2_combout\);

-- Location: LCCOMB_X82_Y10_N14
\alu|subtractor|adder4|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder4|o_s~combout\ = \registers|readData1|Mux3~4_combout\ $ (\readData2MUX|Selector3~2_combout\ $ (((\alu|comparator|comp3|int_GT~0_combout\) # (\alu|subtractor|adder3|o_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux3~4_combout\,
	datab => \readData2MUX|Selector3~2_combout\,
	datac => \alu|comparator|comp3|int_GT~0_combout\,
	datad => \alu|subtractor|adder3|o_cout~0_combout\,
	combout => \alu|subtractor|adder4|o_s~combout\);

-- Location: LCCOMB_X79_Y10_N20
\alu|mux|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux3~3_combout\ = (!\controlUnitALUunit|o_control[0]~0_combout\ & (\registers|readData1|Mux3~4_combout\ $ (\alu|adder|adder3|o_cout~0_combout\ $ (\readData2MUX|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux3~4_combout\,
	datab => \controlUnitALUunit|o_control[0]~0_combout\,
	datac => \alu|adder|adder3|o_cout~0_combout\,
	datad => \readData2MUX|Selector3~2_combout\,
	combout => \alu|mux|Mux3~3_combout\);

-- Location: LCCOMB_X79_Y10_N14
\alu|mux|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux3~4_combout\ = (\alu|mux|Mux3~2_combout\ & (\alu|mux|Mux3~1_combout\ & (!\alu|subtractor|adder4|o_s~combout\))) # (!\alu|mux|Mux3~2_combout\ & (((\alu|mux|Mux3~3_combout\)) # (!\alu|mux|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux3~2_combout\,
	datab => \alu|mux|Mux3~1_combout\,
	datac => \alu|subtractor|adder4|o_s~combout\,
	datad => \alu|mux|Mux3~3_combout\,
	combout => \alu|mux|Mux3~4_combout\);

-- Location: LCCOMB_X79_Y10_N16
\alu|mux|Mux3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux3~combout\ = (\alu|mux|Mux3~4_combout\ & (((\registers|readData1|Mux3~4_combout\ & \readData2MUX|Selector3~2_combout\)) # (!\alu|mux|Mux7~0_combout\))) # (!\alu|mux|Mux3~4_combout\ & (\alu|mux|Mux7~0_combout\ & 
-- ((\registers|readData1|Mux3~4_combout\) # (\readData2MUX|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux3~4_combout\,
	datab => \readData2MUX|Selector3~2_combout\,
	datac => \alu|mux|Mux3~4_combout\,
	datad => \alu|mux|Mux7~0_combout\,
	combout => \alu|mux|Mux3~combout\);

-- Location: LCCOMB_X84_Y10_N8
\dataMUX|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMUX|Selector5~0_combout\ = (\control|o_MemWrite~1_combout\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & ((\alu|mux|Mux5~combout\))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & 
-- (\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(2))))) # (!\control|o_MemWrite~1_combout\ & (((\alu|mux|Mux5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|o_MemWrite~1_combout\,
	datab => \dataMem|dataMem|sram|ram_block|auto_generated|q_a\(2),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datad => \alu|mux|Mux5~combout\,
	combout => \dataMUX|Selector5~0_combout\);

-- Location: FF_X80_Y9_N11
\registers|register7|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector5~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register7|bit2|int_q~q\);

-- Location: LCCOMB_X80_Y9_N12
\registers|readData2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux5~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (\registers|register6|bit2|int_q~q\)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|register4|bit2|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register6|bit2|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register4|bit2|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	combout => \registers|readData2|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y9_N10
\registers|readData2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux5~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|readData2|Mux5~0_combout\ & ((\registers|register7|bit2|int_q~q\))) # (!\registers|readData2|Mux5~0_combout\ & 
-- (\registers|register5|bit2|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\registers|readData2|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register5|bit2|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register7|bit2|int_q~q\,
	datad => \registers|readData2|Mux5~0_combout\,
	combout => \registers|readData2|Mux5~1_combout\);

-- Location: LCCOMB_X83_Y9_N12
\registers|readData2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux5~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|register1|bit2|int_q~q\) # ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\registers|register0|bit2|int_q~q\ & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register1|bit2|int_q~q\,
	datab => \registers|register0|bit2|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	combout => \registers|readData2|Mux5~2_combout\);

-- Location: LCCOMB_X83_Y9_N20
\registers|readData2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux5~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|readData2|Mux5~2_combout\ & ((\registers|register3|bit2|int_q~q\))) # (!\registers|readData2|Mux5~2_combout\ & 
-- (\registers|register2|bit2|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (((\registers|readData2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register2|bit2|int_q~q\,
	datab => \registers|register3|bit2|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datad => \registers|readData2|Mux5~2_combout\,
	combout => \registers|readData2|Mux5~3_combout\);

-- Location: LCCOMB_X82_Y10_N20
\registers|readData2|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux5~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & (\registers|readData2|Mux5~1_combout\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & 
-- ((\registers|readData2|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \registers|readData2|Mux5~1_combout\,
	datad => \registers|readData2|Mux5~3_combout\,
	combout => \registers|readData2|Mux5~4_combout\);

-- Location: LCCOMB_X82_Y10_N2
\readData2MUX|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \readData2MUX|Selector5~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & ((\control|o_MemWrite~0_combout\ & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2))) # (!\control|o_MemWrite~0_combout\ & 
-- ((\registers|readData2|Mux5~4_combout\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & (((\registers|readData2|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datab => \control|o_MemWrite~0_combout\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	datad => \registers|readData2|Mux5~4_combout\,
	combout => \readData2MUX|Selector5~2_combout\);

-- Location: LCCOMB_X84_Y10_N30
\alu|mux|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux5~0_combout\ = (!\controlUnitALUunit|o_control[0]~0_combout\ & (\readData2MUX|Selector5~2_combout\ $ (\registers|readData1|Mux5~4_combout\ $ (\alu|adder|adder1|o_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlUnitALUunit|o_control[0]~0_combout\,
	datab => \readData2MUX|Selector5~2_combout\,
	datac => \registers|readData1|Mux5~4_combout\,
	datad => \alu|adder|adder1|o_cout~0_combout\,
	combout => \alu|mux|Mux5~0_combout\);

-- Location: LCCOMB_X84_Y10_N24
\alu|subtractor|adder2|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder2|o_s~combout\ = \readData2MUX|Selector5~2_combout\ $ (\registers|readData1|Mux5~4_combout\ $ (\alu|subtractor|adder1|o_cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readData2MUX|Selector5~2_combout\,
	datac => \registers|readData1|Mux5~4_combout\,
	datad => \alu|subtractor|adder1|o_cout~0_combout\,
	combout => \alu|subtractor|adder2|o_s~combout\);

-- Location: LCCOMB_X84_Y10_N20
\alu|mux|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux5~1_combout\ = (\alu|mux|Mux3~1_combout\ & ((\alu|mux|Mux3~2_combout\ & ((!\alu|subtractor|adder2|o_s~combout\))) # (!\alu|mux|Mux3~2_combout\ & (\alu|mux|Mux5~0_combout\)))) # (!\alu|mux|Mux3~1_combout\ & (!\alu|mux|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux3~1_combout\,
	datab => \alu|mux|Mux3~2_combout\,
	datac => \alu|mux|Mux5~0_combout\,
	datad => \alu|subtractor|adder2|o_s~combout\,
	combout => \alu|mux|Mux5~1_combout\);

-- Location: LCCOMB_X84_Y10_N18
\alu|mux|Mux5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux5~combout\ = (\alu|mux|Mux7~0_combout\ & ((\registers|readData1|Mux5~4_combout\ & ((\readData2MUX|Selector5~2_combout\) # (!\alu|mux|Mux5~1_combout\))) # (!\registers|readData1|Mux5~4_combout\ & (\readData2MUX|Selector5~2_combout\ & 
-- !\alu|mux|Mux5~1_combout\)))) # (!\alu|mux|Mux7~0_combout\ & (((\alu|mux|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux5~4_combout\,
	datab => \readData2MUX|Selector5~2_combout\,
	datac => \alu|mux|Mux7~0_combout\,
	datad => \alu|mux|Mux5~1_combout\,
	combout => \alu|mux|Mux5~combout\);

-- Location: LCCOMB_X85_Y10_N30
\dataMUX|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMUX|Selector6~0_combout\ = (\control|o_MemWrite~1_combout\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & ((\alu|mux|Mux6~combout\))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & 
-- (\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(1))))) # (!\control|o_MemWrite~1_combout\ & (((\alu|mux|Mux6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|o_MemWrite~1_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datac => \dataMem|dataMem|sram|ram_block|auto_generated|q_a\(1),
	datad => \alu|mux|Mux6~combout\,
	combout => \dataMUX|Selector6~0_combout\);

-- Location: FF_X81_Y10_N23
\registers|register3|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector6~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register3|bit1|int_q~q\);

-- Location: LCCOMB_X81_Y10_N24
\registers|readData1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux6~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|register1|bit1|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (\registers|register0|bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register0|bit1|int_q~q\,
	datab => \registers|register1|bit1|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	combout => \registers|readData1|Mux6~2_combout\);

-- Location: LCCOMB_X82_Y10_N8
\registers|readData1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux6~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|readData1|Mux6~2_combout\ & (\registers|register3|bit1|int_q~q\)) # (!\registers|readData1|Mux6~2_combout\ & 
-- ((\registers|register2|bit1|int_q~q\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (((\registers|readData1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datab => \registers|register3|bit1|int_q~q\,
	datac => \registers|register2|bit1|int_q~q\,
	datad => \registers|readData1|Mux6~2_combout\,
	combout => \registers|readData1|Mux6~3_combout\);

-- Location: FF_X82_Y10_N19
\registers|register5|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector6~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register5|bit1|int_q~q\);

-- Location: FF_X79_Y9_N15
\registers|register6|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector6~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register6|bit1|int_q~q\);

-- Location: LCCOMB_X79_Y9_N14
\registers|readData1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux6~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|register6|bit1|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (\registers|register4|bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|register4|bit1|int_q~q\,
	datac => \registers|register6|bit1|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	combout => \registers|readData1|Mux6~0_combout\);

-- Location: LCCOMB_X82_Y10_N18
\registers|readData1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux6~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|readData1|Mux6~0_combout\ & (\registers|register7|bit1|int_q~q\)) # (!\registers|readData1|Mux6~0_combout\ & 
-- ((\registers|register5|bit1|int_q~q\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\registers|readData1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|register7|bit1|int_q~q\,
	datac => \registers|register5|bit1|int_q~q\,
	datad => \registers|readData1|Mux6~0_combout\,
	combout => \registers|readData1|Mux6~1_combout\);

-- Location: LCCOMB_X82_Y10_N26
\registers|readData1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux6~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & ((\registers|readData1|Mux6~1_combout\))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & 
-- (\registers|readData1|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datac => \registers|readData1|Mux6~3_combout\,
	datad => \registers|readData1|Mux6~1_combout\,
	combout => \registers|readData1|Mux6~4_combout\);

-- Location: LCCOMB_X85_Y10_N18
\alu|adder|adder1|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|adder1|o_s~combout\ = \registers|readData1|Mux6~4_combout\ $ (\readData2MUX|Selector6~2_combout\ $ (((\registers|readData1|Mux7~4_combout\ & \readData2MUX|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux6~4_combout\,
	datab => \registers|readData1|Mux7~4_combout\,
	datac => \readData2MUX|Selector6~2_combout\,
	datad => \readData2MUX|Selector7~2_combout\,
	combout => \alu|adder|adder1|o_s~combout\);

-- Location: LCCOMB_X85_Y10_N8
\alu|mux|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux6~0_combout\ = (!\controlUnitALUunit|o_control[0]~0_combout\ & \alu|adder|adder1|o_s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlUnitALUunit|o_control[0]~0_combout\,
	datad => \alu|adder|adder1|o_s~combout\,
	combout => \alu|mux|Mux6~0_combout\);

-- Location: LCCOMB_X85_Y10_N12
\alu|subtractor|adder1|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder1|o_s~combout\ = \readData2MUX|Selector6~2_combout\ $ (\registers|readData1|Mux6~4_combout\ $ (((\registers|readData1|Mux7~4_combout\) # (!\readData2MUX|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector6~2_combout\,
	datab => \registers|readData1|Mux7~4_combout\,
	datac => \registers|readData1|Mux6~4_combout\,
	datad => \readData2MUX|Selector7~2_combout\,
	combout => \alu|subtractor|adder1|o_s~combout\);

-- Location: LCCOMB_X85_Y10_N6
\alu|mux|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux6~1_combout\ = (\alu|mux|Mux3~1_combout\ & ((\alu|mux|Mux3~2_combout\ & ((!\alu|subtractor|adder1|o_s~combout\))) # (!\alu|mux|Mux3~2_combout\ & (\alu|mux|Mux6~0_combout\)))) # (!\alu|mux|Mux3~1_combout\ & (!\alu|mux|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux3~1_combout\,
	datab => \alu|mux|Mux3~2_combout\,
	datac => \alu|mux|Mux6~0_combout\,
	datad => \alu|subtractor|adder1|o_s~combout\,
	combout => \alu|mux|Mux6~1_combout\);

-- Location: LCCOMB_X85_Y10_N28
\alu|mux|Mux6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux6~combout\ = (\alu|mux|Mux7~0_combout\ & ((\readData2MUX|Selector6~2_combout\ & ((\registers|readData1|Mux6~4_combout\) # (!\alu|mux|Mux6~1_combout\))) # (!\readData2MUX|Selector6~2_combout\ & (\registers|readData1|Mux6~4_combout\ & 
-- !\alu|mux|Mux6~1_combout\)))) # (!\alu|mux|Mux7~0_combout\ & (((\alu|mux|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector6~2_combout\,
	datab => \alu|mux|Mux7~0_combout\,
	datac => \registers|readData1|Mux6~4_combout\,
	datad => \alu|mux|Mux6~1_combout\,
	combout => \alu|mux|Mux6~combout\);

-- Location: LCCOMB_X79_Y10_N12
\dataMUX|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMUX|Selector1~0_combout\ = (\control|o_MemWrite~1_combout\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & ((\alu|mux|Mux1~combout\))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & 
-- (\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(6))))) # (!\control|o_MemWrite~1_combout\ & (((\alu|mux|Mux1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|o_MemWrite~1_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datac => \dataMem|dataMem|sram|ram_block|auto_generated|q_a\(6),
	datad => \alu|mux|Mux1~combout\,
	combout => \dataMUX|Selector1~0_combout\);

-- Location: FF_X79_Y10_N13
\registers|register6|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dataMUX|Selector1~0_combout\,
	clrn => \GReset~input_o\,
	ena => \registers|decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register6|bit6|int_q~q\);

-- Location: LCCOMB_X80_Y9_N8
\registers|readData2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux1~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|register6|bit6|int_q~q\) # ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (((\registers|register4|bit6|int_q~q\ & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datab => \registers|register6|bit6|int_q~q\,
	datac => \registers|register4|bit6|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	combout => \registers|readData2|Mux1~0_combout\);

-- Location: FF_X80_Y9_N31
\registers|register7|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector1~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register7|bit6|int_q~q\);

-- Location: LCCOMB_X80_Y9_N30
\registers|readData2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux1~1_combout\ = (\registers|readData2|Mux1~0_combout\ & (((\registers|register7|bit6|int_q~q\) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16))))) # (!\registers|readData2|Mux1~0_combout\ & 
-- (\registers|register5|bit6|int_q~q\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register5|bit6|int_q~q\,
	datab => \registers|readData2|Mux1~0_combout\,
	datac => \registers|register7|bit6|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	combout => \registers|readData2|Mux1~1_combout\);

-- Location: LCCOMB_X77_Y10_N20
\registers|readData2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux1~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|register1|bit6|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (\registers|register0|bit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register0|bit6|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datac => \registers|register1|bit6|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	combout => \registers|readData2|Mux1~2_combout\);

-- Location: LCCOMB_X81_Y10_N8
\registers|readData2|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux1~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|readData2|Mux1~2_combout\ & ((\registers|register3|bit6|int_q~q\))) # (!\registers|readData2|Mux1~2_combout\ & 
-- (\registers|register2|bit6|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (((\registers|readData2|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register2|bit6|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datac => \registers|register3|bit6|int_q~q\,
	datad => \registers|readData2|Mux1~2_combout\,
	combout => \registers|readData2|Mux1~3_combout\);

-- Location: LCCOMB_X81_Y10_N6
\registers|readData2|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux1~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & (\registers|readData2|Mux1~1_combout\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & 
-- ((\registers|readData2|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datab => \registers|readData2|Mux1~1_combout\,
	datac => \registers|readData2|Mux1~3_combout\,
	combout => \registers|readData2|Mux1~4_combout\);

-- Location: LCCOMB_X81_Y10_N0
\readData2MUX|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \readData2MUX|Selector1~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & ((\control|o_MemWrite~0_combout\ & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6))) # (!\control|o_MemWrite~0_combout\ & 
-- ((\registers|readData2|Mux1~4_combout\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & (((\registers|readData2|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datab => \control|o_MemWrite~0_combout\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	datad => \registers|readData2|Mux1~4_combout\,
	combout => \readData2MUX|Selector1~2_combout\);

-- Location: LCCOMB_X81_Y10_N10
\readData2MUX|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \readData2MUX|Selector2~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & ((\control|o_MemWrite~0_combout\ & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5))) # (!\control|o_MemWrite~0_combout\ & 
-- ((\registers|readData2|Mux2~4_combout\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & (((\registers|readData2|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datab => \control|o_MemWrite~0_combout\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5),
	datad => \registers|readData2|Mux2~4_combout\,
	combout => \readData2MUX|Selector2~2_combout\);

-- Location: LCCOMB_X80_Y10_N10
\alu|adder|adder6|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|adder6|o_cout~0_combout\ = (\registers|readData1|Mux2~4_combout\ & (!\readData2MUX|Selector2~2_combout\ & (!\alu|adder|adder4|o_cout~0_combout\ & !\alu|adder|adder4|o_cout~1_combout\))) # (!\registers|readData1|Mux2~4_combout\ & 
-- (((!\alu|adder|adder4|o_cout~0_combout\ & !\alu|adder|adder4|o_cout~1_combout\)) # (!\readData2MUX|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux2~4_combout\,
	datab => \readData2MUX|Selector2~2_combout\,
	datac => \alu|adder|adder4|o_cout~0_combout\,
	datad => \alu|adder|adder4|o_cout~1_combout\,
	combout => \alu|adder|adder6|o_cout~0_combout\);

-- Location: LCCOMB_X80_Y10_N28
\alu|adder|adder6|o_cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|adder6|o_cout~1_combout\ = (\registers|readData1|Mux1~4_combout\ & ((\readData2MUX|Selector1~2_combout\) # (!\alu|adder|adder6|o_cout~0_combout\))) # (!\registers|readData1|Mux1~4_combout\ & (\readData2MUX|Selector1~2_combout\ & 
-- !\alu|adder|adder6|o_cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux1~4_combout\,
	datac => \readData2MUX|Selector1~2_combout\,
	datad => \alu|adder|adder6|o_cout~0_combout\,
	combout => \alu|adder|adder6|o_cout~1_combout\);

-- Location: LCCOMB_X80_Y10_N30
\alu|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux0~0_combout\ = (!\controlUnitALUunit|o_control[0]~0_combout\ & (\alu|subtractor|adder7|o_s~0_combout\ $ (\alu|adder|adder6|o_cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|subtractor|adder7|o_s~0_combout\,
	datac => \controlUnitALUunit|o_control[0]~0_combout\,
	datad => \alu|adder|adder6|o_cout~1_combout\,
	combout => \alu|mux|Mux0~0_combout\);

-- Location: LCCOMB_X81_Y10_N28
\alu|subtractor|adder5|o_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder5|o_cout~0_combout\ = (\readData2MUX|Selector2~2_combout\ & (\registers|readData1|Mux2~4_combout\ & \alu|subtractor|adder4|o_cout~0_combout\)) # (!\readData2MUX|Selector2~2_combout\ & ((\registers|readData1|Mux2~4_combout\) # 
-- (\alu|subtractor|adder4|o_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector2~2_combout\,
	datac => \registers|readData1|Mux2~4_combout\,
	datad => \alu|subtractor|adder4|o_cout~0_combout\,
	combout => \alu|subtractor|adder5|o_cout~0_combout\);

-- Location: LCCOMB_X81_Y10_N18
\alu|subtractor|adder7|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder7|o_s~combout\ = \alu|subtractor|adder7|o_s~0_combout\ $ (((\readData2MUX|Selector1~2_combout\ & (\registers|readData1|Mux1~4_combout\ & \alu|subtractor|adder5|o_cout~0_combout\)) # (!\readData2MUX|Selector1~2_combout\ & 
-- ((\registers|readData1|Mux1~4_combout\) # (\alu|subtractor|adder5|o_cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtractor|adder7|o_s~0_combout\,
	datab => \readData2MUX|Selector1~2_combout\,
	datac => \registers|readData1|Mux1~4_combout\,
	datad => \alu|subtractor|adder5|o_cout~0_combout\,
	combout => \alu|subtractor|adder7|o_s~combout\);

-- Location: LCCOMB_X80_Y10_N0
\alu|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux0~1_combout\ = (\alu|mux|Mux3~1_combout\ & ((\alu|mux|Mux3~2_combout\ & ((!\alu|subtractor|adder7|o_s~combout\))) # (!\alu|mux|Mux3~2_combout\ & (\alu|mux|Mux0~0_combout\)))) # (!\alu|mux|Mux3~1_combout\ & (!\alu|mux|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux3~1_combout\,
	datab => \alu|mux|Mux3~2_combout\,
	datac => \alu|mux|Mux0~0_combout\,
	datad => \alu|subtractor|adder7|o_s~combout\,
	combout => \alu|mux|Mux0~1_combout\);

-- Location: LCCOMB_X80_Y10_N18
\alu|mux|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux0~combout\ = (\alu|mux|Mux7~0_combout\ & ((\registers|readData1|Mux0~4_combout\ & ((\readData2MUX|Selector0~2_combout\) # (!\alu|mux|Mux0~1_combout\))) # (!\registers|readData1|Mux0~4_combout\ & (\readData2MUX|Selector0~2_combout\ & 
-- !\alu|mux|Mux0~1_combout\)))) # (!\alu|mux|Mux7~0_combout\ & (((\alu|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux0~4_combout\,
	datab => \readData2MUX|Selector0~2_combout\,
	datac => \alu|mux|Mux7~0_combout\,
	datad => \alu|mux|Mux0~1_combout\,
	combout => \alu|mux|Mux0~combout\);

-- Location: LCCOMB_X81_Y8_N0
\dataMUX|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMUX|Selector0~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & (((\alu|mux|Mux0~combout\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & ((\control|o_MemWrite~1_combout\ & 
-- (\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(7))) # (!\control|o_MemWrite~1_combout\ & ((\alu|mux|Mux0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataMem|dataMem|sram|ram_block|auto_generated|q_a\(7),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datac => \alu|mux|Mux0~combout\,
	datad => \control|o_MemWrite~1_combout\,
	combout => \dataMUX|Selector0~0_combout\);

-- Location: FF_X81_Y9_N17
\registers|register3|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector0~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register3|bit7|int_q~q\);

-- Location: LCCOMB_X81_Y9_N20
\registers|readData1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux0~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (\registers|register1|bit7|int_q~q\)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|register0|bit7|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datab => \registers|register1|bit7|int_q~q\,
	datac => \registers|register0|bit7|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	combout => \registers|readData1|Mux0~2_combout\);

-- Location: LCCOMB_X81_Y9_N18
\registers|readData1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux0~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|readData1|Mux0~2_combout\ & ((\registers|register3|bit7|int_q~q\))) # (!\registers|readData1|Mux0~2_combout\ & 
-- (\registers|register2|bit7|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (((\registers|readData1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register2|bit7|int_q~q\,
	datab => \registers|register3|bit7|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \registers|readData1|Mux0~2_combout\,
	combout => \registers|readData1|Mux0~3_combout\);

-- Location: FF_X80_Y9_N27
\registers|register7|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector0~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register7|bit7|int_q~q\);

-- Location: FF_X79_Y9_N11
\registers|register5|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector0~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register5|bit7|int_q~q\);

-- Location: FF_X80_Y9_N17
\registers|register4|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector0~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register4|bit7|int_q~q\);

-- Location: FF_X79_Y9_N25
\registers|register6|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector0~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register6|bit7|int_q~q\);

-- Location: LCCOMB_X79_Y9_N24
\registers|readData1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux0~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|register6|bit7|int_q~q\))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (\registers|register4|bit7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|register4|bit7|int_q~q\,
	datac => \registers|register6|bit7|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	combout => \registers|readData1|Mux0~0_combout\);

-- Location: LCCOMB_X79_Y9_N10
\registers|readData1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux0~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\registers|readData1|Mux0~0_combout\ & (\registers|register7|bit7|int_q~q\)) # (!\registers|readData1|Mux0~0_combout\ & 
-- ((\registers|register5|bit7|int_q~q\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (((\registers|readData1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \registers|register7|bit7|int_q~q\,
	datac => \registers|register5|bit7|int_q~q\,
	datad => \registers|readData1|Mux0~0_combout\,
	combout => \registers|readData1|Mux0~1_combout\);

-- Location: LCCOMB_X81_Y9_N4
\registers|readData1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux0~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & ((\registers|readData1|Mux0~1_combout\))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & 
-- (\registers|readData1|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datab => \registers|readData1|Mux0~3_combout\,
	datad => \registers|readData1|Mux0~1_combout\,
	combout => \registers|readData1|Mux0~4_combout\);

-- Location: LCCOMB_X81_Y10_N16
\alu|comparator|comp5|o_LT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|comparator|comp5|o_LT~0_combout\ = (\registers|readData1|Mux1~4_combout\ & (\readData2MUX|Selector2~2_combout\ & (!\registers|readData1|Mux2~4_combout\ & \readData2MUX|Selector1~2_combout\))) # (!\registers|readData1|Mux1~4_combout\ & 
-- ((\readData2MUX|Selector1~2_combout\) # ((\readData2MUX|Selector2~2_combout\ & !\registers|readData1|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector2~2_combout\,
	datab => \registers|readData1|Mux2~4_combout\,
	datac => \registers|readData1|Mux1~4_combout\,
	datad => \readData2MUX|Selector1~2_combout\,
	combout => \alu|comparator|comp5|o_LT~0_combout\);

-- Location: LCCOMB_X82_Y10_N16
\alu|comparator|comp0|o_LT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|comparator|comp0|o_LT~0_combout\ = (\readData2MUX|Selector6~2_combout\ & (((!\registers|readData1|Mux7~4_combout\ & \readData2MUX|Selector7~2_combout\)) # (!\registers|readData1|Mux6~4_combout\))) # (!\readData2MUX|Selector6~2_combout\ & 
-- (!\registers|readData1|Mux7~4_combout\ & (!\registers|readData1|Mux6~4_combout\ & \readData2MUX|Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux7~4_combout\,
	datab => \readData2MUX|Selector6~2_combout\,
	datac => \registers|readData1|Mux6~4_combout\,
	datad => \readData2MUX|Selector7~2_combout\,
	combout => \alu|comparator|comp0|o_LT~0_combout\);

-- Location: LCCOMB_X82_Y10_N24
\alu|comparator|comp0|o_LT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|comparator|comp0|o_LT~1_combout\ = (!\alu|comparator|comp3|int_GT~0_combout\ & ((\registers|readData1|Mux5~4_combout\ & (\readData2MUX|Selector5~2_combout\ & \alu|comparator|comp0|o_LT~0_combout\)) # (!\registers|readData1|Mux5~4_combout\ & 
-- ((\readData2MUX|Selector5~2_combout\) # (\alu|comparator|comp0|o_LT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux5~4_combout\,
	datab => \readData2MUX|Selector5~2_combout\,
	datac => \alu|comparator|comp3|int_GT~0_combout\,
	datad => \alu|comparator|comp0|o_LT~0_combout\,
	combout => \alu|comparator|comp0|o_LT~1_combout\);

-- Location: LCCOMB_X83_Y10_N2
\alu|comparator|comp0|o_LT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|comparator|comp0|o_LT~2_combout\ = (\readData2MUX|Selector3~2_combout\ & ((\alu|comparator|comp3|int_LT~0_combout\) # ((\alu|comparator|comp0|o_LT~1_combout\) # (!\registers|readData1|Mux3~4_combout\)))) # (!\readData2MUX|Selector3~2_combout\ & 
-- (!\registers|readData1|Mux3~4_combout\ & ((\alu|comparator|comp3|int_LT~0_combout\) # (\alu|comparator|comp0|o_LT~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector3~2_combout\,
	datab => \alu|comparator|comp3|int_LT~0_combout\,
	datac => \registers|readData1|Mux3~4_combout\,
	datad => \alu|comparator|comp0|o_LT~1_combout\,
	combout => \alu|comparator|comp0|o_LT~2_combout\);

-- Location: LCCOMB_X83_Y10_N18
\alu|comparator|comp0|o_LT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|comparator|comp0|o_LT~3_combout\ = (\alu|comparator|comp5|o_LT~0_combout\) # ((!\alu|comparator|comp5|o_GT~0_combout\ & \alu|comparator|comp0|o_LT~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|comparator|comp5|o_GT~0_combout\,
	datac => \alu|comparator|comp5|o_LT~0_combout\,
	datad => \alu|comparator|comp0|o_LT~2_combout\,
	combout => \alu|comparator|comp0|o_LT~3_combout\);

-- Location: LCCOMB_X83_Y10_N20
\alu|comparator|comp0|o_LT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|comparator|comp0|o_LT~4_combout\ = (\readData2MUX|Selector0~2_combout\ & ((\alu|comparator|comp0|o_LT~3_combout\) # (!\registers|readData1|Mux0~4_combout\))) # (!\readData2MUX|Selector0~2_combout\ & (!\registers|readData1|Mux0~4_combout\ & 
-- \alu|comparator|comp0|o_LT~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector0~2_combout\,
	datac => \registers|readData1|Mux0~4_combout\,
	datad => \alu|comparator|comp0|o_LT~3_combout\,
	combout => \alu|comparator|comp0|o_LT~4_combout\);

-- Location: LCCOMB_X83_Y10_N0
\alu|mux|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux7~3_combout\ = (\alu|mux|Mux7~2_combout\) # ((\controlUnitALUunit|o_control[0]~0_combout\ & (\controlUnitALUunit|o_control\(2) & \alu|comparator|comp0|o_LT~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlUnitALUunit|o_control[0]~0_combout\,
	datab => \controlUnitALUunit|o_control\(2),
	datac => \alu|mux|Mux7~2_combout\,
	datad => \alu|comparator|comp0|o_LT~4_combout\,
	combout => \alu|mux|Mux7~3_combout\);

-- Location: LCCOMB_X83_Y10_N10
\alu|mux|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux7~4_combout\ = (\alu|mux|Mux7~1_combout\) # ((\alu|mux|Mux7~3_combout\ & ((\control|o_ALUOp\(1)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	datab => \control|o_ALUOp\(1),
	datac => \alu|mux|Mux7~1_combout\,
	datad => \alu|mux|Mux7~3_combout\,
	combout => \alu|mux|Mux7~4_combout\);

-- Location: LCCOMB_X83_Y10_N12
\dataMUX|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMUX|Selector7~0_combout\ = (\control|o_MemWrite~1_combout\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & ((\alu|mux|Mux7~4_combout\))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & 
-- (\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(0))))) # (!\control|o_MemWrite~1_combout\ & (((\alu|mux|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataMem|dataMem|sram|ram_block|auto_generated|q_a\(0),
	datab => \control|o_MemWrite~1_combout\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datad => \alu|mux|Mux7~4_combout\,
	combout => \dataMUX|Selector7~0_combout\);

-- Location: FF_X81_Y9_N9
\registers|register3|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector7~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register3|bit0|int_q~q\);

-- Location: FF_X81_Y9_N5
\registers|register0|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector7~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register0|bit0|int_q~q\);

-- Location: LCCOMB_X81_Y9_N2
\registers|readData2|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux7~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)) # (\registers|register1|bit0|int_q~q\)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (\registers|register0|bit0|int_q~q\ & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datab => \registers|register0|bit0|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datad => \registers|register1|bit0|int_q~q\,
	combout => \registers|readData2|Mux7~2_combout\);

-- Location: LCCOMB_X81_Y9_N8
\registers|readData2|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux7~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|readData2|Mux7~2_combout\ & ((\registers|register3|bit0|int_q~q\))) # (!\registers|readData2|Mux7~2_combout\ & 
-- (\registers|register2|bit0|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (((\registers|readData2|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register2|bit0|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datac => \registers|register3|bit0|int_q~q\,
	datad => \registers|readData2|Mux7~2_combout\,
	combout => \registers|readData2|Mux7~3_combout\);

-- Location: FF_X80_Y9_N15
\registers|register7|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector7~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register7|bit0|int_q~q\);

-- Location: LCCOMB_X80_Y9_N28
\registers|readData2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux7~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (\registers|register6|bit0|int_q~q\)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\registers|register4|bit0|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register6|bit0|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register4|bit0|int_q~q\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	combout => \registers|readData2|Mux7~0_combout\);

-- Location: LCCOMB_X80_Y9_N14
\registers|readData2|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux7~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\registers|readData2|Mux7~0_combout\ & ((\registers|register7|bit0|int_q~q\))) # (!\registers|readData2|Mux7~0_combout\ & 
-- (\registers|register5|bit0|int_q~q\)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (((\registers|readData2|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register5|bit0|int_q~q\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datac => \registers|register7|bit0|int_q~q\,
	datad => \registers|readData2|Mux7~0_combout\,
	combout => \registers|readData2|Mux7~1_combout\);

-- Location: LCCOMB_X81_Y9_N0
\registers|readData2|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData2|Mux7~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & ((\registers|readData2|Mux7~1_combout\))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & 
-- (\registers|readData2|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \registers|readData2|Mux7~3_combout\,
	datad => \registers|readData2|Mux7~1_combout\,
	combout => \registers|readData2|Mux7~4_combout\);

-- Location: LCCOMB_X84_Y10_N22
\dataMUX|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMUX|Selector4~0_combout\ = (\control|o_MemWrite~1_combout\ & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & ((\alu|mux|Mux4~combout\))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & 
-- (\dataMem|dataMem|sram|ram_block|auto_generated|q_a\(3))))) # (!\control|o_MemWrite~1_combout\ & (((\alu|mux|Mux4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|o_MemWrite~1_combout\,
	datab => \dataMem|dataMem|sram|ram_block|auto_generated|q_a\(3),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datad => \alu|mux|Mux4~combout\,
	combout => \dataMUX|Selector4~0_combout\);

-- Location: FF_X82_Y9_N3
\registers|register2|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector4~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register2|bit3|int_q~q\);

-- Location: FF_X82_Y9_N15
\registers|register1|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMUX|Selector4~0_combout\,
	clrn => \GReset~input_o\,
	sload => VCC,
	ena => \registers|decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registers|register1|bit3|int_q~q\);

-- Location: LCCOMB_X82_Y9_N28
\registers|readData1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux4~2_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22)) # ((\registers|register1|bit3|int_q~q\)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|register0|bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datac => \registers|register1|bit3|int_q~q\,
	datad => \registers|register0|bit3|int_q~q\,
	combout => \registers|readData1|Mux4~2_combout\);

-- Location: LCCOMB_X82_Y9_N30
\registers|readData1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux4~3_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((\registers|readData1|Mux4~2_combout\ & (\registers|register3|bit3|int_q~q\)) # (!\registers|readData1|Mux4~2_combout\ & 
-- ((\registers|register2|bit3|int_q~q\))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & (((\registers|readData1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|register3|bit3|int_q~q\,
	datab => \registers|register2|bit3|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \registers|readData1|Mux4~2_combout\,
	combout => \registers|readData1|Mux4~3_combout\);

-- Location: LCCOMB_X82_Y9_N0
\registers|readData1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \registers|readData1|Mux4~4_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & (\registers|readData1|Mux4~1_combout\)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & 
-- ((\registers|readData1|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux4~1_combout\,
	datac => \registers|readData1|Mux4~3_combout\,
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	combout => \registers|readData1|Mux4~4_combout\);

-- Location: LCCOMB_X83_Y9_N16
\alu|subtractor|adder3|o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder3|o_s~0_combout\ = \registers|readData1|Mux4~4_combout\ $ (((\control|o_MemWrite~1_combout\ & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3))) # (!\control|o_MemWrite~1_combout\ & 
-- ((\registers|readData2|Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|o_MemWrite~1_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datac => \registers|readData1|Mux4~4_combout\,
	datad => \registers|readData2|Mux4~4_combout\,
	combout => \alu|subtractor|adder3|o_s~0_combout\);

-- Location: LCCOMB_X84_Y10_N4
\alu|mux|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux4~0_combout\ = (!\controlUnitALUunit|o_control[0]~0_combout\ & (\alu|subtractor|adder3|o_s~0_combout\ $ (((\alu|adder|adder2|o_cout~1_combout\) # (\alu|adder|adder2|o_cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlUnitALUunit|o_control[0]~0_combout\,
	datab => \alu|subtractor|adder3|o_s~0_combout\,
	datac => \alu|adder|adder2|o_cout~1_combout\,
	datad => \alu|adder|adder2|o_cout~0_combout\,
	combout => \alu|mux|Mux4~0_combout\);

-- Location: LCCOMB_X84_Y10_N10
\alu|subtractor|adder3|o_s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtractor|adder3|o_s~combout\ = \alu|subtractor|adder3|o_s~0_combout\ $ (((\registers|readData1|Mux5~4_combout\ & ((\alu|subtractor|adder1|o_cout~0_combout\) # (!\readData2MUX|Selector5~2_combout\))) # (!\registers|readData1|Mux5~4_combout\ & 
-- (!\readData2MUX|Selector5~2_combout\ & \alu|subtractor|adder1|o_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux5~4_combout\,
	datab => \alu|subtractor|adder3|o_s~0_combout\,
	datac => \readData2MUX|Selector5~2_combout\,
	datad => \alu|subtractor|adder1|o_cout~0_combout\,
	combout => \alu|subtractor|adder3|o_s~combout\);

-- Location: LCCOMB_X84_Y10_N2
\alu|mux|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux4~1_combout\ = (\alu|mux|Mux3~1_combout\ & ((\alu|mux|Mux3~2_combout\ & ((!\alu|subtractor|adder3|o_s~combout\))) # (!\alu|mux|Mux3~2_combout\ & (\alu|mux|Mux4~0_combout\)))) # (!\alu|mux|Mux3~1_combout\ & (!\alu|mux|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux3~1_combout\,
	datab => \alu|mux|Mux3~2_combout\,
	datac => \alu|mux|Mux4~0_combout\,
	datad => \alu|subtractor|adder3|o_s~combout\,
	combout => \alu|mux|Mux4~1_combout\);

-- Location: LCCOMB_X84_Y10_N0
\alu|mux|Mux4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|mux|Mux4~combout\ = (\alu|mux|Mux7~0_combout\ & ((\readData2MUX|Selector4~2_combout\ & ((\registers|readData1|Mux4~4_combout\) # (!\alu|mux|Mux4~1_combout\))) # (!\readData2MUX|Selector4~2_combout\ & (\registers|readData1|Mux4~4_combout\ & 
-- !\alu|mux|Mux4~1_combout\)))) # (!\alu|mux|Mux7~0_combout\ & (((\alu|mux|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2MUX|Selector4~2_combout\,
	datab => \registers|readData1|Mux4~4_combout\,
	datac => \alu|mux|Mux7~0_combout\,
	datad => \alu|mux|Mux4~1_combout\,
	combout => \alu|mux|Mux4~combout\);

-- Location: LCCOMB_X83_Y10_N24
\alu|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Equal0~1_combout\ = (!\alu|mux|Mux4~combout\ & !\alu|mux|Mux5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|mux|Mux4~combout\,
	datad => \alu|mux|Mux5~combout\,
	combout => \alu|Equal0~1_combout\);

-- Location: LCCOMB_X79_Y10_N22
\alu|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Equal0~0_combout\ = (!\alu|mux|Mux6~combout\ & (!\alu|mux|Mux2~combout\ & (!\alu|mux|Mux3~combout\ & !\alu|mux|Mux1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux6~combout\,
	datab => \alu|mux|Mux2~combout\,
	datac => \alu|mux|Mux3~combout\,
	datad => \alu|mux|Mux1~combout\,
	combout => \alu|Equal0~0_combout\);

-- Location: LCCOMB_X79_Y8_N18
\alu|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Equal0~2_combout\ = (!\alu|mux|Mux0~combout\ & (\alu|Equal0~1_combout\ & (\alu|Equal0~0_combout\ & !\alu|mux|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux0~combout\,
	datab => \alu|Equal0~1_combout\,
	datac => \alu|Equal0~0_combout\,
	datad => \alu|mux|Mux7~4_combout\,
	combout => \alu|Equal0~2_combout\);

-- Location: LCCOMB_X79_Y8_N6
int_beq : cycloneive_lcell_comb
-- Equation(s):
-- \int_beq~combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & (\control|o_ALUOp[0]~0_combout\ & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) & \alu|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	datab => \control|o_ALUOp[0]~0_combout\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datad => \alu|Equal0~2_combout\,
	combout => \int_beq~combout\);

-- Location: LCCOMB_X79_Y8_N22
\PC|bit4|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|bit4|int_q~0_combout\ = (\int_beq~combout\ & (\branchAdder|adder4|o_s~combout\)) # (!\int_beq~combout\ & ((\PCAdder|adder4|o_s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branchAdder|adder4|o_s~combout\,
	datab => \PCAdder|adder4|o_s~combout\,
	datad => \int_beq~combout\,
	combout => \PC|bit4|int_q~0_combout\);

-- Location: FF_X79_Y8_N23
\PC|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \PC|bit4|int_q~0_combout\,
	asdata => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	clrn => \GReset~input_o\,
	sload => \control|o_Jump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|bit4|int_q~q\);

-- Location: LCCOMB_X79_Y8_N24
\branchAdder|adder3|o_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchAdder|adder3|o_s~0_combout\ = \PC|bit3|int_q~q\ $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) $ (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0)) # (\PC|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	datab => \PC|bit3|int_q~q\,
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datad => \PC|bit2|int_q~q\,
	combout => \branchAdder|adder3|o_s~0_combout\);

-- Location: LCCOMB_X79_Y8_N8
\PC|bit3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|bit3|int_q~0_combout\ = (\int_beq~combout\ & ((\branchAdder|adder3|o_s~0_combout\))) # (!\int_beq~combout\ & (\PCAdder|adder3|o_s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCAdder|adder3|o_s~combout\,
	datab => \branchAdder|adder3|o_s~0_combout\,
	datad => \int_beq~combout\,
	combout => \PC|bit3|int_q~0_combout\);

-- Location: FF_X79_Y8_N9
\PC|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \PC|bit3|int_q~0_combout\,
	asdata => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	clrn => \GReset~input_o\,
	sload => \control|o_Jump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|bit3|int_q~q\);

-- Location: LCCOMB_X79_Y8_N14
\control|o_Jump~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|o_Jump~0_combout\ = (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) & \control|o_ALUOp[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datad => \control|o_ALUOp[0]~0_combout\,
	combout => \control|o_Jump~0_combout\);

-- Location: LCCOMB_X79_Y8_N12
\branchOrJump|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchOrJump|Selector5~0_combout\ = (\control|o_Jump~0_combout\ & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0))) # (!\control|o_Jump~0_combout\ & (\PC|bit2|int_q~q\ $ (((!\int_beq~combout\) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	datab => \control|o_Jump~0_combout\,
	datac => \PC|bit2|int_q~q\,
	datad => \int_beq~combout\,
	combout => \branchOrJump|Selector5~0_combout\);

-- Location: FF_X79_Y8_N13
\PC|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \branchOrJump|Selector5~0_combout\,
	clrn => \GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|bit2|int_q~q\);

-- Location: LCCOMB_X82_Y9_N10
\control|o_MemWrite~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|o_MemWrite~1_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & \control|o_MemWrite~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datad => \control|o_MemWrite~0_combout\,
	combout => \control|o_MemWrite~1_combout\);

-- Location: LCCOMB_X85_Y10_N24
\ioMUX|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux6~0_combout\ = (!\ValueSelect[2]~input_o\ & \ValueSelect[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[2]~input_o\,
	datad => \ValueSelect[1]~input_o\,
	combout => \ioMUX|Mux6~0_combout\);

-- Location: LCCOMB_X84_Y10_N16
\ioMUX|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux6~2_combout\ = (\ValueSelect[2]~input_o\) # ((\ValueSelect[1]~input_o\ & \ValueSelect[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[2]~input_o\,
	datab => \ValueSelect[1]~input_o\,
	datad => \ValueSelect[0]~input_o\,
	combout => \ioMUX|Mux6~2_combout\);

-- Location: LCCOMB_X85_Y10_N22
\ioMUX|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux6~1_combout\ = (\ValueSelect[2]~input_o\) # ((\ValueSelect[0]~input_o\ & !\ValueSelect[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datac => \ValueSelect[2]~input_o\,
	datad => \ValueSelect[1]~input_o\,
	combout => \ioMUX|Mux6~1_combout\);

-- Location: LCCOMB_X83_Y10_N6
\ioMUX|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux7~0_combout\ = (\ioMUX|Mux6~2_combout\ & (((\dataMUX|Selector7~0_combout\) # (!\ioMUX|Mux6~1_combout\)))) # (!\ioMUX|Mux6~2_combout\ & (\alu|mux|Mux7~4_combout\ & (\ioMUX|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|mux|Mux7~4_combout\,
	datab => \ioMUX|Mux6~2_combout\,
	datac => \ioMUX|Mux6~1_combout\,
	datad => \dataMUX|Selector7~0_combout\,
	combout => \ioMUX|Mux7~0_combout\);

-- Location: LCCOMB_X83_Y10_N28
\ioMUX|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux7~1_combout\ = (\ioMUX|Mux6~0_combout\ & ((\ioMUX|Mux7~0_combout\ & ((\registers|readData2|Mux7~4_combout\))) # (!\ioMUX|Mux7~0_combout\ & (\registers|readData1|Mux7~4_combout\)))) # (!\ioMUX|Mux6~0_combout\ & (((\ioMUX|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux7~4_combout\,
	datab => \ioMUX|Mux6~0_combout\,
	datac => \registers|readData2|Mux7~4_combout\,
	datad => \ioMUX|Mux7~0_combout\,
	combout => \ioMUX|Mux7~1_combout\);

-- Location: LCCOMB_X83_Y10_N30
\ioMUX|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux7~2_combout\ = (\ValueSelect[2]~input_o\ & ((\ioMUX|Mux6~3_combout\ & (\control|o_MemWrite~1_combout\)) # (!\ioMUX|Mux6~3_combout\ & ((\ioMUX|Mux7~1_combout\))))) # (!\ValueSelect[2]~input_o\ & (((\ioMUX|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[2]~input_o\,
	datab => \ioMUX|Mux6~3_combout\,
	datac => \control|o_MemWrite~1_combout\,
	datad => \ioMUX|Mux7~1_combout\,
	combout => \ioMUX|Mux7~2_combout\);

-- Location: LCCOMB_X85_Y10_N16
\ioMUX|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux6~4_combout\ = (\ioMUX|Mux6~1_combout\ & ((\ioMUX|Mux6~2_combout\ & (\dataMUX|Selector6~0_combout\)) # (!\ioMUX|Mux6~2_combout\ & ((\alu|mux|Mux6~combout\))))) # (!\ioMUX|Mux6~1_combout\ & (\ioMUX|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux6~1_combout\,
	datab => \ioMUX|Mux6~2_combout\,
	datac => \dataMUX|Selector6~0_combout\,
	datad => \alu|mux|Mux6~combout\,
	combout => \ioMUX|Mux6~4_combout\);

-- Location: LCCOMB_X85_Y10_N10
\ioMUX|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux6~5_combout\ = (\ioMUX|Mux6~0_combout\ & ((\ioMUX|Mux6~4_combout\ & (\registers|readData2|Mux6~4_combout\)) # (!\ioMUX|Mux6~4_combout\ & ((\registers|readData1|Mux6~4_combout\))))) # (!\ioMUX|Mux6~0_combout\ & (((\ioMUX|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData2|Mux6~4_combout\,
	datab => \ioMUX|Mux6~0_combout\,
	datac => \registers|readData1|Mux6~4_combout\,
	datad => \ioMUX|Mux6~4_combout\,
	combout => \ioMUX|Mux6~5_combout\);

-- Location: LCCOMB_X85_Y10_N20
\ioMUX|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux6~6_combout\ = (\ioMUX|Mux6~3_combout\ & ((\ValueSelect[2]~input_o\ & (\control|o_ALUOp[0]~1_combout\)) # (!\ValueSelect[2]~input_o\ & ((\ioMUX|Mux6~5_combout\))))) # (!\ioMUX|Mux6~3_combout\ & (((\ioMUX|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux6~3_combout\,
	datab => \control|o_ALUOp[0]~1_combout\,
	datac => \ValueSelect[2]~input_o\,
	datad => \ioMUX|Mux6~5_combout\,
	combout => \ioMUX|Mux6~6_combout\);

-- Location: LCCOMB_X85_Y10_N14
\ioMUX|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux5~0_combout\ = (\ValueSelect[2]~input_o\ & ((\ioMUX|Mux6~3_combout\ & (!\control|o_ALUOp\(1))) # (!\ioMUX|Mux6~3_combout\ & ((\dataMUX|Selector5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux6~3_combout\,
	datab => \control|o_ALUOp\(1),
	datac => \ValueSelect[2]~input_o\,
	datad => \dataMUX|Selector5~0_combout\,
	combout => \ioMUX|Mux5~0_combout\);

-- Location: LCCOMB_X84_Y10_N6
\ioMUX|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux5~1_combout\ = (\ValueSelect[0]~input_o\ & (((\ValueSelect[1]~input_o\) # (\alu|mux|Mux5~combout\)))) # (!\ValueSelect[0]~input_o\ & (\PC|bit2|int_q~q\ & (!\ValueSelect[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit2|int_q~q\,
	datab => \ValueSelect[0]~input_o\,
	datac => \ValueSelect[1]~input_o\,
	datad => \alu|mux|Mux5~combout\,
	combout => \ioMUX|Mux5~1_combout\);

-- Location: LCCOMB_X84_Y10_N12
\ioMUX|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux5~2_combout\ = (\ValueSelect[1]~input_o\ & ((\ioMUX|Mux5~1_combout\ & (\registers|readData2|Mux5~4_combout\)) # (!\ioMUX|Mux5~1_combout\ & ((\registers|readData1|Mux5~4_combout\))))) # (!\ValueSelect[1]~input_o\ & (((\ioMUX|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[1]~input_o\,
	datab => \registers|readData2|Mux5~4_combout\,
	datac => \registers|readData1|Mux5~4_combout\,
	datad => \ioMUX|Mux5~1_combout\,
	combout => \ioMUX|Mux5~2_combout\);

-- Location: LCCOMB_X85_Y10_N0
\ioMUX|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux5~3_combout\ = (\ioMUX|Mux5~0_combout\) # ((!\ValueSelect[2]~input_o\ & \ioMUX|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[2]~input_o\,
	datac => \ioMUX|Mux5~0_combout\,
	datad => \ioMUX|Mux5~2_combout\,
	combout => \ioMUX|Mux5~3_combout\);

-- Location: LCCOMB_X83_Y11_N4
\ioMUX|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux4~0_combout\ = (\ioMUX|Mux6~3_combout\ & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & (\control|o_MemWrite~1_combout\))) # (!\ioMUX|Mux6~3_combout\ & (((\dataMUX|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datab => \control|o_MemWrite~1_combout\,
	datac => \ioMUX|Mux6~3_combout\,
	datad => \dataMUX|Selector4~0_combout\,
	combout => \ioMUX|Mux4~0_combout\);

-- Location: LCCOMB_X84_Y10_N28
\ioMUX|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux4~1_combout\ = (\ValueSelect[0]~input_o\ & (((\ValueSelect[1]~input_o\) # (\alu|mux|Mux4~combout\)))) # (!\ValueSelect[0]~input_o\ & (\PC|bit3|int_q~q\ & (!\ValueSelect[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit3|int_q~q\,
	datab => \ValueSelect[0]~input_o\,
	datac => \ValueSelect[1]~input_o\,
	datad => \alu|mux|Mux4~combout\,
	combout => \ioMUX|Mux4~1_combout\);

-- Location: LCCOMB_X84_Y10_N14
\ioMUX|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux4~2_combout\ = (\ValueSelect[1]~input_o\ & ((\ioMUX|Mux4~1_combout\ & (\registers|readData2|Mux4~4_combout\)) # (!\ioMUX|Mux4~1_combout\ & ((\registers|readData1|Mux4~4_combout\))))) # (!\ValueSelect[1]~input_o\ & (((\ioMUX|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData2|Mux4~4_combout\,
	datab => \registers|readData1|Mux4~4_combout\,
	datac => \ValueSelect[1]~input_o\,
	datad => \ioMUX|Mux4~1_combout\,
	combout => \ioMUX|Mux4~2_combout\);

-- Location: LCCOMB_X83_Y11_N18
\ioMUX|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux4~3_combout\ = (\ValueSelect[2]~input_o\ & (\ioMUX|Mux4~0_combout\)) # (!\ValueSelect[2]~input_o\ & ((\ioMUX|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ValueSelect[2]~input_o\,
	datac => \ioMUX|Mux4~0_combout\,
	datad => \ioMUX|Mux4~2_combout\,
	combout => \ioMUX|Mux4~3_combout\);

-- Location: LCCOMB_X80_Y8_N8
\ioMUX|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux3~0_combout\ = (\ioMUX|Mux6~3_combout\ & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & (\control|o_MemWrite~1_combout\))) # (!\ioMUX|Mux6~3_combout\ & (((\dataMUX|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datab => \control|o_MemWrite~1_combout\,
	datac => \ioMUX|Mux6~3_combout\,
	datad => \dataMUX|Selector3~0_combout\,
	combout => \ioMUX|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y8_N30
\ioMUX|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux3~1_combout\ = (\ValueSelect[0]~input_o\ & (\ValueSelect[1]~input_o\)) # (!\ValueSelect[0]~input_o\ & ((\ValueSelect[1]~input_o\ & (\registers|readData1|Mux3~4_combout\)) # (!\ValueSelect[1]~input_o\ & ((\PC|bit4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \ValueSelect[1]~input_o\,
	datac => \registers|readData1|Mux3~4_combout\,
	datad => \PC|bit4|int_q~q\,
	combout => \ioMUX|Mux3~1_combout\);

-- Location: LCCOMB_X80_Y8_N24
\ioMUX|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux3~2_combout\ = (\ValueSelect[0]~input_o\ & ((\ioMUX|Mux3~1_combout\ & (\registers|readData2|Mux3~4_combout\)) # (!\ioMUX|Mux3~1_combout\ & ((\alu|mux|Mux3~combout\))))) # (!\ValueSelect[0]~input_o\ & (((\ioMUX|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \registers|readData2|Mux3~4_combout\,
	datac => \alu|mux|Mux3~combout\,
	datad => \ioMUX|Mux3~1_combout\,
	combout => \ioMUX|Mux3~2_combout\);

-- Location: LCCOMB_X80_Y8_N6
\ioMUX|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux3~3_combout\ = (\ValueSelect[2]~input_o\ & (\ioMUX|Mux3~0_combout\)) # (!\ValueSelect[2]~input_o\ & ((\ioMUX|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[2]~input_o\,
	datac => \ioMUX|Mux3~0_combout\,
	datad => \ioMUX|Mux3~2_combout\,
	combout => \ioMUX|Mux3~3_combout\);

-- Location: LCCOMB_X80_Y8_N20
\ioMUX|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux2~1_combout\ = (\ValueSelect[0]~input_o\ & (\ValueSelect[1]~input_o\)) # (!\ValueSelect[0]~input_o\ & ((\ValueSelect[1]~input_o\ & ((\registers|readData1|Mux2~4_combout\))) # (!\ValueSelect[1]~input_o\ & (\PC|bit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \ValueSelect[1]~input_o\,
	datac => \PC|bit5|int_q~q\,
	datad => \registers|readData1|Mux2~4_combout\,
	combout => \ioMUX|Mux2~1_combout\);

-- Location: LCCOMB_X80_Y8_N26
\ioMUX|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux2~2_combout\ = (\ioMUX|Mux2~1_combout\ & ((\registers|readData2|Mux2~4_combout\) # ((!\ValueSelect[0]~input_o\)))) # (!\ioMUX|Mux2~1_combout\ & (((\ValueSelect[0]~input_o\ & \alu|mux|Mux2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData2|Mux2~4_combout\,
	datab => \ioMUX|Mux2~1_combout\,
	datac => \ValueSelect[0]~input_o\,
	datad => \alu|mux|Mux2~combout\,
	combout => \ioMUX|Mux2~2_combout\);

-- Location: LCCOMB_X80_Y8_N18
\ioMUX|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux2~0_combout\ = (\ValueSelect[2]~input_o\ & ((\ioMUX|Mux6~3_combout\ & (\control|o_Jump~0_combout\)) # (!\ioMUX|Mux6~3_combout\ & ((\dataMUX|Selector2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|o_Jump~0_combout\,
	datab => \ioMUX|Mux6~3_combout\,
	datac => \ValueSelect[2]~input_o\,
	datad => \dataMUX|Selector2~0_combout\,
	combout => \ioMUX|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y8_N12
\ioMUX|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux2~3_combout\ = (\ioMUX|Mux2~0_combout\) # ((!\ValueSelect[2]~input_o\ & \ioMUX|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[2]~input_o\,
	datac => \ioMUX|Mux2~2_combout\,
	datad => \ioMUX|Mux2~0_combout\,
	combout => \ioMUX|Mux2~3_combout\);

-- Location: LCCOMB_X80_Y8_N10
\ioMUX|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux1~1_combout\ = (\ValueSelect[0]~input_o\ & (((\ValueSelect[1]~input_o\) # (\alu|mux|Mux1~combout\)))) # (!\ValueSelect[0]~input_o\ & (\PC|bit6|int_q~q\ & (!\ValueSelect[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \PC|bit6|int_q~q\,
	datac => \ValueSelect[1]~input_o\,
	datad => \alu|mux|Mux1~combout\,
	combout => \ioMUX|Mux1~1_combout\);

-- Location: LCCOMB_X80_Y8_N16
\ioMUX|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux1~2_combout\ = (\ValueSelect[1]~input_o\ & ((\ioMUX|Mux1~1_combout\ & ((\registers|readData2|Mux1~4_combout\))) # (!\ioMUX|Mux1~1_combout\ & (\registers|readData1|Mux1~4_combout\)))) # (!\ValueSelect[1]~input_o\ & (((\ioMUX|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux1~4_combout\,
	datab => \registers|readData2|Mux1~4_combout\,
	datac => \ValueSelect[1]~input_o\,
	datad => \ioMUX|Mux1~1_combout\,
	combout => \ioMUX|Mux1~2_combout\);

-- Location: LCCOMB_X81_Y8_N2
\ioMUX|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux1~0_combout\ = (\ValueSelect[2]~input_o\ & ((\ioMUX|Mux6~3_combout\ & (!\control|o_ALUOp\(1))) # (!\ioMUX|Mux6~3_combout\ & ((\dataMUX|Selector1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux6~3_combout\,
	datab => \control|o_ALUOp\(1),
	datac => \ValueSelect[2]~input_o\,
	datad => \dataMUX|Selector1~0_combout\,
	combout => \ioMUX|Mux1~0_combout\);

-- Location: LCCOMB_X81_Y8_N16
\ioMUX|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux1~3_combout\ = (\ioMUX|Mux1~0_combout\) # ((!\ValueSelect[2]~input_o\ & \ioMUX|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[2]~input_o\,
	datac => \ioMUX|Mux1~2_combout\,
	datad => \ioMUX|Mux1~0_combout\,
	combout => \ioMUX|Mux1~3_combout\);

-- Location: LCCOMB_X80_Y10_N16
\ioMUX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux0~0_combout\ = (\ValueSelect[0]~input_o\ & (((\ValueSelect[1]~input_o\) # (\alu|mux|Mux0~combout\)))) # (!\ValueSelect[0]~input_o\ & (\PC|bit7|int_q~q\ & (!\ValueSelect[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|bit7|int_q~q\,
	datab => \ValueSelect[0]~input_o\,
	datac => \ValueSelect[1]~input_o\,
	datad => \alu|mux|Mux0~combout\,
	combout => \ioMUX|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y10_N26
\ioMUX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux0~1_combout\ = (\ValueSelect[1]~input_o\ & ((\ioMUX|Mux0~0_combout\ & ((\registers|readData2|Mux0~4_combout\))) # (!\ioMUX|Mux0~0_combout\ & (\registers|readData1|Mux0~4_combout\)))) # (!\ValueSelect[1]~input_o\ & (((\ioMUX|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registers|readData1|Mux0~4_combout\,
	datab => \registers|readData2|Mux0~4_combout\,
	datac => \ValueSelect[1]~input_o\,
	datad => \ioMUX|Mux0~0_combout\,
	combout => \ioMUX|Mux0~1_combout\);

-- Location: LCCOMB_X81_Y8_N14
\ioMUX|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ioMUX|Mux0~2_combout\ = (\ValueSelect[2]~input_o\ & (!\ioMUX|Mux6~3_combout\ & ((\dataMUX|Selector0~0_combout\)))) # (!\ValueSelect[2]~input_o\ & (((\ioMUX|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[2]~input_o\,
	datab => \ioMUX|Mux6~3_combout\,
	datac => \ioMUX|Mux0~1_combout\,
	datad => \dataMUX|Selector0~0_combout\,
	combout => \ioMUX|Mux0~2_combout\);

-- Location: LCCOMB_X82_Y9_N14
\control|o_MemWrite~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|o_MemWrite~2_combout\ = (\control|o_MemWrite~0_combout\ & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|o_MemWrite~0_combout\,
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	combout => \control|o_MemWrite~2_combout\);

-- Location: IOIBUF_X0_Y36_N15
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: CLKCTRL_G4
\GClock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GClock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GClock~inputclkctrl_outclk\);

-- Location: LCCOMB_X84_Y11_N28
\displayOutput|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux20~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	combout => \displayOutput|Mux20~0_combout\);

-- Location: LCCOMB_X84_Y11_N26
\displayOutput|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux6~0_combout\ = (\ioMUX|Mux7~2_combout\ & ((\ioMUX|Mux4~3_combout\) # (\ioMUX|Mux5~3_combout\ $ (\ioMUX|Mux6~6_combout\)))) # (!\ioMUX|Mux7~2_combout\ & ((\ioMUX|Mux6~6_combout\) # (\ioMUX|Mux5~3_combout\ $ (\ioMUX|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux5~3_combout\,
	datab => \ioMUX|Mux4~3_combout\,
	datac => \ioMUX|Mux6~6_combout\,
	datad => \ioMUX|Mux7~2_combout\,
	combout => \displayOutput|Mux6~0_combout\);

-- Location: LCCOMB_X81_Y11_N6
\displayOutput|swap~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|swap~0_combout\ = !\displayOutput|swap~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displayOutput|swap~q\,
	combout => \displayOutput|swap~0_combout\);

-- Location: FF_X81_Y11_N7
\displayOutput|swap\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \swapButton~input_o\,
	d => \displayOutput|swap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|swap~q\);

-- Location: LCCOMB_X84_Y11_N24
\displayOutput|int_display1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display1~0_combout\ = (\displayOutput|swap~q\ & ((\displayOutput|Mux6~0_combout\))) # (!\displayOutput|swap~q\ & (\displayOutput|Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayOutput|Mux20~0_combout\,
	datac => \displayOutput|Mux6~0_combout\,
	datad => \displayOutput|swap~q\,
	combout => \displayOutput|int_display1~0_combout\);

-- Location: FF_X84_Y11_N25
\displayOutput|int_display1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display1\(0));

-- Location: LCCOMB_X84_Y11_N4
\displayOutput|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux19~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	combout => \displayOutput|Mux19~0_combout\);

-- Location: LCCOMB_X84_Y11_N10
\displayOutput|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux5~0_combout\ = (\ioMUX|Mux5~3_combout\ & (\ioMUX|Mux7~2_combout\ & (\ioMUX|Mux4~3_combout\ $ (\ioMUX|Mux6~6_combout\)))) # (!\ioMUX|Mux5~3_combout\ & (!\ioMUX|Mux4~3_combout\ & ((\ioMUX|Mux6~6_combout\) # (\ioMUX|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux5~3_combout\,
	datab => \ioMUX|Mux4~3_combout\,
	datac => \ioMUX|Mux6~6_combout\,
	datad => \ioMUX|Mux7~2_combout\,
	combout => \displayOutput|Mux5~0_combout\);

-- Location: LCCOMB_X84_Y11_N30
\displayOutput|int_display1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display1~1_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux5~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayOutput|Mux19~0_combout\,
	datac => \displayOutput|swap~q\,
	datad => \displayOutput|Mux5~0_combout\,
	combout => \displayOutput|int_display1~1_combout\);

-- Location: FF_X84_Y11_N31
\displayOutput|int_display1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display1\(1));

-- Location: LCCOMB_X84_Y11_N20
\displayOutput|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux18~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) & ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	combout => \displayOutput|Mux18~0_combout\);

-- Location: LCCOMB_X84_Y11_N6
\displayOutput|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux4~0_combout\ = (\ioMUX|Mux6~6_combout\ & (((!\ioMUX|Mux4~3_combout\ & \ioMUX|Mux7~2_combout\)))) # (!\ioMUX|Mux6~6_combout\ & ((\ioMUX|Mux5~3_combout\ & (!\ioMUX|Mux4~3_combout\)) # (!\ioMUX|Mux5~3_combout\ & 
-- ((\ioMUX|Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux5~3_combout\,
	datab => \ioMUX|Mux4~3_combout\,
	datac => \ioMUX|Mux6~6_combout\,
	datad => \ioMUX|Mux7~2_combout\,
	combout => \displayOutput|Mux4~0_combout\);

-- Location: LCCOMB_X84_Y11_N8
\displayOutput|int_display1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display1~2_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux4~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayOutput|Mux18~0_combout\,
	datac => \displayOutput|swap~q\,
	datad => \displayOutput|Mux4~0_combout\,
	combout => \displayOutput|int_display1~2_combout\);

-- Location: FF_X84_Y11_N9
\displayOutput|int_display1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display1\(2));

-- Location: LCCOMB_X84_Y11_N18
\displayOutput|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux3~0_combout\ = (\ioMUX|Mux7~2_combout\ & (\ioMUX|Mux5~3_combout\ $ (((!\ioMUX|Mux6~6_combout\))))) # (!\ioMUX|Mux7~2_combout\ & ((\ioMUX|Mux5~3_combout\ & (!\ioMUX|Mux4~3_combout\ & !\ioMUX|Mux6~6_combout\)) # (!\ioMUX|Mux5~3_combout\ & 
-- (\ioMUX|Mux4~3_combout\ & \ioMUX|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux5~3_combout\,
	datab => \ioMUX|Mux4~3_combout\,
	datac => \ioMUX|Mux6~6_combout\,
	datad => \ioMUX|Mux7~2_combout\,
	combout => \displayOutput|Mux3~0_combout\);

-- Location: LCCOMB_X84_Y11_N14
\displayOutput|int_display1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display1~3_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux3~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOutput|Mux17~0_combout\,
	datac => \displayOutput|swap~q\,
	datad => \displayOutput|Mux3~0_combout\,
	combout => \displayOutput|int_display1~3_combout\);

-- Location: FF_X84_Y11_N15
\displayOutput|int_display1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display1\(3));

-- Location: LCCOMB_X84_Y11_N16
\displayOutput|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux16~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	combout => \displayOutput|Mux16~0_combout\);

-- Location: LCCOMB_X84_Y11_N2
\displayOutput|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux2~0_combout\ = (\ioMUX|Mux5~3_combout\ & (\ioMUX|Mux4~3_combout\ & ((\ioMUX|Mux6~6_combout\) # (!\ioMUX|Mux7~2_combout\)))) # (!\ioMUX|Mux5~3_combout\ & (!\ioMUX|Mux4~3_combout\ & (\ioMUX|Mux6~6_combout\ & !\ioMUX|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux5~3_combout\,
	datab => \ioMUX|Mux4~3_combout\,
	datac => \ioMUX|Mux6~6_combout\,
	datad => \ioMUX|Mux7~2_combout\,
	combout => \displayOutput|Mux2~0_combout\);

-- Location: LCCOMB_X84_Y11_N0
\displayOutput|int_display1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display1~4_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux2~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayOutput|Mux16~0_combout\,
	datac => \displayOutput|swap~q\,
	datad => \displayOutput|Mux2~0_combout\,
	combout => \displayOutput|int_display1~4_combout\);

-- Location: FF_X84_Y11_N1
\displayOutput|int_display1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display1\(4));

-- Location: LCCOMB_X82_Y8_N2
\displayOutput|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux1~0_combout\ = (\ioMUX|Mux6~6_combout\ & ((\ioMUX|Mux7~2_combout\ & ((\ioMUX|Mux4~3_combout\))) # (!\ioMUX|Mux7~2_combout\ & (\ioMUX|Mux5~3_combout\)))) # (!\ioMUX|Mux6~6_combout\ & (\ioMUX|Mux5~3_combout\ & (\ioMUX|Mux4~3_combout\ $ 
-- (\ioMUX|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux6~6_combout\,
	datab => \ioMUX|Mux5~3_combout\,
	datac => \ioMUX|Mux4~3_combout\,
	datad => \ioMUX|Mux7~2_combout\,
	combout => \displayOutput|Mux1~0_combout\);

-- Location: LCCOMB_X82_Y8_N12
\displayOutput|int_display1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display1~5_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux1~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOutput|Mux15~0_combout\,
	datac => \displayOutput|swap~q\,
	datad => \displayOutput|Mux1~0_combout\,
	combout => \displayOutput|int_display1~5_combout\);

-- Location: FF_X82_Y8_N13
\displayOutput|int_display1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display1\(5));

-- Location: LCCOMB_X83_Y8_N12
\displayOutput|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux14~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) $ 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0) & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(1),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(0),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(2),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(3),
	combout => \displayOutput|Mux14~0_combout\);

-- Location: LCCOMB_X82_Y8_N0
\displayOutput|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux0~0_combout\ = (\ioMUX|Mux5~3_combout\ & (!\ioMUX|Mux6~6_combout\ & (\ioMUX|Mux4~3_combout\ $ (!\ioMUX|Mux7~2_combout\)))) # (!\ioMUX|Mux5~3_combout\ & (\ioMUX|Mux7~2_combout\ & (\ioMUX|Mux6~6_combout\ $ (!\ioMUX|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux6~6_combout\,
	datab => \ioMUX|Mux5~3_combout\,
	datac => \ioMUX|Mux4~3_combout\,
	datad => \ioMUX|Mux7~2_combout\,
	combout => \displayOutput|Mux0~0_combout\);

-- Location: LCCOMB_X82_Y8_N22
\displayOutput|int_display1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display1~6_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux0~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayOutput|Mux14~0_combout\,
	datac => \displayOutput|swap~q\,
	datad => \displayOutput|Mux0~0_combout\,
	combout => \displayOutput|int_display1~6_combout\);

-- Location: FF_X82_Y8_N23
\displayOutput|int_display1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display1\(6));

-- Location: LCCOMB_X82_Y8_N18
\displayOutput|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux13~0_combout\ = (\ioMUX|Mux3~3_combout\ & ((\ioMUX|Mux0~2_combout\) # (\ioMUX|Mux2~3_combout\ $ (\ioMUX|Mux1~3_combout\)))) # (!\ioMUX|Mux3~3_combout\ & ((\ioMUX|Mux2~3_combout\) # (\ioMUX|Mux1~3_combout\ $ (\ioMUX|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux3~3_combout\,
	datab => \ioMUX|Mux2~3_combout\,
	datac => \ioMUX|Mux1~3_combout\,
	datad => \ioMUX|Mux0~2_combout\,
	combout => \displayOutput|Mux13~0_combout\);

-- Location: LCCOMB_X82_Y8_N24
\displayOutput|int_display2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display2~0_combout\ = (\displayOutput|swap~q\ & ((\displayOutput|Mux13~0_combout\))) # (!\displayOutput|swap~q\ & (\displayOutput|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOutput|Mux27~0_combout\,
	datac => \displayOutput|swap~q\,
	datad => \displayOutput|Mux13~0_combout\,
	combout => \displayOutput|int_display2~0_combout\);

-- Location: FF_X82_Y8_N25
\displayOutput|int_display2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display2\(0));

-- Location: LCCOMB_X77_Y8_N14
\displayOutput|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux26~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	combout => \displayOutput|Mux26~0_combout\);

-- Location: LCCOMB_X81_Y8_N20
\displayOutput|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux12~0_combout\ = (\ioMUX|Mux2~3_combout\ & (!\ioMUX|Mux0~2_combout\ & ((\ioMUX|Mux3~3_combout\) # (!\ioMUX|Mux1~3_combout\)))) # (!\ioMUX|Mux2~3_combout\ & (\ioMUX|Mux3~3_combout\ & (\ioMUX|Mux0~2_combout\ $ (!\ioMUX|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux2~3_combout\,
	datab => \ioMUX|Mux3~3_combout\,
	datac => \ioMUX|Mux0~2_combout\,
	datad => \ioMUX|Mux1~3_combout\,
	combout => \displayOutput|Mux12~0_combout\);

-- Location: LCCOMB_X81_Y8_N8
\displayOutput|int_display2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display2~1_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux12~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOutput|swap~q\,
	datab => \displayOutput|Mux26~0_combout\,
	datad => \displayOutput|Mux12~0_combout\,
	combout => \displayOutput|int_display2~1_combout\);

-- Location: FF_X81_Y8_N9
\displayOutput|int_display2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display2\(1));

-- Location: LCCOMB_X77_Y8_N12
\displayOutput|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux25~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4)))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	combout => \displayOutput|Mux25~0_combout\);

-- Location: LCCOMB_X81_Y8_N10
\displayOutput|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux11~0_combout\ = (\ioMUX|Mux2~3_combout\ & (\ioMUX|Mux3~3_combout\ & (!\ioMUX|Mux0~2_combout\))) # (!\ioMUX|Mux2~3_combout\ & ((\ioMUX|Mux1~3_combout\ & ((!\ioMUX|Mux0~2_combout\))) # (!\ioMUX|Mux1~3_combout\ & (\ioMUX|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux2~3_combout\,
	datab => \ioMUX|Mux3~3_combout\,
	datac => \ioMUX|Mux0~2_combout\,
	datad => \ioMUX|Mux1~3_combout\,
	combout => \displayOutput|Mux11~0_combout\);

-- Location: LCCOMB_X81_Y8_N22
\displayOutput|int_display2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display2~2_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux11~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOutput|swap~q\,
	datac => \displayOutput|Mux25~0_combout\,
	datad => \displayOutput|Mux11~0_combout\,
	combout => \displayOutput|int_display2~2_combout\);

-- Location: FF_X81_Y8_N23
\displayOutput|int_display2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display2\(2));

-- Location: LCCOMB_X77_Y8_N2
\displayOutput|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux24~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) & 
-- !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) & 
-- \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	combout => \displayOutput|Mux24~0_combout\);

-- Location: LCCOMB_X81_Y8_N24
\displayOutput|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux10~0_combout\ = (\ioMUX|Mux3~3_combout\ & (\ioMUX|Mux2~3_combout\ $ (((!\ioMUX|Mux1~3_combout\))))) # (!\ioMUX|Mux3~3_combout\ & ((\ioMUX|Mux2~3_combout\ & (\ioMUX|Mux0~2_combout\ & !\ioMUX|Mux1~3_combout\)) # (!\ioMUX|Mux2~3_combout\ & 
-- (!\ioMUX|Mux0~2_combout\ & \ioMUX|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux2~3_combout\,
	datab => \ioMUX|Mux3~3_combout\,
	datac => \ioMUX|Mux0~2_combout\,
	datad => \ioMUX|Mux1~3_combout\,
	combout => \displayOutput|Mux10~0_combout\);

-- Location: LCCOMB_X81_Y8_N28
\displayOutput|int_display2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display2~3_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux10~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOutput|swap~q\,
	datab => \displayOutput|Mux24~0_combout\,
	datad => \displayOutput|Mux10~0_combout\,
	combout => \displayOutput|int_display2~3_combout\);

-- Location: FF_X81_Y8_N29
\displayOutput|int_display2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display2\(3));

-- Location: LCCOMB_X77_Y8_N28
\displayOutput|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux23~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) & 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	combout => \displayOutput|Mux23~0_combout\);

-- Location: LCCOMB_X81_Y8_N6
\displayOutput|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux9~0_combout\ = (\ioMUX|Mux0~2_combout\ & (\ioMUX|Mux1~3_combout\ & ((\ioMUX|Mux2~3_combout\) # (!\ioMUX|Mux3~3_combout\)))) # (!\ioMUX|Mux0~2_combout\ & (\ioMUX|Mux2~3_combout\ & (!\ioMUX|Mux3~3_combout\ & !\ioMUX|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux2~3_combout\,
	datab => \ioMUX|Mux3~3_combout\,
	datac => \ioMUX|Mux0~2_combout\,
	datad => \ioMUX|Mux1~3_combout\,
	combout => \displayOutput|Mux9~0_combout\);

-- Location: LCCOMB_X81_Y8_N30
\displayOutput|int_display2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display2~4_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux9~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOutput|swap~q\,
	datab => \displayOutput|Mux23~0_combout\,
	datad => \displayOutput|Mux9~0_combout\,
	combout => \displayOutput|int_display2~4_combout\);

-- Location: FF_X81_Y8_N31
\displayOutput|int_display2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display2\(4));

-- Location: LCCOMB_X77_Y8_N10
\displayOutput|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux22~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6)))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	combout => \displayOutput|Mux22~0_combout\);

-- Location: LCCOMB_X81_Y8_N12
\displayOutput|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux8~0_combout\ = (\ioMUX|Mux2~3_combout\ & ((\ioMUX|Mux3~3_combout\ & (\ioMUX|Mux0~2_combout\)) # (!\ioMUX|Mux3~3_combout\ & ((\ioMUX|Mux1~3_combout\))))) # (!\ioMUX|Mux2~3_combout\ & (\ioMUX|Mux1~3_combout\ & (\ioMUX|Mux3~3_combout\ $ 
-- (\ioMUX|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux2~3_combout\,
	datab => \ioMUX|Mux3~3_combout\,
	datac => \ioMUX|Mux0~2_combout\,
	datad => \ioMUX|Mux1~3_combout\,
	combout => \displayOutput|Mux8~0_combout\);

-- Location: LCCOMB_X81_Y8_N4
\displayOutput|int_display2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display2~5_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux8~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOutput|swap~q\,
	datac => \displayOutput|Mux22~0_combout\,
	datad => \displayOutput|Mux8~0_combout\,
	combout => \displayOutput|int_display2~5_combout\);

-- Location: FF_X81_Y8_N5
\displayOutput|int_display2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display2\(5));

-- Location: LCCOMB_X77_Y8_N20
\displayOutput|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux21~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5) & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(7),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(5),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(4),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(6),
	combout => \displayOutput|Mux21~0_combout\);

-- Location: LCCOMB_X81_Y8_N18
\displayOutput|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux7~0_combout\ = (\ioMUX|Mux0~2_combout\ & (\ioMUX|Mux3~3_combout\ & (\ioMUX|Mux2~3_combout\ $ (\ioMUX|Mux1~3_combout\)))) # (!\ioMUX|Mux0~2_combout\ & (!\ioMUX|Mux2~3_combout\ & (\ioMUX|Mux3~3_combout\ $ (\ioMUX|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ioMUX|Mux2~3_combout\,
	datab => \ioMUX|Mux3~3_combout\,
	datac => \ioMUX|Mux0~2_combout\,
	datad => \ioMUX|Mux1~3_combout\,
	combout => \displayOutput|Mux7~0_combout\);

-- Location: LCCOMB_X81_Y8_N26
\displayOutput|int_display2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display2~6_combout\ = (\displayOutput|swap~q\ & ((!\displayOutput|Mux7~0_combout\))) # (!\displayOutput|swap~q\ & (!\displayOutput|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOutput|swap~q\,
	datac => \displayOutput|Mux21~0_combout\,
	datad => \displayOutput|Mux7~0_combout\,
	combout => \displayOutput|int_display2~6_combout\);

-- Location: FF_X81_Y8_N27
\displayOutput|int_display2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display2\(6));

-- Location: LCCOMB_X80_Y7_N26
\displayOutput|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux34~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10),
	combout => \displayOutput|Mux34~0_combout\);

-- Location: LCCOMB_X82_Y11_N24
\displayOutput|int_display3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display3[0]~feeder_combout\ = \displayOutput|Mux34~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \displayOutput|Mux34~0_combout\,
	combout => \displayOutput|int_display3[0]~feeder_combout\);

-- Location: FF_X82_Y11_N25
\displayOutput|int_display3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display3[0]~feeder_combout\,
	asdata => VCC,
	sload => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display3\(0));

-- Location: LCCOMB_X81_Y11_N28
\displayOutput|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux33~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11) $ (((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9) & 
-- \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10)))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10),
	combout => \displayOutput|Mux33~0_combout\);

-- Location: FF_X81_Y11_N29
\displayOutput|int_display3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux33~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display3\(1));

-- Location: LCCOMB_X81_Y11_N26
\displayOutput|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux32~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10),
	combout => \displayOutput|Mux32~0_combout\);

-- Location: FF_X81_Y11_N27
\displayOutput|int_display3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux32~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display3\(2));

-- Location: LCCOMB_X81_Y11_N4
\displayOutput|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux31~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9) $ (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10)))))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10),
	combout => \displayOutput|Mux31~0_combout\);

-- Location: FF_X81_Y11_N5
\displayOutput|int_display3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux31~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display3\(3));

-- Location: LCCOMB_X81_Y11_N2
\displayOutput|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux30~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8)) # 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10),
	combout => \displayOutput|Mux30~0_combout\);

-- Location: FF_X81_Y11_N3
\displayOutput|int_display3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux30~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display3\(4));

-- Location: LCCOMB_X81_Y11_N0
\displayOutput|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux29~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) & ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10)))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10),
	combout => \displayOutput|Mux29~0_combout\);

-- Location: FF_X81_Y11_N1
\displayOutput|int_display3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux29~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display3\(5));

-- Location: LCCOMB_X81_Y11_N18
\displayOutput|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux28~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(8),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(9),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(11),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(10),
	combout => \displayOutput|Mux28~0_combout\);

-- Location: FF_X81_Y11_N19
\displayOutput|int_display3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux28~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display3\(6));

-- Location: LCCOMB_X79_Y11_N26
\displayOutput|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux41~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13),
	combout => \displayOutput|Mux41~0_combout\);

-- Location: LCCOMB_X82_Y11_N30
\displayOutput|int_display4[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display4[0]~feeder_combout\ = \displayOutput|Mux41~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \displayOutput|Mux41~0_combout\,
	combout => \displayOutput|int_display4[0]~feeder_combout\);

-- Location: FF_X82_Y11_N31
\displayOutput|int_display4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display4[0]~feeder_combout\,
	asdata => VCC,
	sload => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display4\(0));

-- Location: LCCOMB_X80_Y11_N20
\displayOutput|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux40~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15)) # ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12) 
-- & \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14),
	combout => \displayOutput|Mux40~0_combout\);

-- Location: FF_X80_Y11_N21
\displayOutput|int_display4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux40~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display4\(1));

-- Location: LCCOMB_X79_Y11_N20
\displayOutput|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux39~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13),
	combout => \displayOutput|Mux39~0_combout\);

-- Location: FF_X79_Y11_N21
\displayOutput|int_display4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux39~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display4\(2));

-- Location: LCCOMB_X80_Y11_N10
\displayOutput|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux38~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14))))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14),
	combout => \displayOutput|Mux38~0_combout\);

-- Location: FF_X80_Y11_N11
\displayOutput|int_display4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux38~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display4\(3));

-- Location: LCCOMB_X80_Y11_N8
\displayOutput|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux37~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15) & (((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13) & \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14),
	combout => \displayOutput|Mux37~0_combout\);

-- Location: FF_X80_Y11_N9
\displayOutput|int_display4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux37~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display4\(4));

-- Location: LCCOMB_X80_Y11_N26
\displayOutput|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux36~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12) & ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14)))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14),
	combout => \displayOutput|Mux36~0_combout\);

-- Location: FF_X80_Y11_N27
\displayOutput|int_display4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux36~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display4\(5));

-- Location: LCCOMB_X80_Y11_N24
\displayOutput|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux35~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(15),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(13),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(12),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(14),
	combout => \displayOutput|Mux35~0_combout\);

-- Location: FF_X80_Y11_N25
\displayOutput|int_display4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux35~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display4\(6));

-- Location: LCCOMB_X82_Y11_N0
\displayOutput|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux48~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19),
	combout => \displayOutput|Mux48~0_combout\);

-- Location: LCCOMB_X82_Y11_N12
\displayOutput|int_display5[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display5[0]~feeder_combout\ = \displayOutput|Mux48~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \displayOutput|Mux48~0_combout\,
	combout => \displayOutput|int_display5[0]~feeder_combout\);

-- Location: FF_X82_Y11_N13
\displayOutput|int_display5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display5[0]~feeder_combout\,
	asdata => VCC,
	sload => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display5\(0));

-- Location: LCCOMB_X81_Y11_N8
\displayOutput|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux47~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19) $ (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & 
-- !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18)) # 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19),
	combout => \displayOutput|Mux47~0_combout\);

-- Location: FF_X81_Y11_N9
\displayOutput|int_display5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux47~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display5\(1));

-- Location: LCCOMB_X81_Y11_N14
\displayOutput|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux46~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19),
	combout => \displayOutput|Mux46~0_combout\);

-- Location: FF_X81_Y11_N15
\displayOutput|int_display5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux46~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display5\(2));

-- Location: LCCOMB_X81_Y11_N16
\displayOutput|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux45~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) $ ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19),
	combout => \displayOutput|Mux45~0_combout\);

-- Location: FF_X81_Y11_N17
\displayOutput|int_display5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux45~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display5\(3));

-- Location: LCCOMB_X81_Y11_N10
\displayOutput|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux44~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16)) # 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19),
	combout => \displayOutput|Mux44~0_combout\);

-- Location: FF_X81_Y11_N11
\displayOutput|int_display5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux44~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display5\(4));

-- Location: LCCOMB_X81_Y11_N24
\displayOutput|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux43~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & 
-- ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19),
	combout => \displayOutput|Mux43~0_combout\);

-- Location: FF_X81_Y11_N25
\displayOutput|int_display5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux43~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display5\(5));

-- Location: LCCOMB_X81_Y11_N30
\displayOutput|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux42~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(16),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(18),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(17),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(19),
	combout => \displayOutput|Mux42~0_combout\);

-- Location: FF_X81_Y11_N31
\displayOutput|int_display5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux42~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display5\(6));

-- Location: LCCOMB_X82_Y11_N14
\displayOutput|int_display6[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display6[0]~feeder_combout\ = \displayOutput|Mux55~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOutput|Mux55~0_combout\,
	combout => \displayOutput|int_display6[0]~feeder_combout\);

-- Location: FF_X82_Y11_N15
\displayOutput|int_display6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display6[0]~feeder_combout\,
	asdata => VCC,
	sload => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display6\(0));

-- Location: LCCOMB_X80_Y11_N6
\displayOutput|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux54~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23)) # ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & 
-- !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20),
	combout => \displayOutput|Mux54~0_combout\);

-- Location: FF_X80_Y11_N7
\displayOutput|int_display6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux54~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display6\(1));

-- Location: LCCOMB_X80_Y11_N16
\displayOutput|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux53~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23)) # 
-- ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) & ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20),
	combout => \displayOutput|Mux53~0_combout\);

-- Location: FF_X80_Y11_N17
\displayOutput|int_display6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux53~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display6\(2));

-- Location: LCCOMB_X80_Y11_N14
\displayOutput|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux52~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) $ 
-- (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22)))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20),
	combout => \displayOutput|Mux52~0_combout\);

-- Location: FF_X80_Y11_N15
\displayOutput|int_display6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux52~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display6\(3));

-- Location: LCCOMB_X80_Y11_N28
\displayOutput|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux51~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & (((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20),
	combout => \displayOutput|Mux51~0_combout\);

-- Location: FF_X80_Y11_N29
\displayOutput|int_display6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux51~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display6\(4));

-- Location: LCCOMB_X80_Y11_N30
\displayOutput|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux50~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20) & ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22)))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20),
	combout => \displayOutput|Mux50~0_combout\);

-- Location: FF_X80_Y11_N31
\displayOutput|int_display6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux50~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display6\(5));

-- Location: LCCOMB_X80_Y11_N12
\displayOutput|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux49~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(21),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(23),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(22),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(20),
	combout => \displayOutput|Mux49~0_combout\);

-- Location: FF_X80_Y11_N13
\displayOutput|int_display6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux49~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display6\(6));

-- Location: LCCOMB_X82_Y11_N8
\displayOutput|int_display7[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display7[0]~feeder_combout\ = \displayOutput|Mux62~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOutput|Mux62~0_combout\,
	combout => \displayOutput|int_display7[0]~feeder_combout\);

-- Location: FF_X82_Y11_N9
\displayOutput|int_display7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display7[0]~feeder_combout\,
	asdata => VCC,
	sload => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display7\(0));

-- Location: LCCOMB_X79_Y11_N30
\displayOutput|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux61~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27)) # ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26) & 
-- !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24),
	combout => \displayOutput|Mux61~0_combout\);

-- Location: FF_X79_Y11_N31
\displayOutput|int_display7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux61~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display7\(1));

-- Location: LCCOMB_X80_Y11_N18
\displayOutput|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux60~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27)) # 
-- ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26) & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26) & ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24),
	combout => \displayOutput|Mux60~0_combout\);

-- Location: FF_X80_Y11_N19
\displayOutput|int_display7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux60~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display7\(2));

-- Location: LCCOMB_X80_Y11_N0
\displayOutput|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux59~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) $ 
-- (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26)))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24),
	combout => \displayOutput|Mux59~0_combout\);

-- Location: FF_X80_Y11_N1
\displayOutput|int_display7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux59~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display7\(3));

-- Location: LCCOMB_X79_Y11_N4
\displayOutput|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux58~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) & (((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) & \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24),
	combout => \displayOutput|Mux58~0_combout\);

-- Location: FF_X79_Y11_N5
\displayOutput|int_display7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux58~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display7\(4));

-- Location: LCCOMB_X79_Y11_N22
\displayOutput|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux57~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24) & ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26)))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24),
	combout => \displayOutput|Mux57~0_combout\);

-- Location: FF_X79_Y11_N23
\displayOutput|int_display7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux57~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display7\(5));

-- Location: LCCOMB_X80_Y11_N22
\displayOutput|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux56~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(25),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(27),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(26),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(24),
	combout => \displayOutput|Mux56~0_combout\);

-- Location: FF_X80_Y11_N23
\displayOutput|int_display7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux56~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display7\(6));

-- Location: LCCOMB_X79_Y11_N10
\displayOutput|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux69~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29)) # 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) $ (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	combout => \displayOutput|Mux69~0_combout\);

-- Location: LCCOMB_X82_Y11_N6
\displayOutput|int_display8[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|int_display8[0]~feeder_combout\ = \displayOutput|Mux69~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \displayOutput|Mux69~0_combout\,
	combout => \displayOutput|int_display8[0]~feeder_combout\);

-- Location: FF_X82_Y11_N7
\displayOutput|int_display8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|int_display8[0]~feeder_combout\,
	asdata => VCC,
	sload => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display8\(0));

-- Location: LCCOMB_X80_Y11_N4
\displayOutput|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux68~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31)) # 
-- ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	combout => \displayOutput|Mux68~0_combout\);

-- Location: FF_X80_Y11_N5
\displayOutput|int_display8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux68~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display8\(1));

-- Location: LCCOMB_X79_Y11_N12
\displayOutput|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux67~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31)) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) & 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) & ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	combout => \displayOutput|Mux67~0_combout\);

-- Location: FF_X79_Y11_N13
\displayOutput|int_display8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux67~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display8\(2));

-- Location: LCCOMB_X81_Y11_N12
\displayOutput|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux66~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) $ 
-- (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29)))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) & 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) & 
-- ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	combout => \displayOutput|Mux66~0_combout\);

-- Location: FF_X81_Y11_N13
\displayOutput|int_display8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux66~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display8\(3));

-- Location: LCCOMB_X80_Y11_N2
\displayOutput|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux65~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & (((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & !\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29))) 
-- # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30)) # 
-- ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28)) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	combout => \displayOutput|Mux65~0_combout\);

-- Location: FF_X80_Y11_N3
\displayOutput|int_display8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux65~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display8\(4));

-- Location: LCCOMB_X81_Y11_N22
\displayOutput|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux64~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & 
-- ((!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29)))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) & (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30))))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28) $ (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29))) # 
-- (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	combout => \displayOutput|Mux64~0_combout\);

-- Location: FF_X81_Y11_N23
\displayOutput|int_display8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux64~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display8\(5));

-- Location: LCCOMB_X81_Y11_N20
\displayOutput|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOutput|Mux63~0_combout\ = (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29)) # (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28))))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30) & ((\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31) $ 
-- (\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29))) # (!\instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(30),
	datab => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(31),
	datac => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(28),
	datad => \instructionMem|instructionMem|srom|rom_block|auto_generated|q_a\(29),
	combout => \displayOutput|Mux63~0_combout\);

-- Location: FF_X81_Y11_N21
\displayOutput|int_display8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \displayOutput|Mux63~0_combout\,
	sclr => \displayOutput|swap~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayOutput|int_display8\(6));

ww_MuxOut(0) <= \MuxOut[0]~output_o\;

ww_MuxOut(1) <= \MuxOut[1]~output_o\;

ww_MuxOut(2) <= \MuxOut[2]~output_o\;

ww_MuxOut(3) <= \MuxOut[3]~output_o\;

ww_MuxOut(4) <= \MuxOut[4]~output_o\;

ww_MuxOut(5) <= \MuxOut[5]~output_o\;

ww_MuxOut(6) <= \MuxOut[6]~output_o\;

ww_MuxOut(7) <= \MuxOut[7]~output_o\;

ww_InstructionOut(0) <= \InstructionOut[0]~output_o\;

ww_InstructionOut(1) <= \InstructionOut[1]~output_o\;

ww_InstructionOut(2) <= \InstructionOut[2]~output_o\;

ww_InstructionOut(3) <= \InstructionOut[3]~output_o\;

ww_InstructionOut(4) <= \InstructionOut[4]~output_o\;

ww_InstructionOut(5) <= \InstructionOut[5]~output_o\;

ww_InstructionOut(6) <= \InstructionOut[6]~output_o\;

ww_InstructionOut(7) <= \InstructionOut[7]~output_o\;

ww_InstructionOut(8) <= \InstructionOut[8]~output_o\;

ww_InstructionOut(9) <= \InstructionOut[9]~output_o\;

ww_InstructionOut(10) <= \InstructionOut[10]~output_o\;

ww_InstructionOut(11) <= \InstructionOut[11]~output_o\;

ww_InstructionOut(12) <= \InstructionOut[12]~output_o\;

ww_InstructionOut(13) <= \InstructionOut[13]~output_o\;

ww_InstructionOut(14) <= \InstructionOut[14]~output_o\;

ww_InstructionOut(15) <= \InstructionOut[15]~output_o\;

ww_InstructionOut(16) <= \InstructionOut[16]~output_o\;

ww_InstructionOut(17) <= \InstructionOut[17]~output_o\;

ww_InstructionOut(18) <= \InstructionOut[18]~output_o\;

ww_InstructionOut(19) <= \InstructionOut[19]~output_o\;

ww_InstructionOut(20) <= \InstructionOut[20]~output_o\;

ww_InstructionOut(21) <= \InstructionOut[21]~output_o\;

ww_InstructionOut(22) <= \InstructionOut[22]~output_o\;

ww_InstructionOut(23) <= \InstructionOut[23]~output_o\;

ww_InstructionOut(24) <= \InstructionOut[24]~output_o\;

ww_InstructionOut(25) <= \InstructionOut[25]~output_o\;

ww_InstructionOut(26) <= \InstructionOut[26]~output_o\;

ww_InstructionOut(27) <= \InstructionOut[27]~output_o\;

ww_InstructionOut(28) <= \InstructionOut[28]~output_o\;

ww_InstructionOut(29) <= \InstructionOut[29]~output_o\;

ww_InstructionOut(30) <= \InstructionOut[30]~output_o\;

ww_InstructionOut(31) <= \InstructionOut[31]~output_o\;

ww_BranchOut <= \BranchOut~output_o\;

ww_ZeroOut <= \ZeroOut~output_o\;

ww_MemWriteOut <= \MemWriteOut~output_o\;

ww_RegWriteOut <= \RegWriteOut~output_o\;

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

ww_o_display4(0) <= \o_display4[0]~output_o\;

ww_o_display4(1) <= \o_display4[1]~output_o\;

ww_o_display4(2) <= \o_display4[2]~output_o\;

ww_o_display4(3) <= \o_display4[3]~output_o\;

ww_o_display4(4) <= \o_display4[4]~output_o\;

ww_o_display4(5) <= \o_display4[5]~output_o\;

ww_o_display4(6) <= \o_display4[6]~output_o\;

ww_o_display5(0) <= \o_display5[0]~output_o\;

ww_o_display5(1) <= \o_display5[1]~output_o\;

ww_o_display5(2) <= \o_display5[2]~output_o\;

ww_o_display5(3) <= \o_display5[3]~output_o\;

ww_o_display5(4) <= \o_display5[4]~output_o\;

ww_o_display5(5) <= \o_display5[5]~output_o\;

ww_o_display5(6) <= \o_display5[6]~output_o\;

ww_o_display6(0) <= \o_display6[0]~output_o\;

ww_o_display6(1) <= \o_display6[1]~output_o\;

ww_o_display6(2) <= \o_display6[2]~output_o\;

ww_o_display6(3) <= \o_display6[3]~output_o\;

ww_o_display6(4) <= \o_display6[4]~output_o\;

ww_o_display6(5) <= \o_display6[5]~output_o\;

ww_o_display6(6) <= \o_display6[6]~output_o\;

ww_o_display7(0) <= \o_display7[0]~output_o\;

ww_o_display7(1) <= \o_display7[1]~output_o\;

ww_o_display7(2) <= \o_display7[2]~output_o\;

ww_o_display7(3) <= \o_display7[3]~output_o\;

ww_o_display7(4) <= \o_display7[4]~output_o\;

ww_o_display7(5) <= \o_display7[5]~output_o\;

ww_o_display7(6) <= \o_display7[6]~output_o\;

ww_o_display8(0) <= \o_display8[0]~output_o\;

ww_o_display8(1) <= \o_display8[1]~output_o\;

ww_o_display8(2) <= \o_display8[2]~output_o\;

ww_o_display8(3) <= \o_display8[3]~output_o\;

ww_o_display8(4) <= \o_display8[4]~output_o\;

ww_o_display8(5) <= \o_display8[5]~output_o\;

ww_o_display8(6) <= \o_display8[6]~output_o\;
END structure;


