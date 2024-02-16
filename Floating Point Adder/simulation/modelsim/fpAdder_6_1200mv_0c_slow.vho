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

-- DATE "02/16/2024 12:47:03"

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

ENTITY 	fpAdder IS
    PORT (
	GClock : IN std_logic;
	GReset : IN std_logic;
	SignA : IN std_logic;
	SignB : IN std_logic;
	MantissaA : IN std_logic_vector(7 DOWNTO 0);
	MantissaB : IN std_logic_vector(7 DOWNTO 0);
	ExponentA : IN std_logic_vector(6 DOWNTO 0);
	ExponentB : IN std_logic_vector(6 DOWNTO 0);
	SignOut : OUT std_logic;
	MantissaOut : OUT std_logic_vector(7 DOWNTO 0);
	ExponentOut : OUT std_logic_vector(6 DOWNTO 0);
	Overflow : OUT std_logic
	);
END fpAdder;

-- Design Ports Information
-- SignOut	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaOut[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaOut[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaOut[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaOut[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaOut[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaOut[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaOut[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaOut[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentOut[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentOut[1]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentOut[2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentOut[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentOut[4]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentOut[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentOut[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SignB	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SignA	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentA[6]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentB[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentA[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentB[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentA[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentB[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentA[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentB[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentA[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentB[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentA[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentB[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentA[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExponentB[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaA[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaB[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaA[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaB[6]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaA[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaB[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaA[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaB[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaA[3]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaB[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaA[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaB[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaA[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaB[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaA[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MantissaB[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fpAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_GClock : std_logic;
SIGNAL ww_GReset : std_logic;
SIGNAL ww_SignA : std_logic;
SIGNAL ww_SignB : std_logic;
SIGNAL ww_MantissaA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MantissaB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ExponentA : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ExponentB : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SignOut : std_logic;
SIGNAL ww_MantissaOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ExponentOut : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Overflow : std_logic;
SIGNAL \GReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \normalizeRegister|gen_enARdFF:8:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \mantissaAdder|reg|gen_enardFF_2:3:bit_component|int_q~q\ : std_logic;
SIGNAL \mantissaAdder|reg|gen_enardFF_2:4:bit_component|int_q~q\ : std_logic;
SIGNAL \mantissaAdder|reg|gen_enardFF_2:5:bit_component|int_q~q\ : std_logic;
SIGNAL \exponentCounter|bit2|int_q~q\ : std_logic;
SIGNAL \exponentAdder|adder6|out_sum~0_combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:3:adder_i|out_sum~combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:4:adder_i|out_sum~0_combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:5:adder_i|out_sum~combout\ : std_logic;
SIGNAL \mantissaAdder|adder8|out_sum~0_combout\ : std_logic;
SIGNAL \exponentCounter|adder|FA3|out_sum~combout\ : std_logic;
SIGNAL \exponentCounter|int_d~7_combout\ : std_logic;
SIGNAL \exponentAdder|adder2|out_sum~0_combout\ : std_logic;
SIGNAL \exponentCounter|int_d~10_combout\ : std_logic;
SIGNAL \exponentAdder|adder4|out_sum~0_combout\ : std_logic;
SIGNAL \exponentCounter|out_q[6]~3_combout\ : std_logic;
SIGNAL \MantissaA[3]~input_o\ : std_logic;
SIGNAL \MantissaA[1]~input_o\ : std_logic;
SIGNAL \SignOut~output_o\ : std_logic;
SIGNAL \MantissaOut[0]~output_o\ : std_logic;
SIGNAL \MantissaOut[1]~output_o\ : std_logic;
SIGNAL \MantissaOut[2]~output_o\ : std_logic;
SIGNAL \MantissaOut[3]~output_o\ : std_logic;
SIGNAL \MantissaOut[4]~output_o\ : std_logic;
SIGNAL \MantissaOut[5]~output_o\ : std_logic;
SIGNAL \MantissaOut[6]~output_o\ : std_logic;
SIGNAL \MantissaOut[7]~output_o\ : std_logic;
SIGNAL \ExponentOut[0]~output_o\ : std_logic;
SIGNAL \ExponentOut[1]~output_o\ : std_logic;
SIGNAL \ExponentOut[2]~output_o\ : std_logic;
SIGNAL \ExponentOut[3]~output_o\ : std_logic;
SIGNAL \ExponentOut[4]~output_o\ : std_logic;
SIGNAL \ExponentOut[5]~output_o\ : std_logic;
SIGNAL \ExponentOut[6]~output_o\ : std_logic;
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \SignA~input_o\ : std_logic;
SIGNAL \SignB~input_o\ : std_logic;
SIGNAL \MantissaA[7]~input_o\ : std_logic;
SIGNAL \MantissaA[6]~input_o\ : std_logic;
SIGNAL \MantissaA[5]~input_o\ : std_logic;
SIGNAL \MantissaB[4]~input_o\ : std_logic;
SIGNAL \MantissaB[3]~input_o\ : std_logic;
SIGNAL \MantissaB[2]~input_o\ : std_logic;
SIGNAL \MantissaB[1]~input_o\ : std_logic;
SIGNAL \MantissaB[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \ExponentB[6]~input_o\ : std_logic;
SIGNAL \ExponentB[5]~input_o\ : std_logic;
SIGNAL \ExponentB[4]~input_o\ : std_logic;
SIGNAL \ExponentB[3]~input_o\ : std_logic;
SIGNAL \ExponentA[2]~input_o\ : std_logic;
SIGNAL \ExponentB[1]~input_o\ : std_logic;
SIGNAL \ExponentA[0]~input_o\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~12_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~12_combout\ : std_logic;
SIGNAL \SignOut~0_combout\ : std_logic;
SIGNAL \SignOut~1_combout\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \controller|s0|int_q~feeder_combout\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \controller|s0|int_q~q\ : std_logic;
SIGNAL \Fy|gen_enARdFF:8:enARdFF_instance|int_q~0_combout\ : std_logic;
SIGNAL \controller|s1|int_q~0_combout\ : std_logic;
SIGNAL \controller|s1|int_q~q\ : std_logic;
SIGNAL \Ey|gen_enardFF_2:6:bit_component|int_q~q\ : std_logic;
SIGNAL \Ey|gen_enardFF_2:5:bit_component|int_q~q\ : std_logic;
SIGNAL \ExponentA[5]~input_o\ : std_logic;
SIGNAL \Ex|gen_enardFF_2:5:bit_component|int_q~q\ : std_logic;
SIGNAL \ExponentA[4]~input_o\ : std_logic;
SIGNAL \Ex|gen_enardFF_2:4:bit_component|int_q~q\ : std_logic;
SIGNAL \ExponentA[3]~input_o\ : std_logic;
SIGNAL \Ex|gen_enardFF_2:3:bit_component|int_q~q\ : std_logic;
SIGNAL \Ey|gen_enardFF_2:3:bit_component|int_q~q\ : std_logic;
SIGNAL \ExponentB[2]~input_o\ : std_logic;
SIGNAL \Ey|gen_enardFF_2:2:bit_component|int_q~q\ : std_logic;
SIGNAL \ExponentA[1]~input_o\ : std_logic;
SIGNAL \Ex|gen_enardFF_2:1:bit_component|int_q~q\ : std_logic;
SIGNAL \Ey|gen_enardFF_2:1:bit_component|int_q~q\ : std_logic;
SIGNAL \ExponentB[0]~input_o\ : std_logic;
SIGNAL \Ey|gen_enardFF_2:0:bit_component|int_q~q\ : std_logic;
SIGNAL \exponentAdder|adder0|out_cout~0_combout\ : std_logic;
SIGNAL \exponentAdder|adder1|out_cout~0_combout\ : std_logic;
SIGNAL \exponentAdder|adder2|out_cout~0_combout\ : std_logic;
SIGNAL \exponentAdder|adder3|out_cout~0_combout\ : std_logic;
SIGNAL \exponentAdder|adder4|out_cout~0_combout\ : std_logic;
SIGNAL \exponentAdder|adder5|out_cout~0_combout\ : std_logic;
SIGNAL \exponentAdder|adder6|out_cout~0_combout\ : std_logic;
SIGNAL \controller|s2|int_q~q\ : std_logic;
SIGNAL \controller|out_load6~combout\ : std_logic;
SIGNAL \exponentAdder|adder5|out_sum~0_combout\ : std_logic;
SIGNAL \exponentCounter|bit6|int_q~q\ : std_logic;
SIGNAL \Ex|gen_enardFF_2:0:bit_component|int_q~q\ : std_logic;
SIGNAL \exponentCounter|int_d~9_combout\ : std_logic;
SIGNAL \exponentCounter|bit0|int_q~q\ : std_logic;
SIGNAL \controller|int_d[3]~2_combout\ : std_logic;
SIGNAL \controller|int_d[4]~7_combout\ : std_logic;
SIGNAL \controller|s4|int_q~q\ : std_logic;
SIGNAL \exponentCounter|int_d~8_combout\ : std_logic;
SIGNAL \exponentAdder|adder1|out_sum~combout\ : std_logic;
SIGNAL \exponentCounter|bit1|int_q~q\ : std_logic;
SIGNAL \controller|out_countd6~combout\ : std_logic;
SIGNAL \exponentAdder|adder3|out_sum~combout\ : std_logic;
SIGNAL \exponentCounter|bit3|int_q~q\ : std_logic;
SIGNAL \exponentCounter|Equal0~0_combout\ : std_logic;
SIGNAL \exponentCounter|int_d~11_combout\ : std_logic;
SIGNAL \exponentCounter|bit4|int_q~q\ : std_logic;
SIGNAL \exponentCounter|Equal0~1_combout\ : std_logic;
SIGNAL \controller|int_d[6]~8_combout\ : std_logic;
SIGNAL \controller|s6|int_q~q\ : std_logic;
SIGNAL \exponentCounter|int_enable~combout\ : std_logic;
SIGNAL \exponentCounter|bit5|int_q~q\ : std_logic;
SIGNAL \exponentCounter|adder|FA6|out_sum~combout\ : std_logic;
SIGNAL \exponentCounter|int_d~6_combout\ : std_logic;
SIGNAL \exponentCounter|out_q[6]~2_combout\ : std_logic;
SIGNAL \controller|int_d[3]~9_combout\ : std_logic;
SIGNAL \controller|s3|int_q~q\ : std_logic;
SIGNAL \Fy|int_enable~0_combout\ : std_logic;
SIGNAL \Fy|gen_enARdFF:8:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fx|gen_enARdFF:8:enARdFF_instance|int_q~0_combout\ : std_logic;
SIGNAL \controller|int_d[5]~6_combout\ : std_logic;
SIGNAL \controller|s5|int_q~q\ : std_logic;
SIGNAL \Fx|int_enable~0_combout\ : std_logic;
SIGNAL \Fx|gen_enARdFF:8:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fx|gen_enARdFF:7:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \MantissaB[6]~input_o\ : std_logic;
SIGNAL \MantissaB[7]~input_o\ : std_logic;
SIGNAL \Fy|gen_enARdFF:7:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fy|gen_enARdFF:6:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fx|gen_enARdFF:6:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fx|gen_enARdFF:5:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \MantissaA[4]~input_o\ : std_logic;
SIGNAL \Fx|gen_enARdFF:4:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fx|gen_enARdFF:3:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \MantissaA[2]~input_o\ : std_logic;
SIGNAL \Fx|gen_enARdFF:2:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \MantissaB[5]~input_o\ : std_logic;
SIGNAL \Fy|gen_enARdFF:5:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fy|gen_enARdFF:4:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fy|gen_enARdFF:3:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fy|gen_enARdFF:2:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fy|gen_enARdFF:1:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fy|gen_enARdFF:0:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \Fx|gen_enARdFF:1:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \MantissaA[0]~input_o\ : std_logic;
SIGNAL \Fx|gen_enARdFF:0:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:1:adder_i|out_cout~0_combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:2:adder_i|out_cout~1_combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:2:adder_i|out_cout~0_combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:3:adder_i|out_cout~0_combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:4:adder_i|out_cout~0_combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:4:adder_i|out_cout~1_combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:5:adder_i|out_cout~0_combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:6:adder_i|out_cout~1_combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:6:adder_i|out_cout~0_combout\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:7:adder_i|out_cout~0_combout\ : std_logic;
SIGNAL \mantissaAdder|adder8|out_cout~0_combout\ : std_logic;
SIGNAL \controller|int_d[7]~3_combout\ : std_logic;
SIGNAL \controller|int_d[7]~4_combout\ : std_logic;
SIGNAL \controller|int_d[7]~5_combout\ : std_logic;
SIGNAL \controller|s7|int_q~q\ : std_logic;
SIGNAL \controller|s8|int_q~q\ : std_logic;
SIGNAL \mantissaAdder|adder0|sum~0_combout\ : std_logic;
SIGNAL \mantissaAdder|reg|gen_enardFF_2:0:bit_component|int_q~q\ : std_logic;
SIGNAL \normalizeRegister|int_enable~0_combout\ : std_logic;
SIGNAL \normalizeRegister|gen_enARdFF:0:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:2:adder_i|out_sum~0_combout\ : std_logic;
SIGNAL \mantissaAdder|reg|gen_enardFF_2:2:bit_component|int_q~q\ : std_logic;
SIGNAL \normalizeRegister|gen_enARdFF:2:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:1:adder_i|out_sum~0_combout\ : std_logic;
SIGNAL \mantissaAdder|reg|gen_enardFF_2:1:bit_component|int_q~q\ : std_logic;
SIGNAL \normalizeRegister|gen_enARdFF:1:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:6:adder_i|out_sum~0_combout\ : std_logic;
SIGNAL \mantissaAdder|reg|gen_enardFF_2:6:bit_component|int_q~q\ : std_logic;
SIGNAL \normalizeRegister|gen_enARdFF:6:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \normalizeRegister|gen_enARdFF:5:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \normalizeRegister|gen_enARdFF:4:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \normalizeRegister|gen_enARdFF:3:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \mantissaAdder|gen_adders:7:adder_i|out_sum~combout\ : std_logic;
SIGNAL \mantissaAdder|reg|gen_enardFF_2:7:bit_component|int_q~q\ : std_logic;
SIGNAL \normalizeRegister|gen_enARdFF:7:enARdFF_instance|int_q~q\ : std_logic;
SIGNAL \exponentUpCounter|int_d[0]~0_combout\ : std_logic;
SIGNAL \exponentUpCounter|int_d[0]~1_combout\ : std_logic;
SIGNAL \exponentUpCounter|int_enable~combout\ : std_logic;
SIGNAL \exponentUpCounter|bit0|int_q~q\ : std_logic;
SIGNAL \exponentUpCounter|int_d[1]~2_combout\ : std_logic;
SIGNAL \exponentUpCounter|int_d[1]~3_combout\ : std_logic;
SIGNAL \exponentUpCounter|bit1|int_q~q\ : std_logic;
SIGNAL \exponentSRLatch|int_q~0_combout\ : std_logic;
SIGNAL \Ex|gen_enardFF_2:2:bit_component|int_q~q\ : std_logic;
SIGNAL \exponentUpCounter|int_d[2]~5_combout\ : std_logic;
SIGNAL \exponentUpCounter|int_d~4_combout\ : std_logic;
SIGNAL \exponentUpCounter|int_d[2]~6_combout\ : std_logic;
SIGNAL \exponentUpCounter|bit2|int_q~q\ : std_logic;
SIGNAL \exponentUpCounter|adder|FA3|out_sum~combout\ : std_logic;
SIGNAL \exponentUpCounter|int_d[3]~7_combout\ : std_logic;
SIGNAL \exponentUpCounter|int_d[3]~8_combout\ : std_logic;
SIGNAL \exponentUpCounter|bit3|int_q~q\ : std_logic;
SIGNAL \Ey|gen_enardFF_2:4:bit_component|int_q~q\ : std_logic;
SIGNAL \exponentUpCounter|int_d[4]~9_combout\ : std_logic;
SIGNAL \exponentUpCounter|int_d[4]~10_combout\ : std_logic;
SIGNAL \exponentUpCounter|bit4|int_q~q\ : std_logic;
SIGNAL \exponentUpCounter|int_d[5]~12_combout\ : std_logic;
SIGNAL \exponentUpCounter|int_d~11_combout\ : std_logic;
SIGNAL \exponentUpCounter|int_d[5]~13_combout\ : std_logic;
SIGNAL \exponentUpCounter|bit5|int_q~q\ : std_logic;
SIGNAL \ExponentA[6]~input_o\ : std_logic;
SIGNAL \Ex|gen_enardFF_2:6:bit_component|int_q~q\ : std_logic;
SIGNAL \exponentUpCounter|int_d[6]~14_combout\ : std_logic;
SIGNAL \exponentUpCounter|adder|FA3|cout~0_combout\ : std_logic;
SIGNAL \exponentUpCounter|adder|FA6|out_sum~combout\ : std_logic;
SIGNAL \exponentUpCounter|int_d[6]~15_combout\ : std_logic;
SIGNAL \exponentUpCounter|bit6|int_q~q\ : std_logic;
SIGNAL \complementerY|out_result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Fy|int_d\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \normalizeRegister|int_d\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \controller|int_d\ : std_logic_vector(0 TO 9);
SIGNAL \exponentCounter|int_d\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Fx|int_d\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \controller|s0|ALT_INV_int_q~q\ : std_logic;
SIGNAL \controller|s7|ALT_INV_int_q~q\ : std_logic;

BEGIN

ww_GClock <= GClock;
ww_GReset <= GReset;
ww_SignA <= SignA;
ww_SignB <= SignB;
ww_MantissaA <= MantissaA;
ww_MantissaB <= MantissaB;
ww_ExponentA <= ExponentA;
ww_ExponentB <= ExponentB;
SignOut <= ww_SignOut;
MantissaOut <= ww_MantissaOut;
ExponentOut <= ww_ExponentOut;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\GReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GReset~input_o\);

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);
\controller|s0|ALT_INV_int_q~q\ <= NOT \controller|s0|int_q~q\;
\controller|s7|ALT_INV_int_q~q\ <= NOT \controller|s7|int_q~q\;

-- Location: LCCOMB_X49_Y35_N0
\LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\MantissaA[0]~input_o\ & !\MantissaB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[0]~input_o\,
	datab => \MantissaB[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X49_Y35_N2
\LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\MantissaA[1]~input_o\ & (\MantissaB[1]~input_o\ & !\LessThan1~1_cout\)) # (!\MantissaA[1]~input_o\ & ((\MantissaB[1]~input_o\) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[1]~input_o\,
	datab => \MantissaB[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X49_Y35_N4
\LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\MantissaA[2]~input_o\ & ((!\LessThan1~3_cout\) # (!\MantissaB[2]~input_o\))) # (!\MantissaA[2]~input_o\ & (!\MantissaB[2]~input_o\ & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[2]~input_o\,
	datab => \MantissaB[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X49_Y35_N6
\LessThan1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\MantissaA[3]~input_o\ & (\MantissaB[3]~input_o\ & !\LessThan1~5_cout\)) # (!\MantissaA[3]~input_o\ & ((\MantissaB[3]~input_o\) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[3]~input_o\,
	datab => \MantissaB[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X49_Y35_N8
\LessThan1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\MantissaA[4]~input_o\ & ((!\LessThan1~7_cout\) # (!\MantissaB[4]~input_o\))) # (!\MantissaA[4]~input_o\ & (!\MantissaB[4]~input_o\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[4]~input_o\,
	datab => \MantissaB[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X49_Y35_N10
\LessThan1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\MantissaB[5]~input_o\ & ((!\LessThan1~9_cout\) # (!\MantissaA[5]~input_o\))) # (!\MantissaB[5]~input_o\ & (!\MantissaA[5]~input_o\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaB[5]~input_o\,
	datab => \MantissaA[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X49_Y35_N12
\LessThan1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\MantissaB[6]~input_o\ & (\MantissaA[6]~input_o\ & !\LessThan1~11_cout\)) # (!\MantissaB[6]~input_o\ & ((\MantissaA[6]~input_o\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaB[6]~input_o\,
	datab => \MantissaA[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X49_Y35_N14
\LessThan1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\MantissaB[7]~input_o\ & (\LessThan1~13_cout\ & \MantissaA[7]~input_o\)) # (!\MantissaB[7]~input_o\ & ((\LessThan1~13_cout\) # (\MantissaA[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaB[7]~input_o\,
	datad => \MantissaA[7]~input_o\,
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: FF_X47_Y37_N27
\normalizeRegister|gen_enARdFF:8:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \mantissaAdder|adder8|out_sum~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sclr => \controller|s7|ALT_INV_int_q~q\,
	ena => \normalizeRegister|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \normalizeRegister|gen_enARdFF:8:enARdFF_instance|int_q~q\);

-- Location: FF_X48_Y37_N15
\mantissaAdder|reg|gen_enardFF_2:3:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \mantissaAdder|gen_adders:3:adder_i|out_sum~combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mantissaAdder|reg|gen_enardFF_2:3:bit_component|int_q~q\);

-- Location: FF_X48_Y37_N5
\mantissaAdder|reg|gen_enardFF_2:4:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \mantissaAdder|gen_adders:4:adder_i|out_sum~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mantissaAdder|reg|gen_enardFF_2:4:bit_component|int_q~q\);

-- Location: FF_X48_Y37_N7
\mantissaAdder|reg|gen_enardFF_2:5:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \mantissaAdder|gen_adders:5:adder_i|out_sum~combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mantissaAdder|reg|gen_enardFF_2:5:bit_component|int_q~q\);

-- Location: FF_X49_Y36_N31
\exponentCounter|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentCounter|int_d\(2),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentCounter|bit2|int_q~q\);

-- Location: LCCOMB_X50_Y36_N26
\complementerY|out_result[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \complementerY|out_result\(4) = \controller|s1|int_q~q\ $ (\Ey|gen_enardFF_2:4:bit_component|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|s1|int_q~q\,
	datad => \Ey|gen_enardFF_2:4:bit_component|int_q~q\,
	combout => \complementerY|out_result\(4));

-- Location: LCCOMB_X48_Y36_N20
\exponentAdder|adder6|out_sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder6|out_sum~0_combout\ = \Ey|gen_enardFF_2:6:bit_component|int_q~q\ $ (\controller|s2|int_q~q\ $ (\Ex|gen_enardFF_2:6:bit_component|int_q~q\ $ (\controller|s1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ey|gen_enardFF_2:6:bit_component|int_q~q\,
	datab => \controller|s2|int_q~q\,
	datac => \Ex|gen_enardFF_2:6:bit_component|int_q~q\,
	datad => \controller|s1|int_q~q\,
	combout => \exponentAdder|adder6|out_sum~0_combout\);

-- Location: LCCOMB_X48_Y37_N14
\mantissaAdder|gen_adders:3:adder_i|out_sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:3:adder_i|out_sum~combout\ = \Fx|gen_enARdFF:3:enARdFF_instance|int_q~q\ $ (\Fy|gen_enARdFF:3:enARdFF_instance|int_q~q\ $ (((\mantissaAdder|gen_adders:2:adder_i|out_cout~1_combout\) # 
-- (\mantissaAdder|gen_adders:2:adder_i|out_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mantissaAdder|gen_adders:2:adder_i|out_cout~1_combout\,
	datab => \mantissaAdder|gen_adders:2:adder_i|out_cout~0_combout\,
	datac => \Fx|gen_enARdFF:3:enARdFF_instance|int_q~q\,
	datad => \Fy|gen_enARdFF:3:enARdFF_instance|int_q~q\,
	combout => \mantissaAdder|gen_adders:3:adder_i|out_sum~combout\);

-- Location: LCCOMB_X48_Y37_N4
\mantissaAdder|gen_adders:4:adder_i|out_sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:4:adder_i|out_sum~0_combout\ = \Fy|gen_enARdFF:4:enARdFF_instance|int_q~q\ $ (\Fx|gen_enARdFF:4:enARdFF_instance|int_q~q\ $ (\mantissaAdder|gen_adders:3:adder_i|out_cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fy|gen_enARdFF:4:enARdFF_instance|int_q~q\,
	datab => \Fx|gen_enARdFF:4:enARdFF_instance|int_q~q\,
	datad => \mantissaAdder|gen_adders:3:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|gen_adders:4:adder_i|out_sum~0_combout\);

-- Location: LCCOMB_X48_Y37_N6
\mantissaAdder|gen_adders:5:adder_i|out_sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:5:adder_i|out_sum~combout\ = \Fx|gen_enARdFF:5:enARdFF_instance|int_q~q\ $ (\Fy|gen_enARdFF:5:enARdFF_instance|int_q~q\ $ (((\mantissaAdder|gen_adders:4:adder_i|out_cout~0_combout\) # 
-- (\mantissaAdder|gen_adders:4:adder_i|out_cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mantissaAdder|gen_adders:4:adder_i|out_cout~0_combout\,
	datab => \Fx|gen_enARdFF:5:enARdFF_instance|int_q~q\,
	datac => \Fy|gen_enARdFF:5:enARdFF_instance|int_q~q\,
	datad => \mantissaAdder|gen_adders:4:adder_i|out_cout~1_combout\,
	combout => \mantissaAdder|gen_adders:5:adder_i|out_sum~combout\);

-- Location: LCCOMB_X47_Y37_N26
\mantissaAdder|adder8|out_sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|adder8|out_sum~0_combout\ = \Fx|gen_enARdFF:8:enARdFF_instance|int_q~q\ $ (\Fy|gen_enARdFF:8:enARdFF_instance|int_q~q\ $ (\mantissaAdder|gen_adders:7:adder_i|out_cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx|gen_enARdFF:8:enARdFF_instance|int_q~q\,
	datac => \Fy|gen_enARdFF:8:enARdFF_instance|int_q~q\,
	datad => \mantissaAdder|gen_adders:7:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|adder8|out_sum~0_combout\);

-- Location: LCCOMB_X47_Y36_N0
\exponentCounter|adder|FA3|out_sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|adder|FA3|out_sum~combout\ = \exponentCounter|bit3|int_q~q\ $ (((\exponentCounter|bit0|int_q~q\) # ((\exponentCounter|bit1|int_q~q\) # (\exponentCounter|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|bit0|int_q~q\,
	datab => \exponentCounter|bit3|int_q~q\,
	datac => \exponentCounter|bit1|int_q~q\,
	datad => \exponentCounter|bit2|int_q~q\,
	combout => \exponentCounter|adder|FA3|out_sum~combout\);

-- Location: LCCOMB_X48_Y36_N28
\exponentCounter|int_d~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d~7_combout\ = (\controller|out_countd6~combout\ & (\exponentCounter|bit2|int_q~q\ $ (((!\exponentCounter|bit0|int_q~q\ & !\exponentCounter|bit1|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|bit2|int_q~q\,
	datab => \controller|out_countd6~combout\,
	datac => \exponentCounter|bit0|int_q~q\,
	datad => \exponentCounter|bit1|int_q~q\,
	combout => \exponentCounter|int_d~7_combout\);

-- Location: LCCOMB_X50_Y36_N14
\exponentAdder|adder2|out_sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder2|out_sum~0_combout\ = \Ex|gen_enardFF_2:2:bit_component|int_q~q\ $ (\controller|s2|int_q~q\ $ (\Ey|gen_enardFF_2:2:bit_component|int_q~q\ $ (\controller|s1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ex|gen_enardFF_2:2:bit_component|int_q~q\,
	datab => \controller|s2|int_q~q\,
	datac => \Ey|gen_enardFF_2:2:bit_component|int_q~q\,
	datad => \controller|s1|int_q~q\,
	combout => \exponentAdder|adder2|out_sum~0_combout\);

-- Location: LCCOMB_X49_Y36_N30
\exponentCounter|int_d[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d\(2) = (\exponentCounter|int_d~7_combout\) # ((\controller|out_load6~combout\ & (\exponentAdder|adder2|out_sum~0_combout\ $ (\exponentAdder|adder1|out_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentAdder|adder2|out_sum~0_combout\,
	datab => \exponentCounter|int_d~7_combout\,
	datac => \controller|out_load6~combout\,
	datad => \exponentAdder|adder1|out_cout~0_combout\,
	combout => \exponentCounter|int_d\(2));

-- Location: LCCOMB_X48_Y36_N12
\exponentCounter|int_d~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d~10_combout\ = (\controller|out_countd6~combout\ & (\exponentCounter|bit5|int_q~q\ $ (((\exponentCounter|Equal0~0_combout\ & !\exponentCounter|bit4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|Equal0~0_combout\,
	datab => \exponentCounter|bit5|int_q~q\,
	datac => \controller|out_countd6~combout\,
	datad => \exponentCounter|bit4|int_q~q\,
	combout => \exponentCounter|int_d~10_combout\);

-- Location: LCCOMB_X47_Y36_N8
\exponentAdder|adder4|out_sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder4|out_sum~0_combout\ = \controller|s2|int_q~q\ $ (\Ey|gen_enardFF_2:4:bit_component|int_q~q\ $ (\controller|s1|int_q~q\ $ (\Ex|gen_enardFF_2:4:bit_component|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s2|int_q~q\,
	datab => \Ey|gen_enardFF_2:4:bit_component|int_q~q\,
	datac => \controller|s1|int_q~q\,
	datad => \Ex|gen_enardFF_2:4:bit_component|int_q~q\,
	combout => \exponentAdder|adder4|out_sum~0_combout\);

-- Location: LCCOMB_X49_Y36_N18
\exponentCounter|out_q[6]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|out_q[6]~3_combout\ = (\controller|s2|int_q~q\ & (((!\exponentAdder|adder6|out_sum~0_combout\)))) # (!\controller|s2|int_q~q\ & ((\controller|s1|int_q~q\ & ((!\exponentAdder|adder6|out_sum~0_combout\))) # (!\controller|s1|int_q~q\ & 
-- (\exponentCounter|bit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|bit6|int_q~q\,
	datab => \controller|s2|int_q~q\,
	datac => \controller|s1|int_q~q\,
	datad => \exponentAdder|adder6|out_sum~0_combout\,
	combout => \exponentCounter|out_q[6]~3_combout\);

-- Location: IOIBUF_X52_Y15_N8
\MantissaA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaA(3),
	o => \MantissaA[3]~input_o\);

-- Location: IOIBUF_X52_Y30_N1
\MantissaA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaA(1),
	o => \MantissaA[1]~input_o\);

-- Location: IOOBUF_X52_Y23_N9
\SignOut~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SignOut~1_combout\,
	devoe => ww_devoe,
	o => \SignOut~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\MantissaOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \normalizeRegister|gen_enARdFF:0:enARdFF_instance|int_q~q\,
	devoe => ww_devoe,
	o => \MantissaOut[0]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\MantissaOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \normalizeRegister|gen_enARdFF:1:enARdFF_instance|int_q~q\,
	devoe => ww_devoe,
	o => \MantissaOut[1]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\MantissaOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \normalizeRegister|gen_enARdFF:2:enARdFF_instance|int_q~q\,
	devoe => ww_devoe,
	o => \MantissaOut[2]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\MantissaOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \normalizeRegister|gen_enARdFF:3:enARdFF_instance|int_q~q\,
	devoe => ww_devoe,
	o => \MantissaOut[3]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\MantissaOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \normalizeRegister|gen_enARdFF:4:enARdFF_instance|int_q~q\,
	devoe => ww_devoe,
	o => \MantissaOut[4]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\MantissaOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \normalizeRegister|gen_enARdFF:5:enARdFF_instance|int_q~q\,
	devoe => ww_devoe,
	o => \MantissaOut[5]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\MantissaOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \normalizeRegister|gen_enARdFF:6:enARdFF_instance|int_q~q\,
	devoe => ww_devoe,
	o => \MantissaOut[6]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\MantissaOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \normalizeRegister|gen_enARdFF:7:enARdFF_instance|int_q~q\,
	devoe => ww_devoe,
	o => \MantissaOut[7]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\ExponentOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exponentUpCounter|bit0|int_q~q\,
	devoe => ww_devoe,
	o => \ExponentOut[0]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\ExponentOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exponentUpCounter|bit1|int_q~q\,
	devoe => ww_devoe,
	o => \ExponentOut[1]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\ExponentOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exponentUpCounter|bit2|int_q~q\,
	devoe => ww_devoe,
	o => \ExponentOut[2]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\ExponentOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exponentUpCounter|bit3|int_q~q\,
	devoe => ww_devoe,
	o => \ExponentOut[3]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\ExponentOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exponentUpCounter|bit4|int_q~q\,
	devoe => ww_devoe,
	o => \ExponentOut[4]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\ExponentOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exponentUpCounter|bit5|int_q~q\,
	devoe => ww_devoe,
	o => \ExponentOut[5]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\ExponentOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exponentUpCounter|bit6|int_q~q\,
	devoe => ww_devoe,
	o => \ExponentOut[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Overflow~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOIBUF_X27_Y0_N1
\SignA~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SignA,
	o => \SignA~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\SignB~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SignB,
	o => \SignB~input_o\);

-- Location: IOIBUF_X48_Y41_N8
\MantissaA[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaA(7),
	o => \MantissaA[7]~input_o\);

-- Location: IOIBUF_X41_Y41_N8
\MantissaA[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaA(6),
	o => \MantissaA[6]~input_o\);

-- Location: IOIBUF_X52_Y30_N8
\MantissaA[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaA(5),
	o => \MantissaA[5]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\MantissaB[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaB(4),
	o => \MantissaB[4]~input_o\);

-- Location: IOIBUF_X46_Y41_N1
\MantissaB[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaB(3),
	o => \MantissaB[3]~input_o\);

-- Location: IOIBUF_X48_Y41_N1
\MantissaB[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaB(2),
	o => \MantissaB[2]~input_o\);

-- Location: IOIBUF_X52_Y18_N8
\MantissaB[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaB(1),
	o => \MantissaB[1]~input_o\);

-- Location: IOIBUF_X41_Y41_N1
\MantissaB[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaB(0),
	o => \MantissaB[0]~input_o\);

-- Location: LCCOMB_X49_Y35_N16
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\MantissaA[0]~input_o\ & \MantissaB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[0]~input_o\,
	datab => \MantissaB[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X49_Y35_N18
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\MantissaA[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\MantissaB[1]~input_o\))) # (!\MantissaA[1]~input_o\ & (!\MantissaB[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[1]~input_o\,
	datab => \MantissaB[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X49_Y35_N20
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\MantissaA[2]~input_o\ & (\MantissaB[2]~input_o\ & !\LessThan0~3_cout\)) # (!\MantissaA[2]~input_o\ & ((\MantissaB[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[2]~input_o\,
	datab => \MantissaB[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X49_Y35_N22
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\MantissaA[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\MantissaB[3]~input_o\))) # (!\MantissaA[3]~input_o\ & (!\MantissaB[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[3]~input_o\,
	datab => \MantissaB[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X49_Y35_N24
\LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\MantissaA[4]~input_o\ & (\MantissaB[4]~input_o\ & !\LessThan0~7_cout\)) # (!\MantissaA[4]~input_o\ & ((\MantissaB[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[4]~input_o\,
	datab => \MantissaB[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X49_Y35_N26
\LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\MantissaB[5]~input_o\ & (\MantissaA[5]~input_o\ & !\LessThan0~9_cout\)) # (!\MantissaB[5]~input_o\ & ((\MantissaA[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaB[5]~input_o\,
	datab => \MantissaA[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X49_Y35_N28
\LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\MantissaB[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\MantissaA[6]~input_o\))) # (!\MantissaB[6]~input_o\ & (!\MantissaA[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaB[6]~input_o\,
	datab => \MantissaA[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X49_Y35_N30
\LessThan0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\MantissaB[7]~input_o\ & ((\LessThan0~13_cout\) # (!\MantissaA[7]~input_o\))) # (!\MantissaB[7]~input_o\ & (\LessThan0~13_cout\ & !\MantissaA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaB[7]~input_o\,
	datad => \MantissaA[7]~input_o\,
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: IOIBUF_X52_Y31_N1
\ExponentB[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentB(6),
	o => \ExponentB[6]~input_o\);

-- Location: IOIBUF_X52_Y28_N1
\ExponentB[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentB(5),
	o => \ExponentB[5]~input_o\);

-- Location: IOIBUF_X52_Y27_N1
\ExponentB[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentB(4),
	o => \ExponentB[4]~input_o\);

-- Location: IOIBUF_X52_Y19_N8
\ExponentB[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentB(3),
	o => \ExponentB[3]~input_o\);

-- Location: IOIBUF_X52_Y32_N22
\ExponentA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentA(2),
	o => \ExponentA[2]~input_o\);

-- Location: IOIBUF_X52_Y31_N8
\ExponentB[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentB(1),
	o => \ExponentB[1]~input_o\);

-- Location: IOIBUF_X52_Y15_N1
\ExponentA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentA(0),
	o => \ExponentA[0]~input_o\);

-- Location: LCCOMB_X50_Y35_N18
\LessThan2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((\ExponentB[0]~input_o\ & !\ExponentA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentB[0]~input_o\,
	datab => \ExponentA[0]~input_o\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X50_Y35_N20
\LessThan2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\ExponentA[1]~input_o\ & ((!\LessThan2~1_cout\) # (!\ExponentB[1]~input_o\))) # (!\ExponentA[1]~input_o\ & (!\ExponentB[1]~input_o\ & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentA[1]~input_o\,
	datab => \ExponentB[1]~input_o\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X50_Y35_N22
\LessThan2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\ExponentB[2]~input_o\ & ((!\LessThan2~3_cout\) # (!\ExponentA[2]~input_o\))) # (!\ExponentB[2]~input_o\ & (!\ExponentA[2]~input_o\ & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentB[2]~input_o\,
	datab => \ExponentA[2]~input_o\,
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X50_Y35_N24
\LessThan2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\ExponentA[3]~input_o\ & ((!\LessThan2~5_cout\) # (!\ExponentB[3]~input_o\))) # (!\ExponentA[3]~input_o\ & (!\ExponentB[3]~input_o\ & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentA[3]~input_o\,
	datab => \ExponentB[3]~input_o\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X50_Y35_N26
\LessThan2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\ExponentA[4]~input_o\ & (\ExponentB[4]~input_o\ & !\LessThan2~7_cout\)) # (!\ExponentA[4]~input_o\ & ((\ExponentB[4]~input_o\) # (!\LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentA[4]~input_o\,
	datab => \ExponentB[4]~input_o\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X50_Y35_N28
\LessThan2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\ExponentA[5]~input_o\ & ((!\LessThan2~9_cout\) # (!\ExponentB[5]~input_o\))) # (!\ExponentA[5]~input_o\ & (!\ExponentB[5]~input_o\ & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentA[5]~input_o\,
	datab => \ExponentB[5]~input_o\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X50_Y35_N30
\LessThan2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~12_combout\ = (\ExponentA[6]~input_o\ & (!\LessThan2~11_cout\ & \ExponentB[6]~input_o\)) # (!\ExponentA[6]~input_o\ & ((\ExponentB[6]~input_o\) # (!\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentA[6]~input_o\,
	datad => \ExponentB[6]~input_o\,
	cin => \LessThan2~11_cout\,
	combout => \LessThan2~12_combout\);

-- Location: LCCOMB_X50_Y35_N4
\LessThan3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((!\ExponentB[0]~input_o\ & \ExponentA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentB[0]~input_o\,
	datab => \ExponentA[0]~input_o\,
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X50_Y35_N6
\LessThan3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((\ExponentA[1]~input_o\ & (\ExponentB[1]~input_o\ & !\LessThan3~1_cout\)) # (!\ExponentA[1]~input_o\ & ((\ExponentB[1]~input_o\) # (!\LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentA[1]~input_o\,
	datab => \ExponentB[1]~input_o\,
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X50_Y35_N8
\LessThan3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((\ExponentB[2]~input_o\ & (\ExponentA[2]~input_o\ & !\LessThan3~3_cout\)) # (!\ExponentB[2]~input_o\ & ((\ExponentA[2]~input_o\) # (!\LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentB[2]~input_o\,
	datab => \ExponentA[2]~input_o\,
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X50_Y35_N10
\LessThan3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((\ExponentA[3]~input_o\ & (\ExponentB[3]~input_o\ & !\LessThan3~5_cout\)) # (!\ExponentA[3]~input_o\ & ((\ExponentB[3]~input_o\) # (!\LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentA[3]~input_o\,
	datab => \ExponentB[3]~input_o\,
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X50_Y35_N12
\LessThan3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((\ExponentA[4]~input_o\ & ((!\LessThan3~7_cout\) # (!\ExponentB[4]~input_o\))) # (!\ExponentA[4]~input_o\ & (!\ExponentB[4]~input_o\ & !\LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentA[4]~input_o\,
	datab => \ExponentB[4]~input_o\,
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X50_Y35_N14
\LessThan3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\ExponentA[5]~input_o\ & (\ExponentB[5]~input_o\ & !\LessThan3~9_cout\)) # (!\ExponentA[5]~input_o\ & ((\ExponentB[5]~input_o\) # (!\LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentA[5]~input_o\,
	datab => \ExponentB[5]~input_o\,
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X50_Y35_N16
\LessThan3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan3~12_combout\ = (\ExponentA[6]~input_o\ & ((!\ExponentB[6]~input_o\) # (!\LessThan3~11_cout\))) # (!\ExponentA[6]~input_o\ & (!\LessThan3~11_cout\ & !\ExponentB[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExponentA[6]~input_o\,
	datad => \ExponentB[6]~input_o\,
	cin => \LessThan3~11_cout\,
	combout => \LessThan3~12_combout\);

-- Location: LCCOMB_X50_Y35_N0
\SignOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SignOut~0_combout\ = (!\LessThan3~12_combout\ & ((\LessThan2~12_combout\) # ((!\LessThan1~14_combout\ & \LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~14_combout\,
	datab => \LessThan0~14_combout\,
	datac => \LessThan2~12_combout\,
	datad => \LessThan3~12_combout\,
	combout => \SignOut~0_combout\);

-- Location: LCCOMB_X51_Y23_N20
\SignOut~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SignOut~1_combout\ = (\SignOut~0_combout\ & ((\SignB~input_o\))) # (!\SignOut~0_combout\ & (\SignA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SignA~input_o\,
	datac => \SignB~input_o\,
	datad => \SignOut~0_combout\,
	combout => \SignOut~1_combout\);

-- Location: IOIBUF_X27_Y0_N15
\GClock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: CLKCTRL_G17
\GClock~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X50_Y37_N28
\controller|s0|int_q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|s0|int_q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controller|s0|int_q~feeder_combout\);

-- Location: IOIBUF_X27_Y0_N22
\GReset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

-- Location: CLKCTRL_G19
\GReset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GReset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GReset~inputclkctrl_outclk\);

-- Location: FF_X50_Y37_N29
\controller|s0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \controller|s0|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|s0|int_q~q\);

-- Location: LCCOMB_X49_Y37_N12
\Fy|gen_enARdFF:8:enARdFF_instance|int_q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fy|gen_enARdFF:8:enARdFF_instance|int_q~0_combout\ = !\controller|s0|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|s0|int_q~q\,
	combout => \Fy|gen_enARdFF:8:enARdFF_instance|int_q~0_combout\);

-- Location: LCCOMB_X50_Y36_N4
\controller|s1|int_q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|s1|int_q~0_combout\ = !\controller|s0|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|s0|int_q~q\,
	combout => \controller|s1|int_q~0_combout\);

-- Location: FF_X50_Y36_N5
\controller|s1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \controller|s1|int_q~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|s1|int_q~q\);

-- Location: FF_X48_Y36_N27
\Ey|gen_enardFF_2:6:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentB[6]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ey|gen_enardFF_2:6:bit_component|int_q~q\);

-- Location: LCCOMB_X48_Y36_N26
\complementerY|out_result[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \complementerY|out_result\(6) = \Ey|gen_enardFF_2:6:bit_component|int_q~q\ $ (\controller|s1|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ey|gen_enardFF_2:6:bit_component|int_q~q\,
	datad => \controller|s1|int_q~q\,
	combout => \complementerY|out_result\(6));

-- Location: FF_X50_Y36_N31
\Ey|gen_enardFF_2:5:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentB[5]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ey|gen_enardFF_2:5:bit_component|int_q~q\);

-- Location: LCCOMB_X50_Y36_N6
\complementerY|out_result[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \complementerY|out_result\(5) = \controller|s1|int_q~q\ $ (\Ey|gen_enardFF_2:5:bit_component|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|s1|int_q~q\,
	datad => \Ey|gen_enardFF_2:5:bit_component|int_q~q\,
	combout => \complementerY|out_result\(5));

-- Location: IOIBUF_X52_Y25_N8
\ExponentA[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentA(5),
	o => \ExponentA[5]~input_o\);

-- Location: FF_X50_Y36_N29
\Ex|gen_enardFF_2:5:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentA[5]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ex|gen_enardFF_2:5:bit_component|int_q~q\);

-- Location: IOIBUF_X52_Y27_N8
\ExponentA[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentA(4),
	o => \ExponentA[4]~input_o\);

-- Location: FF_X50_Y36_N1
\Ex|gen_enardFF_2:4:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentA[4]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ex|gen_enardFF_2:4:bit_component|int_q~q\);

-- Location: IOIBUF_X52_Y32_N15
\ExponentA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentA(3),
	o => \ExponentA[3]~input_o\);

-- Location: FF_X50_Y36_N17
\Ex|gen_enardFF_2:3:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentA[3]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ex|gen_enardFF_2:3:bit_component|int_q~q\);

-- Location: FF_X50_Y36_N27
\Ey|gen_enardFF_2:3:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentB[3]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ey|gen_enardFF_2:3:bit_component|int_q~q\);

-- Location: LCCOMB_X50_Y36_N22
\complementerY|out_result[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \complementerY|out_result\(3) = \controller|s1|int_q~q\ $ (\Ey|gen_enardFF_2:3:bit_component|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|s1|int_q~q\,
	datad => \Ey|gen_enardFF_2:3:bit_component|int_q~q\,
	combout => \complementerY|out_result\(3));

-- Location: IOIBUF_X52_Y32_N1
\ExponentB[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentB(2),
	o => \ExponentB[2]~input_o\);

-- Location: FF_X50_Y36_N15
\Ey|gen_enardFF_2:2:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentB[2]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ey|gen_enardFF_2:2:bit_component|int_q~q\);

-- Location: LCCOMB_X50_Y36_N8
\complementerY|out_result[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \complementerY|out_result\(2) = \Ey|gen_enardFF_2:2:bit_component|int_q~q\ $ (\controller|s1|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ey|gen_enardFF_2:2:bit_component|int_q~q\,
	datad => \controller|s1|int_q~q\,
	combout => \complementerY|out_result\(2));

-- Location: IOIBUF_X52_Y32_N8
\ExponentA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentA(1),
	o => \ExponentA[1]~input_o\);

-- Location: FF_X50_Y36_N21
\Ex|gen_enardFF_2:1:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentA[1]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ex|gen_enardFF_2:1:bit_component|int_q~q\);

-- Location: FF_X50_Y36_N7
\Ey|gen_enardFF_2:1:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentB[1]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ey|gen_enardFF_2:1:bit_component|int_q~q\);

-- Location: LCCOMB_X50_Y36_N30
\complementerY|out_result[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \complementerY|out_result\(1) = \controller|s1|int_q~q\ $ (\Ey|gen_enardFF_2:1:bit_component|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|s1|int_q~q\,
	datad => \Ey|gen_enardFF_2:1:bit_component|int_q~q\,
	combout => \complementerY|out_result\(1));

-- Location: IOIBUF_X50_Y41_N1
\ExponentB[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentB(0),
	o => \ExponentB[0]~input_o\);

-- Location: FF_X50_Y36_N11
\Ey|gen_enardFF_2:0:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentB[0]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ey|gen_enardFF_2:0:bit_component|int_q~q\);

-- Location: LCCOMB_X50_Y36_N10
\exponentAdder|adder0|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder0|out_cout~0_combout\ = (\controller|s1|int_q~q\ & ((\Ex|gen_enardFF_2:0:bit_component|int_q~q\ $ (\controller|s2|int_q~q\)) # (!\Ey|gen_enardFF_2:0:bit_component|int_q~q\))) # (!\controller|s1|int_q~q\ & 
-- ((\Ex|gen_enardFF_2:0:bit_component|int_q~q\ & (\Ey|gen_enardFF_2:0:bit_component|int_q~q\)) # (!\Ex|gen_enardFF_2:0:bit_component|int_q~q\ & ((\controller|s2|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ex|gen_enardFF_2:0:bit_component|int_q~q\,
	datab => \controller|s1|int_q~q\,
	datac => \Ey|gen_enardFF_2:0:bit_component|int_q~q\,
	datad => \controller|s2|int_q~q\,
	combout => \exponentAdder|adder0|out_cout~0_combout\);

-- Location: LCCOMB_X50_Y36_N2
\exponentAdder|adder1|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder1|out_cout~0_combout\ = (\complementerY|out_result\(1) & ((\exponentAdder|adder0|out_cout~0_combout\) # (\controller|s2|int_q~q\ $ (\Ex|gen_enardFF_2:1:bit_component|int_q~q\)))) # (!\complementerY|out_result\(1) & 
-- (\exponentAdder|adder0|out_cout~0_combout\ & (\controller|s2|int_q~q\ $ (\Ex|gen_enardFF_2:1:bit_component|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s2|int_q~q\,
	datab => \Ex|gen_enardFF_2:1:bit_component|int_q~q\,
	datac => \complementerY|out_result\(1),
	datad => \exponentAdder|adder0|out_cout~0_combout\,
	combout => \exponentAdder|adder1|out_cout~0_combout\);

-- Location: LCCOMB_X50_Y36_N24
\exponentAdder|adder2|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder2|out_cout~0_combout\ = (\complementerY|out_result\(2) & ((\exponentAdder|adder1|out_cout~0_combout\) # (\Ex|gen_enardFF_2:2:bit_component|int_q~q\ $ (\controller|s2|int_q~q\)))) # (!\complementerY|out_result\(2) & 
-- (\exponentAdder|adder1|out_cout~0_combout\ & (\Ex|gen_enardFF_2:2:bit_component|int_q~q\ $ (\controller|s2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ex|gen_enardFF_2:2:bit_component|int_q~q\,
	datab => \controller|s2|int_q~q\,
	datac => \complementerY|out_result\(2),
	datad => \exponentAdder|adder1|out_cout~0_combout\,
	combout => \exponentAdder|adder2|out_cout~0_combout\);

-- Location: LCCOMB_X50_Y36_N18
\exponentAdder|adder3|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder3|out_cout~0_combout\ = (\complementerY|out_result\(3) & ((\exponentAdder|adder2|out_cout~0_combout\) # (\controller|s2|int_q~q\ $ (\Ex|gen_enardFF_2:3:bit_component|int_q~q\)))) # (!\complementerY|out_result\(3) & 
-- (\exponentAdder|adder2|out_cout~0_combout\ & (\controller|s2|int_q~q\ $ (\Ex|gen_enardFF_2:3:bit_component|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s2|int_q~q\,
	datab => \Ex|gen_enardFF_2:3:bit_component|int_q~q\,
	datac => \complementerY|out_result\(3),
	datad => \exponentAdder|adder2|out_cout~0_combout\,
	combout => \exponentAdder|adder3|out_cout~0_combout\);

-- Location: LCCOMB_X50_Y36_N0
\exponentAdder|adder4|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder4|out_cout~0_combout\ = (\complementerY|out_result\(4) & ((\exponentAdder|adder3|out_cout~0_combout\) # (\controller|s2|int_q~q\ $ (\Ex|gen_enardFF_2:4:bit_component|int_q~q\)))) # (!\complementerY|out_result\(4) & 
-- (\exponentAdder|adder3|out_cout~0_combout\ & (\controller|s2|int_q~q\ $ (\Ex|gen_enardFF_2:4:bit_component|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \complementerY|out_result\(4),
	datab => \controller|s2|int_q~q\,
	datac => \Ex|gen_enardFF_2:4:bit_component|int_q~q\,
	datad => \exponentAdder|adder3|out_cout~0_combout\,
	combout => \exponentAdder|adder4|out_cout~0_combout\);

-- Location: LCCOMB_X50_Y36_N28
\exponentAdder|adder5|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder5|out_cout~0_combout\ = (\complementerY|out_result\(5) & ((\exponentAdder|adder4|out_cout~0_combout\) # (\controller|s2|int_q~q\ $ (\Ex|gen_enardFF_2:5:bit_component|int_q~q\)))) # (!\complementerY|out_result\(5) & 
-- (\exponentAdder|adder4|out_cout~0_combout\ & (\controller|s2|int_q~q\ $ (\Ex|gen_enardFF_2:5:bit_component|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s2|int_q~q\,
	datab => \complementerY|out_result\(5),
	datac => \Ex|gen_enardFF_2:5:bit_component|int_q~q\,
	datad => \exponentAdder|adder4|out_cout~0_combout\,
	combout => \exponentAdder|adder5|out_cout~0_combout\);

-- Location: LCCOMB_X49_Y36_N2
\exponentAdder|adder6|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder6|out_cout~0_combout\ = (\complementerY|out_result\(6) & ((\exponentAdder|adder5|out_cout~0_combout\) # (\Ex|gen_enardFF_2:6:bit_component|int_q~q\ $ (\controller|s2|int_q~q\)))) # (!\complementerY|out_result\(6) & 
-- (\exponentAdder|adder5|out_cout~0_combout\ & (\Ex|gen_enardFF_2:6:bit_component|int_q~q\ $ (\controller|s2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ex|gen_enardFF_2:6:bit_component|int_q~q\,
	datab => \controller|s2|int_q~q\,
	datac => \complementerY|out_result\(6),
	datad => \exponentAdder|adder5|out_cout~0_combout\,
	combout => \exponentAdder|adder6|out_cout~0_combout\);

-- Location: LCCOMB_X49_Y36_N8
\controller|int_d[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|int_d\(2) = (\controller|s1|int_q~q\ & (\controller|s2|int_q~q\ $ (!\exponentAdder|adder6|out_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|s1|int_q~q\,
	datac => \controller|s2|int_q~q\,
	datad => \exponentAdder|adder6|out_cout~0_combout\,
	combout => \controller|int_d\(2));

-- Location: FF_X49_Y36_N9
\controller|s2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \controller|int_d\(2),
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|s2|int_q~q\);

-- Location: LCCOMB_X49_Y36_N12
\controller|out_load6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|out_load6~combout\ = (\controller|s2|int_q~q\) # (\controller|s1|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|s2|int_q~q\,
	datad => \controller|s1|int_q~q\,
	combout => \controller|out_load6~combout\);

-- Location: LCCOMB_X47_Y36_N18
\exponentAdder|adder5|out_sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder5|out_sum~0_combout\ = \Ex|gen_enardFF_2:5:bit_component|int_q~q\ $ (\controller|s1|int_q~q\ $ (\controller|s2|int_q~q\ $ (\Ey|gen_enardFF_2:5:bit_component|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ex|gen_enardFF_2:5:bit_component|int_q~q\,
	datab => \controller|s1|int_q~q\,
	datac => \controller|s2|int_q~q\,
	datad => \Ey|gen_enardFF_2:5:bit_component|int_q~q\,
	combout => \exponentAdder|adder5|out_sum~0_combout\);

-- Location: LCCOMB_X48_Y36_N16
\exponentCounter|int_d[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d\(5) = (\exponentCounter|int_d~10_combout\) # ((\controller|out_load6~combout\ & (\exponentAdder|adder4|out_cout~0_combout\ $ (\exponentAdder|adder5|out_sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|int_d~10_combout\,
	datab => \exponentAdder|adder4|out_cout~0_combout\,
	datac => \controller|out_load6~combout\,
	datad => \exponentAdder|adder5|out_sum~0_combout\,
	combout => \exponentCounter|int_d\(5));

-- Location: LCCOMB_X49_Y36_N0
\exponentCounter|int_d[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d\(6) = (\exponentCounter|int_d~6_combout\) # ((\controller|out_load6~combout\ & (\exponentAdder|adder6|out_sum~0_combout\ $ (\exponentAdder|adder5|out_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentAdder|adder6|out_sum~0_combout\,
	datab => \controller|out_load6~combout\,
	datac => \exponentCounter|int_d~6_combout\,
	datad => \exponentAdder|adder5|out_cout~0_combout\,
	combout => \exponentCounter|int_d\(6));

-- Location: FF_X49_Y36_N13
\exponentCounter|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \exponentCounter|int_d\(6),
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \exponentCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentCounter|bit6|int_q~q\);

-- Location: FF_X50_Y36_N13
\Ex|gen_enardFF_2:0:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentA[0]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ex|gen_enardFF_2:0:bit_component|int_q~q\);

-- Location: LCCOMB_X50_Y36_N12
\exponentCounter|int_d~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d~9_combout\ = (\controller|s1|int_q~q\ & (\Ey|gen_enardFF_2:0:bit_component|int_q~q\ $ (\Ex|gen_enardFF_2:0:bit_component|int_q~q\ $ (\controller|s2|int_q~q\)))) # (!\controller|s1|int_q~q\ & (\controller|s2|int_q~q\ & 
-- (\Ey|gen_enardFF_2:0:bit_component|int_q~q\ $ (\Ex|gen_enardFF_2:0:bit_component|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s1|int_q~q\,
	datab => \Ey|gen_enardFF_2:0:bit_component|int_q~q\,
	datac => \Ex|gen_enardFF_2:0:bit_component|int_q~q\,
	datad => \controller|s2|int_q~q\,
	combout => \exponentCounter|int_d~9_combout\);

-- Location: LCCOMB_X48_Y36_N4
\exponentCounter|int_d[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d\(0) = (\exponentCounter|int_d~9_combout\) # ((!\exponentCounter|bit0|int_q~q\ & ((\controller|s4|int_q~q\) # (\controller|s6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s4|int_q~q\,
	datab => \exponentCounter|int_d~9_combout\,
	datac => \exponentCounter|bit0|int_q~q\,
	datad => \controller|s6|int_q~q\,
	combout => \exponentCounter|int_d\(0));

-- Location: FF_X48_Y36_N5
\exponentCounter|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentCounter|int_d\(0),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentCounter|bit0|int_q~q\);

-- Location: LCCOMB_X49_Y36_N28
\controller|int_d[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|int_d[3]~2_combout\ = (\controller|s1|int_q~q\ & (\controller|s2|int_q~q\ $ (\exponentAdder|adder6|out_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s1|int_q~q\,
	datac => \controller|s2|int_q~q\,
	datad => \exponentAdder|adder6|out_cout~0_combout\,
	combout => \controller|int_d[3]~2_combout\);

-- Location: LCCOMB_X49_Y36_N6
\controller|int_d[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|int_d[4]~7_combout\ = (!\exponentCounter|Equal0~1_combout\ & ((\controller|s4|int_q~q\) # ((!\exponentCounter|out_q[6]~2_combout\ & \controller|int_d[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|out_q[6]~2_combout\,
	datab => \exponentCounter|Equal0~1_combout\,
	datac => \controller|s4|int_q~q\,
	datad => \controller|int_d[3]~2_combout\,
	combout => \controller|int_d[4]~7_combout\);

-- Location: FF_X49_Y36_N7
\controller|s4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \controller|int_d[4]~7_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|s4|int_q~q\);

-- Location: LCCOMB_X48_Y36_N30
\exponentCounter|int_d~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d~8_combout\ = (\controller|s6|int_q~q\ & (\exponentCounter|bit1|int_q~q\ $ ((!\exponentCounter|bit0|int_q~q\)))) # (!\controller|s6|int_q~q\ & (\controller|s4|int_q~q\ & (\exponentCounter|bit1|int_q~q\ $ 
-- (!\exponentCounter|bit0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|bit1|int_q~q\,
	datab => \controller|s6|int_q~q\,
	datac => \exponentCounter|bit0|int_q~q\,
	datad => \controller|s4|int_q~q\,
	combout => \exponentCounter|int_d~8_combout\);

-- Location: LCCOMB_X50_Y36_N20
\exponentAdder|adder1|out_sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder1|out_sum~combout\ = \complementerY|out_result\(1) $ (\controller|s2|int_q~q\ $ (\Ex|gen_enardFF_2:1:bit_component|int_q~q\ $ (\exponentAdder|adder0|out_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \complementerY|out_result\(1),
	datab => \controller|s2|int_q~q\,
	datac => \Ex|gen_enardFF_2:1:bit_component|int_q~q\,
	datad => \exponentAdder|adder0|out_cout~0_combout\,
	combout => \exponentAdder|adder1|out_sum~combout\);

-- Location: LCCOMB_X48_Y36_N14
\exponentCounter|int_d[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d\(1) = (\exponentCounter|int_d~8_combout\) # ((\exponentAdder|adder1|out_sum~combout\ & ((\controller|s1|int_q~q\) # (\controller|s2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s1|int_q~q\,
	datab => \controller|s2|int_q~q\,
	datac => \exponentCounter|int_d~8_combout\,
	datad => \exponentAdder|adder1|out_sum~combout\,
	combout => \exponentCounter|int_d\(1));

-- Location: FF_X48_Y36_N15
\exponentCounter|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentCounter|int_d\(1),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentCounter|bit1|int_q~q\);

-- Location: LCCOMB_X48_Y36_N8
\controller|out_countd6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|out_countd6~combout\ = (\controller|s6|int_q~q\) # (\controller|s4|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|s6|int_q~q\,
	datad => \controller|s4|int_q~q\,
	combout => \controller|out_countd6~combout\);

-- Location: LCCOMB_X50_Y36_N16
\exponentAdder|adder3|out_sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentAdder|adder3|out_sum~combout\ = \complementerY|out_result\(3) $ (\exponentAdder|adder2|out_cout~0_combout\ $ (\Ex|gen_enardFF_2:3:bit_component|int_q~q\ $ (\controller|s2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \complementerY|out_result\(3),
	datab => \exponentAdder|adder2|out_cout~0_combout\,
	datac => \Ex|gen_enardFF_2:3:bit_component|int_q~q\,
	datad => \controller|s2|int_q~q\,
	combout => \exponentAdder|adder3|out_sum~combout\);

-- Location: LCCOMB_X48_Y36_N0
\exponentCounter|int_d[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d\(3) = (\exponentCounter|adder|FA3|out_sum~combout\ & (((\controller|out_load6~combout\ & \exponentAdder|adder3|out_sum~combout\)))) # (!\exponentCounter|adder|FA3|out_sum~combout\ & ((\controller|out_countd6~combout\) # 
-- ((\controller|out_load6~combout\ & \exponentAdder|adder3|out_sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|adder|FA3|out_sum~combout\,
	datab => \controller|out_countd6~combout\,
	datac => \controller|out_load6~combout\,
	datad => \exponentAdder|adder3|out_sum~combout\,
	combout => \exponentCounter|int_d\(3));

-- Location: FF_X48_Y36_N1
\exponentCounter|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentCounter|int_d\(3),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentCounter|bit3|int_q~q\);

-- Location: LCCOMB_X48_Y36_N22
\exponentCounter|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|Equal0~0_combout\ = (!\exponentCounter|bit2|int_q~q\ & (!\exponentCounter|bit0|int_q~q\ & (!\exponentCounter|bit1|int_q~q\ & !\exponentCounter|bit3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|bit2|int_q~q\,
	datab => \exponentCounter|bit0|int_q~q\,
	datac => \exponentCounter|bit1|int_q~q\,
	datad => \exponentCounter|bit3|int_q~q\,
	combout => \exponentCounter|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y36_N18
\exponentCounter|int_d~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d~11_combout\ = (\controller|s6|int_q~q\ & (\exponentCounter|bit4|int_q~q\ $ ((\exponentCounter|Equal0~0_combout\)))) # (!\controller|s6|int_q~q\ & (\controller|s4|int_q~q\ & (\exponentCounter|bit4|int_q~q\ $ 
-- (\exponentCounter|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|bit4|int_q~q\,
	datab => \controller|s6|int_q~q\,
	datac => \exponentCounter|Equal0~0_combout\,
	datad => \controller|s4|int_q~q\,
	combout => \exponentCounter|int_d~11_combout\);

-- Location: LCCOMB_X48_Y36_N10
\exponentCounter|int_d[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d\(4) = (\exponentCounter|int_d~11_combout\) # ((\controller|out_load6~combout\ & (\exponentAdder|adder4|out_sum~0_combout\ $ (\exponentAdder|adder3|out_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentAdder|adder4|out_sum~0_combout\,
	datab => \exponentCounter|int_d~11_combout\,
	datac => \controller|out_load6~combout\,
	datad => \exponentAdder|adder3|out_cout~0_combout\,
	combout => \exponentCounter|int_d\(4));

-- Location: FF_X48_Y36_N11
\exponentCounter|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentCounter|int_d\(4),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentCounter|bit4|int_q~q\);

-- Location: LCCOMB_X48_Y36_N24
\exponentCounter|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|Equal0~1_combout\ = (\exponentCounter|Equal0~0_combout\ & (!\exponentCounter|bit5|int_q~q\ & (!\exponentCounter|bit6|int_q~q\ & !\exponentCounter|bit4|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|Equal0~0_combout\,
	datab => \exponentCounter|bit5|int_q~q\,
	datac => \exponentCounter|bit6|int_q~q\,
	datad => \exponentCounter|bit4|int_q~q\,
	combout => \exponentCounter|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y36_N26
\controller|int_d[6]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|int_d[6]~8_combout\ = (!\exponentCounter|Equal0~1_combout\ & ((\controller|s6|int_q~q\) # ((\controller|s2|int_q~q\ & !\exponentCounter|int_d\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s2|int_q~q\,
	datab => \exponentCounter|Equal0~1_combout\,
	datac => \controller|s6|int_q~q\,
	datad => \exponentCounter|int_d\(6),
	combout => \controller|int_d[6]~8_combout\);

-- Location: FF_X49_Y36_N27
\controller|s6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \controller|int_d[6]~8_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|s6|int_q~q\);

-- Location: LCCOMB_X48_Y36_N2
\exponentCounter|int_enable\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_enable~combout\ = (\controller|s4|int_q~q\ & (((!\controller|s2|int_q~q\ & !\controller|s1|int_q~q\)))) # (!\controller|s4|int_q~q\ & (\controller|s6|int_q~q\ $ (((\controller|s2|int_q~q\) # (\controller|s1|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s4|int_q~q\,
	datab => \controller|s6|int_q~q\,
	datac => \controller|s2|int_q~q\,
	datad => \controller|s1|int_q~q\,
	combout => \exponentCounter|int_enable~combout\);

-- Location: FF_X48_Y36_N17
\exponentCounter|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentCounter|int_d\(5),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentCounter|bit5|int_q~q\);

-- Location: LCCOMB_X48_Y36_N6
\exponentCounter|adder|FA6|out_sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|adder|FA6|out_sum~combout\ = \exponentCounter|bit6|int_q~q\ $ ((((\exponentCounter|bit5|int_q~q\) # (\exponentCounter|bit4|int_q~q\)) # (!\exponentCounter|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|Equal0~0_combout\,
	datab => \exponentCounter|bit5|int_q~q\,
	datac => \exponentCounter|bit6|int_q~q\,
	datad => \exponentCounter|bit4|int_q~q\,
	combout => \exponentCounter|adder|FA6|out_sum~combout\);

-- Location: LCCOMB_X49_Y36_N4
\exponentCounter|int_d~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|int_d~6_combout\ = (!\exponentCounter|adder|FA6|out_sum~combout\ & ((\controller|s6|int_q~q\) # (\controller|s4|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s6|int_q~q\,
	datac => \exponentCounter|adder|FA6|out_sum~combout\,
	datad => \controller|s4|int_q~q\,
	combout => \exponentCounter|int_d~6_combout\);

-- Location: LCCOMB_X49_Y36_N22
\exponentCounter|out_q[6]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentCounter|out_q[6]~2_combout\ = (\controller|out_load6~combout\ & ((\exponentCounter|int_d~6_combout\) # (\exponentCounter|out_q[6]~3_combout\ $ (!\exponentAdder|adder5|out_cout~0_combout\)))) # (!\controller|out_load6~combout\ & 
-- (\exponentCounter|out_q[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|out_q[6]~3_combout\,
	datab => \controller|out_load6~combout\,
	datac => \exponentCounter|int_d~6_combout\,
	datad => \exponentAdder|adder5|out_cout~0_combout\,
	combout => \exponentCounter|out_q[6]~2_combout\);

-- Location: LCCOMB_X49_Y36_N10
\controller|int_d[3]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|int_d[3]~9_combout\ = (\controller|s1|int_q~q\ & (\exponentCounter|out_q[6]~2_combout\ & (\controller|s2|int_q~q\ $ (\exponentAdder|adder6|out_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s2|int_q~q\,
	datab => \controller|s1|int_q~q\,
	datac => \exponentCounter|out_q[6]~2_combout\,
	datad => \exponentAdder|adder6|out_cout~0_combout\,
	combout => \controller|int_d[3]~9_combout\);

-- Location: FF_X49_Y36_N11
\controller|s3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \controller|int_d[3]~9_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|s3|int_q~q\);

-- Location: LCCOMB_X49_Y37_N20
\Fy|int_enable~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fy|int_enable~0_combout\ = \controller|s4|int_q~q\ $ (\controller|s0|int_q~q\ $ (!\controller|s3|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s4|int_q~q\,
	datab => \controller|s0|int_q~q\,
	datad => \controller|s3|int_q~q\,
	combout => \Fy|int_enable~0_combout\);

-- Location: FF_X49_Y37_N13
\Fy|gen_enARdFF:8:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fy|gen_enARdFF:8:enARdFF_instance|int_q~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fy|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fy|gen_enARdFF:8:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X49_Y37_N14
\Fx|gen_enARdFF:8:enARdFF_instance|int_q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fx|gen_enARdFF:8:enARdFF_instance|int_q~0_combout\ = !\controller|s0|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|s0|int_q~q\,
	combout => \Fx|gen_enARdFF:8:enARdFF_instance|int_q~0_combout\);

-- Location: LCCOMB_X49_Y36_N16
\controller|int_d[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|int_d[5]~6_combout\ = (\controller|s2|int_q~q\ & \exponentCounter|int_d\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|s2|int_q~q\,
	datad => \exponentCounter|int_d\(6),
	combout => \controller|int_d[5]~6_combout\);

-- Location: FF_X49_Y36_N17
\controller|s5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \controller|int_d[5]~6_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|s5|int_q~q\);

-- Location: LCCOMB_X49_Y37_N2
\Fx|int_enable~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fx|int_enable~0_combout\ = \controller|s5|int_q~q\ $ (\controller|s6|int_q~q\ $ (!\controller|s0|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|s5|int_q~q\,
	datac => \controller|s6|int_q~q\,
	datad => \controller|s0|int_q~q\,
	combout => \Fx|int_enable~0_combout\);

-- Location: FF_X49_Y37_N15
\Fx|gen_enARdFF:8:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fx|gen_enARdFF:8:enARdFF_instance|int_q~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fx|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fx|gen_enARdFF:8:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X49_Y37_N24
\Fx|int_d[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fx|int_d\(7) = (\controller|s6|int_q~q\ & ((\Fx|gen_enARdFF:8:enARdFF_instance|int_q~q\) # ((\MantissaA[7]~input_o\ & !\controller|s0|int_q~q\)))) # (!\controller|s6|int_q~q\ & (((\MantissaA[7]~input_o\ & !\controller|s0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s6|int_q~q\,
	datab => \Fx|gen_enARdFF:8:enARdFF_instance|int_q~q\,
	datac => \MantissaA[7]~input_o\,
	datad => \controller|s0|int_q~q\,
	combout => \Fx|int_d\(7));

-- Location: FF_X49_Y37_N25
\Fx|gen_enARdFF:7:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fx|int_d\(7),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fx|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fx|gen_enARdFF:7:enARdFF_instance|int_q~q\);

-- Location: IOIBUF_X46_Y41_N8
\MantissaB[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaB(6),
	o => \MantissaB[6]~input_o\);

-- Location: IOIBUF_X41_Y41_N22
\MantissaB[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaB(7),
	o => \MantissaB[7]~input_o\);

-- Location: LCCOMB_X49_Y37_N22
\Fy|int_d[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fy|int_d\(7) = (\controller|s4|int_q~q\ & ((\Fy|gen_enARdFF:8:enARdFF_instance|int_q~q\) # ((!\controller|s0|int_q~q\ & \MantissaB[7]~input_o\)))) # (!\controller|s4|int_q~q\ & (!\controller|s0|int_q~q\ & (\MantissaB[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s4|int_q~q\,
	datab => \controller|s0|int_q~q\,
	datac => \MantissaB[7]~input_o\,
	datad => \Fy|gen_enARdFF:8:enARdFF_instance|int_q~q\,
	combout => \Fy|int_d\(7));

-- Location: FF_X49_Y37_N23
\Fy|gen_enARdFF:7:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fy|int_d\(7),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fy|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fy|gen_enARdFF:7:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X49_Y37_N26
\Fy|int_d[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fy|int_d\(6) = (\controller|s4|int_q~q\ & ((\Fy|gen_enARdFF:7:enARdFF_instance|int_q~q\) # ((\MantissaB[6]~input_o\ & !\controller|s0|int_q~q\)))) # (!\controller|s4|int_q~q\ & (\MantissaB[6]~input_o\ & ((!\controller|s0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s4|int_q~q\,
	datab => \MantissaB[6]~input_o\,
	datac => \Fy|gen_enARdFF:7:enARdFF_instance|int_q~q\,
	datad => \controller|s0|int_q~q\,
	combout => \Fy|int_d\(6));

-- Location: FF_X49_Y37_N27
\Fy|gen_enARdFF:6:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fy|int_d\(6),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fy|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fy|gen_enARdFF:6:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X49_Y37_N8
\Fx|int_d[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fx|int_d\(6) = (\controller|s6|int_q~q\ & ((\Fx|gen_enARdFF:7:enARdFF_instance|int_q~q\) # ((\MantissaA[6]~input_o\ & !\controller|s0|int_q~q\)))) # (!\controller|s6|int_q~q\ & (((\MantissaA[6]~input_o\ & !\controller|s0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s6|int_q~q\,
	datab => \Fx|gen_enARdFF:7:enARdFF_instance|int_q~q\,
	datac => \MantissaA[6]~input_o\,
	datad => \controller|s0|int_q~q\,
	combout => \Fx|int_d\(6));

-- Location: FF_X49_Y37_N9
\Fx|gen_enARdFF:6:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fx|int_d\(6),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fx|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fx|gen_enARdFF:6:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X49_Y37_N10
\Fx|int_d[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fx|int_d\(5) = (\MantissaA[5]~input_o\ & (((\Fx|gen_enARdFF:6:enARdFF_instance|int_q~q\ & \controller|s6|int_q~q\)) # (!\controller|s0|int_q~q\))) # (!\MantissaA[5]~input_o\ & (\Fx|gen_enARdFF:6:enARdFF_instance|int_q~q\ & (\controller|s6|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[5]~input_o\,
	datab => \Fx|gen_enARdFF:6:enARdFF_instance|int_q~q\,
	datac => \controller|s6|int_q~q\,
	datad => \controller|s0|int_q~q\,
	combout => \Fx|int_d\(5));

-- Location: FF_X49_Y37_N11
\Fx|gen_enARdFF:5:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fx|int_d\(5),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fx|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fx|gen_enARdFF:5:enARdFF_instance|int_q~q\);

-- Location: IOIBUF_X52_Y23_N1
\MantissaA[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaA(4),
	o => \MantissaA[4]~input_o\);

-- Location: LCCOMB_X49_Y37_N18
\Fx|int_d[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fx|int_d\(4) = (\Fx|gen_enARdFF:5:enARdFF_instance|int_q~q\ & ((\controller|s6|int_q~q\) # ((!\controller|s0|int_q~q\ & \MantissaA[4]~input_o\)))) # (!\Fx|gen_enARdFF:5:enARdFF_instance|int_q~q\ & (!\controller|s0|int_q~q\ & ((\MantissaA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx|gen_enARdFF:5:enARdFF_instance|int_q~q\,
	datab => \controller|s0|int_q~q\,
	datac => \controller|s6|int_q~q\,
	datad => \MantissaA[4]~input_o\,
	combout => \Fx|int_d\(4));

-- Location: FF_X49_Y37_N19
\Fx|gen_enARdFF:4:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fx|int_d\(4),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fx|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fx|gen_enARdFF:4:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X49_Y37_N0
\Fx|int_d[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fx|int_d\(3) = (\MantissaA[3]~input_o\ & (((\Fx|gen_enARdFF:4:enARdFF_instance|int_q~q\ & \controller|s6|int_q~q\)) # (!\controller|s0|int_q~q\))) # (!\MantissaA[3]~input_o\ & (\Fx|gen_enARdFF:4:enARdFF_instance|int_q~q\ & (\controller|s6|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[3]~input_o\,
	datab => \Fx|gen_enARdFF:4:enARdFF_instance|int_q~q\,
	datac => \controller|s6|int_q~q\,
	datad => \controller|s0|int_q~q\,
	combout => \Fx|int_d\(3));

-- Location: FF_X49_Y37_N1
\Fx|gen_enARdFF:3:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fx|int_d\(3),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fx|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fx|gen_enARdFF:3:enARdFF_instance|int_q~q\);

-- Location: IOIBUF_X46_Y41_N15
\MantissaA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaA(2),
	o => \MantissaA[2]~input_o\);

-- Location: LCCOMB_X49_Y37_N28
\Fx|int_d[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fx|int_d\(2) = (\Fx|gen_enARdFF:3:enARdFF_instance|int_q~q\ & ((\controller|s6|int_q~q\) # ((\MantissaA[2]~input_o\ & !\controller|s0|int_q~q\)))) # (!\Fx|gen_enARdFF:3:enARdFF_instance|int_q~q\ & (\MantissaA[2]~input_o\ & ((!\controller|s0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx|gen_enARdFF:3:enARdFF_instance|int_q~q\,
	datab => \MantissaA[2]~input_o\,
	datac => \controller|s6|int_q~q\,
	datad => \controller|s0|int_q~q\,
	combout => \Fx|int_d\(2));

-- Location: FF_X49_Y37_N29
\Fx|gen_enARdFF:2:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fx|int_d\(2),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fx|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fx|gen_enARdFF:2:enARdFF_instance|int_q~q\);

-- Location: IOIBUF_X50_Y41_N8
\MantissaB[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaB(5),
	o => \MantissaB[5]~input_o\);

-- Location: LCCOMB_X50_Y37_N30
\Fy|int_d[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fy|int_d\(5) = (\Fy|gen_enARdFF:6:enARdFF_instance|int_q~q\ & ((\controller|s4|int_q~q\) # ((\MantissaB[5]~input_o\ & !\controller|s0|int_q~q\)))) # (!\Fy|gen_enARdFF:6:enARdFF_instance|int_q~q\ & (\MantissaB[5]~input_o\ & ((!\controller|s0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fy|gen_enARdFF:6:enARdFF_instance|int_q~q\,
	datab => \MantissaB[5]~input_o\,
	datac => \controller|s4|int_q~q\,
	datad => \controller|s0|int_q~q\,
	combout => \Fy|int_d\(5));

-- Location: FF_X49_Y37_N21
\Fy|gen_enARdFF:5:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \Fy|int_d\(5),
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Fy|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fy|gen_enARdFF:5:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X49_Y37_N4
\Fy|int_d[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fy|int_d\(4) = (\MantissaB[4]~input_o\ & (((\controller|s4|int_q~q\ & \Fy|gen_enARdFF:5:enARdFF_instance|int_q~q\)) # (!\controller|s0|int_q~q\))) # (!\MantissaB[4]~input_o\ & (((\controller|s4|int_q~q\ & \Fy|gen_enARdFF:5:enARdFF_instance|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaB[4]~input_o\,
	datab => \controller|s0|int_q~q\,
	datac => \controller|s4|int_q~q\,
	datad => \Fy|gen_enARdFF:5:enARdFF_instance|int_q~q\,
	combout => \Fy|int_d\(4));

-- Location: FF_X49_Y37_N5
\Fy|gen_enARdFF:4:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fy|int_d\(4),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fy|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fy|gen_enARdFF:4:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X49_Y37_N6
\Fy|int_d[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fy|int_d\(3) = (\controller|s4|int_q~q\ & ((\Fy|gen_enARdFF:4:enARdFF_instance|int_q~q\) # ((\MantissaB[3]~input_o\ & !\controller|s0|int_q~q\)))) # (!\controller|s4|int_q~q\ & (((\MantissaB[3]~input_o\ & !\controller|s0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s4|int_q~q\,
	datab => \Fy|gen_enARdFF:4:enARdFF_instance|int_q~q\,
	datac => \MantissaB[3]~input_o\,
	datad => \controller|s0|int_q~q\,
	combout => \Fy|int_d\(3));

-- Location: FF_X49_Y37_N7
\Fy|gen_enARdFF:3:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fy|int_d\(3),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fy|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fy|gen_enARdFF:3:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X48_Y37_N26
\Fy|int_d[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fy|int_d\(2) = (\controller|s4|int_q~q\ & ((\Fy|gen_enARdFF:3:enARdFF_instance|int_q~q\) # ((\MantissaB[2]~input_o\ & !\controller|s0|int_q~q\)))) # (!\controller|s4|int_q~q\ & (\MantissaB[2]~input_o\ & (!\controller|s0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s4|int_q~q\,
	datab => \MantissaB[2]~input_o\,
	datac => \controller|s0|int_q~q\,
	datad => \Fy|gen_enARdFF:3:enARdFF_instance|int_q~q\,
	combout => \Fy|int_d\(2));

-- Location: FF_X48_Y37_N27
\Fy|gen_enARdFF:2:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fy|int_d\(2),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fy|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fy|gen_enARdFF:2:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X48_Y37_N12
\Fy|int_d[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fy|int_d\(1) = (\controller|s0|int_q~q\ & (\controller|s4|int_q~q\ & (\Fy|gen_enARdFF:2:enARdFF_instance|int_q~q\))) # (!\controller|s0|int_q~q\ & ((\MantissaB[1]~input_o\) # ((\controller|s4|int_q~q\ & \Fy|gen_enARdFF:2:enARdFF_instance|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s0|int_q~q\,
	datab => \controller|s4|int_q~q\,
	datac => \Fy|gen_enARdFF:2:enARdFF_instance|int_q~q\,
	datad => \MantissaB[1]~input_o\,
	combout => \Fy|int_d\(1));

-- Location: FF_X48_Y37_N13
\Fy|gen_enARdFF:1:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fy|int_d\(1),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fy|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fy|gen_enARdFF:1:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X48_Y37_N20
\Fy|int_d[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fy|int_d\(0) = (\controller|s4|int_q~q\ & ((\Fy|gen_enARdFF:1:enARdFF_instance|int_q~q\) # ((\MantissaB[0]~input_o\ & !\controller|s0|int_q~q\)))) # (!\controller|s4|int_q~q\ & (\MantissaB[0]~input_o\ & (!\controller|s0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s4|int_q~q\,
	datab => \MantissaB[0]~input_o\,
	datac => \controller|s0|int_q~q\,
	datad => \Fy|gen_enARdFF:1:enARdFF_instance|int_q~q\,
	combout => \Fy|int_d\(0));

-- Location: FF_X48_Y37_N21
\Fy|gen_enARdFF:0:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fy|int_d\(0),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fy|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fy|gen_enARdFF:0:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X49_Y37_N30
\Fx|int_d[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fx|int_d\(1) = (\MantissaA[1]~input_o\ & (((\Fx|gen_enARdFF:2:enARdFF_instance|int_q~q\ & \controller|s6|int_q~q\)) # (!\controller|s0|int_q~q\))) # (!\MantissaA[1]~input_o\ & (\Fx|gen_enARdFF:2:enARdFF_instance|int_q~q\ & (\controller|s6|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MantissaA[1]~input_o\,
	datab => \Fx|gen_enARdFF:2:enARdFF_instance|int_q~q\,
	datac => \controller|s6|int_q~q\,
	datad => \controller|s0|int_q~q\,
	combout => \Fx|int_d\(1));

-- Location: FF_X49_Y37_N31
\Fx|gen_enARdFF:1:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fx|int_d\(1),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fx|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fx|gen_enARdFF:1:enARdFF_instance|int_q~q\);

-- Location: IOIBUF_X41_Y41_N15
\MantissaA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MantissaA(0),
	o => \MantissaA[0]~input_o\);

-- Location: LCCOMB_X49_Y37_N16
\Fx|int_d[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Fx|int_d\(0) = (\Fx|gen_enARdFF:1:enARdFF_instance|int_q~q\ & ((\controller|s6|int_q~q\) # ((!\controller|s0|int_q~q\ & \MantissaA[0]~input_o\)))) # (!\Fx|gen_enARdFF:1:enARdFF_instance|int_q~q\ & (!\controller|s0|int_q~q\ & ((\MantissaA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx|gen_enARdFF:1:enARdFF_instance|int_q~q\,
	datab => \controller|s0|int_q~q\,
	datac => \controller|s6|int_q~q\,
	datad => \MantissaA[0]~input_o\,
	combout => \Fx|int_d\(0));

-- Location: FF_X49_Y37_N17
\Fx|gen_enARdFF:0:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \Fx|int_d\(0),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \Fx|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fx|gen_enARdFF:0:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X48_Y37_N18
\mantissaAdder|gen_adders:1:adder_i|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:1:adder_i|out_cout~0_combout\ = (\Fy|gen_enARdFF:1:enARdFF_instance|int_q~q\ & ((\Fx|gen_enARdFF:1:enARdFF_instance|int_q~q\) # ((\Fy|gen_enARdFF:0:enARdFF_instance|int_q~q\ & \Fx|gen_enARdFF:0:enARdFF_instance|int_q~q\)))) # 
-- (!\Fy|gen_enARdFF:1:enARdFF_instance|int_q~q\ & (\Fy|gen_enARdFF:0:enARdFF_instance|int_q~q\ & (\Fx|gen_enARdFF:1:enARdFF_instance|int_q~q\ & \Fx|gen_enARdFF:0:enARdFF_instance|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fy|gen_enARdFF:1:enARdFF_instance|int_q~q\,
	datab => \Fy|gen_enARdFF:0:enARdFF_instance|int_q~q\,
	datac => \Fx|gen_enARdFF:1:enARdFF_instance|int_q~q\,
	datad => \Fx|gen_enARdFF:0:enARdFF_instance|int_q~q\,
	combout => \mantissaAdder|gen_adders:1:adder_i|out_cout~0_combout\);

-- Location: LCCOMB_X48_Y37_N30
\mantissaAdder|gen_adders:2:adder_i|out_cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:2:adder_i|out_cout~1_combout\ = (\Fx|gen_enARdFF:2:enARdFF_instance|int_q~q\ & ((\Fy|gen_enARdFF:2:enARdFF_instance|int_q~q\) # (\mantissaAdder|gen_adders:1:adder_i|out_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fx|gen_enARdFF:2:enARdFF_instance|int_q~q\,
	datac => \Fy|gen_enARdFF:2:enARdFF_instance|int_q~q\,
	datad => \mantissaAdder|gen_adders:1:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|gen_adders:2:adder_i|out_cout~1_combout\);

-- Location: LCCOMB_X48_Y37_N28
\mantissaAdder|gen_adders:2:adder_i|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:2:adder_i|out_cout~0_combout\ = (\Fy|gen_enARdFF:2:enARdFF_instance|int_q~q\ & \mantissaAdder|gen_adders:1:adder_i|out_cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Fy|gen_enARdFF:2:enARdFF_instance|int_q~q\,
	datad => \mantissaAdder|gen_adders:1:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|gen_adders:2:adder_i|out_cout~0_combout\);

-- Location: LCCOMB_X48_Y37_N16
\mantissaAdder|gen_adders:3:adder_i|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:3:adder_i|out_cout~0_combout\ = (\Fy|gen_enARdFF:3:enARdFF_instance|int_q~q\ & ((\Fx|gen_enARdFF:3:enARdFF_instance|int_q~q\) # ((\mantissaAdder|gen_adders:2:adder_i|out_cout~1_combout\) # 
-- (\mantissaAdder|gen_adders:2:adder_i|out_cout~0_combout\)))) # (!\Fy|gen_enARdFF:3:enARdFF_instance|int_q~q\ & (\Fx|gen_enARdFF:3:enARdFF_instance|int_q~q\ & ((\mantissaAdder|gen_adders:2:adder_i|out_cout~1_combout\) # 
-- (\mantissaAdder|gen_adders:2:adder_i|out_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fy|gen_enARdFF:3:enARdFF_instance|int_q~q\,
	datab => \Fx|gen_enARdFF:3:enARdFF_instance|int_q~q\,
	datac => \mantissaAdder|gen_adders:2:adder_i|out_cout~1_combout\,
	datad => \mantissaAdder|gen_adders:2:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|gen_adders:3:adder_i|out_cout~0_combout\);

-- Location: LCCOMB_X48_Y37_N22
\mantissaAdder|gen_adders:4:adder_i|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:4:adder_i|out_cout~0_combout\ = (\Fy|gen_enARdFF:4:enARdFF_instance|int_q~q\ & \mantissaAdder|gen_adders:3:adder_i|out_cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fy|gen_enARdFF:4:enARdFF_instance|int_q~q\,
	datad => \mantissaAdder|gen_adders:3:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|gen_adders:4:adder_i|out_cout~0_combout\);

-- Location: LCCOMB_X48_Y37_N0
\mantissaAdder|gen_adders:4:adder_i|out_cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:4:adder_i|out_cout~1_combout\ = (\Fx|gen_enARdFF:4:enARdFF_instance|int_q~q\ & ((\Fy|gen_enARdFF:4:enARdFF_instance|int_q~q\) # (\mantissaAdder|gen_adders:3:adder_i|out_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fy|gen_enARdFF:4:enARdFF_instance|int_q~q\,
	datab => \Fx|gen_enARdFF:4:enARdFF_instance|int_q~q\,
	datad => \mantissaAdder|gen_adders:3:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|gen_adders:4:adder_i|out_cout~1_combout\);

-- Location: LCCOMB_X48_Y37_N2
\mantissaAdder|gen_adders:5:adder_i|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:5:adder_i|out_cout~0_combout\ = (\Fy|gen_enARdFF:5:enARdFF_instance|int_q~q\ & ((\Fx|gen_enARdFF:5:enARdFF_instance|int_q~q\) # ((\mantissaAdder|gen_adders:4:adder_i|out_cout~0_combout\) # 
-- (\mantissaAdder|gen_adders:4:adder_i|out_cout~1_combout\)))) # (!\Fy|gen_enARdFF:5:enARdFF_instance|int_q~q\ & (\Fx|gen_enARdFF:5:enARdFF_instance|int_q~q\ & ((\mantissaAdder|gen_adders:4:adder_i|out_cout~0_combout\) # 
-- (\mantissaAdder|gen_adders:4:adder_i|out_cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fy|gen_enARdFF:5:enARdFF_instance|int_q~q\,
	datab => \Fx|gen_enARdFF:5:enARdFF_instance|int_q~q\,
	datac => \mantissaAdder|gen_adders:4:adder_i|out_cout~0_combout\,
	datad => \mantissaAdder|gen_adders:4:adder_i|out_cout~1_combout\,
	combout => \mantissaAdder|gen_adders:5:adder_i|out_cout~0_combout\);

-- Location: LCCOMB_X47_Y37_N8
\mantissaAdder|gen_adders:6:adder_i|out_cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:6:adder_i|out_cout~1_combout\ = (\Fx|gen_enARdFF:6:enARdFF_instance|int_q~q\ & ((\Fy|gen_enARdFF:6:enARdFF_instance|int_q~q\) # (\mantissaAdder|gen_adders:5:adder_i|out_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fy|gen_enARdFF:6:enARdFF_instance|int_q~q\,
	datac => \Fx|gen_enARdFF:6:enARdFF_instance|int_q~q\,
	datad => \mantissaAdder|gen_adders:5:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|gen_adders:6:adder_i|out_cout~1_combout\);

-- Location: LCCOMB_X47_Y37_N10
\mantissaAdder|gen_adders:6:adder_i|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:6:adder_i|out_cout~0_combout\ = (\Fy|gen_enARdFF:6:enARdFF_instance|int_q~q\ & \mantissaAdder|gen_adders:5:adder_i|out_cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fy|gen_enARdFF:6:enARdFF_instance|int_q~q\,
	datad => \mantissaAdder|gen_adders:5:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|gen_adders:6:adder_i|out_cout~0_combout\);

-- Location: LCCOMB_X47_Y37_N18
\mantissaAdder|gen_adders:7:adder_i|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:7:adder_i|out_cout~0_combout\ = (\Fy|gen_enARdFF:7:enARdFF_instance|int_q~q\ & ((\Fx|gen_enARdFF:7:enARdFF_instance|int_q~q\) # ((\mantissaAdder|gen_adders:6:adder_i|out_cout~1_combout\) # 
-- (\mantissaAdder|gen_adders:6:adder_i|out_cout~0_combout\)))) # (!\Fy|gen_enARdFF:7:enARdFF_instance|int_q~q\ & (\Fx|gen_enARdFF:7:enARdFF_instance|int_q~q\ & ((\mantissaAdder|gen_adders:6:adder_i|out_cout~1_combout\) # 
-- (\mantissaAdder|gen_adders:6:adder_i|out_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fy|gen_enARdFF:7:enARdFF_instance|int_q~q\,
	datab => \Fx|gen_enARdFF:7:enARdFF_instance|int_q~q\,
	datac => \mantissaAdder|gen_adders:6:adder_i|out_cout~1_combout\,
	datad => \mantissaAdder|gen_adders:6:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|gen_adders:7:adder_i|out_cout~0_combout\);

-- Location: LCCOMB_X47_Y37_N28
\mantissaAdder|adder8|out_cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|adder8|out_cout~0_combout\ = (\Fx|gen_enARdFF:8:enARdFF_instance|int_q~q\ & ((\Fy|gen_enARdFF:8:enARdFF_instance|int_q~q\) # (\mantissaAdder|gen_adders:7:adder_i|out_cout~0_combout\))) # (!\Fx|gen_enARdFF:8:enARdFF_instance|int_q~q\ & 
-- (\Fy|gen_enARdFF:8:enARdFF_instance|int_q~q\ & \mantissaAdder|gen_adders:7:adder_i|out_cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx|gen_enARdFF:8:enARdFF_instance|int_q~q\,
	datac => \Fy|gen_enARdFF:8:enARdFF_instance|int_q~q\,
	datad => \mantissaAdder|gen_adders:7:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|adder8|out_cout~0_combout\);

-- Location: LCCOMB_X49_Y36_N14
\controller|int_d[7]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|int_d[7]~3_combout\ = (\controller|s6|int_q~q\) # ((\controller|s2|int_q~q\ & !\exponentCounter|int_d\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|s2|int_q~q\,
	datac => \controller|s6|int_q~q\,
	datad => \exponentCounter|int_d\(6),
	combout => \controller|int_d[7]~3_combout\);

-- Location: LCCOMB_X49_Y36_N20
\controller|int_d[7]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|int_d[7]~4_combout\ = (\controller|s4|int_q~q\) # ((\controller|int_d[7]~3_combout\) # ((!\exponentCounter|out_q[6]~2_combout\ & \controller|int_d[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentCounter|out_q[6]~2_combout\,
	datab => \controller|s4|int_q~q\,
	datac => \controller|int_d[7]~3_combout\,
	datad => \controller|int_d[3]~2_combout\,
	combout => \controller|int_d[7]~4_combout\);

-- Location: LCCOMB_X49_Y36_N24
\controller|int_d[7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controller|int_d[7]~5_combout\ = (\controller|s3|int_q~q\) # ((\controller|s5|int_q~q\) # ((\exponentCounter|Equal0~1_combout\ & \controller|int_d[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s3|int_q~q\,
	datab => \exponentCounter|Equal0~1_combout\,
	datac => \controller|s5|int_q~q\,
	datad => \controller|int_d[7]~4_combout\,
	combout => \controller|int_d[7]~5_combout\);

-- Location: FF_X49_Y36_N25
\controller|s7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \controller|int_d[7]~5_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|s7|int_q~q\);

-- Location: FF_X47_Y37_N29
\controller|s8|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \mantissaAdder|adder8|out_cout~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sclr => \controller|s7|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|s8|int_q~q\);

-- Location: LCCOMB_X48_Y37_N8
\mantissaAdder|adder0|sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|adder0|sum~0_combout\ = \Fx|gen_enARdFF:0:enARdFF_instance|int_q~q\ $ (\Fy|gen_enARdFF:0:enARdFF_instance|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fx|gen_enARdFF:0:enARdFF_instance|int_q~q\,
	datad => \Fy|gen_enARdFF:0:enARdFF_instance|int_q~q\,
	combout => \mantissaAdder|adder0|sum~0_combout\);

-- Location: FF_X48_Y37_N9
\mantissaAdder|reg|gen_enardFF_2:0:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \mantissaAdder|adder0|sum~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mantissaAdder|reg|gen_enardFF_2:0:bit_component|int_q~q\);

-- Location: LCCOMB_X47_Y37_N24
\normalizeRegister|int_d[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \normalizeRegister|int_d\(0) = (\normalizeRegister|gen_enARdFF:1:enARdFF_instance|int_q~q\ & ((\controller|s8|int_q~q\) # ((\mantissaAdder|reg|gen_enardFF_2:0:bit_component|int_q~q\ & \controller|s7|int_q~q\)))) # 
-- (!\normalizeRegister|gen_enARdFF:1:enARdFF_instance|int_q~q\ & (((\mantissaAdder|reg|gen_enardFF_2:0:bit_component|int_q~q\ & \controller|s7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \normalizeRegister|gen_enARdFF:1:enARdFF_instance|int_q~q\,
	datab => \controller|s8|int_q~q\,
	datac => \mantissaAdder|reg|gen_enardFF_2:0:bit_component|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \normalizeRegister|int_d\(0));

-- Location: LCCOMB_X47_Y37_N12
\normalizeRegister|int_enable~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \normalizeRegister|int_enable~0_combout\ = \controller|s8|int_q~q\ $ (\controller|s7|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|s8|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \normalizeRegister|int_enable~0_combout\);

-- Location: FF_X47_Y37_N25
\normalizeRegister|gen_enARdFF:0:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \normalizeRegister|int_d\(0),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \normalizeRegister|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \normalizeRegister|gen_enARdFF:0:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X48_Y37_N24
\mantissaAdder|gen_adders:2:adder_i|out_sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:2:adder_i|out_sum~0_combout\ = \mantissaAdder|gen_adders:1:adder_i|out_cout~0_combout\ $ (\Fy|gen_enARdFF:2:enARdFF_instance|int_q~q\ $ (\Fx|gen_enARdFF:2:enARdFF_instance|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mantissaAdder|gen_adders:1:adder_i|out_cout~0_combout\,
	datac => \Fy|gen_enARdFF:2:enARdFF_instance|int_q~q\,
	datad => \Fx|gen_enARdFF:2:enARdFF_instance|int_q~q\,
	combout => \mantissaAdder|gen_adders:2:adder_i|out_sum~0_combout\);

-- Location: FF_X48_Y37_N25
\mantissaAdder|reg|gen_enardFF_2:2:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \mantissaAdder|gen_adders:2:adder_i|out_sum~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mantissaAdder|reg|gen_enardFF_2:2:bit_component|int_q~q\);

-- Location: LCCOMB_X47_Y37_N20
\normalizeRegister|int_d[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \normalizeRegister|int_d\(2) = (\normalizeRegister|gen_enARdFF:3:enARdFF_instance|int_q~q\ & ((\controller|s8|int_q~q\) # ((\mantissaAdder|reg|gen_enardFF_2:2:bit_component|int_q~q\ & \controller|s7|int_q~q\)))) # 
-- (!\normalizeRegister|gen_enARdFF:3:enARdFF_instance|int_q~q\ & (((\mantissaAdder|reg|gen_enardFF_2:2:bit_component|int_q~q\ & \controller|s7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \normalizeRegister|gen_enARdFF:3:enARdFF_instance|int_q~q\,
	datab => \controller|s8|int_q~q\,
	datac => \mantissaAdder|reg|gen_enardFF_2:2:bit_component|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \normalizeRegister|int_d\(2));

-- Location: FF_X47_Y37_N21
\normalizeRegister|gen_enARdFF:2:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \normalizeRegister|int_d\(2),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \normalizeRegister|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \normalizeRegister|gen_enARdFF:2:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X48_Y37_N10
\mantissaAdder|gen_adders:1:adder_i|out_sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:1:adder_i|out_sum~0_combout\ = \Fy|gen_enARdFF:1:enARdFF_instance|int_q~q\ $ (\Fx|gen_enARdFF:1:enARdFF_instance|int_q~q\ $ (((\Fx|gen_enARdFF:0:enARdFF_instance|int_q~q\ & \Fy|gen_enARdFF:0:enARdFF_instance|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fy|gen_enARdFF:1:enARdFF_instance|int_q~q\,
	datab => \Fx|gen_enARdFF:0:enARdFF_instance|int_q~q\,
	datac => \Fx|gen_enARdFF:1:enARdFF_instance|int_q~q\,
	datad => \Fy|gen_enARdFF:0:enARdFF_instance|int_q~q\,
	combout => \mantissaAdder|gen_adders:1:adder_i|out_sum~0_combout\);

-- Location: FF_X48_Y37_N11
\mantissaAdder|reg|gen_enardFF_2:1:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \mantissaAdder|gen_adders:1:adder_i|out_sum~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mantissaAdder|reg|gen_enardFF_2:1:bit_component|int_q~q\);

-- Location: LCCOMB_X47_Y37_N22
\normalizeRegister|int_d[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \normalizeRegister|int_d\(1) = (\controller|s8|int_q~q\ & ((\normalizeRegister|gen_enARdFF:2:enARdFF_instance|int_q~q\) # ((\mantissaAdder|reg|gen_enardFF_2:1:bit_component|int_q~q\ & \controller|s7|int_q~q\)))) # (!\controller|s8|int_q~q\ & 
-- (((\mantissaAdder|reg|gen_enardFF_2:1:bit_component|int_q~q\ & \controller|s7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s8|int_q~q\,
	datab => \normalizeRegister|gen_enARdFF:2:enARdFF_instance|int_q~q\,
	datac => \mantissaAdder|reg|gen_enardFF_2:1:bit_component|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \normalizeRegister|int_d\(1));

-- Location: FF_X47_Y37_N23
\normalizeRegister|gen_enARdFF:1:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \normalizeRegister|int_d\(1),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \normalizeRegister|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \normalizeRegister|gen_enARdFF:1:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X47_Y37_N2
\mantissaAdder|gen_adders:6:adder_i|out_sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:6:adder_i|out_sum~0_combout\ = \Fy|gen_enARdFF:6:enARdFF_instance|int_q~q\ $ (\Fx|gen_enARdFF:6:enARdFF_instance|int_q~q\ $ (\mantissaAdder|gen_adders:5:adder_i|out_cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fy|gen_enARdFF:6:enARdFF_instance|int_q~q\,
	datac => \Fx|gen_enARdFF:6:enARdFF_instance|int_q~q\,
	datad => \mantissaAdder|gen_adders:5:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|gen_adders:6:adder_i|out_sum~0_combout\);

-- Location: FF_X47_Y37_N3
\mantissaAdder|reg|gen_enardFF_2:6:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \mantissaAdder|gen_adders:6:adder_i|out_sum~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mantissaAdder|reg|gen_enardFF_2:6:bit_component|int_q~q\);

-- Location: LCCOMB_X47_Y37_N0
\normalizeRegister|int_d[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \normalizeRegister|int_d\(6) = (\normalizeRegister|gen_enARdFF:7:enARdFF_instance|int_q~q\ & ((\controller|s8|int_q~q\) # ((\mantissaAdder|reg|gen_enardFF_2:6:bit_component|int_q~q\ & \controller|s7|int_q~q\)))) # 
-- (!\normalizeRegister|gen_enARdFF:7:enARdFF_instance|int_q~q\ & (((\mantissaAdder|reg|gen_enardFF_2:6:bit_component|int_q~q\ & \controller|s7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \normalizeRegister|gen_enARdFF:7:enARdFF_instance|int_q~q\,
	datab => \controller|s8|int_q~q\,
	datac => \mantissaAdder|reg|gen_enardFF_2:6:bit_component|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \normalizeRegister|int_d\(6));

-- Location: FF_X47_Y37_N1
\normalizeRegister|gen_enARdFF:6:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \normalizeRegister|int_d\(6),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \normalizeRegister|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \normalizeRegister|gen_enARdFF:6:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X47_Y37_N14
\normalizeRegister|int_d[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \normalizeRegister|int_d\(5) = (\mantissaAdder|reg|gen_enardFF_2:5:bit_component|int_q~q\ & ((\controller|s7|int_q~q\) # ((\controller|s8|int_q~q\ & \normalizeRegister|gen_enARdFF:6:enARdFF_instance|int_q~q\)))) # 
-- (!\mantissaAdder|reg|gen_enardFF_2:5:bit_component|int_q~q\ & (\controller|s8|int_q~q\ & (\normalizeRegister|gen_enARdFF:6:enARdFF_instance|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mantissaAdder|reg|gen_enardFF_2:5:bit_component|int_q~q\,
	datab => \controller|s8|int_q~q\,
	datac => \normalizeRegister|gen_enARdFF:6:enARdFF_instance|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \normalizeRegister|int_d\(5));

-- Location: FF_X47_Y37_N15
\normalizeRegister|gen_enARdFF:5:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \normalizeRegister|int_d\(5),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \normalizeRegister|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \normalizeRegister|gen_enARdFF:5:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X47_Y37_N16
\normalizeRegister|int_d[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \normalizeRegister|int_d\(4) = (\mantissaAdder|reg|gen_enardFF_2:4:bit_component|int_q~q\ & ((\controller|s7|int_q~q\) # ((\controller|s8|int_q~q\ & \normalizeRegister|gen_enARdFF:5:enARdFF_instance|int_q~q\)))) # 
-- (!\mantissaAdder|reg|gen_enardFF_2:4:bit_component|int_q~q\ & (\controller|s8|int_q~q\ & (\normalizeRegister|gen_enARdFF:5:enARdFF_instance|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mantissaAdder|reg|gen_enardFF_2:4:bit_component|int_q~q\,
	datab => \controller|s8|int_q~q\,
	datac => \normalizeRegister|gen_enARdFF:5:enARdFF_instance|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \normalizeRegister|int_d\(4));

-- Location: FF_X47_Y37_N17
\normalizeRegister|gen_enARdFF:4:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \normalizeRegister|int_d\(4),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \normalizeRegister|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \normalizeRegister|gen_enARdFF:4:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X47_Y37_N6
\normalizeRegister|int_d[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \normalizeRegister|int_d\(3) = (\mantissaAdder|reg|gen_enardFF_2:3:bit_component|int_q~q\ & ((\controller|s7|int_q~q\) # ((\controller|s8|int_q~q\ & \normalizeRegister|gen_enARdFF:4:enARdFF_instance|int_q~q\)))) # 
-- (!\mantissaAdder|reg|gen_enardFF_2:3:bit_component|int_q~q\ & (\controller|s8|int_q~q\ & (\normalizeRegister|gen_enARdFF:4:enARdFF_instance|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mantissaAdder|reg|gen_enardFF_2:3:bit_component|int_q~q\,
	datab => \controller|s8|int_q~q\,
	datac => \normalizeRegister|gen_enARdFF:4:enARdFF_instance|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \normalizeRegister|int_d\(3));

-- Location: FF_X47_Y37_N7
\normalizeRegister|gen_enARdFF:3:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \normalizeRegister|int_d\(3),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \normalizeRegister|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \normalizeRegister|gen_enARdFF:3:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X47_Y37_N4
\mantissaAdder|gen_adders:7:adder_i|out_sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mantissaAdder|gen_adders:7:adder_i|out_sum~combout\ = \Fy|gen_enARdFF:7:enARdFF_instance|int_q~q\ $ (\Fx|gen_enARdFF:7:enARdFF_instance|int_q~q\ $ (((\mantissaAdder|gen_adders:6:adder_i|out_cout~1_combout\) # 
-- (\mantissaAdder|gen_adders:6:adder_i|out_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fy|gen_enARdFF:7:enARdFF_instance|int_q~q\,
	datab => \Fx|gen_enARdFF:7:enARdFF_instance|int_q~q\,
	datac => \mantissaAdder|gen_adders:6:adder_i|out_cout~1_combout\,
	datad => \mantissaAdder|gen_adders:6:adder_i|out_cout~0_combout\,
	combout => \mantissaAdder|gen_adders:7:adder_i|out_sum~combout\);

-- Location: FF_X47_Y37_N5
\mantissaAdder|reg|gen_enardFF_2:7:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \mantissaAdder|gen_adders:7:adder_i|out_sum~combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mantissaAdder|reg|gen_enardFF_2:7:bit_component|int_q~q\);

-- Location: LCCOMB_X47_Y37_N30
\normalizeRegister|int_d[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \normalizeRegister|int_d\(7) = (\normalizeRegister|gen_enARdFF:8:enARdFF_instance|int_q~q\ & ((\controller|s8|int_q~q\) # ((\mantissaAdder|reg|gen_enardFF_2:7:bit_component|int_q~q\ & \controller|s7|int_q~q\)))) # 
-- (!\normalizeRegister|gen_enARdFF:8:enARdFF_instance|int_q~q\ & (((\mantissaAdder|reg|gen_enardFF_2:7:bit_component|int_q~q\ & \controller|s7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \normalizeRegister|gen_enARdFF:8:enARdFF_instance|int_q~q\,
	datab => \controller|s8|int_q~q\,
	datac => \mantissaAdder|reg|gen_enardFF_2:7:bit_component|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \normalizeRegister|int_d\(7));

-- Location: FF_X47_Y37_N31
\normalizeRegister|gen_enARdFF:7:enARdFF_instance|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \normalizeRegister|int_d\(7),
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \normalizeRegister|int_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \normalizeRegister|gen_enARdFF:7:enARdFF_instance|int_q~q\);

-- Location: LCCOMB_X51_Y36_N20
\exponentUpCounter|int_d[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[0]~0_combout\ = (\controller|s7|int_q~q\ & ((\exponentSRLatch|int_q~0_combout\ & (\Ex|gen_enardFF_2:0:bit_component|int_q~q\)) # (!\exponentSRLatch|int_q~0_combout\ & ((\Ey|gen_enardFF_2:0:bit_component|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentSRLatch|int_q~0_combout\,
	datab => \controller|s7|int_q~q\,
	datac => \Ex|gen_enardFF_2:0:bit_component|int_q~q\,
	datad => \Ey|gen_enardFF_2:0:bit_component|int_q~q\,
	combout => \exponentUpCounter|int_d[0]~0_combout\);

-- Location: LCCOMB_X51_Y36_N0
\exponentUpCounter|int_d[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[0]~1_combout\ = (\exponentUpCounter|int_d[0]~0_combout\) # ((!\exponentUpCounter|bit0|int_q~q\ & \controller|s8|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \exponentUpCounter|int_d[0]~0_combout\,
	datac => \exponentUpCounter|bit0|int_q~q\,
	datad => \controller|s8|int_q~q\,
	combout => \exponentUpCounter|int_d[0]~1_combout\);

-- Location: LCCOMB_X47_Y36_N2
\exponentUpCounter|int_enable\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_enable~combout\ = (\GReset~input_o\ & (\controller|s8|int_q~q\ $ (\controller|s7|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GReset~input_o\,
	datac => \controller|s8|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \exponentUpCounter|int_enable~combout\);

-- Location: FF_X51_Y36_N1
\exponentUpCounter|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentUpCounter|int_d[0]~1_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentUpCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentUpCounter|bit0|int_q~q\);

-- Location: LCCOMB_X51_Y36_N2
\exponentUpCounter|int_d[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[1]~2_combout\ = (\controller|s7|int_q~q\ & ((\exponentSRLatch|int_q~0_combout\ & ((\Ex|gen_enardFF_2:1:bit_component|int_q~q\))) # (!\exponentSRLatch|int_q~0_combout\ & (\Ey|gen_enardFF_2:1:bit_component|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentSRLatch|int_q~0_combout\,
	datab => \Ey|gen_enardFF_2:1:bit_component|int_q~q\,
	datac => \controller|s7|int_q~q\,
	datad => \Ex|gen_enardFF_2:1:bit_component|int_q~q\,
	combout => \exponentUpCounter|int_d[1]~2_combout\);

-- Location: LCCOMB_X51_Y36_N18
\exponentUpCounter|int_d[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[1]~3_combout\ = (\exponentUpCounter|int_d[1]~2_combout\) # ((\controller|s8|int_q~q\ & (\exponentUpCounter|bit1|int_q~q\ $ (\exponentUpCounter|bit0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s8|int_q~q\,
	datab => \exponentUpCounter|int_d[1]~2_combout\,
	datac => \exponentUpCounter|bit1|int_q~q\,
	datad => \exponentUpCounter|bit0|int_q~q\,
	combout => \exponentUpCounter|int_d[1]~3_combout\);

-- Location: FF_X51_Y36_N19
\exponentUpCounter|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentUpCounter|int_d[1]~3_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentUpCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentUpCounter|bit1|int_q~q\);

-- Location: LCCOMB_X47_Y36_N10
\exponentSRLatch|int_q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentSRLatch|int_q~0_combout\ = (\controller|s1|int_q~q\) # ((!\controller|s2|int_q~q\ & \exponentSRLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s1|int_q~q\,
	datac => \controller|s2|int_q~q\,
	datad => \exponentSRLatch|int_q~0_combout\,
	combout => \exponentSRLatch|int_q~0_combout\);

-- Location: FF_X50_Y36_N9
\Ex|gen_enardFF_2:2:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentA[2]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ex|gen_enardFF_2:2:bit_component|int_q~q\);

-- Location: LCCOMB_X51_Y36_N30
\exponentUpCounter|int_d[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[2]~5_combout\ = (\controller|s7|int_q~q\ & ((\exponentSRLatch|int_q~0_combout\ & ((\Ex|gen_enardFF_2:2:bit_component|int_q~q\))) # (!\exponentSRLatch|int_q~0_combout\ & (\Ey|gen_enardFF_2:2:bit_component|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ey|gen_enardFF_2:2:bit_component|int_q~q\,
	datab => \controller|s7|int_q~q\,
	datac => \exponentSRLatch|int_q~0_combout\,
	datad => \Ex|gen_enardFF_2:2:bit_component|int_q~q\,
	combout => \exponentUpCounter|int_d[2]~5_combout\);

-- Location: LCCOMB_X51_Y36_N24
\exponentUpCounter|int_d~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d~4_combout\ = (\controller|s8|int_q~q\ & (\exponentUpCounter|bit2|int_q~q\ $ (((\exponentUpCounter|bit1|int_q~q\ & \exponentUpCounter|bit0|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s8|int_q~q\,
	datab => \exponentUpCounter|bit1|int_q~q\,
	datac => \exponentUpCounter|bit2|int_q~q\,
	datad => \exponentUpCounter|bit0|int_q~q\,
	combout => \exponentUpCounter|int_d~4_combout\);

-- Location: LCCOMB_X51_Y36_N8
\exponentUpCounter|int_d[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[2]~6_combout\ = (\exponentUpCounter|int_d[2]~5_combout\) # (\exponentUpCounter|int_d~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exponentUpCounter|int_d[2]~5_combout\,
	datad => \exponentUpCounter|int_d~4_combout\,
	combout => \exponentUpCounter|int_d[2]~6_combout\);

-- Location: FF_X51_Y36_N9
\exponentUpCounter|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentUpCounter|int_d[2]~6_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentUpCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentUpCounter|bit2|int_q~q\);

-- Location: LCCOMB_X51_Y36_N22
\exponentUpCounter|adder|FA3|out_sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|adder|FA3|out_sum~combout\ = \exponentUpCounter|bit3|int_q~q\ $ (((\exponentUpCounter|bit1|int_q~q\ & (\exponentUpCounter|bit2|int_q~q\ & \exponentUpCounter|bit0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentUpCounter|bit3|int_q~q\,
	datab => \exponentUpCounter|bit1|int_q~q\,
	datac => \exponentUpCounter|bit2|int_q~q\,
	datad => \exponentUpCounter|bit0|int_q~q\,
	combout => \exponentUpCounter|adder|FA3|out_sum~combout\);

-- Location: LCCOMB_X51_Y36_N12
\exponentUpCounter|int_d[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[3]~7_combout\ = (\controller|s7|int_q~q\ & ((\exponentSRLatch|int_q~0_combout\ & ((\Ex|gen_enardFF_2:3:bit_component|int_q~q\))) # (!\exponentSRLatch|int_q~0_combout\ & (\Ey|gen_enardFF_2:3:bit_component|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentSRLatch|int_q~0_combout\,
	datab => \controller|s7|int_q~q\,
	datac => \Ey|gen_enardFF_2:3:bit_component|int_q~q\,
	datad => \Ex|gen_enardFF_2:3:bit_component|int_q~q\,
	combout => \exponentUpCounter|int_d[3]~7_combout\);

-- Location: LCCOMB_X51_Y36_N10
\exponentUpCounter|int_d[3]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[3]~8_combout\ = (\exponentUpCounter|int_d[3]~7_combout\) # ((\controller|s8|int_q~q\ & \exponentUpCounter|adder|FA3|out_sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|s8|int_q~q\,
	datac => \exponentUpCounter|adder|FA3|out_sum~combout\,
	datad => \exponentUpCounter|int_d[3]~7_combout\,
	combout => \exponentUpCounter|int_d[3]~8_combout\);

-- Location: FF_X51_Y36_N11
\exponentUpCounter|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentUpCounter|int_d[3]~8_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentUpCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentUpCounter|bit3|int_q~q\);

-- Location: FF_X50_Y36_N23
\Ey|gen_enardFF_2:4:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentB[4]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ey|gen_enardFF_2:4:bit_component|int_q~q\);

-- Location: LCCOMB_X47_Y36_N12
\exponentUpCounter|int_d[4]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[4]~9_combout\ = (\controller|s7|int_q~q\ & ((\exponentSRLatch|int_q~0_combout\ & ((\Ex|gen_enardFF_2:4:bit_component|int_q~q\))) # (!\exponentSRLatch|int_q~0_combout\ & (\Ey|gen_enardFF_2:4:bit_component|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentSRLatch|int_q~0_combout\,
	datab => \Ey|gen_enardFF_2:4:bit_component|int_q~q\,
	datac => \Ex|gen_enardFF_2:4:bit_component|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \exponentUpCounter|int_d[4]~9_combout\);

-- Location: LCCOMB_X47_Y36_N24
\exponentUpCounter|int_d[4]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[4]~10_combout\ = (\exponentUpCounter|int_d[4]~9_combout\) # ((\controller|s8|int_q~q\ & (\exponentUpCounter|adder|FA3|cout~0_combout\ $ (\exponentUpCounter|bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentUpCounter|adder|FA3|cout~0_combout\,
	datab => \controller|s8|int_q~q\,
	datac => \exponentUpCounter|bit4|int_q~q\,
	datad => \exponentUpCounter|int_d[4]~9_combout\,
	combout => \exponentUpCounter|int_d[4]~10_combout\);

-- Location: FF_X47_Y36_N25
\exponentUpCounter|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentUpCounter|int_d[4]~10_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentUpCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentUpCounter|bit4|int_q~q\);

-- Location: LCCOMB_X47_Y36_N4
\exponentUpCounter|int_d[5]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[5]~12_combout\ = (\controller|s7|int_q~q\ & ((\exponentSRLatch|int_q~0_combout\ & ((\Ex|gen_enardFF_2:5:bit_component|int_q~q\))) # (!\exponentSRLatch|int_q~0_combout\ & (\Ey|gen_enardFF_2:5:bit_component|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentSRLatch|int_q~0_combout\,
	datab => \Ey|gen_enardFF_2:5:bit_component|int_q~q\,
	datac => \Ex|gen_enardFF_2:5:bit_component|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \exponentUpCounter|int_d[5]~12_combout\);

-- Location: LCCOMB_X47_Y36_N22
\exponentUpCounter|int_d~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d~11_combout\ = (\controller|s8|int_q~q\ & (\exponentUpCounter|bit5|int_q~q\ $ (((\exponentUpCounter|adder|FA3|cout~0_combout\ & \exponentUpCounter|bit4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentUpCounter|adder|FA3|cout~0_combout\,
	datab => \exponentUpCounter|bit5|int_q~q\,
	datac => \controller|s8|int_q~q\,
	datad => \exponentUpCounter|bit4|int_q~q\,
	combout => \exponentUpCounter|int_d~11_combout\);

-- Location: LCCOMB_X47_Y36_N30
\exponentUpCounter|int_d[5]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[5]~13_combout\ = (\exponentUpCounter|int_d[5]~12_combout\) # (\exponentUpCounter|int_d~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \exponentUpCounter|int_d[5]~12_combout\,
	datac => \exponentUpCounter|int_d~11_combout\,
	combout => \exponentUpCounter|int_d[5]~13_combout\);

-- Location: FF_X47_Y36_N31
\exponentUpCounter|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentUpCounter|int_d[5]~13_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentUpCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentUpCounter|bit5|int_q~q\);

-- Location: IOIBUF_X52_Y19_N1
\ExponentA[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExponentA(6),
	o => \ExponentA[6]~input_o\);

-- Location: FF_X48_Y36_N21
\Ex|gen_enardFF_2:6:bit_component|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ExponentA[6]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \controller|s0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ex|gen_enardFF_2:6:bit_component|int_q~q\);

-- Location: LCCOMB_X47_Y36_N26
\exponentUpCounter|int_d[6]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[6]~14_combout\ = (\controller|s7|int_q~q\ & ((\exponentSRLatch|int_q~0_combout\ & ((\Ex|gen_enardFF_2:6:bit_component|int_q~q\))) # (!\exponentSRLatch|int_q~0_combout\ & (\Ey|gen_enardFF_2:6:bit_component|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentSRLatch|int_q~0_combout\,
	datab => \Ey|gen_enardFF_2:6:bit_component|int_q~q\,
	datac => \Ex|gen_enardFF_2:6:bit_component|int_q~q\,
	datad => \controller|s7|int_q~q\,
	combout => \exponentUpCounter|int_d[6]~14_combout\);

-- Location: LCCOMB_X51_Y36_N28
\exponentUpCounter|adder|FA3|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|adder|FA3|cout~0_combout\ = (\exponentUpCounter|bit3|int_q~q\ & (\exponentUpCounter|bit0|int_q~q\ & (\exponentUpCounter|bit2|int_q~q\ & \exponentUpCounter|bit1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentUpCounter|bit3|int_q~q\,
	datab => \exponentUpCounter|bit0|int_q~q\,
	datac => \exponentUpCounter|bit2|int_q~q\,
	datad => \exponentUpCounter|bit1|int_q~q\,
	combout => \exponentUpCounter|adder|FA3|cout~0_combout\);

-- Location: LCCOMB_X47_Y36_N16
\exponentUpCounter|adder|FA6|out_sum\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|adder|FA6|out_sum~combout\ = \exponentUpCounter|bit6|int_q~q\ $ (((\exponentUpCounter|bit5|int_q~q\ & (\exponentUpCounter|bit4|int_q~q\ & \exponentUpCounter|adder|FA3|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exponentUpCounter|bit5|int_q~q\,
	datab => \exponentUpCounter|bit4|int_q~q\,
	datac => \exponentUpCounter|adder|FA3|cout~0_combout\,
	datad => \exponentUpCounter|bit6|int_q~q\,
	combout => \exponentUpCounter|adder|FA6|out_sum~combout\);

-- Location: LCCOMB_X47_Y36_N20
\exponentUpCounter|int_d[6]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \exponentUpCounter|int_d[6]~15_combout\ = (\exponentUpCounter|int_d[6]~14_combout\) # ((\controller|s8|int_q~q\ & \exponentUpCounter|adder|FA6|out_sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|s8|int_q~q\,
	datac => \exponentUpCounter|int_d[6]~14_combout\,
	datad => \exponentUpCounter|adder|FA6|out_sum~combout\,
	combout => \exponentUpCounter|int_d[6]~15_combout\);

-- Location: FF_X47_Y36_N21
\exponentUpCounter|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \exponentUpCounter|int_d[6]~15_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \exponentUpCounter|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exponentUpCounter|bit6|int_q~q\);

ww_SignOut <= \SignOut~output_o\;

ww_MantissaOut(0) <= \MantissaOut[0]~output_o\;

ww_MantissaOut(1) <= \MantissaOut[1]~output_o\;

ww_MantissaOut(2) <= \MantissaOut[2]~output_o\;

ww_MantissaOut(3) <= \MantissaOut[3]~output_o\;

ww_MantissaOut(4) <= \MantissaOut[4]~output_o\;

ww_MantissaOut(5) <= \MantissaOut[5]~output_o\;

ww_MantissaOut(6) <= \MantissaOut[6]~output_o\;

ww_MantissaOut(7) <= \MantissaOut[7]~output_o\;

ww_ExponentOut(0) <= \ExponentOut[0]~output_o\;

ww_ExponentOut(1) <= \ExponentOut[1]~output_o\;

ww_ExponentOut(2) <= \ExponentOut[2]~output_o\;

ww_ExponentOut(3) <= \ExponentOut[3]~output_o\;

ww_ExponentOut(4) <= \ExponentOut[4]~output_o\;

ww_ExponentOut(5) <= \ExponentOut[5]~output_o\;

ww_ExponentOut(6) <= \ExponentOut[6]~output_o\;

ww_Overflow <= \Overflow~output_o\;
END structure;


