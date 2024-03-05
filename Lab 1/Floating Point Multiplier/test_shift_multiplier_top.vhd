library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_shift_multiplier_top is
end test_shift_multiplier_top;

architecture test of test_shift_multiplier_top is
signal multiplicand, multiplier: std_logic_vector ( 7 downto 0);
signal clock : std_logic := '1';
signal reset : std_logic;
signal startMultiply : std_logic;
signal multiplier_Busy: std_logic;
signal multiplication_Complete: std_logic;
signal product : std_logic_vector(15 downto 0);

component shift_multiplier_8_bit_top is
	port(i_a, i_b: in std_logic_vector(7 downto 0);
		i_clock, i_reset: in std_logic;
		i_startMultiply: in std_logic;
		o_multiplier_Busy: out std_logic;
		o_multiplication_Complete: out std_logic;
      o_product : out std_logic_vector(15 downto 0));
end component;

begin

impl: shift_multiplier_8_bit_top port map
					(multiplicand, multiplier, clock, reset, startMultiply, multiplier_Busy, multiplication_Complete, product);

clock <= not(clock) after 1 ns;
multiplicand <= "00100101";

stimulus: process begin
	reset <= '1';
	wait for 10 ns;
	reset <= '0';
	for i in 0 to 255 loop
      multiplier <= std_logic_vector(to_unsigned(i, 8));
		startMultiply <= '0';
		wait for 6 ns;
		startMultiply <= '1';
		reset <= '0';
		wait for 2 ns;
		startMultiply <= '0';
		wait for 64 ns;
   end loop;
end process;		
end test;