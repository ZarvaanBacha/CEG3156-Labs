library ieee;
use ieee.std_logic_1164.all;

entity shift_multiplier_8_bit_top is
	port(i_a, i_b: in std_logic_vector(7 downto 0);
		i_clock, i_reset: in std_logic;
		i_startMultiply: in std_logic;
		o_multiplier_Busy: out std_logic;
		o_multiplication_Complete: out std_logic;
      o_product : out std_logic_vector(15 downto 0));
end shift_multiplier_8_bit_top;

architecture structural of shift_multiplier_8_bit_top is
--Input Signals
signal int_multiplicand, int_multiplier: std_logic_vector (7 downto 0);

--Output Signals
signal int_product: std_logic_vector(15 downto 0);

--Data Signals
signal int_multiplier_LSB: std_logic;
signal int_multiplier_second_LSB: std_logic;
signal int_countDone: std_logic;

--Control Signals
signal int_initialize: std_logic;
signal int_shift: std_logic;
signal int_loadPR: std_logic;
signal int_loadOut: std_logic;
signal int_setCounter: std_logic;
signal int_multiplierBusy: std_logic;
signal int_multiplicationComplete: std_logic;

component shift_multiplier_8_bit_data is
	port(i_a, i_b: in std_logic_vector(7 downto 0);
		i_clock: in std_logic;
		i_initialize, i_shift, i_loadPR, i_loadOut, i_setCounter: in std_logic;
		o_multiplier_LSB, o_multiplier_second_LSB, o_countDone: out std_logic;
      o_product : out std_logic_vector(15 downto 0));
end component;

component shift_multiplier_8_bit_control is
	port ( i_reset : in std_logic;
			 i_clock : in std_logic;
			 i_startMultiply : in std_logic;
			 i_countDone	: in std_logic;
			 i_multiplier_LSB : in std_logic;
			 i_multiplier_second_LSB : in std_logic;
			 o_initialize : out std_logic;
			 o_shift: out std_logic;
			 o_loadPR: out std_logic;
			 o_loadOut: out std_logic;
			 o_setCounter : out std_logic;
			 o_multiplier_Busy: out std_logic;
			 o_multiplication_Complete: out std_logic);
end component;

begin

int_multiplicand <= i_a;
int_multiplier <= i_b;

datapath: shift_multiplier_8_bit_data port map (int_multiplicand, int_multiplier, i_clock,int_initialize, int_shift, int_loadPR,
																	int_loadOut, int_setCounter, int_multiplier_LSB, int_multiplier_second_LSB, int_countDone,
																	int_product);
 
 
controlpath: shift_multiplier_8_bit_control port map (i_reset, i_clock, i_startMultiply, int_countDone, int_multiplier_LSB, 
																			int_multiplier_second_LSB, int_initialize, int_shift, int_loadPR,
																	int_loadOut, int_setCounter, int_multiplierBusy, int_multiplicationComplete);
																	
o_product <= int_product;
o_multiplier_Busy <= int_multiplierBusy;
o_multiplication_Complete <= int_MultiplicationComplete;

end structural;