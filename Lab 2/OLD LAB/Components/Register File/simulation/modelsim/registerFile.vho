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

-- DATE "03/16/2023 12:32:27"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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

ENTITY 	registerFile IS
    PORT (
	i_gReset : IN std_logic;
	i_clock : IN std_logic;
	i_regWrite : IN std_logic;
	i_readRegister1 : IN std_logic_vector(2 DOWNTO 0);
	i_readRegister2 : IN std_logic_vector(2 DOWNTO 0);
	i_writeRegister : IN std_logic_vector(2 DOWNTO 0);
	i_writeData : IN std_logic_vector(7 DOWNTO 0);
	o_readData1 : OUT std_logic_vector(7 DOWNTO 0);
	o_readData2 : OUT std_logic_vector(7 DOWNTO 0)
	);
END registerFile;

-- Design Ports Information
-- o_readData1[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData1[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData1[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData1[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData1[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData1[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData1[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData1[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData2[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData2[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData2[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData2[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData2[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData2[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData2[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_readData2[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_readRegister1[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_readRegister1[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_readRegister1[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_readRegister2[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_readRegister2[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_readRegister2[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_writeData[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_gReset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_writeRegister[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_writeRegister[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_writeRegister[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_regWrite	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_writeData[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_writeData[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_writeData[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_writeData[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_writeData[5]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_writeData[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_writeData[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registerFile IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_gReset : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_regWrite : std_logic;
SIGNAL ww_i_readRegister1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_i_readRegister2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_i_writeRegister : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_i_writeData : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_readData1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_readData2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_gReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register4|bit0|int_q~q\ : std_logic;
SIGNAL \register0|bit0|int_q~q\ : std_logic;
SIGNAL \register1|bit2|int_q~q\ : std_logic;
SIGNAL \register0|bit2|int_q~q\ : std_logic;
SIGNAL \readData1|Mux5~2_combout\ : std_logic;
SIGNAL \readData1|Mux2~0_combout\ : std_logic;
SIGNAL \readData1|Mux1~0_combout\ : std_logic;
SIGNAL \readData1|Mux0~0_combout\ : std_logic;
SIGNAL \register0|bit7|int_q~q\ : std_logic;
SIGNAL \readData2|Mux7~0_combout\ : std_logic;
SIGNAL \readData2|Mux7~2_combout\ : std_logic;
SIGNAL \readData2|Mux6~2_combout\ : std_logic;
SIGNAL \readData2|Mux5~2_combout\ : std_logic;
SIGNAL \readData2|Mux4~0_combout\ : std_logic;
SIGNAL \readData2|Mux4~2_combout\ : std_logic;
SIGNAL \readData2|Mux3~0_combout\ : std_logic;
SIGNAL \readData2|Mux3~2_combout\ : std_logic;
SIGNAL \readData2|Mux0~2_combout\ : std_logic;
SIGNAL \i_clock~input_o\ : std_logic;
SIGNAL \i_writeRegister[2]~input_o\ : std_logic;
SIGNAL \i_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \o_readData1[0]~output_o\ : std_logic;
SIGNAL \o_readData1[1]~output_o\ : std_logic;
SIGNAL \o_readData1[2]~output_o\ : std_logic;
SIGNAL \o_readData1[3]~output_o\ : std_logic;
SIGNAL \o_readData1[4]~output_o\ : std_logic;
SIGNAL \o_readData1[5]~output_o\ : std_logic;
SIGNAL \o_readData1[6]~output_o\ : std_logic;
SIGNAL \o_readData1[7]~output_o\ : std_logic;
SIGNAL \o_readData2[0]~output_o\ : std_logic;
SIGNAL \o_readData2[1]~output_o\ : std_logic;
SIGNAL \o_readData2[2]~output_o\ : std_logic;
SIGNAL \o_readData2[3]~output_o\ : std_logic;
SIGNAL \o_readData2[4]~output_o\ : std_logic;
SIGNAL \o_readData2[5]~output_o\ : std_logic;
SIGNAL \o_readData2[6]~output_o\ : std_logic;
SIGNAL \o_readData2[7]~output_o\ : std_logic;
SIGNAL \i_readRegister1[1]~input_o\ : std_logic;
SIGNAL \i_writeData[0]~input_o\ : std_logic;
SIGNAL \i_gReset~input_o\ : std_logic;
SIGNAL \i_gReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_writeRegister[0]~input_o\ : std_logic;
SIGNAL \i_writeRegister[1]~input_o\ : std_logic;
SIGNAL \i_regWrite~input_o\ : std_logic;
SIGNAL \decoder|Mux7~1_combout\ : std_logic;
SIGNAL \register6|bit0|int_q~q\ : std_logic;
SIGNAL \i_readRegister1[0]~input_o\ : std_logic;
SIGNAL \readData1|Mux7~0_combout\ : std_logic;
SIGNAL \decoder|Mux7~0_combout\ : std_logic;
SIGNAL \register5|bit0|int_q~q\ : std_logic;
SIGNAL \readData1|Mux7~1_combout\ : std_logic;
SIGNAL \decoder|Mux7~7_combout\ : std_logic;
SIGNAL \register3|bit0|int_q~q\ : std_logic;
SIGNAL \decoder|Mux7~4_combout\ : std_logic;
SIGNAL \register2|bit0|int_q~q\ : std_logic;
SIGNAL \decoder|Mux7~5_combout\ : std_logic;
SIGNAL \register1|bit0|int_q~q\ : std_logic;
SIGNAL \readData1|Mux7~2_combout\ : std_logic;
SIGNAL \readData1|Mux7~3_combout\ : std_logic;
SIGNAL \i_readRegister1[2]~input_o\ : std_logic;
SIGNAL \readData1|Mux7~4_combout\ : std_logic;
SIGNAL \i_writeData[1]~input_o\ : std_logic;
SIGNAL \register3|bit1|int_q~q\ : std_logic;
SIGNAL \register2|bit1|int_q~q\ : std_logic;
SIGNAL \register1|bit1|int_q~q\ : std_logic;
SIGNAL \decoder|Mux7~6_combout\ : std_logic;
SIGNAL \register0|bit1|int_q~q\ : std_logic;
SIGNAL \readData1|Mux6~2_combout\ : std_logic;
SIGNAL \readData1|Mux6~3_combout\ : std_logic;
SIGNAL \decoder|Mux7~3_combout\ : std_logic;
SIGNAL \register7|bit1|int_q~q\ : std_logic;
SIGNAL \register5|bit1|int_q~q\ : std_logic;
SIGNAL \register6|bit1|int_q~q\ : std_logic;
SIGNAL \readData1|Mux6~0_combout\ : std_logic;
SIGNAL \readData1|Mux6~1_combout\ : std_logic;
SIGNAL \readData1|Mux6~4_combout\ : std_logic;
SIGNAL \i_writeData[2]~input_o\ : std_logic;
SIGNAL \register7|bit2|int_q~q\ : std_logic;
SIGNAL \register5|bit2|int_q~q\ : std_logic;
SIGNAL \register6|bit2|int_q~q\ : std_logic;
SIGNAL \decoder|Mux7~2_combout\ : std_logic;
SIGNAL \register4|bit2|int_q~q\ : std_logic;
SIGNAL \readData1|Mux5~0_combout\ : std_logic;
SIGNAL \readData1|Mux5~1_combout\ : std_logic;
SIGNAL \register2|bit2|int_q~q\ : std_logic;
SIGNAL \register3|bit2|int_q~q\ : std_logic;
SIGNAL \readData1|Mux5~3_combout\ : std_logic;
SIGNAL \readData1|Mux5~4_combout\ : std_logic;
SIGNAL \i_writeData[3]~input_o\ : std_logic;
SIGNAL \register6|bit3|int_q~q\ : std_logic;
SIGNAL \register4|bit3|int_q~q\ : std_logic;
SIGNAL \readData1|Mux4~0_combout\ : std_logic;
SIGNAL \register5|bit3|int_q~q\ : std_logic;
SIGNAL \register7|bit3|int_q~q\ : std_logic;
SIGNAL \readData1|Mux4~1_combout\ : std_logic;
SIGNAL \register2|bit3|int_q~q\ : std_logic;
SIGNAL \register0|bit3|int_q~q\ : std_logic;
SIGNAL \register1|bit3|int_q~q\ : std_logic;
SIGNAL \readData1|Mux4~2_combout\ : std_logic;
SIGNAL \readData1|Mux4~3_combout\ : std_logic;
SIGNAL \readData1|Mux4~4_combout\ : std_logic;
SIGNAL \i_writeData[4]~input_o\ : std_logic;
SIGNAL \register1|bit4|int_q~q\ : std_logic;
SIGNAL \register0|bit4|int_q~q\ : std_logic;
SIGNAL \readData1|Mux3~2_combout\ : std_logic;
SIGNAL \register2|bit4|int_q~q\ : std_logic;
SIGNAL \readData1|Mux3~3_combout\ : std_logic;
SIGNAL \register5|bit4|int_q~q\ : std_logic;
SIGNAL \register6|bit4|int_q~q\ : std_logic;
SIGNAL \register4|bit4|int_q~q\ : std_logic;
SIGNAL \readData1|Mux3~0_combout\ : std_logic;
SIGNAL \readData1|Mux3~1_combout\ : std_logic;
SIGNAL \readData1|Mux3~4_combout\ : std_logic;
SIGNAL \i_writeData[5]~input_o\ : std_logic;
SIGNAL \register1|bit5|int_q~q\ : std_logic;
SIGNAL \readData1|Mux2~2_combout\ : std_logic;
SIGNAL \register2|bit5|int_q~q\ : std_logic;
SIGNAL \readData1|Mux2~3_combout\ : std_logic;
SIGNAL \register5|bit5|int_q~q\ : std_logic;
SIGNAL \register7|bit5|int_q~q\ : std_logic;
SIGNAL \readData1|Mux2~1_combout\ : std_logic;
SIGNAL \readData1|Mux2~4_combout\ : std_logic;
SIGNAL \i_writeData[6]~input_o\ : std_logic;
SIGNAL \register2|bit6|int_q~q\ : std_logic;
SIGNAL \register1|bit6|int_q~q\ : std_logic;
SIGNAL \register0|bit6|int_q~q\ : std_logic;
SIGNAL \readData1|Mux1~2_combout\ : std_logic;
SIGNAL \readData1|Mux1~3_combout\ : std_logic;
SIGNAL \register5|bit6|int_q~q\ : std_logic;
SIGNAL \register7|bit6|int_q~q\ : std_logic;
SIGNAL \readData1|Mux1~1_combout\ : std_logic;
SIGNAL \readData1|Mux1~4_combout\ : std_logic;
SIGNAL \i_writeData[7]~input_o\ : std_logic;
SIGNAL \register5|bit7|int_q~q\ : std_logic;
SIGNAL \register7|bit7|int_q~q\ : std_logic;
SIGNAL \readData1|Mux0~1_combout\ : std_logic;
SIGNAL \register2|bit7|int_q~q\ : std_logic;
SIGNAL \register1|bit7|int_q~q\ : std_logic;
SIGNAL \readData1|Mux0~2_combout\ : std_logic;
SIGNAL \readData1|Mux0~3_combout\ : std_logic;
SIGNAL \readData1|Mux0~4_combout\ : std_logic;
SIGNAL \i_readRegister2[2]~input_o\ : std_logic;
SIGNAL \i_readRegister2[1]~input_o\ : std_logic;
SIGNAL \readData2|Mux7~3_combout\ : std_logic;
SIGNAL \register7|bit0|int_q~q\ : std_logic;
SIGNAL \i_readRegister2[0]~input_o\ : std_logic;
SIGNAL \readData2|Mux7~1_combout\ : std_logic;
SIGNAL \readData2|Mux7~4_combout\ : std_logic;
SIGNAL \readData2|Mux6~3_combout\ : std_logic;
SIGNAL \register4|bit1|int_q~q\ : std_logic;
SIGNAL \readData2|Mux6~0_combout\ : std_logic;
SIGNAL \readData2|Mux6~1_combout\ : std_logic;
SIGNAL \readData2|Mux6~4_combout\ : std_logic;
SIGNAL \readData2|Mux5~3_combout\ : std_logic;
SIGNAL \readData2|Mux5~0_combout\ : std_logic;
SIGNAL \readData2|Mux5~1_combout\ : std_logic;
SIGNAL \readData2|Mux5~4_combout\ : std_logic;
SIGNAL \register3|bit3|int_q~q\ : std_logic;
SIGNAL \readData2|Mux4~3_combout\ : std_logic;
SIGNAL \readData2|Mux4~1_combout\ : std_logic;
SIGNAL \readData2|Mux4~4_combout\ : std_logic;
SIGNAL \register3|bit4|int_q~q\ : std_logic;
SIGNAL \readData2|Mux3~3_combout\ : std_logic;
SIGNAL \register7|bit4|int_q~q\ : std_logic;
SIGNAL \readData2|Mux3~1_combout\ : std_logic;
SIGNAL \readData2|Mux3~4_combout\ : std_logic;
SIGNAL \register4|bit5|int_q~q\ : std_logic;
SIGNAL \register6|bit5|int_q~q\ : std_logic;
SIGNAL \readData2|Mux2~0_combout\ : std_logic;
SIGNAL \readData2|Mux2~1_combout\ : std_logic;
SIGNAL \register0|bit5|int_q~q\ : std_logic;
SIGNAL \readData2|Mux2~2_combout\ : std_logic;
SIGNAL \register3|bit5|int_q~q\ : std_logic;
SIGNAL \readData2|Mux2~3_combout\ : std_logic;
SIGNAL \readData2|Mux2~4_combout\ : std_logic;
SIGNAL \readData2|Mux1~2_combout\ : std_logic;
SIGNAL \register3|bit6|int_q~q\ : std_logic;
SIGNAL \readData2|Mux1~3_combout\ : std_logic;
SIGNAL \register6|bit6|int_q~q\ : std_logic;
SIGNAL \register4|bit6|int_q~q\ : std_logic;
SIGNAL \readData2|Mux1~0_combout\ : std_logic;
SIGNAL \readData2|Mux1~1_combout\ : std_logic;
SIGNAL \readData2|Mux1~4_combout\ : std_logic;
SIGNAL \register3|bit7|int_q~q\ : std_logic;
SIGNAL \readData2|Mux0~3_combout\ : std_logic;
SIGNAL \register6|bit7|int_q~q\ : std_logic;
SIGNAL \register4|bit7|int_q~q\ : std_logic;
SIGNAL \readData2|Mux0~0_combout\ : std_logic;
SIGNAL \readData2|Mux0~1_combout\ : std_logic;
SIGNAL \readData2|Mux0~4_combout\ : std_logic;

BEGIN

ww_i_gReset <= i_gReset;
ww_i_clock <= i_clock;
ww_i_regWrite <= i_regWrite;
ww_i_readRegister1 <= i_readRegister1;
ww_i_readRegister2 <= i_readRegister2;
ww_i_writeRegister <= i_writeRegister;
ww_i_writeData <= i_writeData;
o_readData1 <= ww_o_readData1;
o_readData2 <= ww_o_readData2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_gReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_gReset~input_o\);

\i_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clock~input_o\);

-- Location: FF_X25_Y18_N27
\register4|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[0]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register4|bit0|int_q~q\);

-- Location: FF_X27_Y16_N27
\register0|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[0]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register0|bit0|int_q~q\);

-- Location: FF_X27_Y16_N9
\register1|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[2]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register1|bit2|int_q~q\);

-- Location: FF_X27_Y16_N11
\register0|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[2]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register0|bit2|int_q~q\);

-- Location: LCCOMB_X27_Y16_N8
\readData1|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux5~2_combout\ = (\i_readRegister1[1]~input_o\ & (\i_readRegister1[0]~input_o\)) # (!\i_readRegister1[1]~input_o\ & ((\i_readRegister1[0]~input_o\ & (\register1|bit2|int_q~q\)) # (!\i_readRegister1[0]~input_o\ & ((\register0|bit2|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[1]~input_o\,
	datab => \i_readRegister1[0]~input_o\,
	datac => \register1|bit2|int_q~q\,
	datad => \register0|bit2|int_q~q\,
	combout => \readData1|Mux5~2_combout\);

-- Location: LCCOMB_X25_Y18_N12
\readData1|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux2~0_combout\ = (\i_readRegister1[1]~input_o\ & (((\register6|bit5|int_q~q\) # (\i_readRegister1[0]~input_o\)))) # (!\i_readRegister1[1]~input_o\ & (\register4|bit5|int_q~q\ & ((!\i_readRegister1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register4|bit5|int_q~q\,
	datab => \i_readRegister1[1]~input_o\,
	datac => \register6|bit5|int_q~q\,
	datad => \i_readRegister1[0]~input_o\,
	combout => \readData1|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y18_N8
\readData1|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux1~0_combout\ = (\i_readRegister1[0]~input_o\ & (\i_readRegister1[1]~input_o\)) # (!\i_readRegister1[0]~input_o\ & ((\i_readRegister1[1]~input_o\ & (\register6|bit6|int_q~q\)) # (!\i_readRegister1[1]~input_o\ & ((\register4|bit6|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[0]~input_o\,
	datab => \i_readRegister1[1]~input_o\,
	datac => \register6|bit6|int_q~q\,
	datad => \register4|bit6|int_q~q\,
	combout => \readData1|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y18_N28
\readData1|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux0~0_combout\ = (\i_readRegister1[0]~input_o\ & (((\i_readRegister1[1]~input_o\)))) # (!\i_readRegister1[0]~input_o\ & ((\i_readRegister1[1]~input_o\ & ((\register6|bit7|int_q~q\))) # (!\i_readRegister1[1]~input_o\ & 
-- (\register4|bit7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[0]~input_o\,
	datab => \register4|bit7|int_q~q\,
	datac => \register6|bit7|int_q~q\,
	datad => \i_readRegister1[1]~input_o\,
	combout => \readData1|Mux0~0_combout\);

-- Location: FF_X27_Y16_N23
\register0|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[7]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register0|bit7|int_q~q\);

-- Location: LCCOMB_X25_Y18_N26
\readData2|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux7~0_combout\ = (\i_readRegister2[0]~input_o\ & (((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & ((\i_readRegister2[1]~input_o\ & (\register6|bit0|int_q~q\)) # (!\i_readRegister2[1]~input_o\ & 
-- ((\register4|bit0|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register6|bit0|int_q~q\,
	datac => \register4|bit0|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux7~0_combout\);

-- Location: LCCOMB_X27_Y16_N26
\readData2|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux7~2_combout\ = (\i_readRegister2[0]~input_o\ & ((\register1|bit0|int_q~q\) # ((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & (((\register0|bit0|int_q~q\ & !\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register1|bit0|int_q~q\,
	datac => \register0|bit0|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux7~2_combout\);

-- Location: LCCOMB_X27_Y16_N6
\readData2|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux6~2_combout\ = (\i_readRegister2[0]~input_o\ & ((\i_readRegister2[1]~input_o\) # ((\register1|bit1|int_q~q\)))) # (!\i_readRegister2[0]~input_o\ & (!\i_readRegister2[1]~input_o\ & (\register0|bit1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \i_readRegister2[1]~input_o\,
	datac => \register0|bit1|int_q~q\,
	datad => \register1|bit1|int_q~q\,
	combout => \readData2|Mux6~2_combout\);

-- Location: LCCOMB_X27_Y16_N10
\readData2|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux5~2_combout\ = (\i_readRegister2[0]~input_o\ & ((\register1|bit2|int_q~q\) # ((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & (((\register0|bit2|int_q~q\ & !\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register1|bit2|int_q~q\,
	datac => \register0|bit2|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux5~2_combout\);

-- Location: LCCOMB_X25_Y18_N6
\readData2|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux4~0_combout\ = (\i_readRegister2[0]~input_o\ & (((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & ((\i_readRegister2[1]~input_o\ & (\register6|bit3|int_q~q\)) # (!\i_readRegister2[1]~input_o\ & 
-- ((\register4|bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register6|bit3|int_q~q\,
	datac => \register4|bit3|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y16_N14
\readData2|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux4~2_combout\ = (\i_readRegister2[0]~input_o\ & ((\register1|bit3|int_q~q\) # ((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & (((\register0|bit3|int_q~q\ & !\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register1|bit3|int_q~q\,
	datac => \register0|bit3|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux4~2_combout\);

-- Location: LCCOMB_X25_Y18_N2
\readData2|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux3~0_combout\ = (\i_readRegister2[0]~input_o\ & (((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & ((\i_readRegister2[1]~input_o\ & (\register6|bit4|int_q~q\)) # (!\i_readRegister2[1]~input_o\ & 
-- ((\register4|bit4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register6|bit4|int_q~q\,
	datac => \register4|bit4|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y16_N2
\readData2|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux3~2_combout\ = (\i_readRegister2[0]~input_o\ & ((\register1|bit4|int_q~q\) # ((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & (((\register0|bit4|int_q~q\ & !\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register1|bit4|int_q~q\,
	datac => \register0|bit4|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux3~2_combout\);

-- Location: LCCOMB_X27_Y16_N22
\readData2|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux0~2_combout\ = (\i_readRegister2[0]~input_o\ & ((\i_readRegister2[1]~input_o\) # ((\register1|bit7|int_q~q\)))) # (!\i_readRegister2[0]~input_o\ & (!\i_readRegister2[1]~input_o\ & (\register0|bit7|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \i_readRegister2[1]~input_o\,
	datac => \register0|bit7|int_q~q\,
	datad => \register1|bit7|int_q~q\,
	combout => \readData2|Mux0~2_combout\);

-- Location: IOIBUF_X16_Y0_N15
\i_clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clock,
	o => \i_clock~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\i_writeRegister[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_writeRegister(2),
	o => \i_writeRegister[2]~input_o\);

-- Location: CLKCTRL_G17
\i_clock~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOOBUF_X22_Y0_N2
\o_readData1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData1|Mux7~4_combout\,
	devoe => ww_devoe,
	o => \o_readData1[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\o_readData1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData1|Mux6~4_combout\,
	devoe => ww_devoe,
	o => \o_readData1[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\o_readData1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData1|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \o_readData1[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\o_readData1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData1|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \o_readData1[3]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\o_readData1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData1|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \o_readData1[4]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\o_readData1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData1|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \o_readData1[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\o_readData1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData1|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \o_readData1[6]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\o_readData1[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData1|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \o_readData1[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\o_readData2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData2|Mux7~4_combout\,
	devoe => ww_devoe,
	o => \o_readData2[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\o_readData2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData2|Mux6~4_combout\,
	devoe => ww_devoe,
	o => \o_readData2[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\o_readData2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData2|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \o_readData2[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\o_readData2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData2|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \o_readData2[3]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\o_readData2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData2|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \o_readData2[4]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\o_readData2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData2|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \o_readData2[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\o_readData2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData2|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \o_readData2[6]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\o_readData2[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readData2|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \o_readData2[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N1
\i_readRegister1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_readRegister1(1),
	o => \i_readRegister1[1]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\i_writeData[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_writeData(0),
	o => \i_writeData[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\i_gReset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_gReset,
	o => \i_gReset~input_o\);

-- Location: CLKCTRL_G19
\i_gReset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_gReset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_gReset~inputclkctrl_outclk\);

-- Location: IOIBUF_X26_Y31_N1
\i_writeRegister[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_writeRegister(0),
	o => \i_writeRegister[0]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\i_writeRegister[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_writeRegister(1),
	o => \i_writeRegister[1]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\i_regWrite~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_regWrite,
	o => \i_regWrite~input_o\);

-- Location: LCCOMB_X26_Y20_N18
\decoder|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|Mux7~1_combout\ = (\i_writeRegister[2]~input_o\ & (!\i_writeRegister[0]~input_o\ & (\i_writeRegister[1]~input_o\ & \i_regWrite~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_writeRegister[2]~input_o\,
	datab => \i_writeRegister[0]~input_o\,
	datac => \i_writeRegister[1]~input_o\,
	datad => \i_regWrite~input_o\,
	combout => \decoder|Mux7~1_combout\);

-- Location: FF_X25_Y18_N17
\register6|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[0]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register6|bit0|int_q~q\);

-- Location: IOIBUF_X16_Y0_N8
\i_readRegister1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_readRegister1(0),
	o => \i_readRegister1[0]~input_o\);

-- Location: LCCOMB_X25_Y18_N16
\readData1|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux7~0_combout\ = (\i_readRegister1[1]~input_o\ & (((\register6|bit0|int_q~q\) # (\i_readRegister1[0]~input_o\)))) # (!\i_readRegister1[1]~input_o\ & (\register4|bit0|int_q~q\ & ((!\i_readRegister1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register4|bit0|int_q~q\,
	datab => \i_readRegister1[1]~input_o\,
	datac => \register6|bit0|int_q~q\,
	datad => \i_readRegister1[0]~input_o\,
	combout => \readData1|Mux7~0_combout\);

-- Location: LCCOMB_X26_Y20_N16
\decoder|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|Mux7~0_combout\ = (\i_writeRegister[2]~input_o\ & (\i_writeRegister[0]~input_o\ & (!\i_writeRegister[1]~input_o\ & \i_regWrite~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_writeRegister[2]~input_o\,
	datab => \i_writeRegister[0]~input_o\,
	datac => \i_writeRegister[1]~input_o\,
	datad => \i_regWrite~input_o\,
	combout => \decoder|Mux7~0_combout\);

-- Location: FF_X25_Y16_N17
\register5|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[0]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register5|bit0|int_q~q\);

-- Location: LCCOMB_X25_Y16_N16
\readData1|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux7~1_combout\ = (\readData1|Mux7~0_combout\ & ((\register7|bit0|int_q~q\) # ((!\i_readRegister1[0]~input_o\)))) # (!\readData1|Mux7~0_combout\ & (((\register5|bit0|int_q~q\ & \i_readRegister1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register7|bit0|int_q~q\,
	datab => \readData1|Mux7~0_combout\,
	datac => \register5|bit0|int_q~q\,
	datad => \i_readRegister1[0]~input_o\,
	combout => \readData1|Mux7~1_combout\);

-- Location: LCCOMB_X26_Y20_N14
\decoder|Mux7~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|Mux7~7_combout\ = (!\i_writeRegister[2]~input_o\ & (\i_writeRegister[0]~input_o\ & (\i_writeRegister[1]~input_o\ & \i_regWrite~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_writeRegister[2]~input_o\,
	datab => \i_writeRegister[0]~input_o\,
	datac => \i_writeRegister[1]~input_o\,
	datad => \i_regWrite~input_o\,
	combout => \decoder|Mux7~7_combout\);

-- Location: FF_X26_Y16_N3
\register3|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[0]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register3|bit0|int_q~q\);

-- Location: LCCOMB_X26_Y20_N24
\decoder|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|Mux7~4_combout\ = (!\i_writeRegister[2]~input_o\ & (!\i_writeRegister[0]~input_o\ & (\i_writeRegister[1]~input_o\ & \i_regWrite~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_writeRegister[2]~input_o\,
	datab => \i_writeRegister[0]~input_o\,
	datac => \i_writeRegister[1]~input_o\,
	datad => \i_regWrite~input_o\,
	combout => \decoder|Mux7~4_combout\);

-- Location: FF_X26_Y16_N25
\register2|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[0]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register2|bit0|int_q~q\);

-- Location: LCCOMB_X26_Y20_N10
\decoder|Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|Mux7~5_combout\ = (!\i_writeRegister[2]~input_o\ & (\i_writeRegister[0]~input_o\ & (!\i_writeRegister[1]~input_o\ & \i_regWrite~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_writeRegister[2]~input_o\,
	datab => \i_writeRegister[0]~input_o\,
	datac => \i_writeRegister[1]~input_o\,
	datad => \i_regWrite~input_o\,
	combout => \decoder|Mux7~5_combout\);

-- Location: FF_X27_Y16_N25
\register1|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[0]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register1|bit0|int_q~q\);

-- Location: LCCOMB_X27_Y16_N24
\readData1|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux7~2_combout\ = (\i_readRegister1[0]~input_o\ & (((\register1|bit0|int_q~q\) # (\i_readRegister1[1]~input_o\)))) # (!\i_readRegister1[0]~input_o\ & (\register0|bit0|int_q~q\ & ((!\i_readRegister1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register0|bit0|int_q~q\,
	datab => \i_readRegister1[0]~input_o\,
	datac => \register1|bit0|int_q~q\,
	datad => \i_readRegister1[1]~input_o\,
	combout => \readData1|Mux7~2_combout\);

-- Location: LCCOMB_X26_Y16_N24
\readData1|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux7~3_combout\ = (\i_readRegister1[1]~input_o\ & ((\readData1|Mux7~2_combout\ & (\register3|bit0|int_q~q\)) # (!\readData1|Mux7~2_combout\ & ((\register2|bit0|int_q~q\))))) # (!\i_readRegister1[1]~input_o\ & (((\readData1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[1]~input_o\,
	datab => \register3|bit0|int_q~q\,
	datac => \register2|bit0|int_q~q\,
	datad => \readData1|Mux7~2_combout\,
	combout => \readData1|Mux7~3_combout\);

-- Location: IOIBUF_X33_Y14_N8
\i_readRegister1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_readRegister1(2),
	o => \i_readRegister1[2]~input_o\);

-- Location: LCCOMB_X25_Y16_N4
\readData1|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux7~4_combout\ = (\i_readRegister1[2]~input_o\ & (\readData1|Mux7~1_combout\)) # (!\i_readRegister1[2]~input_o\ & ((\readData1|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData1|Mux7~1_combout\,
	datab => \readData1|Mux7~3_combout\,
	datad => \i_readRegister1[2]~input_o\,
	combout => \readData1|Mux7~4_combout\);

-- Location: IOIBUF_X33_Y15_N1
\i_writeData[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_writeData(1),
	o => \i_writeData[1]~input_o\);

-- Location: FF_X26_Y16_N15
\register3|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[1]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register3|bit1|int_q~q\);

-- Location: FF_X26_Y16_N5
\register2|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[1]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register2|bit1|int_q~q\);

-- Location: FF_X27_Y16_N29
\register1|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[1]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register1|bit1|int_q~q\);

-- Location: LCCOMB_X26_Y20_N20
\decoder|Mux7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|Mux7~6_combout\ = (!\i_writeRegister[2]~input_o\ & (!\i_writeRegister[0]~input_o\ & (!\i_writeRegister[1]~input_o\ & \i_regWrite~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_writeRegister[2]~input_o\,
	datab => \i_writeRegister[0]~input_o\,
	datac => \i_writeRegister[1]~input_o\,
	datad => \i_regWrite~input_o\,
	combout => \decoder|Mux7~6_combout\);

-- Location: FF_X27_Y16_N7
\register0|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[1]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register0|bit1|int_q~q\);

-- Location: LCCOMB_X27_Y16_N28
\readData1|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux6~2_combout\ = (\i_readRegister1[1]~input_o\ & (\i_readRegister1[0]~input_o\)) # (!\i_readRegister1[1]~input_o\ & ((\i_readRegister1[0]~input_o\ & (\register1|bit1|int_q~q\)) # (!\i_readRegister1[0]~input_o\ & ((\register0|bit1|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[1]~input_o\,
	datab => \i_readRegister1[0]~input_o\,
	datac => \register1|bit1|int_q~q\,
	datad => \register0|bit1|int_q~q\,
	combout => \readData1|Mux6~2_combout\);

-- Location: LCCOMB_X26_Y16_N4
\readData1|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux6~3_combout\ = (\i_readRegister1[1]~input_o\ & ((\readData1|Mux6~2_combout\ & (\register3|bit1|int_q~q\)) # (!\readData1|Mux6~2_combout\ & ((\register2|bit1|int_q~q\))))) # (!\i_readRegister1[1]~input_o\ & (((\readData1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[1]~input_o\,
	datab => \register3|bit1|int_q~q\,
	datac => \register2|bit1|int_q~q\,
	datad => \readData1|Mux6~2_combout\,
	combout => \readData1|Mux6~3_combout\);

-- Location: LCCOMB_X26_Y20_N6
\decoder|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|Mux7~3_combout\ = (\i_writeRegister[2]~input_o\ & (\i_writeRegister[0]~input_o\ & (\i_writeRegister[1]~input_o\ & \i_regWrite~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_writeRegister[2]~input_o\,
	datab => \i_writeRegister[0]~input_o\,
	datac => \i_writeRegister[1]~input_o\,
	datad => \i_regWrite~input_o\,
	combout => \decoder|Mux7~3_combout\);

-- Location: FF_X25_Y16_N1
\register7|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[1]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register7|bit1|int_q~q\);

-- Location: FF_X25_Y16_N31
\register5|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[1]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register5|bit1|int_q~q\);

-- Location: FF_X25_Y18_N21
\register6|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[1]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register6|bit1|int_q~q\);

-- Location: LCCOMB_X25_Y18_N20
\readData1|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux6~0_combout\ = (\i_readRegister1[1]~input_o\ & (((\register6|bit1|int_q~q\) # (\i_readRegister1[0]~input_o\)))) # (!\i_readRegister1[1]~input_o\ & (\register4|bit1|int_q~q\ & ((!\i_readRegister1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register4|bit1|int_q~q\,
	datab => \i_readRegister1[1]~input_o\,
	datac => \register6|bit1|int_q~q\,
	datad => \i_readRegister1[0]~input_o\,
	combout => \readData1|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y16_N30
\readData1|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux6~1_combout\ = (\i_readRegister1[0]~input_o\ & ((\readData1|Mux6~0_combout\ & (\register7|bit1|int_q~q\)) # (!\readData1|Mux6~0_combout\ & ((\register5|bit1|int_q~q\))))) # (!\i_readRegister1[0]~input_o\ & (((\readData1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[0]~input_o\,
	datab => \register7|bit1|int_q~q\,
	datac => \register5|bit1|int_q~q\,
	datad => \readData1|Mux6~0_combout\,
	combout => \readData1|Mux6~1_combout\);

-- Location: LCCOMB_X25_Y16_N2
\readData1|Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux6~4_combout\ = (\i_readRegister1[2]~input_o\ & ((\readData1|Mux6~1_combout\))) # (!\i_readRegister1[2]~input_o\ & (\readData1|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData1|Mux6~3_combout\,
	datab => \readData1|Mux6~1_combout\,
	datad => \i_readRegister1[2]~input_o\,
	combout => \readData1|Mux6~4_combout\);

-- Location: IOIBUF_X33_Y25_N1
\i_writeData[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_writeData(2),
	o => \i_writeData[2]~input_o\);

-- Location: FF_X25_Y16_N23
\register7|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[2]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register7|bit2|int_q~q\);

-- Location: FF_X25_Y16_N13
\register5|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[2]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register5|bit2|int_q~q\);

-- Location: FF_X25_Y18_N1
\register6|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[2]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register6|bit2|int_q~q\);

-- Location: LCCOMB_X26_Y20_N12
\decoder|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|Mux7~2_combout\ = (\i_writeRegister[2]~input_o\ & (!\i_writeRegister[0]~input_o\ & (!\i_writeRegister[1]~input_o\ & \i_regWrite~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_writeRegister[2]~input_o\,
	datab => \i_writeRegister[0]~input_o\,
	datac => \i_writeRegister[1]~input_o\,
	datad => \i_regWrite~input_o\,
	combout => \decoder|Mux7~2_combout\);

-- Location: FF_X25_Y18_N11
\register4|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[2]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register4|bit2|int_q~q\);

-- Location: LCCOMB_X25_Y18_N0
\readData1|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux5~0_combout\ = (\i_readRegister1[0]~input_o\ & (\i_readRegister1[1]~input_o\)) # (!\i_readRegister1[0]~input_o\ & ((\i_readRegister1[1]~input_o\ & (\register6|bit2|int_q~q\)) # (!\i_readRegister1[1]~input_o\ & ((\register4|bit2|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[0]~input_o\,
	datab => \i_readRegister1[1]~input_o\,
	datac => \register6|bit2|int_q~q\,
	datad => \register4|bit2|int_q~q\,
	combout => \readData1|Mux5~0_combout\);

-- Location: LCCOMB_X25_Y16_N12
\readData1|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux5~1_combout\ = (\i_readRegister1[0]~input_o\ & ((\readData1|Mux5~0_combout\ & (\register7|bit2|int_q~q\)) # (!\readData1|Mux5~0_combout\ & ((\register5|bit2|int_q~q\))))) # (!\i_readRegister1[0]~input_o\ & (((\readData1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[0]~input_o\,
	datab => \register7|bit2|int_q~q\,
	datac => \register5|bit2|int_q~q\,
	datad => \readData1|Mux5~0_combout\,
	combout => \readData1|Mux5~1_combout\);

-- Location: FF_X26_Y16_N17
\register2|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[2]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register2|bit2|int_q~q\);

-- Location: FF_X26_Y16_N19
\register3|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[2]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register3|bit2|int_q~q\);

-- Location: LCCOMB_X26_Y16_N16
\readData1|Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux5~3_combout\ = (\readData1|Mux5~2_combout\ & (((\register3|bit2|int_q~q\)) # (!\i_readRegister1[1]~input_o\))) # (!\readData1|Mux5~2_combout\ & (\i_readRegister1[1]~input_o\ & (\register2|bit2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData1|Mux5~2_combout\,
	datab => \i_readRegister1[1]~input_o\,
	datac => \register2|bit2|int_q~q\,
	datad => \register3|bit2|int_q~q\,
	combout => \readData1|Mux5~3_combout\);

-- Location: LCCOMB_X27_Y18_N0
\readData1|Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux5~4_combout\ = (\i_readRegister1[2]~input_o\ & (\readData1|Mux5~1_combout\)) # (!\i_readRegister1[2]~input_o\ & ((\readData1|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData1|Mux5~1_combout\,
	datac => \i_readRegister1[2]~input_o\,
	datad => \readData1|Mux5~3_combout\,
	combout => \readData1|Mux5~4_combout\);

-- Location: IOIBUF_X33_Y11_N1
\i_writeData[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_writeData(3),
	o => \i_writeData[3]~input_o\);

-- Location: FF_X25_Y18_N5
\register6|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[3]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register6|bit3|int_q~q\);

-- Location: FF_X25_Y18_N7
\register4|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[3]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register4|bit3|int_q~q\);

-- Location: LCCOMB_X25_Y18_N4
\readData1|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux4~0_combout\ = (\i_readRegister1[0]~input_o\ & (\i_readRegister1[1]~input_o\)) # (!\i_readRegister1[0]~input_o\ & ((\i_readRegister1[1]~input_o\ & (\register6|bit3|int_q~q\)) # (!\i_readRegister1[1]~input_o\ & ((\register4|bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[0]~input_o\,
	datab => \i_readRegister1[1]~input_o\,
	datac => \register6|bit3|int_q~q\,
	datad => \register4|bit3|int_q~q\,
	combout => \readData1|Mux4~0_combout\);

-- Location: FF_X25_Y16_N25
\register5|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[3]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register5|bit3|int_q~q\);

-- Location: FF_X25_Y16_N11
\register7|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[3]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register7|bit3|int_q~q\);

-- Location: LCCOMB_X25_Y16_N24
\readData1|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux4~1_combout\ = (\i_readRegister1[0]~input_o\ & ((\readData1|Mux4~0_combout\ & ((\register7|bit3|int_q~q\))) # (!\readData1|Mux4~0_combout\ & (\register5|bit3|int_q~q\)))) # (!\i_readRegister1[0]~input_o\ & (\readData1|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[0]~input_o\,
	datab => \readData1|Mux4~0_combout\,
	datac => \register5|bit3|int_q~q\,
	datad => \register7|bit3|int_q~q\,
	combout => \readData1|Mux4~1_combout\);

-- Location: FF_X26_Y16_N13
\register2|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[3]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register2|bit3|int_q~q\);

-- Location: FF_X27_Y16_N15
\register0|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[3]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register0|bit3|int_q~q\);

-- Location: FF_X27_Y16_N21
\register1|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[3]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register1|bit3|int_q~q\);

-- Location: LCCOMB_X27_Y16_N20
\readData1|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux4~2_combout\ = (\i_readRegister1[1]~input_o\ & (((\i_readRegister1[0]~input_o\)))) # (!\i_readRegister1[1]~input_o\ & ((\i_readRegister1[0]~input_o\ & ((\register1|bit3|int_q~q\))) # (!\i_readRegister1[0]~input_o\ & 
-- (\register0|bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[1]~input_o\,
	datab => \register0|bit3|int_q~q\,
	datac => \register1|bit3|int_q~q\,
	datad => \i_readRegister1[0]~input_o\,
	combout => \readData1|Mux4~2_combout\);

-- Location: LCCOMB_X26_Y16_N12
\readData1|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux4~3_combout\ = (\i_readRegister1[1]~input_o\ & ((\readData1|Mux4~2_combout\ & (\register3|bit3|int_q~q\)) # (!\readData1|Mux4~2_combout\ & ((\register2|bit3|int_q~q\))))) # (!\i_readRegister1[1]~input_o\ & (((\readData1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register3|bit3|int_q~q\,
	datab => \i_readRegister1[1]~input_o\,
	datac => \register2|bit3|int_q~q\,
	datad => \readData1|Mux4~2_combout\,
	combout => \readData1|Mux4~3_combout\);

-- Location: LCCOMB_X25_Y16_N28
\readData1|Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux4~4_combout\ = (\i_readRegister1[2]~input_o\ & (\readData1|Mux4~1_combout\)) # (!\i_readRegister1[2]~input_o\ & ((\readData1|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData1|Mux4~1_combout\,
	datac => \readData1|Mux4~3_combout\,
	datad => \i_readRegister1[2]~input_o\,
	combout => \readData1|Mux4~4_combout\);

-- Location: IOIBUF_X33_Y12_N8
\i_writeData[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_writeData(4),
	o => \i_writeData[4]~input_o\);

-- Location: FF_X27_Y16_N1
\register1|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[4]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register1|bit4|int_q~q\);

-- Location: FF_X27_Y16_N3
\register0|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[4]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register0|bit4|int_q~q\);

-- Location: LCCOMB_X27_Y16_N0
\readData1|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux3~2_combout\ = (\i_readRegister1[1]~input_o\ & (\i_readRegister1[0]~input_o\)) # (!\i_readRegister1[1]~input_o\ & ((\i_readRegister1[0]~input_o\ & (\register1|bit4|int_q~q\)) # (!\i_readRegister1[0]~input_o\ & ((\register0|bit4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[1]~input_o\,
	datab => \i_readRegister1[0]~input_o\,
	datac => \register1|bit4|int_q~q\,
	datad => \register0|bit4|int_q~q\,
	combout => \readData1|Mux3~2_combout\);

-- Location: FF_X26_Y16_N1
\register2|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[4]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register2|bit4|int_q~q\);

-- Location: LCCOMB_X26_Y16_N0
\readData1|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux3~3_combout\ = (\readData1|Mux3~2_combout\ & ((\register3|bit4|int_q~q\) # ((!\i_readRegister1[1]~input_o\)))) # (!\readData1|Mux3~2_combout\ & (((\register2|bit4|int_q~q\ & \i_readRegister1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register3|bit4|int_q~q\,
	datab => \readData1|Mux3~2_combout\,
	datac => \register2|bit4|int_q~q\,
	datad => \i_readRegister1[1]~input_o\,
	combout => \readData1|Mux3~3_combout\);

-- Location: FF_X26_Y18_N25
\register5|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[4]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register5|bit4|int_q~q\);

-- Location: FF_X25_Y18_N25
\register6|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[4]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register6|bit4|int_q~q\);

-- Location: FF_X25_Y18_N3
\register4|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[4]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register4|bit4|int_q~q\);

-- Location: LCCOMB_X25_Y18_N24
\readData1|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux3~0_combout\ = (\i_readRegister1[0]~input_o\ & (\i_readRegister1[1]~input_o\)) # (!\i_readRegister1[0]~input_o\ & ((\i_readRegister1[1]~input_o\ & (\register6|bit4|int_q~q\)) # (!\i_readRegister1[1]~input_o\ & ((\register4|bit4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[0]~input_o\,
	datab => \i_readRegister1[1]~input_o\,
	datac => \register6|bit4|int_q~q\,
	datad => \register4|bit4|int_q~q\,
	combout => \readData1|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y18_N24
\readData1|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux3~1_combout\ = (\i_readRegister1[0]~input_o\ & ((\readData1|Mux3~0_combout\ & (\register7|bit4|int_q~q\)) # (!\readData1|Mux3~0_combout\ & ((\register5|bit4|int_q~q\))))) # (!\i_readRegister1[0]~input_o\ & (((\readData1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register7|bit4|int_q~q\,
	datab => \i_readRegister1[0]~input_o\,
	datac => \register5|bit4|int_q~q\,
	datad => \readData1|Mux3~0_combout\,
	combout => \readData1|Mux3~1_combout\);

-- Location: LCCOMB_X27_Y18_N10
\readData1|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux3~4_combout\ = (\i_readRegister1[2]~input_o\ & ((\readData1|Mux3~1_combout\))) # (!\i_readRegister1[2]~input_o\ & (\readData1|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readData1|Mux3~3_combout\,
	datac => \i_readRegister1[2]~input_o\,
	datad => \readData1|Mux3~1_combout\,
	combout => \readData1|Mux3~4_combout\);

-- Location: IOIBUF_X33_Y10_N8
\i_writeData[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_writeData(5),
	o => \i_writeData[5]~input_o\);

-- Location: FF_X27_Y16_N5
\register1|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[5]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register1|bit5|int_q~q\);

-- Location: LCCOMB_X27_Y16_N4
\readData1|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux2~2_combout\ = (\i_readRegister1[0]~input_o\ & (((\register1|bit5|int_q~q\) # (\i_readRegister1[1]~input_o\)))) # (!\i_readRegister1[0]~input_o\ & (\register0|bit5|int_q~q\ & ((!\i_readRegister1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register0|bit5|int_q~q\,
	datab => \i_readRegister1[0]~input_o\,
	datac => \register1|bit5|int_q~q\,
	datad => \i_readRegister1[1]~input_o\,
	combout => \readData1|Mux2~2_combout\);

-- Location: FF_X26_Y16_N21
\register2|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[5]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register2|bit5|int_q~q\);

-- Location: LCCOMB_X26_Y16_N20
\readData1|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux2~3_combout\ = (\readData1|Mux2~2_combout\ & ((\register3|bit5|int_q~q\) # ((!\i_readRegister1[1]~input_o\)))) # (!\readData1|Mux2~2_combout\ & (((\register2|bit5|int_q~q\ & \i_readRegister1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register3|bit5|int_q~q\,
	datab => \readData1|Mux2~2_combout\,
	datac => \register2|bit5|int_q~q\,
	datad => \i_readRegister1[1]~input_o\,
	combout => \readData1|Mux2~3_combout\);

-- Location: FF_X26_Y18_N13
\register5|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[5]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register5|bit5|int_q~q\);

-- Location: FF_X26_Y18_N31
\register7|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[5]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register7|bit5|int_q~q\);

-- Location: LCCOMB_X26_Y18_N12
\readData1|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux2~1_combout\ = (\readData1|Mux2~0_combout\ & (((\register7|bit5|int_q~q\)) # (!\i_readRegister1[0]~input_o\))) # (!\readData1|Mux2~0_combout\ & (\i_readRegister1[0]~input_o\ & (\register5|bit5|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData1|Mux2~0_combout\,
	datab => \i_readRegister1[0]~input_o\,
	datac => \register5|bit5|int_q~q\,
	datad => \register7|bit5|int_q~q\,
	combout => \readData1|Mux2~1_combout\);

-- Location: LCCOMB_X27_Y18_N28
\readData1|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux2~4_combout\ = (\i_readRegister1[2]~input_o\ & ((\readData1|Mux2~1_combout\))) # (!\i_readRegister1[2]~input_o\ & (\readData1|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \readData1|Mux2~3_combout\,
	datac => \i_readRegister1[2]~input_o\,
	datad => \readData1|Mux2~1_combout\,
	combout => \readData1|Mux2~4_combout\);

-- Location: IOIBUF_X33_Y14_N1
\i_writeData[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_writeData(6),
	o => \i_writeData[6]~input_o\);

-- Location: FF_X26_Y16_N9
\register2|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[6]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register2|bit6|int_q~q\);

-- Location: FF_X27_Y16_N17
\register1|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[6]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register1|bit6|int_q~q\);

-- Location: FF_X27_Y16_N19
\register0|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[6]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register0|bit6|int_q~q\);

-- Location: LCCOMB_X27_Y16_N16
\readData1|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux1~2_combout\ = (\i_readRegister1[1]~input_o\ & (\i_readRegister1[0]~input_o\)) # (!\i_readRegister1[1]~input_o\ & ((\i_readRegister1[0]~input_o\ & (\register1|bit6|int_q~q\)) # (!\i_readRegister1[0]~input_o\ & ((\register0|bit6|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister1[1]~input_o\,
	datab => \i_readRegister1[0]~input_o\,
	datac => \register1|bit6|int_q~q\,
	datad => \register0|bit6|int_q~q\,
	combout => \readData1|Mux1~2_combout\);

-- Location: LCCOMB_X26_Y16_N8
\readData1|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux1~3_combout\ = (\i_readRegister1[1]~input_o\ & ((\readData1|Mux1~2_combout\ & (\register3|bit6|int_q~q\)) # (!\readData1|Mux1~2_combout\ & ((\register2|bit6|int_q~q\))))) # (!\i_readRegister1[1]~input_o\ & (((\readData1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register3|bit6|int_q~q\,
	datab => \i_readRegister1[1]~input_o\,
	datac => \register2|bit6|int_q~q\,
	datad => \readData1|Mux1~2_combout\,
	combout => \readData1|Mux1~3_combout\);

-- Location: FF_X26_Y18_N9
\register5|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[6]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register5|bit6|int_q~q\);

-- Location: FF_X26_Y18_N3
\register7|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[6]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register7|bit6|int_q~q\);

-- Location: LCCOMB_X26_Y18_N8
\readData1|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux1~1_combout\ = (\readData1|Mux1~0_combout\ & (((\register7|bit6|int_q~q\)) # (!\i_readRegister1[0]~input_o\))) # (!\readData1|Mux1~0_combout\ & (\i_readRegister1[0]~input_o\ & (\register5|bit6|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData1|Mux1~0_combout\,
	datab => \i_readRegister1[0]~input_o\,
	datac => \register5|bit6|int_q~q\,
	datad => \register7|bit6|int_q~q\,
	combout => \readData1|Mux1~1_combout\);

-- Location: LCCOMB_X26_Y18_N28
\readData1|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux1~4_combout\ = (\i_readRegister1[2]~input_o\ & ((\readData1|Mux1~1_combout\))) # (!\i_readRegister1[2]~input_o\ & (\readData1|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData1|Mux1~3_combout\,
	datab => \readData1|Mux1~1_combout\,
	datac => \i_readRegister1[2]~input_o\,
	combout => \readData1|Mux1~4_combout\);

-- Location: IOIBUF_X33_Y15_N8
\i_writeData[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_writeData(7),
	o => \i_writeData[7]~input_o\);

-- Location: FF_X26_Y18_N23
\register5|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[7]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register5|bit7|int_q~q\);

-- Location: FF_X26_Y18_N17
\register7|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[7]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register7|bit7|int_q~q\);

-- Location: LCCOMB_X26_Y18_N22
\readData1|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux0~1_combout\ = (\readData1|Mux0~0_combout\ & (((\register7|bit7|int_q~q\)) # (!\i_readRegister1[0]~input_o\))) # (!\readData1|Mux0~0_combout\ & (\i_readRegister1[0]~input_o\ & (\register5|bit7|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData1|Mux0~0_combout\,
	datab => \i_readRegister1[0]~input_o\,
	datac => \register5|bit7|int_q~q\,
	datad => \register7|bit7|int_q~q\,
	combout => \readData1|Mux0~1_combout\);

-- Location: FF_X26_Y16_N29
\register2|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[7]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register2|bit7|int_q~q\);

-- Location: FF_X27_Y16_N13
\register1|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[7]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register1|bit7|int_q~q\);

-- Location: LCCOMB_X27_Y16_N12
\readData1|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux0~2_combout\ = (\i_readRegister1[0]~input_o\ & (((\register1|bit7|int_q~q\) # (\i_readRegister1[1]~input_o\)))) # (!\i_readRegister1[0]~input_o\ & (\register0|bit7|int_q~q\ & ((!\i_readRegister1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register0|bit7|int_q~q\,
	datab => \i_readRegister1[0]~input_o\,
	datac => \register1|bit7|int_q~q\,
	datad => \i_readRegister1[1]~input_o\,
	combout => \readData1|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y16_N28
\readData1|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux0~3_combout\ = (\i_readRegister1[1]~input_o\ & ((\readData1|Mux0~2_combout\ & (\register3|bit7|int_q~q\)) # (!\readData1|Mux0~2_combout\ & ((\register2|bit7|int_q~q\))))) # (!\i_readRegister1[1]~input_o\ & (((\readData1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register3|bit7|int_q~q\,
	datab => \i_readRegister1[1]~input_o\,
	datac => \register2|bit7|int_q~q\,
	datad => \readData1|Mux0~2_combout\,
	combout => \readData1|Mux0~3_combout\);

-- Location: LCCOMB_X26_Y18_N18
\readData1|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData1|Mux0~4_combout\ = (\i_readRegister1[2]~input_o\ & (\readData1|Mux0~1_combout\)) # (!\i_readRegister1[2]~input_o\ & ((\readData1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData1|Mux0~1_combout\,
	datab => \readData1|Mux0~3_combout\,
	datac => \i_readRegister1[2]~input_o\,
	combout => \readData1|Mux0~4_combout\);

-- Location: IOIBUF_X33_Y10_N1
\i_readRegister2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_readRegister2(2),
	o => \i_readRegister2[2]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\i_readRegister2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_readRegister2(1),
	o => \i_readRegister2[1]~input_o\);

-- Location: LCCOMB_X26_Y16_N2
\readData2|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux7~3_combout\ = (\readData2|Mux7~2_combout\ & (((\register3|bit0|int_q~q\) # (!\i_readRegister2[1]~input_o\)))) # (!\readData2|Mux7~2_combout\ & (\register2|bit0|int_q~q\ & ((\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2|Mux7~2_combout\,
	datab => \register2|bit0|int_q~q\,
	datac => \register3|bit0|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux7~3_combout\);

-- Location: FF_X25_Y16_N27
\register7|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[0]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register7|bit0|int_q~q\);

-- Location: IOIBUF_X33_Y11_N8
\i_readRegister2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_readRegister2(0),
	o => \i_readRegister2[0]~input_o\);

-- Location: LCCOMB_X25_Y16_N26
\readData2|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux7~1_combout\ = (\readData2|Mux7~0_combout\ & (((\register7|bit0|int_q~q\) # (!\i_readRegister2[0]~input_o\)))) # (!\readData2|Mux7~0_combout\ & (\register5|bit0|int_q~q\ & ((\i_readRegister2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2|Mux7~0_combout\,
	datab => \register5|bit0|int_q~q\,
	datac => \register7|bit0|int_q~q\,
	datad => \i_readRegister2[0]~input_o\,
	combout => \readData2|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y16_N6
\readData2|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux7~4_combout\ = (\i_readRegister2[2]~input_o\ & ((\readData2|Mux7~1_combout\))) # (!\i_readRegister2[2]~input_o\ & (\readData2|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[2]~input_o\,
	datac => \readData2|Mux7~3_combout\,
	datad => \readData2|Mux7~1_combout\,
	combout => \readData2|Mux7~4_combout\);

-- Location: LCCOMB_X26_Y16_N14
\readData2|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux6~3_combout\ = (\readData2|Mux6~2_combout\ & (((\register3|bit1|int_q~q\) # (!\i_readRegister2[1]~input_o\)))) # (!\readData2|Mux6~2_combout\ & (\register2|bit1|int_q~q\ & ((\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2|Mux6~2_combout\,
	datab => \register2|bit1|int_q~q\,
	datac => \register3|bit1|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux6~3_combout\);

-- Location: FF_X25_Y18_N31
\register4|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[1]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register4|bit1|int_q~q\);

-- Location: LCCOMB_X25_Y18_N30
\readData2|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux6~0_combout\ = (\i_readRegister2[0]~input_o\ & (\i_readRegister2[1]~input_o\)) # (!\i_readRegister2[0]~input_o\ & ((\i_readRegister2[1]~input_o\ & ((\register6|bit1|int_q~q\))) # (!\i_readRegister2[1]~input_o\ & (\register4|bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \i_readRegister2[1]~input_o\,
	datac => \register4|bit1|int_q~q\,
	datad => \register6|bit1|int_q~q\,
	combout => \readData2|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y16_N0
\readData2|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux6~1_combout\ = (\readData2|Mux6~0_combout\ & (((\register7|bit1|int_q~q\) # (!\i_readRegister2[0]~input_o\)))) # (!\readData2|Mux6~0_combout\ & (\register5|bit1|int_q~q\ & ((\i_readRegister2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register5|bit1|int_q~q\,
	datab => \readData2|Mux6~0_combout\,
	datac => \register7|bit1|int_q~q\,
	datad => \i_readRegister2[0]~input_o\,
	combout => \readData2|Mux6~1_combout\);

-- Location: LCCOMB_X25_Y16_N8
\readData2|Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux6~4_combout\ = (\i_readRegister2[2]~input_o\ & ((\readData2|Mux6~1_combout\))) # (!\i_readRegister2[2]~input_o\ & (\readData2|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[2]~input_o\,
	datac => \readData2|Mux6~3_combout\,
	datad => \readData2|Mux6~1_combout\,
	combout => \readData2|Mux6~4_combout\);

-- Location: LCCOMB_X26_Y16_N18
\readData2|Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux5~3_combout\ = (\readData2|Mux5~2_combout\ & (((\register3|bit2|int_q~q\) # (!\i_readRegister2[1]~input_o\)))) # (!\readData2|Mux5~2_combout\ & (\register2|bit2|int_q~q\ & ((\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2|Mux5~2_combout\,
	datab => \register2|bit2|int_q~q\,
	datac => \register3|bit2|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux5~3_combout\);

-- Location: LCCOMB_X25_Y18_N10
\readData2|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux5~0_combout\ = (\i_readRegister2[0]~input_o\ & (((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & ((\i_readRegister2[1]~input_o\ & (\register6|bit2|int_q~q\)) # (!\i_readRegister2[1]~input_o\ & 
-- ((\register4|bit2|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register6|bit2|int_q~q\,
	datac => \register4|bit2|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux5~0_combout\);

-- Location: LCCOMB_X25_Y16_N22
\readData2|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux5~1_combout\ = (\readData2|Mux5~0_combout\ & (((\register7|bit2|int_q~q\) # (!\i_readRegister2[0]~input_o\)))) # (!\readData2|Mux5~0_combout\ & (\register5|bit2|int_q~q\ & ((\i_readRegister2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register5|bit2|int_q~q\,
	datab => \readData2|Mux5~0_combout\,
	datac => \register7|bit2|int_q~q\,
	datad => \i_readRegister2[0]~input_o\,
	combout => \readData2|Mux5~1_combout\);

-- Location: LCCOMB_X25_Y16_N18
\readData2|Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux5~4_combout\ = (\i_readRegister2[2]~input_o\ & ((\readData2|Mux5~1_combout\))) # (!\i_readRegister2[2]~input_o\ & (\readData2|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[2]~input_o\,
	datac => \readData2|Mux5~3_combout\,
	datad => \readData2|Mux5~1_combout\,
	combout => \readData2|Mux5~4_combout\);

-- Location: FF_X26_Y16_N31
\register3|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[3]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register3|bit3|int_q~q\);

-- Location: LCCOMB_X26_Y16_N30
\readData2|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux4~3_combout\ = (\readData2|Mux4~2_combout\ & (((\register3|bit3|int_q~q\)) # (!\i_readRegister2[1]~input_o\))) # (!\readData2|Mux4~2_combout\ & (\i_readRegister2[1]~input_o\ & ((\register2|bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2|Mux4~2_combout\,
	datab => \i_readRegister2[1]~input_o\,
	datac => \register3|bit3|int_q~q\,
	datad => \register2|bit3|int_q~q\,
	combout => \readData2|Mux4~3_combout\);

-- Location: LCCOMB_X25_Y16_N10
\readData2|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux4~1_combout\ = (\readData2|Mux4~0_combout\ & (((\register7|bit3|int_q~q\) # (!\i_readRegister2[0]~input_o\)))) # (!\readData2|Mux4~0_combout\ & (\register5|bit3|int_q~q\ & ((\i_readRegister2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2|Mux4~0_combout\,
	datab => \register5|bit3|int_q~q\,
	datac => \register7|bit3|int_q~q\,
	datad => \i_readRegister2[0]~input_o\,
	combout => \readData2|Mux4~1_combout\);

-- Location: LCCOMB_X25_Y16_N20
\readData2|Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux4~4_combout\ = (\i_readRegister2[2]~input_o\ & ((\readData2|Mux4~1_combout\))) # (!\i_readRegister2[2]~input_o\ & (\readData2|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2|Mux4~3_combout\,
	datac => \i_readRegister2[2]~input_o\,
	datad => \readData2|Mux4~1_combout\,
	combout => \readData2|Mux4~4_combout\);

-- Location: FF_X26_Y16_N11
\register3|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[4]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register3|bit4|int_q~q\);

-- Location: LCCOMB_X26_Y16_N10
\readData2|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux3~3_combout\ = (\readData2|Mux3~2_combout\ & (((\register3|bit4|int_q~q\) # (!\i_readRegister2[1]~input_o\)))) # (!\readData2|Mux3~2_combout\ & (\register2|bit4|int_q~q\ & ((\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2|Mux3~2_combout\,
	datab => \register2|bit4|int_q~q\,
	datac => \register3|bit4|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux3~3_combout\);

-- Location: FF_X26_Y18_N27
\register7|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[4]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register7|bit4|int_q~q\);

-- Location: LCCOMB_X26_Y18_N26
\readData2|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux3~1_combout\ = (\readData2|Mux3~0_combout\ & (((\register7|bit4|int_q~q\) # (!\i_readRegister2[0]~input_o\)))) # (!\readData2|Mux3~0_combout\ & (\register5|bit4|int_q~q\ & ((\i_readRegister2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2|Mux3~0_combout\,
	datab => \register5|bit4|int_q~q\,
	datac => \register7|bit4|int_q~q\,
	datad => \i_readRegister2[0]~input_o\,
	combout => \readData2|Mux3~1_combout\);

-- Location: LCCOMB_X27_Y18_N6
\readData2|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux3~4_combout\ = (\i_readRegister2[2]~input_o\ & ((\readData2|Mux3~1_combout\))) # (!\i_readRegister2[2]~input_o\ & (\readData2|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2|Mux3~3_combout\,
	datac => \i_readRegister2[2]~input_o\,
	datad => \readData2|Mux3~1_combout\,
	combout => \readData2|Mux3~4_combout\);

-- Location: FF_X25_Y18_N23
\register4|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[5]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register4|bit5|int_q~q\);

-- Location: FF_X25_Y18_N13
\register6|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[5]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register6|bit5|int_q~q\);

-- Location: LCCOMB_X25_Y18_N22
\readData2|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux2~0_combout\ = (\i_readRegister2[0]~input_o\ & (\i_readRegister2[1]~input_o\)) # (!\i_readRegister2[0]~input_o\ & ((\i_readRegister2[1]~input_o\ & ((\register6|bit5|int_q~q\))) # (!\i_readRegister2[1]~input_o\ & (\register4|bit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \i_readRegister2[1]~input_o\,
	datac => \register4|bit5|int_q~q\,
	datad => \register6|bit5|int_q~q\,
	combout => \readData2|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y18_N30
\readData2|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux2~1_combout\ = (\readData2|Mux2~0_combout\ & (((\register7|bit5|int_q~q\) # (!\i_readRegister2[0]~input_o\)))) # (!\readData2|Mux2~0_combout\ & (\register5|bit5|int_q~q\ & ((\i_readRegister2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register5|bit5|int_q~q\,
	datab => \readData2|Mux2~0_combout\,
	datac => \register7|bit5|int_q~q\,
	datad => \i_readRegister2[0]~input_o\,
	combout => \readData2|Mux2~1_combout\);

-- Location: FF_X27_Y16_N31
\register0|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[5]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register0|bit5|int_q~q\);

-- Location: LCCOMB_X27_Y16_N30
\readData2|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux2~2_combout\ = (\i_readRegister2[0]~input_o\ & ((\register1|bit5|int_q~q\) # ((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & (((\register0|bit5|int_q~q\ & !\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register1|bit5|int_q~q\,
	datac => \register0|bit5|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux2~2_combout\);

-- Location: FF_X26_Y16_N7
\register3|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[5]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register3|bit5|int_q~q\);

-- Location: LCCOMB_X26_Y16_N6
\readData2|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux2~3_combout\ = (\i_readRegister2[1]~input_o\ & ((\readData2|Mux2~2_combout\ & (\register3|bit5|int_q~q\)) # (!\readData2|Mux2~2_combout\ & ((\register2|bit5|int_q~q\))))) # (!\i_readRegister2[1]~input_o\ & (\readData2|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[1]~input_o\,
	datab => \readData2|Mux2~2_combout\,
	datac => \register3|bit5|int_q~q\,
	datad => \register2|bit5|int_q~q\,
	combout => \readData2|Mux2~3_combout\);

-- Location: LCCOMB_X26_Y18_N20
\readData2|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux2~4_combout\ = (\i_readRegister2[2]~input_o\ & (\readData2|Mux2~1_combout\)) # (!\i_readRegister2[2]~input_o\ & ((\readData2|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[2]~input_o\,
	datac => \readData2|Mux2~1_combout\,
	datad => \readData2|Mux2~3_combout\,
	combout => \readData2|Mux2~4_combout\);

-- Location: LCCOMB_X27_Y16_N18
\readData2|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux1~2_combout\ = (\i_readRegister2[0]~input_o\ & ((\register1|bit6|int_q~q\) # ((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & (((\register0|bit6|int_q~q\ & !\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register1|bit6|int_q~q\,
	datac => \register0|bit6|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux1~2_combout\);

-- Location: FF_X26_Y16_N27
\register3|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[6]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register3|bit6|int_q~q\);

-- Location: LCCOMB_X26_Y16_N26
\readData2|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux1~3_combout\ = (\readData2|Mux1~2_combout\ & (((\register3|bit6|int_q~q\) # (!\i_readRegister2[1]~input_o\)))) # (!\readData2|Mux1~2_combout\ & (\register2|bit6|int_q~q\ & ((\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register2|bit6|int_q~q\,
	datab => \readData2|Mux1~2_combout\,
	datac => \register3|bit6|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux1~3_combout\);

-- Location: FF_X25_Y18_N9
\register6|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[6]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register6|bit6|int_q~q\);

-- Location: FF_X25_Y18_N19
\register4|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[6]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register4|bit6|int_q~q\);

-- Location: LCCOMB_X25_Y18_N18
\readData2|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux1~0_combout\ = (\i_readRegister2[0]~input_o\ & (((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & ((\i_readRegister2[1]~input_o\ & (\register6|bit6|int_q~q\)) # (!\i_readRegister2[1]~input_o\ & 
-- ((\register4|bit6|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register6|bit6|int_q~q\,
	datac => \register4|bit6|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y18_N2
\readData2|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux1~1_combout\ = (\i_readRegister2[0]~input_o\ & ((\readData2|Mux1~0_combout\ & (\register7|bit6|int_q~q\)) # (!\readData2|Mux1~0_combout\ & ((\register5|bit6|int_q~q\))))) # (!\i_readRegister2[0]~input_o\ & (\readData2|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \readData2|Mux1~0_combout\,
	datac => \register7|bit6|int_q~q\,
	datad => \register5|bit6|int_q~q\,
	combout => \readData2|Mux1~1_combout\);

-- Location: LCCOMB_X26_Y18_N6
\readData2|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux1~4_combout\ = (\i_readRegister2[2]~input_o\ & ((\readData2|Mux1~1_combout\))) # (!\i_readRegister2[2]~input_o\ & (\readData2|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[2]~input_o\,
	datac => \readData2|Mux1~3_combout\,
	datad => \readData2|Mux1~1_combout\,
	combout => \readData2|Mux1~4_combout\);

-- Location: FF_X26_Y16_N23
\register3|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[7]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register3|bit7|int_q~q\);

-- Location: LCCOMB_X26_Y16_N22
\readData2|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux0~3_combout\ = (\readData2|Mux0~2_combout\ & (((\register3|bit7|int_q~q\) # (!\i_readRegister2[1]~input_o\)))) # (!\readData2|Mux0~2_combout\ & (\register2|bit7|int_q~q\ & ((\i_readRegister2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readData2|Mux0~2_combout\,
	datab => \register2|bit7|int_q~q\,
	datac => \register3|bit7|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux0~3_combout\);

-- Location: FF_X25_Y18_N29
\register6|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[7]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register6|bit7|int_q~q\);

-- Location: FF_X25_Y18_N15
\register4|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \i_writeData[7]~input_o\,
	clrn => \i_gReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \decoder|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register4|bit7|int_q~q\);

-- Location: LCCOMB_X25_Y18_N14
\readData2|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux0~0_combout\ = (\i_readRegister2[0]~input_o\ & (((\i_readRegister2[1]~input_o\)))) # (!\i_readRegister2[0]~input_o\ & ((\i_readRegister2[1]~input_o\ & (\register6|bit7|int_q~q\)) # (!\i_readRegister2[1]~input_o\ & 
-- ((\register4|bit7|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[0]~input_o\,
	datab => \register6|bit7|int_q~q\,
	datac => \register4|bit7|int_q~q\,
	datad => \i_readRegister2[1]~input_o\,
	combout => \readData2|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y18_N16
\readData2|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux0~1_combout\ = (\readData2|Mux0~0_combout\ & (((\register7|bit7|int_q~q\) # (!\i_readRegister2[0]~input_o\)))) # (!\readData2|Mux0~0_combout\ & (\register5|bit7|int_q~q\ & ((\i_readRegister2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register5|bit7|int_q~q\,
	datab => \readData2|Mux0~0_combout\,
	datac => \register7|bit7|int_q~q\,
	datad => \i_readRegister2[0]~input_o\,
	combout => \readData2|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y18_N0
\readData2|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \readData2|Mux0~4_combout\ = (\i_readRegister2[2]~input_o\ & ((\readData2|Mux0~1_combout\))) # (!\i_readRegister2[2]~input_o\ & (\readData2|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_readRegister2[2]~input_o\,
	datac => \readData2|Mux0~3_combout\,
	datad => \readData2|Mux0~1_combout\,
	combout => \readData2|Mux0~4_combout\);

ww_o_readData1(0) <= \o_readData1[0]~output_o\;

ww_o_readData1(1) <= \o_readData1[1]~output_o\;

ww_o_readData1(2) <= \o_readData1[2]~output_o\;

ww_o_readData1(3) <= \o_readData1[3]~output_o\;

ww_o_readData1(4) <= \o_readData1[4]~output_o\;

ww_o_readData1(5) <= \o_readData1[5]~output_o\;

ww_o_readData1(6) <= \o_readData1[6]~output_o\;

ww_o_readData1(7) <= \o_readData1[7]~output_o\;

ww_o_readData2(0) <= \o_readData2[0]~output_o\;

ww_o_readData2(1) <= \o_readData2[1]~output_o\;

ww_o_readData2(2) <= \o_readData2[2]~output_o\;

ww_o_readData2(3) <= \o_readData2[3]~output_o\;

ww_o_readData2(4) <= \o_readData2[4]~output_o\;

ww_o_readData2(5) <= \o_readData2[5]~output_o\;

ww_o_readData2(6) <= \o_readData2[6]~output_o\;

ww_o_readData2(7) <= \o_readData2[7]~output_o\;
END structure;


