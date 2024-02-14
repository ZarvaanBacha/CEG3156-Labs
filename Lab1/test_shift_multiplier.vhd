library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_shift_multiplier is
end test_shift_multiplier;

architecture test of test_shift_multiplier is
signal a,b : std_logic_vector(7 downto 0);

signal clock : std_logic := '0';
signal initialize, shift, loadPR, loadOut, setCounter: std_logic;
signal multiplier_LSB, multiplier_second_LSB, countDone: std_logic;

signal product:std_logic_vector(15 downto 0);

component shift_multiplier_8_bit_data is
	port(i_a, i_b: in std_logic_vector(7 downto 0);
		i_clock: in std_logic;
		i_initialize, i_shift, i_loadPR, i_loadOut, i_setCounter: in std_logic;
		o_multiplier_LSB, o_multiplier_second_LSB,o_countDone: out std_logic;
      o_product : out std_logic_vector(15 downto 0));
end component;

begin

impl: shift_multiplier_8_bit_data port map
					(a,b,clock, initialize, shift, loadPR, loadOut, 
					setCounter,multiplier_LSB, multiplier_second_LSB,countDone,product);

clock <= not(clock) after 5 ns;

stimulus: process begin
		a <= "00000101";
		b <= "00000110";
		initialize <= '0';
		setCounter <= '0';
		shift <= '0';
		loadPR  <= '0';
		loadOut <= '0';
		wait for 20 ns;
		initialize <= '1';
		setCounter <= '1';
		wait for 10 ns;
		initialize <= '0';
		setCounter <= '0';
		wait for 10 ns;
		shift <= '1';
		loadPR  <= '0';
		wait for 10 ns;
		shift <= '1';
		loadPR  <= '1';
		wait for 10 ns;
		shift <= '1';
		loadPR  <= '1';
		wait for 10 ns;
		shift <= '1';
		loadPR  <= '0';
		wait for 10 ns;
		shift <= '1';
		loadPR  <= '0';
		wait for 10 ns;
		shift <= '1';
		loadPR  <= '0';
		wait for 10 ns;
		shift <= '1';
		loadPR  <= '0';
		wait for 10 ns;
		shift <= '1';
		loadPR  <= '0';
		wait for 10 ns;
		shift <= '0';
		loadPR  <= '0';
		loadOut <= '1';
		wait for 10 ns;
end process;	
end test;