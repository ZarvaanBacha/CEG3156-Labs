library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_shift_multiplier_control is
end test_shift_multiplier_control;

architecture test of test_shift_multiplier_control is
signal reset : std_logic;
signal clock : std_logic := '1';
signal startMultiply : std_logic;
signal countDone	: std_logic;
signal multiplier_LSB : std_logic;
signal multiplier_second_LSB : std_logic;
signal initialize : std_logic;
signal shift: std_logic;
signal loadPR: std_logic;
signal loadOut: std_logic;
signal setCounter : std_logic;
signal multiplier_Busy: std_logic;

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
			 o_multiplier_Busy: out std_logic);
end component;

begin

impl: shift_multiplier_8_bit_control port map
					(reset,clock,startMultiply,countDone,multiplier_LSB,multiplier_second_LSB,
					initialize,shift,loadPR,loadOut,setCounter,multiplier_Busy);

clock <= not(clock) after 1 ns;

stimulus: process begin
		wait for 4 ns;
		reset <= '1';
		startMultiply <= '0';
		wait for 4 ns;
		reset <= '0';
		wait for 4 ns;
		startMultiply <= '1';
		wait for 2 ns;
		startMultiply <= '0';
		--B
		wait for 2 ns;
		multiplier_LSB <= '0';
		multiplier_second_LSB <= '1';
		countDone <= '0';
		wait for 2 ns;
		multiplier_LSB <= '0';
		multiplier_second_LSB <= '1';
		wait for 2 ns;
		multiplier_LSB <= '1';
		multiplier_second_LSB <= '1';
		wait for 2 ns;
		multiplier_LSB <= '1';
		multiplier_second_LSB <= '0';
		wait for 2 ns;
		multiplier_LSB <= '0';
		multiplier_second_LSB <= '0';
		wait for 2 ns;
		multiplier_LSB <= '0';
		multiplier_second_LSB <= '0';
		wait for 2 ns;
		multiplier_LSB <= '0';
		multiplier_second_LSB <= '0';
		wait for 2 ns;
		multiplier_LSB <= '0';
		multiplier_second_LSB <= '0';
		wait for 2 ns;
		multiplier_LSB <= '0';
		multiplier_second_LSB <= '0';
		countDone <= '1';
		wait for 2 ns;
		--F
		wait for 2 ns;
end process;	
end test;