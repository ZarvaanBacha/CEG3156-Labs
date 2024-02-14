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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/09/2024 10:33:08"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	shift_multiplier_8_bit_data IS
    PORT (
	i_a : IN std_logic_vector(7 DOWNTO 0);
	i_b : IN std_logic_vector(7 DOWNTO 0);
	i_clock : IN std_logic;
	i_initialize : IN std_logic;
	i_shift : IN std_logic;
	i_loadPR : IN std_logic;
	i_loadOut : IN std_logic;
	i_setCounter : IN std_logic;
	o_multiplier_LSB : BUFFER std_logic;
	o_multiplier_second_LSB : BUFFER std_logic;
	o_countDone : BUFFER std_logic;
	o_product : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END shift_multiplier_8_bit_data;

-- Design Ports Information
-- o_multiplier_LSB	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_multiplier_second_LSB	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countDone	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[1]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[2]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[4]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[5]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[6]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[7]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[8]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[9]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[10]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[11]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[12]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[13]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[14]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_product[15]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_shift	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_initialize	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_setCounter	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_loadOut	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_loadPR	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b[3]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_a[0]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_a[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_a[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_a[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_a[4]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_a[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_a[6]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_a[7]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b[4]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b[5]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b[6]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_b[7]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF shift_multiplier_8_bit_data IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_initialize : std_logic;
SIGNAL ww_i_shift : std_logic;
SIGNAL ww_i_loadPR : std_logic;
SIGNAL ww_i_loadOut : std_logic;
SIGNAL ww_i_setCounter : std_logic;
SIGNAL ww_o_multiplier_LSB : std_logic;
SIGNAL ww_o_multiplier_second_LSB : std_logic;
SIGNAL ww_o_countDone : std_logic;
SIGNAL ww_o_product : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_multiplier_LSB~output_o\ : std_logic;
SIGNAL \o_multiplier_second_LSB~output_o\ : std_logic;
SIGNAL \o_countDone~output_o\ : std_logic;
SIGNAL \o_product[0]~output_o\ : std_logic;
SIGNAL \o_product[1]~output_o\ : std_logic;
SIGNAL \o_product[2]~output_o\ : std_logic;
SIGNAL \o_product[3]~output_o\ : std_logic;
SIGNAL \o_product[4]~output_o\ : std_logic;
SIGNAL \o_product[5]~output_o\ : std_logic;
SIGNAL \o_product[6]~output_o\ : std_logic;
SIGNAL \o_product[7]~output_o\ : std_logic;
SIGNAL \o_product[8]~output_o\ : std_logic;
SIGNAL \o_product[9]~output_o\ : std_logic;
SIGNAL \o_product[10]~output_o\ : std_logic;
SIGNAL \o_product[11]~output_o\ : std_logic;
SIGNAL \o_product[12]~output_o\ : std_logic;
SIGNAL \o_product[13]~output_o\ : std_logic;
SIGNAL \o_product[14]~output_o\ : std_logic;
SIGNAL \o_product[15]~output_o\ : std_logic;
SIGNAL \i_clock~input_o\ : std_logic;
SIGNAL \i_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_shift~input_o\ : std_logic;
SIGNAL \i_b[0]~input_o\ : std_logic;
SIGNAL \i_b[1]~input_o\ : std_logic;
SIGNAL \i_b[2]~input_o\ : std_logic;
SIGNAL \i_b[3]~input_o\ : std_logic;
SIGNAL \i_b[4]~input_o\ : std_logic;
SIGNAL \i_b[5]~input_o\ : std_logic;
SIGNAL \i_b[6]~input_o\ : std_logic;
SIGNAL \i_b[7]~input_o\ : std_logic;
SIGNAL \multiplier|perbitloop:8:mux_i|int_Value0~combout\ : std_logic;
SIGNAL \i_initialize~input_o\ : std_logic;
SIGNAL \multiplier|int_load_shiftr~combout\ : std_logic;
SIGNAL \multiplier|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplier|perbitloop:7:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplier|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplier|perbitloop:6:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplier|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplier|perbitloop:5:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplier|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplier|perbitloop:4:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplier|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplier|perbitloop:3:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplier|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplier|perbitloop:2:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplier|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplier|perbitloop:1:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplier|perbitloop:1:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \i_setCounter~input_o\ : std_logic;
SIGNAL \counter|mux_dff_gen:2:mux_i|int_Value0~0_combout\ : std_logic;
SIGNAL \counter|mux_dff_gen:2:mux_i|int_Value0~1_combout\ : std_logic;
SIGNAL \counter|mux_dff_gen:2:dff_i|int_q~q\ : std_logic;
SIGNAL \counter|mux_dff_gen:3:mux_i|int_Value0~0_combout\ : std_logic;
SIGNAL \counter|mux_dff_gen:3:dff_i|int_q~q\ : std_logic;
SIGNAL \counter|mux_dff_gen:0:mux_i|int_Value0~0_combout\ : std_logic;
SIGNAL \counter|mux_dff_gen:0:mux_i|int_Value0~1_combout\ : std_logic;
SIGNAL \counter|mux_dff_gen:0:dff_i|int_q~q\ : std_logic;
SIGNAL \counter|mux_dff_gen:1:mux_i|int_Value0~0_combout\ : std_logic;
SIGNAL \counter|mux_dff_gen:1:dff_i|int_q~q\ : std_logic;
SIGNAL \comparator|cmp_loop:1:cmp_i|o_lt~0_combout\ : std_logic;
SIGNAL \i_a[0]~input_o\ : std_logic;
SIGNAL \multiplicand|mux_1|int_Value0~combout\ : std_logic;
SIGNAL \multiplicand|reg_1|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \i_loadPR~input_o\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:1:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \i_loadOut~input_o\ : std_logic;
SIGNAL \outputReg|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \i_a[1]~input_o\ : std_logic;
SIGNAL \multiplicand|perbitloop:2:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:1:addr_i|o_sum~0_combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:2:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:2:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:1:addr_i|o_carry~0_combout\ : std_logic;
SIGNAL \i_a[2]~input_o\ : std_logic;
SIGNAL \multiplicand|perbitloop:3:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:2:addr_i|o_sum~0_combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:3:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:3:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:3:dFF_i|int_q~q\ : std_logic;
SIGNAL \i_a[3]~input_o\ : std_logic;
SIGNAL \multiplicand|perbitloop:4:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:3:addr_i|o_sum~0_combout\ : std_logic;
SIGNAL \adder|adderloop:3:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:4:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:4:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:4:dFF_i|int_q~q\ : std_logic;
SIGNAL \i_a[4]~input_o\ : std_logic;
SIGNAL \multiplicand|perbitloop:5:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:3:addr_i|o_carry~1_combout\ : std_logic;
SIGNAL \adder|adderloop:3:addr_i|o_carry~2_combout\ : std_logic;
SIGNAL \adder|adderloop:3:addr_i|o_carry~0_combout\ : std_logic;
SIGNAL \adder|adderloop:4:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:5:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:5:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:5:dFF_i|int_q~q\ : std_logic;
SIGNAL \i_a[5]~input_o\ : std_logic;
SIGNAL \multiplicand|perbitloop:6:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:4:addr_i|o_carry~0_combout\ : std_logic;
SIGNAL \adder|adderloop:5:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:6:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:6:dFF_i|int_q~q\ : std_logic;
SIGNAL \i_a[6]~input_o\ : std_logic;
SIGNAL \multiplicand|perbitloop:7:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:6:addr_i|o_sum~0_combout\ : std_logic;
SIGNAL \adder|adderloop:6:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:7:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:7:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:7:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:6:addr_i|o_carry~0_combout\ : std_logic;
SIGNAL \i_a[7]~input_o\ : std_logic;
SIGNAL \multiplicand|perbitloop:8:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:6:addr_i|o_carry~1_combout\ : std_logic;
SIGNAL \adder|adderloop:6:addr_i|o_carry~2_combout\ : std_logic;
SIGNAL \adder|adderloop:7:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:8:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:8:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:8:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplicand|perbitloop:9:mux_i|int_Value1~combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:7:addr_i|o_carry~0_combout\ : std_logic;
SIGNAL \adder|adderloop:8:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:9:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:9:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:9:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplicand|perbitloop:10:mux_i|int_Value1~combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:10:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:9:addr_i|o_sum~0_combout\ : std_logic;
SIGNAL \adder|adderloop:9:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:10:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:10:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:10:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:9:addr_i|o_carry~0_combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:11:mux_i|int_Value1~combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:11:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:9:addr_i|o_carry~1_combout\ : std_logic;
SIGNAL \adder|adderloop:9:addr_i|o_carry~2_combout\ : std_logic;
SIGNAL \adder|adderloop:10:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:11:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:11:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:11:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplicand|perbitloop:12:mux_i|int_Value1~combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:10:addr_i|o_carry~0_combout\ : std_logic;
SIGNAL \adder|adderloop:11:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:12:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:12:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:12:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplicand|perbitloop:13:mux_i|int_Value1~combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:13:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:12:addr_i|o_sum~0_combout\ : std_logic;
SIGNAL \adder|adderloop:12:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:13:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:13:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:12:addr_i|o_carry~0_combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:14:mux_i|int_Value1~combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:14:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:12:addr_i|o_carry~1_combout\ : std_logic;
SIGNAL \adder|adderloop:12:addr_i|o_carry~2_combout\ : std_logic;
SIGNAL \adder|adderloop:13:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:14:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:14:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:14:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplicand|perbitloop:15:mux_i|int_Value1~combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:15:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:14:addr_i|o_sum~0_combout\ : std_logic;
SIGNAL \adder|adderloop:14:addr_i|o_sum~1_combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:15:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:15:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:15:dFF_i|int_q~q\ : std_logic;
SIGNAL \multiplicand|perbitloop:16:mux_i|int_Value1~combout\ : std_logic;
SIGNAL \multiplicand|perbitloop:16:reg_i|perbitloop:1:dFF_i|int_q~q\ : std_logic;
SIGNAL \adder|adderloop:15:addr_i|o_sum~0_combout\ : std_logic;
SIGNAL \adder|adderloop:15:addr_i|o_sum~combout\ : std_logic;
SIGNAL \productReg|reg1|perbitloop:16:dFF_i|int_q~q\ : std_logic;
SIGNAL \outputReg|perbitloop:16:dFF_i|int_q~feeder_combout\ : std_logic;
SIGNAL \outputReg|perbitloop:16:dFF_i|int_q~q\ : std_logic;
SIGNAL \comparator|cmp_loop:1:cmp_i|ALT_INV_o_lt~0_combout\ : std_logic;

BEGIN

ww_i_a <= i_a;
ww_i_b <= i_b;
ww_i_clock <= i_clock;
ww_i_initialize <= i_initialize;
ww_i_shift <= i_shift;
ww_i_loadPR <= i_loadPR;
ww_i_loadOut <= i_loadOut;
ww_i_setCounter <= i_setCounter;
o_multiplier_LSB <= ww_o_multiplier_LSB;
o_multiplier_second_LSB <= ww_o_multiplier_second_LSB;
o_countDone <= ww_o_countDone;
o_product <= ww_o_product;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clock~input_o\);
\comparator|cmp_loop:1:cmp_i|ALT_INV_o_lt~0_combout\ <= NOT \comparator|cmp_loop:1:cmp_i|o_lt~0_combout\;

-- Location: IOOBUF_X16_Y24_N9
\o_multiplier_LSB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplier|perbitloop:1:reg_i|perbitloop:1:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_multiplier_LSB~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\o_multiplier_second_LSB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplier|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_multiplier_second_LSB~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\o_countDone~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparator|cmp_loop:1:cmp_i|ALT_INV_o_lt~0_combout\,
	devoe => ww_devoe,
	o => \o_countDone~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\o_product[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:1:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\o_product[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:2:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\o_product[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:3:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\o_product[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:4:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\o_product[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:5:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[4]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\o_product[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:6:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\o_product[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:7:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\o_product[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:8:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\o_product[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:9:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[8]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\o_product[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:10:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[9]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\o_product[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:11:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[10]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\o_product[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:12:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[11]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\o_product[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:13:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[12]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\o_product[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:14:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[13]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\o_product[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:15:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[14]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\o_product[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputReg|perbitloop:16:dFF_i|int_q~q\,
	devoe => ww_devoe,
	o => \o_product[15]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\i_clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clock,
	o => \i_clock~input_o\);

-- Location: CLKCTRL_G2
\i_clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X23_Y24_N15
\i_shift~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_shift,
	o => \i_shift~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\i_b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b(0),
	o => \i_b[0]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\i_b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b(1),
	o => \i_b[1]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\i_b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b(2),
	o => \i_b[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\i_b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b(3),
	o => \i_b[3]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\i_b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b(4),
	o => \i_b[4]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\i_b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b(5),
	o => \i_b[5]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\i_b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b(6),
	o => \i_b[6]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\i_b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_b(7),
	o => \i_b[7]~input_o\);

-- Location: LCCOMB_X17_Y23_N18
\multiplier|perbitloop:8:mux_i|int_Value0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier|perbitloop:8:mux_i|int_Value0~combout\ = (!\i_shift~input_o\ & \i_b[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_shift~input_o\,
	datac => \i_b[7]~input_o\,
	combout => \multiplier|perbitloop:8:mux_i|int_Value0~combout\);

-- Location: IOIBUF_X34_Y19_N15
\i_initialize~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_initialize,
	o => \i_initialize~input_o\);

-- Location: LCCOMB_X33_Y17_N16
\multiplier|int_load_shiftr\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier|int_load_shiftr~combout\ = (\i_initialize~input_o\) # (\i_shift~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_initialize~input_o\,
	datac => \i_shift~input_o\,
	combout => \multiplier|int_load_shiftr~combout\);

-- Location: FF_X17_Y23_N19
\multiplier|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplier|perbitloop:8:mux_i|int_Value0~combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X17_Y23_N24
\multiplier|perbitloop:7:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier|perbitloop:7:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & ((\multiplier|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\))) # (!\i_shift~input_o\ & (\i_b[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_shift~input_o\,
	datac => \i_b[6]~input_o\,
	datad => \multiplier|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplier|perbitloop:7:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X17_Y23_N25
\multiplier|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplier|perbitloop:7:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X17_Y23_N6
\multiplier|perbitloop:6:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier|perbitloop:6:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & ((\multiplier|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\))) # (!\i_shift~input_o\ & (\i_b[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_shift~input_o\,
	datac => \i_b[5]~input_o\,
	datad => \multiplier|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplier|perbitloop:6:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X17_Y23_N7
\multiplier|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplier|perbitloop:6:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X17_Y23_N12
\multiplier|perbitloop:5:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier|perbitloop:5:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & ((\multiplier|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\))) # (!\i_shift~input_o\ & (\i_b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_shift~input_o\,
	datac => \i_b[4]~input_o\,
	datad => \multiplier|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplier|perbitloop:5:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X17_Y23_N13
\multiplier|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplier|perbitloop:5:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X17_Y23_N2
\multiplier|perbitloop:4:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier|perbitloop:4:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & ((\multiplier|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\))) # (!\i_shift~input_o\ & (\i_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_shift~input_o\,
	datac => \i_b[3]~input_o\,
	datad => \multiplier|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplier|perbitloop:4:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X17_Y23_N3
\multiplier|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplier|perbitloop:4:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X17_Y23_N20
\multiplier|perbitloop:3:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier|perbitloop:3:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & ((\multiplier|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\))) # (!\i_shift~input_o\ & (\i_b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_shift~input_o\,
	datac => \i_b[2]~input_o\,
	datad => \multiplier|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplier|perbitloop:3:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X17_Y23_N21
\multiplier|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplier|perbitloop:3:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X17_Y23_N10
\multiplier|perbitloop:2:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier|perbitloop:2:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & ((\multiplier|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\))) # (!\i_shift~input_o\ & (\i_b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_shift~input_o\,
	datac => \i_b[1]~input_o\,
	datad => \multiplier|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplier|perbitloop:2:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X17_Y23_N11
\multiplier|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplier|perbitloop:2:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X17_Y23_N0
\multiplier|perbitloop:1:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier|perbitloop:1:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & ((\multiplier|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\))) # (!\i_shift~input_o\ & (\i_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_shift~input_o\,
	datac => \i_b[0]~input_o\,
	datad => \multiplier|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplier|perbitloop:1:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X17_Y23_N1
\multiplier|perbitloop:1:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplier|perbitloop:1:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier|perbitloop:1:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: IOIBUF_X11_Y24_N15
\i_setCounter~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_setCounter,
	o => \i_setCounter~input_o\);

-- Location: LCCOMB_X11_Y23_N2
\counter|mux_dff_gen:2:mux_i|int_Value0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|mux_dff_gen:2:mux_i|int_Value0~0_combout\ = (\counter|mux_dff_gen:1:dff_i|int_q~q\ & \counter|mux_dff_gen:0:dff_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|mux_dff_gen:1:dff_i|int_q~q\,
	datad => \counter|mux_dff_gen:0:dff_i|int_q~q\,
	combout => \counter|mux_dff_gen:2:mux_i|int_Value0~0_combout\);

-- Location: LCCOMB_X11_Y23_N6
\counter|mux_dff_gen:2:mux_i|int_Value0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|mux_dff_gen:2:mux_i|int_Value0~1_combout\ = (!\i_setCounter~input_o\ & ((\counter|mux_dff_gen:2:dff_i|int_q~q\ & ((\counter|mux_dff_gen:3:dff_i|int_q~q\) # (!\counter|mux_dff_gen:2:mux_i|int_Value0~0_combout\))) # 
-- (!\counter|mux_dff_gen:2:dff_i|int_q~q\ & ((\counter|mux_dff_gen:2:mux_i|int_Value0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_setCounter~input_o\,
	datab => \counter|mux_dff_gen:3:dff_i|int_q~q\,
	datac => \counter|mux_dff_gen:2:dff_i|int_q~q\,
	datad => \counter|mux_dff_gen:2:mux_i|int_Value0~0_combout\,
	combout => \counter|mux_dff_gen:2:mux_i|int_Value0~1_combout\);

-- Location: FF_X11_Y23_N7
\counter|mux_dff_gen:2:dff_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \counter|mux_dff_gen:2:mux_i|int_Value0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|mux_dff_gen:2:dff_i|int_q~q\);

-- Location: LCCOMB_X11_Y23_N4
\counter|mux_dff_gen:3:mux_i|int_Value0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|mux_dff_gen:3:mux_i|int_Value0~0_combout\ = (!\i_setCounter~input_o\ & ((\counter|mux_dff_gen:3:dff_i|int_q~q\) # ((\counter|mux_dff_gen:2:dff_i|int_q~q\ & \counter|mux_dff_gen:2:mux_i|int_Value0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_setCounter~input_o\,
	datab => \counter|mux_dff_gen:2:dff_i|int_q~q\,
	datac => \counter|mux_dff_gen:3:dff_i|int_q~q\,
	datad => \counter|mux_dff_gen:2:mux_i|int_Value0~0_combout\,
	combout => \counter|mux_dff_gen:3:mux_i|int_Value0~0_combout\);

-- Location: FF_X11_Y23_N5
\counter|mux_dff_gen:3:dff_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \counter|mux_dff_gen:3:mux_i|int_Value0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|mux_dff_gen:3:dff_i|int_q~q\);

-- Location: LCCOMB_X11_Y23_N16
\counter|mux_dff_gen:0:mux_i|int_Value0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|mux_dff_gen:0:mux_i|int_Value0~0_combout\ = (\counter|mux_dff_gen:1:dff_i|int_q~q\ & (\counter|mux_dff_gen:3:dff_i|int_q~q\ & \counter|mux_dff_gen:2:dff_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|mux_dff_gen:1:dff_i|int_q~q\,
	datac => \counter|mux_dff_gen:3:dff_i|int_q~q\,
	datad => \counter|mux_dff_gen:2:dff_i|int_q~q\,
	combout => \counter|mux_dff_gen:0:mux_i|int_Value0~0_combout\);

-- Location: LCCOMB_X11_Y23_N10
\counter|mux_dff_gen:0:mux_i|int_Value0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|mux_dff_gen:0:mux_i|int_Value0~1_combout\ = (!\i_setCounter~input_o\ & ((\counter|mux_dff_gen:0:mux_i|int_Value0~0_combout\) # (!\counter|mux_dff_gen:0:dff_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_setCounter~input_o\,
	datac => \counter|mux_dff_gen:0:dff_i|int_q~q\,
	datad => \counter|mux_dff_gen:0:mux_i|int_Value0~0_combout\,
	combout => \counter|mux_dff_gen:0:mux_i|int_Value0~1_combout\);

-- Location: FF_X11_Y23_N11
\counter|mux_dff_gen:0:dff_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \counter|mux_dff_gen:0:mux_i|int_Value0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|mux_dff_gen:0:dff_i|int_q~q\);

-- Location: LCCOMB_X11_Y23_N8
\counter|mux_dff_gen:1:mux_i|int_Value0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|mux_dff_gen:1:mux_i|int_Value0~0_combout\ = (!\i_setCounter~input_o\ & ((\counter|mux_dff_gen:0:mux_i|int_Value0~0_combout\) # (\counter|mux_dff_gen:0:dff_i|int_q~q\ $ (\counter|mux_dff_gen:1:dff_i|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_setCounter~input_o\,
	datab => \counter|mux_dff_gen:0:dff_i|int_q~q\,
	datac => \counter|mux_dff_gen:1:dff_i|int_q~q\,
	datad => \counter|mux_dff_gen:0:mux_i|int_Value0~0_combout\,
	combout => \counter|mux_dff_gen:1:mux_i|int_Value0~0_combout\);

-- Location: FF_X11_Y23_N9
\counter|mux_dff_gen:1:dff_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \counter|mux_dff_gen:1:mux_i|int_Value0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|mux_dff_gen:1:dff_i|int_q~q\);

-- Location: LCCOMB_X11_Y23_N12
\comparator|cmp_loop:1:cmp_i|o_lt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparator|cmp_loop:1:cmp_i|o_lt~0_combout\ = (\counter|mux_dff_gen:3:dff_i|int_q~q\ & ((\counter|mux_dff_gen:1:dff_i|int_q~q\) # ((\counter|mux_dff_gen:0:dff_i|int_q~q\) # (\counter|mux_dff_gen:2:dff_i|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|mux_dff_gen:1:dff_i|int_q~q\,
	datab => \counter|mux_dff_gen:0:dff_i|int_q~q\,
	datac => \counter|mux_dff_gen:2:dff_i|int_q~q\,
	datad => \counter|mux_dff_gen:3:dff_i|int_q~q\,
	combout => \comparator|cmp_loop:1:cmp_i|o_lt~0_combout\);

-- Location: IOIBUF_X34_Y4_N15
\i_a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_a(0),
	o => \i_a[0]~input_o\);

-- Location: LCCOMB_X30_Y17_N22
\multiplicand|mux_1|int_Value0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|mux_1|int_Value0~combout\ = (\i_a[0]~input_o\ & !\i_shift~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_a[0]~input_o\,
	datad => \i_shift~input_o\,
	combout => \multiplicand|mux_1|int_Value0~combout\);

-- Location: FF_X30_Y17_N23
\multiplicand|reg_1|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|mux_1|int_Value0~combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|reg_1|perbitloop:1:dFF_i|int_q~q\);

-- Location: IOIBUF_X34_Y17_N15
\i_loadPR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_loadPR,
	o => \i_loadPR~input_o\);

-- Location: LCCOMB_X29_Y17_N28
\productReg|reg1|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \productReg|reg1|perbitloop:1:mux_i|o_Value~0_combout\ = \productReg|reg1|perbitloop:1:dFF_i|int_q~q\ $ (((\multiplicand|reg_1|perbitloop:1:dFF_i|int_q~q\ & \i_loadPR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplicand|reg_1|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:1:dFF_i|int_q~q\,
	datad => \i_loadPR~input_o\,
	combout => \productReg|reg1|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X29_Y17_N29
\productReg|reg1|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \productReg|reg1|perbitloop:1:mux_i|o_Value~0_combout\,
	sclr => \i_initialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X30_Y17_N12
\outputReg|perbitloop:1:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:1:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:1:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:1:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:1:dFF_i|int_q~feeder_combout\);

-- Location: IOIBUF_X34_Y18_N1
\i_loadOut~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_loadOut,
	o => \i_loadOut~input_o\);

-- Location: FF_X30_Y17_N13
\outputReg|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:1:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:1:dFF_i|int_q~q\);

-- Location: IOIBUF_X30_Y0_N8
\i_a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_a(1),
	o => \i_a[1]~input_o\);

-- Location: LCCOMB_X30_Y17_N4
\multiplicand|perbitloop:2:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:2:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & ((\multiplicand|reg_1|perbitloop:1:dFF_i|int_q~q\))) # (!\i_shift~input_o\ & (\i_a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_shift~input_o\,
	datab => \i_a[1]~input_o\,
	datad => \multiplicand|reg_1|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplicand|perbitloop:2:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X30_Y17_N5
\multiplicand|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:2:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X29_Y17_N6
\adder|adderloop:1:addr_i|o_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:1:addr_i|o_sum~0_combout\ = \multiplicand|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (\productReg|reg1|perbitloop:2:dFF_i|int_q~q\ $ (((\productReg|reg1|perbitloop:1:dFF_i|int_q~q\ & 
-- \multiplicand|reg_1|perbitloop:1:dFF_i|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \productReg|reg1|perbitloop:1:dFF_i|int_q~q\,
	datab => \multiplicand|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:2:dFF_i|int_q~q\,
	datad => \multiplicand|reg_1|perbitloop:1:dFF_i|int_q~q\,
	combout => \adder|adderloop:1:addr_i|o_sum~0_combout\);

-- Location: LCCOMB_X32_Y17_N4
\productReg|reg1|perbitloop:16:dFF_i|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\ = (\i_loadPR~input_o\) # (\i_initialize~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_loadPR~input_o\,
	datad => \i_initialize~input_o\,
	combout => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\);

-- Location: FF_X29_Y17_N7
\productReg|reg1|perbitloop:2:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:1:addr_i|o_sum~0_combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:2:dFF_i|int_q~q\);

-- Location: FF_X30_Y17_N19
\outputReg|perbitloop:2:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \productReg|reg1|perbitloop:2:dFF_i|int_q~q\,
	sload => VCC,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:2:dFF_i|int_q~q\);

-- Location: LCCOMB_X30_Y17_N28
\adder|adderloop:1:addr_i|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:1:addr_i|o_carry~0_combout\ = (\multiplicand|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\ & ((\productReg|reg1|perbitloop:2:dFF_i|int_q~q\) # ((\multiplicand|reg_1|perbitloop:1:dFF_i|int_q~q\ & 
-- \productReg|reg1|perbitloop:1:dFF_i|int_q~q\)))) # (!\multiplicand|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\ & (\multiplicand|reg_1|perbitloop:1:dFF_i|int_q~q\ & (\productReg|reg1|perbitloop:2:dFF_i|int_q~q\ & 
-- \productReg|reg1|perbitloop:1:dFF_i|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|reg_1|perbitloop:1:dFF_i|int_q~q\,
	datab => \multiplicand|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:2:dFF_i|int_q~q\,
	datad => \productReg|reg1|perbitloop:1:dFF_i|int_q~q\,
	combout => \adder|adderloop:1:addr_i|o_carry~0_combout\);

-- Location: IOIBUF_X28_Y24_N15
\i_a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_a(2),
	o => \i_a[2]~input_o\);

-- Location: LCCOMB_X30_Y17_N6
\multiplicand|perbitloop:3:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:3:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & (\multiplicand|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\)) # (!\i_shift~input_o\ & ((\i_a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_shift~input_o\,
	datac => \multiplicand|perbitloop:2:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datad => \i_a[2]~input_o\,
	combout => \multiplicand|perbitloop:3:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X30_Y17_N7
\multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:3:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X32_Y17_N28
\adder|adderloop:2:addr_i|o_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:2:addr_i|o_sum~0_combout\ = \adder|adderloop:1:addr_i|o_carry~0_combout\ $ (\multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (\productReg|reg1|perbitloop:3:dFF_i|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderloop:1:addr_i|o_carry~0_combout\,
	datab => \multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:3:dFF_i|int_q~q\,
	combout => \adder|adderloop:2:addr_i|o_sum~0_combout\);

-- Location: FF_X32_Y17_N29
\productReg|reg1|perbitloop:3:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:2:addr_i|o_sum~0_combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:3:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N0
\outputReg|perbitloop:3:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:3:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:3:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:3:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:3:dFF_i|int_q~feeder_combout\);

-- Location: FF_X33_Y17_N1
\outputReg|perbitloop:3:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:3:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:3:dFF_i|int_q~q\);

-- Location: IOIBUF_X30_Y24_N22
\i_a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_a(3),
	o => \i_a[3]~input_o\);

-- Location: LCCOMB_X31_Y17_N30
\multiplicand|perbitloop:4:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:4:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & (\multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\)) # (!\i_shift~input_o\ & ((\i_a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_shift~input_o\,
	datac => \multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datad => \i_a[3]~input_o\,
	combout => \multiplicand|perbitloop:4:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X31_Y17_N31
\multiplicand|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:4:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X30_Y17_N30
\adder|adderloop:3:addr_i|o_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:3:addr_i|o_sum~0_combout\ = \multiplicand|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (((\adder|adderloop:1:addr_i|o_carry~0_combout\ & ((\productReg|reg1|perbitloop:3:dFF_i|int_q~q\) # 
-- (\multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\))) # (!\adder|adderloop:1:addr_i|o_carry~0_combout\ & (\productReg|reg1|perbitloop:3:dFF_i|int_q~q\ & \multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datab => \adder|adderloop:1:addr_i|o_carry~0_combout\,
	datac => \productReg|reg1|perbitloop:3:dFF_i|int_q~q\,
	datad => \multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \adder|adderloop:3:addr_i|o_sum~0_combout\);

-- Location: LCCOMB_X31_Y17_N12
\adder|adderloop:3:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:3:addr_i|o_sum~combout\ = \productReg|reg1|perbitloop:4:dFF_i|int_q~q\ $ (\adder|adderloop:3:addr_i|o_sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \productReg|reg1|perbitloop:4:dFF_i|int_q~q\,
	datad => \adder|adderloop:3:addr_i|o_sum~0_combout\,
	combout => \adder|adderloop:3:addr_i|o_sum~combout\);

-- Location: FF_X31_Y17_N13
\productReg|reg1|perbitloop:4:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:3:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:4:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N18
\outputReg|perbitloop:4:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:4:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:4:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:4:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:4:dFF_i|int_q~feeder_combout\);

-- Location: FF_X33_Y17_N19
\outputReg|perbitloop:4:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:4:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:4:dFF_i|int_q~q\);

-- Location: IOIBUF_X34_Y9_N8
\i_a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_a(4),
	o => \i_a[4]~input_o\);

-- Location: LCCOMB_X30_Y17_N24
\multiplicand|perbitloop:5:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:5:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & (\multiplicand|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\)) # (!\i_shift~input_o\ & ((\i_a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \i_a[4]~input_o\,
	datad => \i_shift~input_o\,
	combout => \multiplicand|perbitloop:5:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X30_Y17_N25
\multiplicand|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:5:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X31_Y17_N26
\adder|adderloop:3:addr_i|o_carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:3:addr_i|o_carry~1_combout\ = (\multiplicand|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\) # (\productReg|reg1|perbitloop:4:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datad => \productReg|reg1|perbitloop:4:dFF_i|int_q~q\,
	combout => \adder|adderloop:3:addr_i|o_carry~1_combout\);

-- Location: LCCOMB_X31_Y17_N28
\adder|adderloop:3:addr_i|o_carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:3:addr_i|o_carry~2_combout\ = (\adder|adderloop:3:addr_i|o_carry~1_combout\ & ((\productReg|reg1|perbitloop:3:dFF_i|int_q~q\ & ((\multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\) # 
-- (\adder|adderloop:1:addr_i|o_carry~0_combout\))) # (!\productReg|reg1|perbitloop:3:dFF_i|int_q~q\ & (\multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\ & \adder|adderloop:1:addr_i|o_carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \productReg|reg1|perbitloop:3:dFF_i|int_q~q\,
	datab => \multiplicand|perbitloop:3:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \adder|adderloop:3:addr_i|o_carry~1_combout\,
	datad => \adder|adderloop:1:addr_i|o_carry~0_combout\,
	combout => \adder|adderloop:3:addr_i|o_carry~2_combout\);

-- Location: LCCOMB_X31_Y17_N8
\adder|adderloop:3:addr_i|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:3:addr_i|o_carry~0_combout\ = (\productReg|reg1|perbitloop:4:dFF_i|int_q~q\ & \multiplicand|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \productReg|reg1|perbitloop:4:dFF_i|int_q~q\,
	datac => \multiplicand|perbitloop:4:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \adder|adderloop:3:addr_i|o_carry~0_combout\);

-- Location: LCCOMB_X32_Y17_N2
\adder|adderloop:4:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:4:addr_i|o_sum~combout\ = \multiplicand|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (\productReg|reg1|perbitloop:5:dFF_i|int_q~q\ $ (((\adder|adderloop:3:addr_i|o_carry~2_combout\) # (\adder|adderloop:3:addr_i|o_carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datab => \adder|adderloop:3:addr_i|o_carry~2_combout\,
	datac => \productReg|reg1|perbitloop:5:dFF_i|int_q~q\,
	datad => \adder|adderloop:3:addr_i|o_carry~0_combout\,
	combout => \adder|adderloop:4:addr_i|o_sum~combout\);

-- Location: FF_X32_Y17_N3
\productReg|reg1|perbitloop:5:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:4:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:5:dFF_i|int_q~q\);

-- Location: LCCOMB_X31_Y18_N12
\outputReg|perbitloop:5:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:5:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:5:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \productReg|reg1|perbitloop:5:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:5:dFF_i|int_q~feeder_combout\);

-- Location: FF_X31_Y18_N13
\outputReg|perbitloop:5:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:5:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:5:dFF_i|int_q~q\);

-- Location: IOIBUF_X30_Y24_N1
\i_a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_a(5),
	o => \i_a[5]~input_o\);

-- Location: LCCOMB_X30_Y17_N26
\multiplicand|perbitloop:6:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:6:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & (\multiplicand|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\)) # (!\i_shift~input_o\ & ((\i_a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_shift~input_o\,
	datab => \multiplicand|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datad => \i_a[5]~input_o\,
	combout => \multiplicand|perbitloop:6:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X30_Y17_N27
\multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:6:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X31_Y17_N18
\adder|adderloop:4:addr_i|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:4:addr_i|o_carry~0_combout\ = (\productReg|reg1|perbitloop:5:dFF_i|int_q~q\ & ((\multiplicand|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\) # ((\adder|adderloop:3:addr_i|o_carry~0_combout\) # 
-- (\adder|adderloop:3:addr_i|o_carry~2_combout\)))) # (!\productReg|reg1|perbitloop:5:dFF_i|int_q~q\ & (\multiplicand|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\ & ((\adder|adderloop:3:addr_i|o_carry~0_combout\) # 
-- (\adder|adderloop:3:addr_i|o_carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \productReg|reg1|perbitloop:5:dFF_i|int_q~q\,
	datab => \multiplicand|perbitloop:5:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \adder|adderloop:3:addr_i|o_carry~0_combout\,
	datad => \adder|adderloop:3:addr_i|o_carry~2_combout\,
	combout => \adder|adderloop:4:addr_i|o_carry~0_combout\);

-- Location: LCCOMB_X32_Y17_N16
\adder|adderloop:5:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:5:addr_i|o_sum~combout\ = \multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (\productReg|reg1|perbitloop:6:dFF_i|int_q~q\ $ (\adder|adderloop:4:addr_i|o_carry~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:6:dFF_i|int_q~q\,
	datad => \adder|adderloop:4:addr_i|o_carry~0_combout\,
	combout => \adder|adderloop:5:addr_i|o_sum~combout\);

-- Location: FF_X32_Y17_N17
\productReg|reg1|perbitloop:6:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:5:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:6:dFF_i|int_q~q\);

-- Location: FF_X30_Y17_N1
\outputReg|perbitloop:6:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \productReg|reg1|perbitloop:6:dFF_i|int_q~q\,
	sload => VCC,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:6:dFF_i|int_q~q\);

-- Location: IOIBUF_X34_Y10_N8
\i_a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_a(6),
	o => \i_a[6]~input_o\);

-- Location: LCCOMB_X30_Y17_N8
\multiplicand|perbitloop:7:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:7:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & (\multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\)) # (!\i_shift~input_o\ & ((\i_a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_shift~input_o\,
	datac => \multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datad => \i_a[6]~input_o\,
	combout => \multiplicand|perbitloop:7:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X30_Y17_N9
\multiplicand|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:7:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X29_Y17_N22
\adder|adderloop:6:addr_i|o_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:6:addr_i|o_sum~0_combout\ = \productReg|reg1|perbitloop:7:dFF_i|int_q~q\ $ (\multiplicand|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \productReg|reg1|perbitloop:7:dFF_i|int_q~q\,
	datac => \multiplicand|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \adder|adderloop:6:addr_i|o_sum~0_combout\);

-- Location: LCCOMB_X29_Y17_N24
\adder|adderloop:6:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:6:addr_i|o_sum~combout\ = \adder|adderloop:6:addr_i|o_sum~0_combout\ $ (((\productReg|reg1|perbitloop:6:dFF_i|int_q~q\ & ((\multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\) # (\adder|adderloop:4:addr_i|o_carry~0_combout\))) # 
-- (!\productReg|reg1|perbitloop:6:dFF_i|int_q~q\ & (\multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\ & \adder|adderloop:4:addr_i|o_carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \productReg|reg1|perbitloop:6:dFF_i|int_q~q\,
	datab => \multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \adder|adderloop:6:addr_i|o_sum~0_combout\,
	datad => \adder|adderloop:4:addr_i|o_carry~0_combout\,
	combout => \adder|adderloop:6:addr_i|o_sum~combout\);

-- Location: FF_X29_Y17_N25
\productReg|reg1|perbitloop:7:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:6:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:7:dFF_i|int_q~q\);

-- Location: LCCOMB_X30_Y17_N2
\outputReg|perbitloop:7:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:7:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:7:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:7:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:7:dFF_i|int_q~feeder_combout\);

-- Location: FF_X30_Y17_N3
\outputReg|perbitloop:7:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:7:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:7:dFF_i|int_q~q\);

-- Location: LCCOMB_X30_Y17_N16
\adder|adderloop:6:addr_i|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:6:addr_i|o_carry~0_combout\ = (\multiplicand|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\ & \productReg|reg1|perbitloop:7:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datad => \productReg|reg1|perbitloop:7:dFF_i|int_q~q\,
	combout => \adder|adderloop:6:addr_i|o_carry~0_combout\);

-- Location: IOIBUF_X30_Y0_N22
\i_a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_a(7),
	o => \i_a[7]~input_o\);

-- Location: LCCOMB_X30_Y17_N10
\multiplicand|perbitloop:8:reg_i|perbitloop:1:mux_i|o_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:8:reg_i|perbitloop:1:mux_i|o_Value~0_combout\ = (\i_shift~input_o\ & ((\multiplicand|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\))) # (!\i_shift~input_o\ & (\i_a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_shift~input_o\,
	datab => \i_a[7]~input_o\,
	datac => \multiplicand|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplicand|perbitloop:8:reg_i|perbitloop:1:mux_i|o_Value~0_combout\);

-- Location: FF_X30_Y17_N11
\multiplicand|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:8:reg_i|perbitloop:1:mux_i|o_Value~0_combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X30_Y17_N0
\adder|adderloop:6:addr_i|o_carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:6:addr_i|o_carry~1_combout\ = (\multiplicand|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\) # (\productReg|reg1|perbitloop:7:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplicand|perbitloop:7:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datad => \productReg|reg1|perbitloop:7:dFF_i|int_q~q\,
	combout => \adder|adderloop:6:addr_i|o_carry~1_combout\);

-- Location: LCCOMB_X31_Y17_N20
\adder|adderloop:6:addr_i|o_carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:6:addr_i|o_carry~2_combout\ = (\adder|adderloop:6:addr_i|o_carry~1_combout\ & ((\multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\ & ((\productReg|reg1|perbitloop:6:dFF_i|int_q~q\) # 
-- (\adder|adderloop:4:addr_i|o_carry~0_combout\))) # (!\multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\ & (\productReg|reg1|perbitloop:6:dFF_i|int_q~q\ & \adder|adderloop:4:addr_i|o_carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|perbitloop:6:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datab => \productReg|reg1|perbitloop:6:dFF_i|int_q~q\,
	datac => \adder|adderloop:6:addr_i|o_carry~1_combout\,
	datad => \adder|adderloop:4:addr_i|o_carry~0_combout\,
	combout => \adder|adderloop:6:addr_i|o_carry~2_combout\);

-- Location: LCCOMB_X32_Y17_N18
\adder|adderloop:7:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:7:addr_i|o_sum~combout\ = \multiplicand|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (\productReg|reg1|perbitloop:8:dFF_i|int_q~q\ $ (((\adder|adderloop:6:addr_i|o_carry~0_combout\) # (\adder|adderloop:6:addr_i|o_carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderloop:6:addr_i|o_carry~0_combout\,
	datab => \multiplicand|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:8:dFF_i|int_q~q\,
	datad => \adder|adderloop:6:addr_i|o_carry~2_combout\,
	combout => \adder|adderloop:7:addr_i|o_sum~combout\);

-- Location: FF_X32_Y17_N19
\productReg|reg1|perbitloop:8:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:7:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:8:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N28
\outputReg|perbitloop:8:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:8:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:8:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:8:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:8:dFF_i|int_q~feeder_combout\);

-- Location: FF_X33_Y17_N29
\outputReg|perbitloop:8:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:8:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:8:dFF_i|int_q~q\);

-- Location: LCCOMB_X30_Y17_N14
\multiplicand|perbitloop:9:mux_i|int_Value1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:9:mux_i|int_Value1~combout\ = (\i_shift~input_o\ & \multiplicand|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_shift~input_o\,
	datad => \multiplicand|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplicand|perbitloop:9:mux_i|int_Value1~combout\);

-- Location: FF_X30_Y17_N15
\multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:9:mux_i|int_Value1~combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X31_Y17_N2
\adder|adderloop:7:addr_i|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:7:addr_i|o_carry~0_combout\ = (\multiplicand|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\ & ((\productReg|reg1|perbitloop:8:dFF_i|int_q~q\) # ((\adder|adderloop:6:addr_i|o_carry~0_combout\) # 
-- (\adder|adderloop:6:addr_i|o_carry~2_combout\)))) # (!\multiplicand|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\ & (\productReg|reg1|perbitloop:8:dFF_i|int_q~q\ & ((\adder|adderloop:6:addr_i|o_carry~0_combout\) # 
-- (\adder|adderloop:6:addr_i|o_carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|perbitloop:8:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datab => \productReg|reg1|perbitloop:8:dFF_i|int_q~q\,
	datac => \adder|adderloop:6:addr_i|o_carry~0_combout\,
	datad => \adder|adderloop:6:addr_i|o_carry~2_combout\,
	combout => \adder|adderloop:7:addr_i|o_carry~0_combout\);

-- Location: LCCOMB_X32_Y17_N24
\adder|adderloop:8:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:8:addr_i|o_sum~combout\ = \multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (\productReg|reg1|perbitloop:9:dFF_i|int_q~q\ $ (\adder|adderloop:7:addr_i|o_carry~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:9:dFF_i|int_q~q\,
	datad => \adder|adderloop:7:addr_i|o_carry~0_combout\,
	combout => \adder|adderloop:8:addr_i|o_sum~combout\);

-- Location: FF_X32_Y17_N25
\productReg|reg1|perbitloop:9:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:8:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:9:dFF_i|int_q~q\);

-- Location: LCCOMB_X30_Y17_N20
\outputReg|perbitloop:9:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:9:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:9:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:9:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:9:dFF_i|int_q~feeder_combout\);

-- Location: FF_X30_Y17_N21
\outputReg|perbitloop:9:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:9:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:9:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N22
\multiplicand|perbitloop:10:mux_i|int_Value1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:10:mux_i|int_Value1~combout\ = (\i_shift~input_o\ & \multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_shift~input_o\,
	datad => \multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplicand|perbitloop:10:mux_i|int_Value1~combout\);

-- Location: FF_X33_Y17_N23
\multiplicand|perbitloop:10:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:10:mux_i|int_Value1~combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:10:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N20
\adder|adderloop:9:addr_i|o_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:9:addr_i|o_sum~0_combout\ = \multiplicand|perbitloop:10:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (\productReg|reg1|perbitloop:10:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand|perbitloop:10:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datad => \productReg|reg1|perbitloop:10:dFF_i|int_q~q\,
	combout => \adder|adderloop:9:addr_i|o_sum~0_combout\);

-- Location: LCCOMB_X32_Y17_N14
\adder|adderloop:9:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:9:addr_i|o_sum~combout\ = \adder|adderloop:9:addr_i|o_sum~0_combout\ $ (((\multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\ & ((\productReg|reg1|perbitloop:9:dFF_i|int_q~q\) # (\adder|adderloop:7:addr_i|o_carry~0_combout\))) # 
-- (!\multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\ & (\productReg|reg1|perbitloop:9:dFF_i|int_q~q\ & \adder|adderloop:7:addr_i|o_carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderloop:9:addr_i|o_sum~0_combout\,
	datab => \multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:9:dFF_i|int_q~q\,
	datad => \adder|adderloop:7:addr_i|o_carry~0_combout\,
	combout => \adder|adderloop:9:addr_i|o_sum~combout\);

-- Location: FF_X32_Y17_N15
\productReg|reg1|perbitloop:10:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:9:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:10:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N14
\outputReg|perbitloop:10:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:10:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:10:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:10:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:10:dFF_i|int_q~feeder_combout\);

-- Location: FF_X33_Y17_N15
\outputReg|perbitloop:10:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:10:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:10:dFF_i|int_q~q\);

-- Location: LCCOMB_X32_Y17_N6
\adder|adderloop:9:addr_i|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:9:addr_i|o_carry~0_combout\ = (\productReg|reg1|perbitloop:10:dFF_i|int_q~q\ & \multiplicand|perbitloop:10:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \productReg|reg1|perbitloop:10:dFF_i|int_q~q\,
	datad => \multiplicand|perbitloop:10:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \adder|adderloop:9:addr_i|o_carry~0_combout\);

-- Location: LCCOMB_X33_Y17_N10
\multiplicand|perbitloop:11:mux_i|int_Value1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:11:mux_i|int_Value1~combout\ = (\multiplicand|perbitloop:10:reg_i|perbitloop:1:dFF_i|int_q~q\ & \i_shift~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|perbitloop:10:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \i_shift~input_o\,
	combout => \multiplicand|perbitloop:11:mux_i|int_Value1~combout\);

-- Location: FF_X33_Y17_N11
\multiplicand|perbitloop:11:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:11:mux_i|int_Value1~combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:11:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X32_Y17_N8
\adder|adderloop:9:addr_i|o_carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:9:addr_i|o_carry~1_combout\ = (\productReg|reg1|perbitloop:10:dFF_i|int_q~q\) # (\multiplicand|perbitloop:10:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \productReg|reg1|perbitloop:10:dFF_i|int_q~q\,
	datad => \multiplicand|perbitloop:10:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \adder|adderloop:9:addr_i|o_carry~1_combout\);

-- Location: LCCOMB_X31_Y17_N0
\adder|adderloop:9:addr_i|o_carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:9:addr_i|o_carry~2_combout\ = (\adder|adderloop:9:addr_i|o_carry~1_combout\ & ((\multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\ & ((\productReg|reg1|perbitloop:9:dFF_i|int_q~q\) # 
-- (\adder|adderloop:7:addr_i|o_carry~0_combout\))) # (!\multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\ & (\productReg|reg1|perbitloop:9:dFF_i|int_q~q\ & \adder|adderloop:7:addr_i|o_carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|perbitloop:9:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datab => \productReg|reg1|perbitloop:9:dFF_i|int_q~q\,
	datac => \adder|adderloop:9:addr_i|o_carry~1_combout\,
	datad => \adder|adderloop:7:addr_i|o_carry~0_combout\,
	combout => \adder|adderloop:9:addr_i|o_carry~2_combout\);

-- Location: LCCOMB_X32_Y17_N12
\adder|adderloop:10:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:10:addr_i|o_sum~combout\ = \multiplicand|perbitloop:11:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (\productReg|reg1|perbitloop:11:dFF_i|int_q~q\ $ (((\adder|adderloop:9:addr_i|o_carry~0_combout\) # 
-- (\adder|adderloop:9:addr_i|o_carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderloop:9:addr_i|o_carry~0_combout\,
	datab => \multiplicand|perbitloop:11:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:11:dFF_i|int_q~q\,
	datad => \adder|adderloop:9:addr_i|o_carry~2_combout\,
	combout => \adder|adderloop:10:addr_i|o_sum~combout\);

-- Location: FF_X32_Y17_N13
\productReg|reg1|perbitloop:11:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:10:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:11:dFF_i|int_q~q\);

-- Location: LCCOMB_X32_Y17_N0
\outputReg|perbitloop:11:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:11:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:11:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:11:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:11:dFF_i|int_q~feeder_combout\);

-- Location: FF_X32_Y17_N1
\outputReg|perbitloop:11:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:11:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:11:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N8
\multiplicand|perbitloop:12:mux_i|int_Value1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:12:mux_i|int_Value1~combout\ = (\i_shift~input_o\ & \multiplicand|perbitloop:11:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_shift~input_o\,
	datad => \multiplicand|perbitloop:11:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplicand|perbitloop:12:mux_i|int_Value1~combout\);

-- Location: FF_X33_Y17_N9
\multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:12:mux_i|int_Value1~combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X31_Y17_N10
\adder|adderloop:10:addr_i|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:10:addr_i|o_carry~0_combout\ = (\productReg|reg1|perbitloop:11:dFF_i|int_q~q\ & ((\adder|adderloop:9:addr_i|o_carry~0_combout\) # ((\multiplicand|perbitloop:11:reg_i|perbitloop:1:dFF_i|int_q~q\) # 
-- (\adder|adderloop:9:addr_i|o_carry~2_combout\)))) # (!\productReg|reg1|perbitloop:11:dFF_i|int_q~q\ & (\multiplicand|perbitloop:11:reg_i|perbitloop:1:dFF_i|int_q~q\ & ((\adder|adderloop:9:addr_i|o_carry~0_combout\) # 
-- (\adder|adderloop:9:addr_i|o_carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderloop:9:addr_i|o_carry~0_combout\,
	datab => \productReg|reg1|perbitloop:11:dFF_i|int_q~q\,
	datac => \multiplicand|perbitloop:11:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datad => \adder|adderloop:9:addr_i|o_carry~2_combout\,
	combout => \adder|adderloop:10:addr_i|o_carry~0_combout\);

-- Location: LCCOMB_X31_Y17_N14
\adder|adderloop:11:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:11:addr_i|o_sum~combout\ = \multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (\productReg|reg1|perbitloop:12:dFF_i|int_q~q\ $ (\adder|adderloop:10:addr_i|o_carry~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:12:dFF_i|int_q~q\,
	datad => \adder|adderloop:10:addr_i|o_carry~0_combout\,
	combout => \adder|adderloop:11:addr_i|o_sum~combout\);

-- Location: FF_X31_Y17_N15
\productReg|reg1|perbitloop:12:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:11:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:12:dFF_i|int_q~q\);

-- Location: LCCOMB_X32_Y17_N30
\outputReg|perbitloop:12:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:12:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:12:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:12:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:12:dFF_i|int_q~feeder_combout\);

-- Location: FF_X32_Y17_N31
\outputReg|perbitloop:12:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:12:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:12:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N2
\multiplicand|perbitloop:13:mux_i|int_Value1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:13:mux_i|int_Value1~combout\ = (\multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\ & \i_shift~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \i_shift~input_o\,
	combout => \multiplicand|perbitloop:13:mux_i|int_Value1~combout\);

-- Location: FF_X33_Y17_N3
\multiplicand|perbitloop:13:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:13:mux_i|int_Value1~combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:13:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X32_Y17_N22
\adder|adderloop:12:addr_i|o_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:12:addr_i|o_sum~0_combout\ = \productReg|reg1|perbitloop:13:dFF_i|int_q~q\ $ (\multiplicand|perbitloop:13:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \productReg|reg1|perbitloop:13:dFF_i|int_q~q\,
	datad => \multiplicand|perbitloop:13:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \adder|adderloop:12:addr_i|o_sum~0_combout\);

-- Location: LCCOMB_X32_Y17_N26
\adder|adderloop:12:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:12:addr_i|o_sum~combout\ = \adder|adderloop:12:addr_i|o_sum~0_combout\ $ (((\productReg|reg1|perbitloop:12:dFF_i|int_q~q\ & ((\multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\) # 
-- (\adder|adderloop:10:addr_i|o_carry~0_combout\))) # (!\productReg|reg1|perbitloop:12:dFF_i|int_q~q\ & (\multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\ & \adder|adderloop:10:addr_i|o_carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \productReg|reg1|perbitloop:12:dFF_i|int_q~q\,
	datab => \multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \adder|adderloop:12:addr_i|o_sum~0_combout\,
	datad => \adder|adderloop:10:addr_i|o_carry~0_combout\,
	combout => \adder|adderloop:12:addr_i|o_sum~combout\);

-- Location: FF_X32_Y17_N27
\productReg|reg1|perbitloop:13:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:12:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:13:dFF_i|int_q~q\);

-- Location: FF_X33_Y17_N13
\outputReg|perbitloop:13:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \productReg|reg1|perbitloop:13:dFF_i|int_q~q\,
	sload => VCC,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:13:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N26
\adder|adderloop:12:addr_i|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:12:addr_i|o_carry~0_combout\ = (\productReg|reg1|perbitloop:13:dFF_i|int_q~q\ & \multiplicand|perbitloop:13:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \productReg|reg1|perbitloop:13:dFF_i|int_q~q\,
	datad => \multiplicand|perbitloop:13:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \adder|adderloop:12:addr_i|o_carry~0_combout\);

-- Location: LCCOMB_X33_Y17_N4
\multiplicand|perbitloop:14:mux_i|int_Value1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:14:mux_i|int_Value1~combout\ = (\i_shift~input_o\ & \multiplicand|perbitloop:13:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_shift~input_o\,
	datad => \multiplicand|perbitloop:13:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplicand|perbitloop:14:mux_i|int_Value1~combout\);

-- Location: FF_X33_Y17_N5
\multiplicand|perbitloop:14:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:14:mux_i|int_Value1~combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:14:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X32_Y17_N20
\adder|adderloop:12:addr_i|o_carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:12:addr_i|o_carry~1_combout\ = (\productReg|reg1|perbitloop:13:dFF_i|int_q~q\) # (\multiplicand|perbitloop:13:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \productReg|reg1|perbitloop:13:dFF_i|int_q~q\,
	datad => \multiplicand|perbitloop:13:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \adder|adderloop:12:addr_i|o_carry~1_combout\);

-- Location: LCCOMB_X31_Y17_N24
\adder|adderloop:12:addr_i|o_carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:12:addr_i|o_carry~2_combout\ = (\adder|adderloop:12:addr_i|o_carry~1_combout\ & ((\multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\ & ((\productReg|reg1|perbitloop:12:dFF_i|int_q~q\) # 
-- (\adder|adderloop:10:addr_i|o_carry~0_combout\))) # (!\multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\ & (\productReg|reg1|perbitloop:12:dFF_i|int_q~q\ & \adder|adderloop:10:addr_i|o_carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|perbitloop:12:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datab => \productReg|reg1|perbitloop:12:dFF_i|int_q~q\,
	datac => \adder|adderloop:12:addr_i|o_carry~1_combout\,
	datad => \adder|adderloop:10:addr_i|o_carry~0_combout\,
	combout => \adder|adderloop:12:addr_i|o_carry~2_combout\);

-- Location: LCCOMB_X31_Y17_N4
\adder|adderloop:13:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:13:addr_i|o_sum~combout\ = \multiplicand|perbitloop:14:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (\productReg|reg1|perbitloop:14:dFF_i|int_q~q\ $ (((\adder|adderloop:12:addr_i|o_carry~0_combout\) # 
-- (\adder|adderloop:12:addr_i|o_carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderloop:12:addr_i|o_carry~0_combout\,
	datab => \multiplicand|perbitloop:14:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:14:dFF_i|int_q~q\,
	datad => \adder|adderloop:12:addr_i|o_carry~2_combout\,
	combout => \adder|adderloop:13:addr_i|o_sum~combout\);

-- Location: FF_X31_Y17_N5
\productReg|reg1|perbitloop:14:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:13:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:14:dFF_i|int_q~q\);

-- Location: LCCOMB_X31_Y18_N14
\outputReg|perbitloop:14:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:14:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:14:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:14:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:14:dFF_i|int_q~feeder_combout\);

-- Location: FF_X31_Y18_N15
\outputReg|perbitloop:14:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:14:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:14:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N24
\multiplicand|perbitloop:15:mux_i|int_Value1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:15:mux_i|int_Value1~combout\ = (\multiplicand|perbitloop:14:reg_i|perbitloop:1:dFF_i|int_q~q\ & \i_shift~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplicand|perbitloop:14:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \i_shift~input_o\,
	combout => \multiplicand|perbitloop:15:mux_i|int_Value1~combout\);

-- Location: FF_X33_Y17_N25
\multiplicand|perbitloop:15:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:15:mux_i|int_Value1~combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:15:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X31_Y17_N6
\adder|adderloop:14:addr_i|o_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:14:addr_i|o_sum~0_combout\ = (\multiplicand|perbitloop:14:reg_i|perbitloop:1:dFF_i|int_q~q\ & ((\adder|adderloop:12:addr_i|o_carry~0_combout\) # ((\productReg|reg1|perbitloop:14:dFF_i|int_q~q\) # 
-- (\adder|adderloop:12:addr_i|o_carry~2_combout\)))) # (!\multiplicand|perbitloop:14:reg_i|perbitloop:1:dFF_i|int_q~q\ & (\productReg|reg1|perbitloop:14:dFF_i|int_q~q\ & ((\adder|adderloop:12:addr_i|o_carry~0_combout\) # 
-- (\adder|adderloop:12:addr_i|o_carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|adderloop:12:addr_i|o_carry~0_combout\,
	datab => \multiplicand|perbitloop:14:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:14:dFF_i|int_q~q\,
	datad => \adder|adderloop:12:addr_i|o_carry~2_combout\,
	combout => \adder|adderloop:14:addr_i|o_sum~0_combout\);

-- Location: LCCOMB_X31_Y17_N22
\adder|adderloop:14:addr_i|o_sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:14:addr_i|o_sum~1_combout\ = \multiplicand|perbitloop:15:reg_i|perbitloop:1:dFF_i|int_q~q\ $ (\productReg|reg1|perbitloop:15:dFF_i|int_q~q\ $ (\adder|adderloop:14:addr_i|o_sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|perbitloop:15:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datac => \productReg|reg1|perbitloop:15:dFF_i|int_q~q\,
	datad => \adder|adderloop:14:addr_i|o_sum~0_combout\,
	combout => \adder|adderloop:14:addr_i|o_sum~1_combout\);

-- Location: FF_X31_Y17_N23
\productReg|reg1|perbitloop:15:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:14:addr_i|o_sum~1_combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:15:dFF_i|int_q~q\);

-- Location: LCCOMB_X31_Y18_N4
\outputReg|perbitloop:15:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:15:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:15:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:15:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:15:dFF_i|int_q~feeder_combout\);

-- Location: FF_X31_Y18_N5
\outputReg|perbitloop:15:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:15:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:15:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N6
\multiplicand|perbitloop:16:mux_i|int_Value1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicand|perbitloop:16:mux_i|int_Value1~combout\ = (\i_shift~input_o\ & \multiplicand|perbitloop:15:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_shift~input_o\,
	datad => \multiplicand|perbitloop:15:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \multiplicand|perbitloop:16:mux_i|int_Value1~combout\);

-- Location: FF_X33_Y17_N7
\multiplicand|perbitloop:16:reg_i|perbitloop:1:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \multiplicand|perbitloop:16:mux_i|int_Value1~combout\,
	ena => \multiplier|int_load_shiftr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand|perbitloop:16:reg_i|perbitloop:1:dFF_i|int_q~q\);

-- Location: LCCOMB_X32_Y17_N10
\adder|adderloop:15:addr_i|o_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:15:addr_i|o_sum~0_combout\ = \productReg|reg1|perbitloop:16:dFF_i|int_q~q\ $ (\multiplicand|perbitloop:16:reg_i|perbitloop:1:dFF_i|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \productReg|reg1|perbitloop:16:dFF_i|int_q~q\,
	datad => \multiplicand|perbitloop:16:reg_i|perbitloop:1:dFF_i|int_q~q\,
	combout => \adder|adderloop:15:addr_i|o_sum~0_combout\);

-- Location: LCCOMB_X31_Y17_N16
\adder|adderloop:15:addr_i|o_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|adderloop:15:addr_i|o_sum~combout\ = \adder|adderloop:15:addr_i|o_sum~0_combout\ $ (((\multiplicand|perbitloop:15:reg_i|perbitloop:1:dFF_i|int_q~q\ & ((\productReg|reg1|perbitloop:15:dFF_i|int_q~q\) # (\adder|adderloop:14:addr_i|o_sum~0_combout\))) 
-- # (!\multiplicand|perbitloop:15:reg_i|perbitloop:1:dFF_i|int_q~q\ & (\productReg|reg1|perbitloop:15:dFF_i|int_q~q\ & \adder|adderloop:14:addr_i|o_sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand|perbitloop:15:reg_i|perbitloop:1:dFF_i|int_q~q\,
	datab => \adder|adderloop:15:addr_i|o_sum~0_combout\,
	datac => \productReg|reg1|perbitloop:15:dFF_i|int_q~q\,
	datad => \adder|adderloop:14:addr_i|o_sum~0_combout\,
	combout => \adder|adderloop:15:addr_i|o_sum~combout\);

-- Location: FF_X31_Y17_N17
\productReg|reg1|perbitloop:16:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \adder|adderloop:15:addr_i|o_sum~combout\,
	sclr => \i_initialize~input_o\,
	ena => \productReg|reg1|perbitloop:16:dFF_i|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \productReg|reg1|perbitloop:16:dFF_i|int_q~q\);

-- Location: LCCOMB_X33_Y17_N30
\outputReg|perbitloop:16:dFF_i|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputReg|perbitloop:16:dFF_i|int_q~feeder_combout\ = \productReg|reg1|perbitloop:16:dFF_i|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \productReg|reg1|perbitloop:16:dFF_i|int_q~q\,
	combout => \outputReg|perbitloop:16:dFF_i|int_q~feeder_combout\);

-- Location: FF_X33_Y17_N31
\outputReg|perbitloop:16:dFF_i|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \outputReg|perbitloop:16:dFF_i|int_q~feeder_combout\,
	ena => \i_loadOut~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputReg|perbitloop:16:dFF_i|int_q~q\);

ww_o_multiplier_LSB <= \o_multiplier_LSB~output_o\;

ww_o_multiplier_second_LSB <= \o_multiplier_second_LSB~output_o\;

ww_o_countDone <= \o_countDone~output_o\;

ww_o_product(0) <= \o_product[0]~output_o\;

ww_o_product(1) <= \o_product[1]~output_o\;

ww_o_product(2) <= \o_product[2]~output_o\;

ww_o_product(3) <= \o_product[3]~output_o\;

ww_o_product(4) <= \o_product[4]~output_o\;

ww_o_product(5) <= \o_product[5]~output_o\;

ww_o_product(6) <= \o_product[6]~output_o\;

ww_o_product(7) <= \o_product[7]~output_o\;

ww_o_product(8) <= \o_product[8]~output_o\;

ww_o_product(9) <= \o_product[9]~output_o\;

ww_o_product(10) <= \o_product[10]~output_o\;

ww_o_product(11) <= \o_product[11]~output_o\;

ww_o_product(12) <= \o_product[12]~output_o\;

ww_o_product(13) <= \o_product[13]~output_o\;

ww_o_product(14) <= \o_product[14]~output_o\;

ww_o_product(15) <= \o_product[15]~output_o\;
END structure;


