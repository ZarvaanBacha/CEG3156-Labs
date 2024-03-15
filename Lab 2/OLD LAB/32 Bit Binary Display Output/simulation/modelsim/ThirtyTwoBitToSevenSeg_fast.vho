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

-- DATE "01/30/2024 23:15:58"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ThirtyTwoBitToSevenSeg IS
    PORT (
	i_swapButton : IN std_logic;
	i_MuxOut : IN std_logic_vector(7 DOWNTO 0);
	i_instOut : IN std_logic_vector(31 DOWNTO 0);
	o_display1 : OUT std_logic_vector(6 DOWNTO 0);
	o_display2 : OUT std_logic_vector(6 DOWNTO 0);
	o_display3 : OUT std_logic_vector(6 DOWNTO 0);
	o_display4 : OUT std_logic_vector(6 DOWNTO 0);
	o_display5 : OUT std_logic_vector(6 DOWNTO 0);
	o_display6 : OUT std_logic_vector(6 DOWNTO 0);
	o_display7 : OUT std_logic_vector(6 DOWNTO 0);
	o_display8 : OUT std_logic_vector(6 DOWNTO 0)
	);
END ThirtyTwoBitToSevenSeg;

-- Design Ports Information
-- o_display1[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display1[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display1[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display1[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display1[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display1[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display1[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display2[0]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display2[1]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display2[2]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display2[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display2[4]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display2[5]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display2[6]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display3[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display3[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display3[2]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display3[3]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display3[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display3[5]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display3[6]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display4[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display4[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display4[2]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display4[3]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display4[4]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display4[5]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display4[6]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display5[0]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display5[1]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display5[2]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display5[3]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display5[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display5[5]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display5[6]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display6[0]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display6[1]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display6[2]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display6[3]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display6[4]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display6[5]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display6[6]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display7[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display7[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display7[2]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display7[3]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display7[4]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display7[5]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display7[6]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display8[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display8[1]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display8[2]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display8[3]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display8[4]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display8[5]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_display8[6]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_MuxOut[0]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_MuxOut[1]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_MuxOut[2]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_MuxOut[3]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[0]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[1]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[3]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_swapButton	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_MuxOut[4]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_MuxOut[5]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_MuxOut[6]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_MuxOut[7]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[4]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[5]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[6]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[7]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[8]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[9]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[10]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[11]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[12]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[13]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[14]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[15]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[16]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[17]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[18]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[19]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[20]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[21]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[22]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[23]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[24]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[25]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[26]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[27]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[28]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[29]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[30]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_instOut[31]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_i_swapButton : std_logic;
SIGNAL ww_i_MuxOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_instOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_o_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display8 : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \i_swapButton~combout\ : std_logic;
SIGNAL \int_display1~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \int_display1~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \int_display1~2_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \int_display1~3_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \int_display1~4_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \int_display1~5_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \int_display1~6_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \int_display2~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \int_display2~1_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \int_display2~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \int_display2~3_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \int_display2~4_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \int_display2~5_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \int_display2~6_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \Mux69~1_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Mux68~1_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux67~1_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux66~1_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux65~1_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux64~1_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \i_instOut~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i_MuxOut~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Mux50~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux51~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux47~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \ALT_INV_int_display2~6_combout\ : std_logic;
SIGNAL \ALT_INV_int_display2~5_combout\ : std_logic;
SIGNAL \ALT_INV_int_display2~4_combout\ : std_logic;
SIGNAL \ALT_INV_int_display2~3_combout\ : std_logic;
SIGNAL \ALT_INV_int_display2~2_combout\ : std_logic;
SIGNAL \ALT_INV_int_display2~1_combout\ : std_logic;
SIGNAL \ALT_INV_int_display1~6_combout\ : std_logic;
SIGNAL \ALT_INV_int_display1~5_combout\ : std_logic;
SIGNAL \ALT_INV_int_display1~4_combout\ : std_logic;
SIGNAL \ALT_INV_int_display1~3_combout\ : std_logic;
SIGNAL \ALT_INV_int_display1~2_combout\ : std_logic;
SIGNAL \ALT_INV_int_display1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux63~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux66~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux67~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux68~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~1_combout\ : std_logic;

BEGIN

ww_i_swapButton <= i_swapButton;
ww_i_MuxOut <= i_MuxOut;
ww_i_instOut <= i_instOut;
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
\ALT_INV_Mux50~1_combout\ <= NOT \Mux50~1_combout\;
\ALT_INV_Mux51~1_combout\ <= NOT \Mux51~1_combout\;
\ALT_INV_Mux52~1_combout\ <= NOT \Mux52~1_combout\;
\ALT_INV_Mux53~1_combout\ <= NOT \Mux53~1_combout\;
\ALT_INV_Mux54~1_combout\ <= NOT \Mux54~1_combout\;
\ALT_INV_Mux42~1_combout\ <= NOT \Mux42~1_combout\;
\ALT_INV_Mux43~1_combout\ <= NOT \Mux43~1_combout\;
\ALT_INV_Mux44~1_combout\ <= NOT \Mux44~1_combout\;
\ALT_INV_Mux45~1_combout\ <= NOT \Mux45~1_combout\;
\ALT_INV_Mux46~1_combout\ <= NOT \Mux46~1_combout\;
\ALT_INV_Mux47~1_combout\ <= NOT \Mux47~1_combout\;
\ALT_INV_Mux35~1_combout\ <= NOT \Mux35~1_combout\;
\ALT_INV_Mux36~1_combout\ <= NOT \Mux36~1_combout\;
\ALT_INV_Mux37~1_combout\ <= NOT \Mux37~1_combout\;
\ALT_INV_Mux38~1_combout\ <= NOT \Mux38~1_combout\;
\ALT_INV_Mux39~1_combout\ <= NOT \Mux39~1_combout\;
\ALT_INV_Mux40~1_combout\ <= NOT \Mux40~1_combout\;
\ALT_INV_Mux28~1_combout\ <= NOT \Mux28~1_combout\;
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\ALT_INV_Mux30~1_combout\ <= NOT \Mux30~1_combout\;
\ALT_INV_Mux31~1_combout\ <= NOT \Mux31~1_combout\;
\ALT_INV_Mux32~1_combout\ <= NOT \Mux32~1_combout\;
\ALT_INV_Mux33~1_combout\ <= NOT \Mux33~1_combout\;
\ALT_INV_int_display2~6_combout\ <= NOT \int_display2~6_combout\;
\ALT_INV_int_display2~5_combout\ <= NOT \int_display2~5_combout\;
\ALT_INV_int_display2~4_combout\ <= NOT \int_display2~4_combout\;
\ALT_INV_int_display2~3_combout\ <= NOT \int_display2~3_combout\;
\ALT_INV_int_display2~2_combout\ <= NOT \int_display2~2_combout\;
\ALT_INV_int_display2~1_combout\ <= NOT \int_display2~1_combout\;
\ALT_INV_int_display1~6_combout\ <= NOT \int_display1~6_combout\;
\ALT_INV_int_display1~5_combout\ <= NOT \int_display1~5_combout\;
\ALT_INV_int_display1~4_combout\ <= NOT \int_display1~4_combout\;
\ALT_INV_int_display1~3_combout\ <= NOT \int_display1~3_combout\;
\ALT_INV_int_display1~2_combout\ <= NOT \int_display1~2_combout\;
\ALT_INV_int_display1~1_combout\ <= NOT \int_display1~1_combout\;
\ALT_INV_Mux63~1_combout\ <= NOT \Mux63~1_combout\;
\ALT_INV_Mux64~1_combout\ <= NOT \Mux64~1_combout\;
\ALT_INV_Mux65~1_combout\ <= NOT \Mux65~1_combout\;
\ALT_INV_Mux66~1_combout\ <= NOT \Mux66~1_combout\;
\ALT_INV_Mux67~1_combout\ <= NOT \Mux67~1_combout\;
\ALT_INV_Mux68~1_combout\ <= NOT \Mux68~1_combout\;
\ALT_INV_Mux56~1_combout\ <= NOT \Mux56~1_combout\;
\ALT_INV_Mux57~1_combout\ <= NOT \Mux57~1_combout\;
\ALT_INV_Mux58~1_combout\ <= NOT \Mux58~1_combout\;
\ALT_INV_Mux59~1_combout\ <= NOT \Mux59~1_combout\;
\ALT_INV_Mux60~1_combout\ <= NOT \Mux60~1_combout\;
\ALT_INV_Mux61~1_combout\ <= NOT \Mux61~1_combout\;
\ALT_INV_Mux49~1_combout\ <= NOT \Mux49~1_combout\;

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_MuxOut[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_MuxOut(1),
	combout => \i_MuxOut~combout\(1));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(1),
	combout => \i_instOut~combout\(1));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_MuxOut[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_MuxOut(6),
	combout => \i_MuxOut~combout\(6));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(7),
	combout => \i_instOut~combout\(7));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(9),
	combout => \i_instOut~combout\(9));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(12),
	combout => \i_instOut~combout\(12));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(17),
	combout => \i_instOut~combout\(17));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(20),
	combout => \i_instOut~combout\(20));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(25),
	combout => \i_instOut~combout\(25));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(29),
	combout => \i_instOut~combout\(29));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_MuxOut[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_MuxOut(3),
	combout => \i_MuxOut~combout\(3));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_MuxOut[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_MuxOut(0),
	combout => \i_MuxOut~combout\(0));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_MuxOut[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_MuxOut(2),
	combout => \i_MuxOut~combout\(2));

-- Location: LCCOMB_X64_Y24_N16
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\i_MuxOut~combout\(0) & ((\i_MuxOut~combout\(3)) # (\i_MuxOut~combout\(1) $ (\i_MuxOut~combout\(2))))) # (!\i_MuxOut~combout\(0) & ((\i_MuxOut~combout\(1)) # (\i_MuxOut~combout\(3) $ (\i_MuxOut~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(1),
	datab => \i_MuxOut~combout\(3),
	datac => \i_MuxOut~combout\(0),
	datad => \i_MuxOut~combout\(2),
	combout => \Mux6~0_combout\);

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(3),
	combout => \i_instOut~combout\(3));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(2),
	combout => \i_instOut~combout\(2));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(0),
	combout => \i_instOut~combout\(0));

-- Location: LCCOMB_X64_Y21_N24
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\i_instOut~combout\(0) & ((\i_instOut~combout\(3)) # (\i_instOut~combout\(1) $ (\i_instOut~combout\(2))))) # (!\i_instOut~combout\(0) & ((\i_instOut~combout\(1)) # (\i_instOut~combout\(3) $ (\i_instOut~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(1),
	datab => \i_instOut~combout\(3),
	datac => \i_instOut~combout\(2),
	datad => \i_instOut~combout\(0),
	combout => \Mux20~0_combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_swapButton~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_swapButton,
	combout => \i_swapButton~combout\);

-- Location: LCCOMB_X64_Y21_N18
\int_display1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display1~0_combout\ = (\i_swapButton~combout\ & (\Mux6~0_combout\)) # (!\i_swapButton~combout\ & ((\Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datac => \Mux20~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \int_display1~0_combout\);

-- Location: LCCOMB_X64_Y21_N12
\Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\i_instOut~combout\(1) & (!\i_instOut~combout\(3) & ((\i_instOut~combout\(0)) # (!\i_instOut~combout\(2))))) # (!\i_instOut~combout\(1) & (\i_instOut~combout\(0) & (\i_instOut~combout\(3) $ (!\i_instOut~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(1),
	datab => \i_instOut~combout\(3),
	datac => \i_instOut~combout\(2),
	datad => \i_instOut~combout\(0),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X64_Y24_N26
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\i_MuxOut~combout\(1) & (!\i_MuxOut~combout\(3) & ((\i_MuxOut~combout\(0)) # (!\i_MuxOut~combout\(2))))) # (!\i_MuxOut~combout\(1) & (\i_MuxOut~combout\(0) & (\i_MuxOut~combout\(3) $ (!\i_MuxOut~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(1),
	datab => \i_MuxOut~combout\(3),
	datac => \i_MuxOut~combout\(0),
	datad => \i_MuxOut~combout\(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X64_Y21_N6
\int_display1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display1~1_combout\ = (\i_swapButton~combout\ & ((\Mux5~0_combout\))) # (!\i_swapButton~combout\ & (\Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux5~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \int_display1~1_combout\);

-- Location: LCCOMB_X64_Y21_N0
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\i_instOut~combout\(1) & (!\i_instOut~combout\(3) & ((\i_instOut~combout\(0))))) # (!\i_instOut~combout\(1) & ((\i_instOut~combout\(2) & (!\i_instOut~combout\(3))) # (!\i_instOut~combout\(2) & ((\i_instOut~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(1),
	datab => \i_instOut~combout\(3),
	datac => \i_instOut~combout\(2),
	datad => \i_instOut~combout\(0),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X64_Y24_N28
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\i_MuxOut~combout\(1) & (!\i_MuxOut~combout\(3) & (\i_MuxOut~combout\(0)))) # (!\i_MuxOut~combout\(1) & ((\i_MuxOut~combout\(2) & (!\i_MuxOut~combout\(3))) # (!\i_MuxOut~combout\(2) & ((\i_MuxOut~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(1),
	datab => \i_MuxOut~combout\(3),
	datac => \i_MuxOut~combout\(0),
	datad => \i_MuxOut~combout\(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X64_Y21_N10
\int_display1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display1~2_combout\ = (\i_swapButton~combout\ & ((\Mux4~0_combout\))) # (!\i_swapButton~combout\ & (\Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~0_combout\,
	datac => \Mux4~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \int_display1~2_combout\);

-- Location: LCCOMB_X64_Y21_N4
\Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\i_instOut~combout\(0) & (\i_instOut~combout\(1) $ (((!\i_instOut~combout\(2)))))) # (!\i_instOut~combout\(0) & ((\i_instOut~combout\(1) & (\i_instOut~combout\(3) & !\i_instOut~combout\(2))) # (!\i_instOut~combout\(1) & 
-- (!\i_instOut~combout\(3) & \i_instOut~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(1),
	datab => \i_instOut~combout\(3),
	datac => \i_instOut~combout\(2),
	datad => \i_instOut~combout\(0),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X64_Y24_N30
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\i_MuxOut~combout\(0) & (\i_MuxOut~combout\(1) $ (((!\i_MuxOut~combout\(2)))))) # (!\i_MuxOut~combout\(0) & ((\i_MuxOut~combout\(1) & (\i_MuxOut~combout\(3) & !\i_MuxOut~combout\(2))) # (!\i_MuxOut~combout\(1) & (!\i_MuxOut~combout\(3) 
-- & \i_MuxOut~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(1),
	datab => \i_MuxOut~combout\(3),
	datac => \i_MuxOut~combout\(0),
	datad => \i_MuxOut~combout\(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X23_Y32_N24
\int_display1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display1~3_combout\ = (\i_swapButton~combout\ & ((\Mux3~0_combout\))) # (!\i_swapButton~combout\ & (\Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \i_swapButton~combout\,
	datac => \Mux3~0_combout\,
	combout => \int_display1~3_combout\);

-- Location: LCCOMB_X64_Y21_N30
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\i_instOut~combout\(3) & (\i_instOut~combout\(2) & ((\i_instOut~combout\(1)) # (!\i_instOut~combout\(0))))) # (!\i_instOut~combout\(3) & (\i_instOut~combout\(1) & (!\i_instOut~combout\(2) & !\i_instOut~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(1),
	datab => \i_instOut~combout\(3),
	datac => \i_instOut~combout\(2),
	datad => \i_instOut~combout\(0),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X64_Y24_N8
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\i_MuxOut~combout\(3) & (\i_MuxOut~combout\(2) & ((\i_MuxOut~combout\(1)) # (!\i_MuxOut~combout\(0))))) # (!\i_MuxOut~combout\(3) & (\i_MuxOut~combout\(1) & (!\i_MuxOut~combout\(0) & !\i_MuxOut~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(1),
	datab => \i_MuxOut~combout\(3),
	datac => \i_MuxOut~combout\(0),
	datad => \i_MuxOut~combout\(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X64_Y21_N8
\int_display1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display1~4_combout\ = (\i_swapButton~combout\ & ((\Mux2~0_combout\))) # (!\i_swapButton~combout\ & (\Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \int_display1~4_combout\);

-- Location: LCCOMB_X64_Y21_N26
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\i_instOut~combout\(1) & ((\i_instOut~combout\(0) & (\i_instOut~combout\(3))) # (!\i_instOut~combout\(0) & ((\i_instOut~combout\(2)))))) # (!\i_instOut~combout\(1) & (\i_instOut~combout\(2) & (\i_instOut~combout\(3) $ 
-- (\i_instOut~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(1),
	datab => \i_instOut~combout\(3),
	datac => \i_instOut~combout\(2),
	datad => \i_instOut~combout\(0),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X64_Y24_N18
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\i_MuxOut~combout\(1) & ((\i_MuxOut~combout\(0) & (\i_MuxOut~combout\(3))) # (!\i_MuxOut~combout\(0) & ((\i_MuxOut~combout\(2)))))) # (!\i_MuxOut~combout\(1) & (\i_MuxOut~combout\(2) & (\i_MuxOut~combout\(3) $ 
-- (\i_MuxOut~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(1),
	datab => \i_MuxOut~combout\(3),
	datac => \i_MuxOut~combout\(0),
	datad => \i_MuxOut~combout\(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X64_Y21_N28
\int_display1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display1~5_combout\ = (\i_swapButton~combout\ & ((\Mux1~0_combout\))) # (!\i_swapButton~combout\ & (\Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \int_display1~5_combout\);

-- Location: LCCOMB_X64_Y21_N22
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\i_instOut~combout\(3) & (\i_instOut~combout\(0) & (\i_instOut~combout\(1) $ (\i_instOut~combout\(2))))) # (!\i_instOut~combout\(3) & (!\i_instOut~combout\(1) & (\i_instOut~combout\(2) $ (\i_instOut~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(1),
	datab => \i_instOut~combout\(3),
	datac => \i_instOut~combout\(2),
	datad => \i_instOut~combout\(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X64_Y24_N4
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\i_MuxOut~combout\(3) & (\i_MuxOut~combout\(0) & (\i_MuxOut~combout\(1) $ (\i_MuxOut~combout\(2))))) # (!\i_MuxOut~combout\(3) & (!\i_MuxOut~combout\(1) & (\i_MuxOut~combout\(0) $ (\i_MuxOut~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(1),
	datab => \i_MuxOut~combout\(3),
	datac => \i_MuxOut~combout\(0),
	datad => \i_MuxOut~combout\(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X64_Y21_N16
\int_display1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display1~6_combout\ = (\i_swapButton~combout\ & ((\Mux0~0_combout\))) # (!\i_swapButton~combout\ & (\Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~0_combout\,
	datac => \Mux0~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \int_display1~6_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(4),
	combout => \i_instOut~combout\(4));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(6),
	combout => \i_instOut~combout\(6));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(5),
	combout => \i_instOut~combout\(5));

-- Location: LCCOMB_X64_Y20_N2
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\i_instOut~combout\(4) & ((\i_instOut~combout\(7)) # (\i_instOut~combout\(6) $ (\i_instOut~combout\(5))))) # (!\i_instOut~combout\(4) & ((\i_instOut~combout\(5)) # (\i_instOut~combout\(7) $ (\i_instOut~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(7),
	datab => \i_instOut~combout\(4),
	datac => \i_instOut~combout\(6),
	datad => \i_instOut~combout\(5),
	combout => \Mux27~0_combout\);

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_MuxOut[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_MuxOut(4),
	combout => \i_MuxOut~combout\(4));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_MuxOut[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_MuxOut(7),
	combout => \i_MuxOut~combout\(7));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_MuxOut[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_MuxOut(5),
	combout => \i_MuxOut~combout\(5));

-- Location: LCCOMB_X64_Y20_N8
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\i_MuxOut~combout\(4) & ((\i_MuxOut~combout\(7)) # (\i_MuxOut~combout\(6) $ (\i_MuxOut~combout\(5))))) # (!\i_MuxOut~combout\(4) & ((\i_MuxOut~combout\(5)) # (\i_MuxOut~combout\(6) $ (\i_MuxOut~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(6),
	datab => \i_MuxOut~combout\(4),
	datac => \i_MuxOut~combout\(7),
	datad => \i_MuxOut~combout\(5),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X64_Y32_N0
\int_display2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display2~0_combout\ = (\i_swapButton~combout\ & ((\Mux13~0_combout\))) # (!\i_swapButton~combout\ & (\Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux27~0_combout\,
	datac => \i_swapButton~combout\,
	datad => \Mux13~0_combout\,
	combout => \int_display2~0_combout\);

-- Location: LCCOMB_X64_Y20_N14
\Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\i_instOut~combout\(4) & (\i_instOut~combout\(7) $ (((\i_instOut~combout\(5)) # (!\i_instOut~combout\(6)))))) # (!\i_instOut~combout\(4) & (!\i_instOut~combout\(7) & (!\i_instOut~combout\(6) & \i_instOut~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(7),
	datab => \i_instOut~combout\(4),
	datac => \i_instOut~combout\(6),
	datad => \i_instOut~combout\(5),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X64_Y20_N28
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\i_MuxOut~combout\(6) & (\i_MuxOut~combout\(4) & (\i_MuxOut~combout\(7) $ (\i_MuxOut~combout\(5))))) # (!\i_MuxOut~combout\(6) & (!\i_MuxOut~combout\(7) & ((\i_MuxOut~combout\(4)) # (\i_MuxOut~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(6),
	datab => \i_MuxOut~combout\(4),
	datac => \i_MuxOut~combout\(7),
	datad => \i_MuxOut~combout\(5),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X64_Y21_N2
\int_display2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display2~1_combout\ = (\i_swapButton~combout\ & ((\Mux12~0_combout\))) # (!\i_swapButton~combout\ & (\Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \int_display2~1_combout\);

-- Location: LCCOMB_X64_Y20_N10
\Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\i_instOut~combout\(5) & (!\i_instOut~combout\(7) & (\i_instOut~combout\(4)))) # (!\i_instOut~combout\(5) & ((\i_instOut~combout\(6) & (!\i_instOut~combout\(7))) # (!\i_instOut~combout\(6) & ((\i_instOut~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(7),
	datab => \i_instOut~combout\(4),
	datac => \i_instOut~combout\(6),
	datad => \i_instOut~combout\(5),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X64_Y20_N0
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\i_MuxOut~combout\(5) & (((\i_MuxOut~combout\(4) & !\i_MuxOut~combout\(7))))) # (!\i_MuxOut~combout\(5) & ((\i_MuxOut~combout\(6) & ((!\i_MuxOut~combout\(7)))) # (!\i_MuxOut~combout\(6) & (\i_MuxOut~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(6),
	datab => \i_MuxOut~combout\(4),
	datac => \i_MuxOut~combout\(7),
	datad => \i_MuxOut~combout\(5),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X64_Y21_N20
\int_display2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display2~2_combout\ = (\i_swapButton~combout\ & ((\Mux11~0_combout\))) # (!\i_swapButton~combout\ & (\Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \Mux11~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \int_display2~2_combout\);

-- Location: LCCOMB_X64_Y20_N4
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\i_MuxOut~combout\(4) & (\i_MuxOut~combout\(6) $ (((!\i_MuxOut~combout\(5)))))) # (!\i_MuxOut~combout\(4) & ((\i_MuxOut~combout\(6) & (!\i_MuxOut~combout\(7) & !\i_MuxOut~combout\(5))) # (!\i_MuxOut~combout\(6) & 
-- (\i_MuxOut~combout\(7) & \i_MuxOut~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(6),
	datab => \i_MuxOut~combout\(4),
	datac => \i_MuxOut~combout\(7),
	datad => \i_MuxOut~combout\(5),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X64_Y20_N6
\Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\i_instOut~combout\(4) & ((\i_instOut~combout\(6) $ (!\i_instOut~combout\(5))))) # (!\i_instOut~combout\(4) & ((\i_instOut~combout\(7) & (!\i_instOut~combout\(6) & \i_instOut~combout\(5))) # (!\i_instOut~combout\(7) & 
-- (\i_instOut~combout\(6) & !\i_instOut~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(7),
	datab => \i_instOut~combout\(4),
	datac => \i_instOut~combout\(6),
	datad => \i_instOut~combout\(5),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X23_Y32_N26
\int_display2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display2~3_combout\ = (\i_swapButton~combout\ & (\Mux10~0_combout\)) # (!\i_swapButton~combout\ & ((\Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~0_combout\,
	datac => \i_swapButton~combout\,
	datad => \Mux24~0_combout\,
	combout => \int_display2~3_combout\);

-- Location: LCCOMB_X64_Y20_N26
\Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\i_instOut~combout\(7) & (\i_instOut~combout\(6) & ((\i_instOut~combout\(5)) # (!\i_instOut~combout\(4))))) # (!\i_instOut~combout\(7) & (!\i_instOut~combout\(4) & (!\i_instOut~combout\(6) & \i_instOut~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(7),
	datab => \i_instOut~combout\(4),
	datac => \i_instOut~combout\(6),
	datad => \i_instOut~combout\(5),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X64_Y20_N24
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\i_MuxOut~combout\(6) & (\i_MuxOut~combout\(7) & ((\i_MuxOut~combout\(5)) # (!\i_MuxOut~combout\(4))))) # (!\i_MuxOut~combout\(6) & (!\i_MuxOut~combout\(4) & (!\i_MuxOut~combout\(7) & \i_MuxOut~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(6),
	datab => \i_MuxOut~combout\(4),
	datac => \i_MuxOut~combout\(7),
	datad => \i_MuxOut~combout\(5),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X64_Y20_N20
\int_display2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display2~4_combout\ = (\i_swapButton~combout\ & ((\Mux9~0_combout\))) # (!\i_swapButton~combout\ & (\Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux23~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \int_display2~4_combout\);

-- Location: LCCOMB_X64_Y20_N16
\Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\i_instOut~combout\(7) & ((\i_instOut~combout\(4) & ((\i_instOut~combout\(5)))) # (!\i_instOut~combout\(4) & (\i_instOut~combout\(6))))) # (!\i_instOut~combout\(7) & (\i_instOut~combout\(6) & (\i_instOut~combout\(4) $ 
-- (\i_instOut~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(7),
	datab => \i_instOut~combout\(4),
	datac => \i_instOut~combout\(6),
	datad => \i_instOut~combout\(5),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X64_Y20_N30
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\i_MuxOut~combout\(7) & ((\i_MuxOut~combout\(4) & ((\i_MuxOut~combout\(5)))) # (!\i_MuxOut~combout\(4) & (\i_MuxOut~combout\(6))))) # (!\i_MuxOut~combout\(7) & (\i_MuxOut~combout\(6) & (\i_MuxOut~combout\(4) $ 
-- (\i_MuxOut~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(6),
	datab => \i_MuxOut~combout\(4),
	datac => \i_MuxOut~combout\(7),
	datad => \i_MuxOut~combout\(5),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X64_Y21_N14
\int_display2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display2~5_combout\ = (\i_swapButton~combout\ & ((\Mux8~0_combout\))) # (!\i_swapButton~combout\ & (\Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datac => \Mux8~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \int_display2~5_combout\);

-- Location: LCCOMB_X64_Y20_N12
\Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\i_instOut~combout\(7) & (\i_instOut~combout\(4) & (\i_instOut~combout\(6) $ (\i_instOut~combout\(5))))) # (!\i_instOut~combout\(7) & (!\i_instOut~combout\(5) & (\i_instOut~combout\(4) $ (\i_instOut~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(7),
	datab => \i_instOut~combout\(4),
	datac => \i_instOut~combout\(6),
	datad => \i_instOut~combout\(5),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X64_Y20_N18
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\i_MuxOut~combout\(6) & (!\i_MuxOut~combout\(5) & (\i_MuxOut~combout\(4) $ (!\i_MuxOut~combout\(7))))) # (!\i_MuxOut~combout\(6) & (\i_MuxOut~combout\(4) & (\i_MuxOut~combout\(7) $ (!\i_MuxOut~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MuxOut~combout\(6),
	datab => \i_MuxOut~combout\(4),
	datac => \i_MuxOut~combout\(7),
	datad => \i_MuxOut~combout\(5),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X64_Y20_N22
\int_display2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_display2~6_combout\ = (\i_swapButton~combout\ & ((\Mux7~0_combout\))) # (!\i_swapButton~combout\ & (\Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux7~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \int_display2~6_combout\);

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(8),
	combout => \i_instOut~combout\(8));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(11),
	combout => \i_instOut~combout\(11));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(10),
	combout => \i_instOut~combout\(10));

-- Location: LCCOMB_X64_Y24_N6
\Mux34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\i_instOut~combout\(8) & ((\i_instOut~combout\(11)) # (\i_instOut~combout\(9) $ (\i_instOut~combout\(10))))) # (!\i_instOut~combout\(8) & ((\i_instOut~combout\(9)) # (\i_instOut~combout\(11) $ (\i_instOut~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(9),
	datab => \i_instOut~combout\(8),
	datac => \i_instOut~combout\(11),
	datad => \i_instOut~combout\(10),
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X64_Y27_N24
\Mux34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux34~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X64_Y24_N24
\Mux33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\i_instOut~combout\(9) & (!\i_instOut~combout\(11) & ((\i_instOut~combout\(8)) # (!\i_instOut~combout\(10))))) # (!\i_instOut~combout\(9) & (\i_instOut~combout\(8) & (\i_instOut~combout\(11) $ (!\i_instOut~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(9),
	datab => \i_instOut~combout\(8),
	datac => \i_instOut~combout\(11),
	datad => \i_instOut~combout\(10),
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X40_Y20_N8
\Mux33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux33~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X64_Y24_N10
\Mux32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\i_instOut~combout\(9) & (\i_instOut~combout\(8) & (!\i_instOut~combout\(11)))) # (!\i_instOut~combout\(9) & ((\i_instOut~combout\(10) & ((!\i_instOut~combout\(11)))) # (!\i_instOut~combout\(10) & (\i_instOut~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(9),
	datab => \i_instOut~combout\(8),
	datac => \i_instOut~combout\(11),
	datad => \i_instOut~combout\(10),
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X64_Y24_N20
\Mux32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux32~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X64_Y24_N14
\Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\i_instOut~combout\(8) & (\i_instOut~combout\(9) $ (((!\i_instOut~combout\(10)))))) # (!\i_instOut~combout\(8) & ((\i_instOut~combout\(9) & (\i_instOut~combout\(11) & !\i_instOut~combout\(10))) # (!\i_instOut~combout\(9) & 
-- (!\i_instOut~combout\(11) & \i_instOut~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(9),
	datab => \i_instOut~combout\(8),
	datac => \i_instOut~combout\(11),
	datad => \i_instOut~combout\(10),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X64_Y32_N2
\Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux31~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X64_Y24_N0
\Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\i_instOut~combout\(11) & (\i_instOut~combout\(10) & ((\i_instOut~combout\(9)) # (!\i_instOut~combout\(8))))) # (!\i_instOut~combout\(11) & (\i_instOut~combout\(9) & (!\i_instOut~combout\(8) & !\i_instOut~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(9),
	datab => \i_instOut~combout\(8),
	datac => \i_instOut~combout\(11),
	datad => \i_instOut~combout\(10),
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X40_Y20_N2
\Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\i_swapButton~combout\) # (\Mux30~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_swapButton~combout\,
	datac => \Mux30~0_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X64_Y24_N2
\Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\i_instOut~combout\(9) & ((\i_instOut~combout\(8) & (\i_instOut~combout\(11))) # (!\i_instOut~combout\(8) & ((\i_instOut~combout\(10)))))) # (!\i_instOut~combout\(9) & (\i_instOut~combout\(10) & (\i_instOut~combout\(8) $ 
-- (\i_instOut~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(9),
	datab => \i_instOut~combout\(8),
	datac => \i_instOut~combout\(11),
	datad => \i_instOut~combout\(10),
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X64_Y27_N2
\Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X64_Y24_N12
\Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\i_instOut~combout\(11) & (\i_instOut~combout\(8) & (\i_instOut~combout\(9) $ (\i_instOut~combout\(10))))) # (!\i_instOut~combout\(11) & (!\i_instOut~combout\(9) & (\i_instOut~combout\(8) $ (\i_instOut~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(9),
	datab => \i_instOut~combout\(8),
	datac => \i_instOut~combout\(11),
	datad => \i_instOut~combout\(10),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X64_Y24_N22
\Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux28~1_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(15),
	combout => \i_instOut~combout\(15));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(14),
	combout => \i_instOut~combout\(14));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(13),
	combout => \i_instOut~combout\(13));

-- Location: LCCOMB_X23_Y32_N12
\Mux41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\i_instOut~combout\(12) & ((\i_instOut~combout\(15)) # (\i_instOut~combout\(14) $ (\i_instOut~combout\(13))))) # (!\i_instOut~combout\(12) & ((\i_instOut~combout\(13)) # (\i_instOut~combout\(15) $ (\i_instOut~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(12),
	datab => \i_instOut~combout\(15),
	datac => \i_instOut~combout\(14),
	datad => \i_instOut~combout\(13),
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X23_Y32_N22
\Mux41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\Mux41~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X23_Y32_N16
\Mux40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\i_instOut~combout\(12) & (\i_instOut~combout\(15) $ (((\i_instOut~combout\(13)) # (!\i_instOut~combout\(14)))))) # (!\i_instOut~combout\(12) & (!\i_instOut~combout\(15) & (!\i_instOut~combout\(14) & \i_instOut~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(12),
	datab => \i_instOut~combout\(15),
	datac => \i_instOut~combout\(14),
	datad => \i_instOut~combout\(13),
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X23_Y32_N2
\Mux40~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\i_swapButton~combout\) # (\Mux40~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_swapButton~combout\,
	datac => \Mux40~0_combout\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X23_Y32_N20
\Mux39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\i_instOut~combout\(13) & (\i_instOut~combout\(12) & (!\i_instOut~combout\(15)))) # (!\i_instOut~combout\(13) & ((\i_instOut~combout\(14) & ((!\i_instOut~combout\(15)))) # (!\i_instOut~combout\(14) & (\i_instOut~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(12),
	datab => \i_instOut~combout\(15),
	datac => \i_instOut~combout\(14),
	datad => \i_instOut~combout\(13),
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X23_Y32_N6
\Mux39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\i_swapButton~combout\) # (\Mux39~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_swapButton~combout\,
	datac => \Mux39~0_combout\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X23_Y32_N8
\Mux38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\i_instOut~combout\(12) & ((\i_instOut~combout\(14) $ (!\i_instOut~combout\(13))))) # (!\i_instOut~combout\(12) & ((\i_instOut~combout\(15) & (!\i_instOut~combout\(14) & \i_instOut~combout\(13))) # (!\i_instOut~combout\(15) & 
-- (\i_instOut~combout\(14) & !\i_instOut~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(12),
	datab => \i_instOut~combout\(15),
	datac => \i_instOut~combout\(14),
	datad => \i_instOut~combout\(13),
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X23_Y32_N10
\Mux38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\i_swapButton~combout\) # (\Mux38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_swapButton~combout\,
	datac => \Mux38~0_combout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X23_Y32_N28
\Mux37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\i_instOut~combout\(15) & (\i_instOut~combout\(14) & ((\i_instOut~combout\(13)) # (!\i_instOut~combout\(12))))) # (!\i_instOut~combout\(15) & (!\i_instOut~combout\(12) & (!\i_instOut~combout\(14) & \i_instOut~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(12),
	datab => \i_instOut~combout\(15),
	datac => \i_instOut~combout\(14),
	datad => \i_instOut~combout\(13),
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X23_Y32_N14
\Mux37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\Mux37~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux37~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X23_Y32_N0
\Mux36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\i_instOut~combout\(15) & ((\i_instOut~combout\(12) & ((\i_instOut~combout\(13)))) # (!\i_instOut~combout\(12) & (\i_instOut~combout\(14))))) # (!\i_instOut~combout\(15) & (\i_instOut~combout\(14) & (\i_instOut~combout\(12) $ 
-- (\i_instOut~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(12),
	datab => \i_instOut~combout\(15),
	datac => \i_instOut~combout\(14),
	datad => \i_instOut~combout\(13),
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X23_Y32_N18
\Mux36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Mux36~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux36~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X23_Y32_N4
\Mux35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\i_instOut~combout\(15) & (\i_instOut~combout\(12) & (\i_instOut~combout\(14) $ (\i_instOut~combout\(13))))) # (!\i_instOut~combout\(15) & (!\i_instOut~combout\(13) & (\i_instOut~combout\(12) $ (\i_instOut~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(12),
	datab => \i_instOut~combout\(15),
	datac => \i_instOut~combout\(14),
	datad => \i_instOut~combout\(13),
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X23_Y32_N30
\Mux35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\i_swapButton~combout\) # (\Mux35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_swapButton~combout\,
	datac => \Mux35~0_combout\,
	combout => \Mux35~1_combout\);

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(18),
	combout => \i_instOut~combout\(18));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(19),
	combout => \i_instOut~combout\(19));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(16),
	combout => \i_instOut~combout\(16));

-- Location: LCCOMB_X40_Y20_N4
\Mux48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\i_instOut~combout\(16) & ((\i_instOut~combout\(19)) # (\i_instOut~combout\(17) $ (\i_instOut~combout\(18))))) # (!\i_instOut~combout\(16) & ((\i_instOut~combout\(17)) # (\i_instOut~combout\(18) $ (\i_instOut~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(17),
	datab => \i_instOut~combout\(18),
	datac => \i_instOut~combout\(19),
	datad => \i_instOut~combout\(16),
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X40_Y20_N6
\Mux48~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\i_swapButton~combout\) # (\Mux48~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_swapButton~combout\,
	datac => \Mux48~0_combout\,
	combout => \Mux48~1_combout\);

-- Location: LCCOMB_X40_Y20_N16
\Mux47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\i_instOut~combout\(17) & (!\i_instOut~combout\(19) & ((\i_instOut~combout\(16)) # (!\i_instOut~combout\(18))))) # (!\i_instOut~combout\(17) & (\i_instOut~combout\(16) & (\i_instOut~combout\(18) $ (!\i_instOut~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(17),
	datab => \i_instOut~combout\(18),
	datac => \i_instOut~combout\(19),
	datad => \i_instOut~combout\(16),
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X40_Y20_N18
\Mux47~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\i_swapButton~combout\) # (\Mux47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_swapButton~combout\,
	datac => \Mux47~0_combout\,
	combout => \Mux47~1_combout\);

-- Location: LCCOMB_X40_Y20_N28
\Mux46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\i_instOut~combout\(17) & (((!\i_instOut~combout\(19) & \i_instOut~combout\(16))))) # (!\i_instOut~combout\(17) & ((\i_instOut~combout\(18) & (!\i_instOut~combout\(19))) # (!\i_instOut~combout\(18) & ((\i_instOut~combout\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(17),
	datab => \i_instOut~combout\(18),
	datac => \i_instOut~combout\(19),
	datad => \i_instOut~combout\(16),
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X40_Y20_N30
\Mux46~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\Mux46~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux46~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X40_Y20_N0
\Mux45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\i_instOut~combout\(16) & (\i_instOut~combout\(17) $ ((!\i_instOut~combout\(18))))) # (!\i_instOut~combout\(16) & ((\i_instOut~combout\(17) & (!\i_instOut~combout\(18) & \i_instOut~combout\(19))) # (!\i_instOut~combout\(17) & 
-- (\i_instOut~combout\(18) & !\i_instOut~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(17),
	datab => \i_instOut~combout\(18),
	datac => \i_instOut~combout\(19),
	datad => \i_instOut~combout\(16),
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X40_Y20_N26
\Mux45~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\Mux45~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux45~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X40_Y20_N20
\Mux44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\i_instOut~combout\(18) & (\i_instOut~combout\(19) & ((\i_instOut~combout\(17)) # (!\i_instOut~combout\(16))))) # (!\i_instOut~combout\(18) & (\i_instOut~combout\(17) & (!\i_instOut~combout\(19) & !\i_instOut~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(17),
	datab => \i_instOut~combout\(18),
	datac => \i_instOut~combout\(19),
	datad => \i_instOut~combout\(16),
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X40_Y20_N22
\Mux44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\i_swapButton~combout\) # (\Mux44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_swapButton~combout\,
	datac => \Mux44~0_combout\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X40_Y20_N24
\Mux43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\i_instOut~combout\(17) & ((\i_instOut~combout\(16) & ((\i_instOut~combout\(19)))) # (!\i_instOut~combout\(16) & (\i_instOut~combout\(18))))) # (!\i_instOut~combout\(17) & (\i_instOut~combout\(18) & (\i_instOut~combout\(19) $ 
-- (\i_instOut~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(17),
	datab => \i_instOut~combout\(18),
	datac => \i_instOut~combout\(19),
	datad => \i_instOut~combout\(16),
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X40_Y20_N10
\Mux43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\i_swapButton~combout\) # (\Mux43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_swapButton~combout\,
	datac => \Mux43~0_combout\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X40_Y20_N12
\Mux42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\i_instOut~combout\(18) & (!\i_instOut~combout\(17) & (\i_instOut~combout\(19) $ (!\i_instOut~combout\(16))))) # (!\i_instOut~combout\(18) & (\i_instOut~combout\(16) & (\i_instOut~combout\(17) $ (!\i_instOut~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(17),
	datab => \i_instOut~combout\(18),
	datac => \i_instOut~combout\(19),
	datad => \i_instOut~combout\(16),
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X40_Y20_N14
\Mux42~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\Mux42~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux42~1_combout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(21),
	combout => \i_instOut~combout\(21));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(22),
	combout => \i_instOut~combout\(22));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(23),
	combout => \i_instOut~combout\(23));

-- Location: LCCOMB_X64_Y32_N12
\Mux55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\i_instOut~combout\(20) & ((\i_instOut~combout\(23)) # (\i_instOut~combout\(21) $ (\i_instOut~combout\(22))))) # (!\i_instOut~combout\(20) & ((\i_instOut~combout\(21)) # (\i_instOut~combout\(22) $ (\i_instOut~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(20),
	datab => \i_instOut~combout\(21),
	datac => \i_instOut~combout\(22),
	datad => \i_instOut~combout\(23),
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X64_Y32_N22
\Mux55~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\i_swapButton~combout\) # (\Mux55~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_swapButton~combout\,
	datad => \Mux55~0_combout\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X64_Y32_N8
\Mux54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\i_instOut~combout\(20) & (\i_instOut~combout\(23) $ (((\i_instOut~combout\(21)) # (!\i_instOut~combout\(22)))))) # (!\i_instOut~combout\(20) & (\i_instOut~combout\(21) & (!\i_instOut~combout\(22) & !\i_instOut~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(20),
	datab => \i_instOut~combout\(21),
	datac => \i_instOut~combout\(22),
	datad => \i_instOut~combout\(23),
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X64_Y32_N26
\Mux54~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\Mux54~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux54~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X64_Y32_N28
\Mux53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\i_instOut~combout\(21) & (\i_instOut~combout\(20) & ((!\i_instOut~combout\(23))))) # (!\i_instOut~combout\(21) & ((\i_instOut~combout\(22) & ((!\i_instOut~combout\(23)))) # (!\i_instOut~combout\(22) & (\i_instOut~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(20),
	datab => \i_instOut~combout\(21),
	datac => \i_instOut~combout\(22),
	datad => \i_instOut~combout\(23),
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X64_Y32_N30
\Mux53~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\i_swapButton~combout\) # (\Mux53~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_swapButton~combout\,
	datad => \Mux53~0_combout\,
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X64_Y32_N16
\Mux52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\i_instOut~combout\(20) & (\i_instOut~combout\(21) $ ((!\i_instOut~combout\(22))))) # (!\i_instOut~combout\(20) & ((\i_instOut~combout\(21) & (!\i_instOut~combout\(22) & \i_instOut~combout\(23))) # (!\i_instOut~combout\(21) & 
-- (\i_instOut~combout\(22) & !\i_instOut~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(20),
	datab => \i_instOut~combout\(21),
	datac => \i_instOut~combout\(22),
	datad => \i_instOut~combout\(23),
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X64_Y32_N18
\Mux52~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\Mux52~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X64_Y32_N20
\Mux51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\i_instOut~combout\(22) & (\i_instOut~combout\(23) & ((\i_instOut~combout\(21)) # (!\i_instOut~combout\(20))))) # (!\i_instOut~combout\(22) & (!\i_instOut~combout\(20) & (\i_instOut~combout\(21) & !\i_instOut~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(20),
	datab => \i_instOut~combout\(21),
	datac => \i_instOut~combout\(22),
	datad => \i_instOut~combout\(23),
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X64_Y32_N14
\Mux51~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\Mux51~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X64_Y32_N24
\Mux50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\i_instOut~combout\(21) & ((\i_instOut~combout\(20) & ((\i_instOut~combout\(23)))) # (!\i_instOut~combout\(20) & (\i_instOut~combout\(22))))) # (!\i_instOut~combout\(21) & (\i_instOut~combout\(22) & (\i_instOut~combout\(20) $ 
-- (\i_instOut~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(20),
	datab => \i_instOut~combout\(21),
	datac => \i_instOut~combout\(22),
	datad => \i_instOut~combout\(23),
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X64_Y32_N10
\Mux50~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\Mux50~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux50~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X64_Y32_N4
\Mux49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\i_instOut~combout\(22) & (!\i_instOut~combout\(21) & (\i_instOut~combout\(20) $ (!\i_instOut~combout\(23))))) # (!\i_instOut~combout\(22) & (\i_instOut~combout\(20) & (\i_instOut~combout\(21) $ (!\i_instOut~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(20),
	datab => \i_instOut~combout\(21),
	datac => \i_instOut~combout\(22),
	datad => \i_instOut~combout\(23),
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X64_Y32_N6
\Mux49~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\Mux49~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux49~0_combout\,
	datac => \i_swapButton~combout\,
	combout => \Mux49~1_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(24),
	combout => \i_instOut~combout\(24));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(26),
	combout => \i_instOut~combout\(26));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(27),
	combout => \i_instOut~combout\(27));

-- Location: LCCOMB_X43_Y35_N0
\Mux62~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\i_instOut~combout\(24) & ((\i_instOut~combout\(27)) # (\i_instOut~combout\(25) $ (\i_instOut~combout\(26))))) # (!\i_instOut~combout\(24) & ((\i_instOut~combout\(25)) # (\i_instOut~combout\(26) $ (\i_instOut~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(25),
	datab => \i_instOut~combout\(24),
	datac => \i_instOut~combout\(26),
	datad => \i_instOut~combout\(27),
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X43_Y35_N2
\Mux62~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (\Mux62~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux62~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X43_Y35_N28
\Mux61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\i_instOut~combout\(25) & (!\i_instOut~combout\(27) & ((\i_instOut~combout\(24)) # (!\i_instOut~combout\(26))))) # (!\i_instOut~combout\(25) & (\i_instOut~combout\(24) & (\i_instOut~combout\(26) $ (!\i_instOut~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(25),
	datab => \i_instOut~combout\(24),
	datac => \i_instOut~combout\(26),
	datad => \i_instOut~combout\(27),
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X43_Y35_N22
\Mux61~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\Mux61~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux61~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X43_Y35_N8
\Mux60~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\i_instOut~combout\(25) & (\i_instOut~combout\(24) & ((!\i_instOut~combout\(27))))) # (!\i_instOut~combout\(25) & ((\i_instOut~combout\(26) & ((!\i_instOut~combout\(27)))) # (!\i_instOut~combout\(26) & (\i_instOut~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(25),
	datab => \i_instOut~combout\(24),
	datac => \i_instOut~combout\(26),
	datad => \i_instOut~combout\(27),
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X43_Y35_N26
\Mux60~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\Mux60~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux60~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux60~1_combout\);

-- Location: LCCOMB_X43_Y35_N12
\Mux59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\i_instOut~combout\(24) & (\i_instOut~combout\(25) $ ((!\i_instOut~combout\(26))))) # (!\i_instOut~combout\(24) & ((\i_instOut~combout\(25) & (!\i_instOut~combout\(26) & \i_instOut~combout\(27))) # (!\i_instOut~combout\(25) & 
-- (\i_instOut~combout\(26) & !\i_instOut~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(25),
	datab => \i_instOut~combout\(24),
	datac => \i_instOut~combout\(26),
	datad => \i_instOut~combout\(27),
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X43_Y35_N6
\Mux59~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (\Mux59~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux59~1_combout\);

-- Location: LCCOMB_X43_Y35_N16
\Mux58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\i_instOut~combout\(26) & (\i_instOut~combout\(27) & ((\i_instOut~combout\(25)) # (!\i_instOut~combout\(24))))) # (!\i_instOut~combout\(26) & (\i_instOut~combout\(25) & (!\i_instOut~combout\(24) & !\i_instOut~combout\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(25),
	datab => \i_instOut~combout\(24),
	datac => \i_instOut~combout\(26),
	datad => \i_instOut~combout\(27),
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X43_Y35_N18
\Mux58~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\Mux58~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux58~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X43_Y35_N4
\Mux57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\i_instOut~combout\(25) & ((\i_instOut~combout\(24) & ((\i_instOut~combout\(27)))) # (!\i_instOut~combout\(24) & (\i_instOut~combout\(26))))) # (!\i_instOut~combout\(25) & (\i_instOut~combout\(26) & (\i_instOut~combout\(24) $ 
-- (\i_instOut~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(25),
	datab => \i_instOut~combout\(24),
	datac => \i_instOut~combout\(26),
	datad => \i_instOut~combout\(27),
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X43_Y35_N30
\Mux57~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\Mux57~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux57~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X43_Y35_N24
\Mux56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\i_instOut~combout\(26) & (!\i_instOut~combout\(25) & (\i_instOut~combout\(24) $ (!\i_instOut~combout\(27))))) # (!\i_instOut~combout\(26) & (\i_instOut~combout\(24) & (\i_instOut~combout\(25) $ (!\i_instOut~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(25),
	datab => \i_instOut~combout\(24),
	datac => \i_instOut~combout\(26),
	datad => \i_instOut~combout\(27),
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X43_Y35_N10
\Mux56~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\Mux56~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux56~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux56~1_combout\);

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(28),
	combout => \i_instOut~combout\(28));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(30),
	combout => \i_instOut~combout\(30));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_instOut[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_instOut(31),
	combout => \i_instOut~combout\(31));

-- Location: LCCOMB_X64_Y27_N12
\Mux69~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (\i_instOut~combout\(28) & ((\i_instOut~combout\(31)) # (\i_instOut~combout\(29) $ (\i_instOut~combout\(30))))) # (!\i_instOut~combout\(28) & ((\i_instOut~combout\(29)) # (\i_instOut~combout\(30) $ (\i_instOut~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(29),
	datab => \i_instOut~combout\(28),
	datac => \i_instOut~combout\(30),
	datad => \i_instOut~combout\(31),
	combout => \Mux69~0_combout\);

-- Location: LCCOMB_X64_Y27_N14
\Mux69~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux69~1_combout\ = (\Mux69~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux69~1_combout\);

-- Location: LCCOMB_X64_Y27_N16
\Mux68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\i_instOut~combout\(29) & (!\i_instOut~combout\(31) & ((\i_instOut~combout\(28)) # (!\i_instOut~combout\(30))))) # (!\i_instOut~combout\(29) & (\i_instOut~combout\(28) & (\i_instOut~combout\(30) $ (!\i_instOut~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(29),
	datab => \i_instOut~combout\(28),
	datac => \i_instOut~combout\(30),
	datad => \i_instOut~combout\(31),
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X64_Y27_N18
\Mux68~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux68~1_combout\ = (\Mux68~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux68~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux68~1_combout\);

-- Location: LCCOMB_X64_Y27_N28
\Mux67~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (\i_instOut~combout\(29) & (\i_instOut~combout\(28) & ((!\i_instOut~combout\(31))))) # (!\i_instOut~combout\(29) & ((\i_instOut~combout\(30) & ((!\i_instOut~combout\(31)))) # (!\i_instOut~combout\(30) & (\i_instOut~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(29),
	datab => \i_instOut~combout\(28),
	datac => \i_instOut~combout\(30),
	datad => \i_instOut~combout\(31),
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X64_Y27_N30
\Mux67~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux67~1_combout\ = (\Mux67~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux67~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux67~1_combout\);

-- Location: LCCOMB_X64_Y27_N8
\Mux66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (\i_instOut~combout\(28) & (\i_instOut~combout\(29) $ ((!\i_instOut~combout\(30))))) # (!\i_instOut~combout\(28) & ((\i_instOut~combout\(29) & (!\i_instOut~combout\(30) & \i_instOut~combout\(31))) # (!\i_instOut~combout\(29) & 
-- (\i_instOut~combout\(30) & !\i_instOut~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(29),
	datab => \i_instOut~combout\(28),
	datac => \i_instOut~combout\(30),
	datad => \i_instOut~combout\(31),
	combout => \Mux66~0_combout\);

-- Location: LCCOMB_X64_Y27_N26
\Mux66~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux66~1_combout\ = (\Mux66~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux66~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux66~1_combout\);

-- Location: LCCOMB_X64_Y27_N4
\Mux65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (\i_instOut~combout\(30) & (\i_instOut~combout\(31) & ((\i_instOut~combout\(29)) # (!\i_instOut~combout\(28))))) # (!\i_instOut~combout\(30) & (\i_instOut~combout\(29) & (!\i_instOut~combout\(28) & !\i_instOut~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(29),
	datab => \i_instOut~combout\(28),
	datac => \i_instOut~combout\(30),
	datad => \i_instOut~combout\(31),
	combout => \Mux65~0_combout\);

-- Location: LCCOMB_X64_Y27_N22
\Mux65~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux65~1_combout\ = (\Mux65~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux65~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux65~1_combout\);

-- Location: LCCOMB_X64_Y27_N0
\Mux64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (\i_instOut~combout\(29) & ((\i_instOut~combout\(28) & ((\i_instOut~combout\(31)))) # (!\i_instOut~combout\(28) & (\i_instOut~combout\(30))))) # (!\i_instOut~combout\(29) & (\i_instOut~combout\(30) & (\i_instOut~combout\(28) $ 
-- (\i_instOut~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(29),
	datab => \i_instOut~combout\(28),
	datac => \i_instOut~combout\(30),
	datad => \i_instOut~combout\(31),
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X64_Y27_N10
\Mux64~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux64~1_combout\ = (\Mux64~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux64~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux64~1_combout\);

-- Location: LCCOMB_X64_Y27_N20
\Mux63~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\i_instOut~combout\(30) & (!\i_instOut~combout\(29) & (\i_instOut~combout\(28) $ (!\i_instOut~combout\(31))))) # (!\i_instOut~combout\(30) & (\i_instOut~combout\(28) & (\i_instOut~combout\(29) $ (!\i_instOut~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_instOut~combout\(29),
	datab => \i_instOut~combout\(28),
	datac => \i_instOut~combout\(30),
	datad => \i_instOut~combout\(31),
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X64_Y27_N6
\Mux63~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\Mux63~0_combout\) # (\i_swapButton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux63~0_combout\,
	datad => \i_swapButton~combout\,
	combout => \Mux63~1_combout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \int_display1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display1(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display1(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display1(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display1(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display1(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display1(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display1(6));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \int_display2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display2(0));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display2(1));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display2(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display2(3));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display2(4));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display2(5));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_int_display2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display2(6));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display3(0));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display3(1));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display3(2));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display3(3));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display3(4));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display3(5));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display3(6));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display4(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display4(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display4(2));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display4(3));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display4(4));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux36~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display4(5));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display4(6));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux48~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display5(0));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux47~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display5(1));

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux46~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display5(2));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux45~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display5(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display5(4));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display5(5));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux42~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display5(6));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display6[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux55~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display6(0));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display6[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display6(1));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display6[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux53~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display6(2));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display6[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display6(3));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display6[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display6(4));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display6[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux50~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display6(5));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display6[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux49~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display6(6));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display7(0));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux61~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display7(1));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux60~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display7(2));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux59~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display7(3));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux58~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display7(4));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux57~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display7(5));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux56~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display7(6));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display8[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux69~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display8(0));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display8[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display8(1));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display8[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux67~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display8(2));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display8[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display8(3));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display8[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux65~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display8(4));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display8[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display8(5));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_display8[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_display8(6));
END structure;


