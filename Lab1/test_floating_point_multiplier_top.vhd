library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_floating_point_multiplier_top is
end test_floating_point_multiplier_top;

architecture test of test_floating_point_multiplier_top is

component floating_point_multiplier_top is
	port(i_clock: in std_logic;
		  i_reset: in std_logic;
		  i_signA: in std_logic_vector (0 downto 0);
		  i_exponentA: in std_logic_vector (6 downto 0);
		  i_mantissaA: in std_logic_vector (7 downto 0);
		  i_signB: in std_logic_vector (0 downto 0);
		  i_exponentB: in std_logic_vector (6 downto 0);
		  i_mantissaB: in std_logic_vector (7 downto 0);
		  o_signOut: out std_logic;
		  o_exponentOut: out std_logic_vector (6 downto 0);
		  o_mantissaOut: out std_logic_vector (7 downto 0);
		  o_underflowOut: out std_logic;
		  o_overflowOut: out std_logic);
end component;

signal i_clock : std_logic := '1';
signal i_reset : std_logic;
signal i_signA: std_logic_vector (0 downto 0);
signal i_exponentA: std_logic_vector (6 downto 0);
signal i_mantissaA: std_logic_vector (7 downto 0);
signal i_signB: std_logic_vector (0 downto 0);
signal i_exponentB: std_logic_vector (6 downto 0);
signal i_mantissaB: std_logic_vector (7 downto 0);
signal o_signOut: std_logic;
signal o_exponentOut: std_logic_vector (6 downto 0);
signal o_mantissaOut: std_logic_vector (7 downto 0);
signal o_underflowOut: std_logic;
signal o_overflowOut: std_logic;

signal floatingPointA: std_logic_vector (15 downto 0):= "0100001100000100";
signal floatingPointB: std_logic_vector (15 downto 0):= "1100000100100000";

begin		
			
impl: floating_point_multiplier_top port map
					(i_clock, i_reset, i_signA, i_exponentA, i_mantissaA, i_signB, i_exponentB, i_mantissaB, o_signOut, o_exponentOut, 
					o_mantissaOut, o_underflowOut, o_overflowOut);

i_clock <= not(i_clock) after 1 ns;

i_signA(0) <= floatingPointA(15);
i_exponentA <= floatingPointA(14 downto 8);
i_mantissaA <= floatingPointA(7 downto 0);

i_signB(0) <= floatingPointB(15);
i_exponentB <= floatingPointB(14 downto 8);
i_mantissaB <= floatingPointB(7 downto 0);

stimulus: process begin
		wait for 10ns;
		i_reset <= '1';
		wait for 4 ns;
		i_reset <= '0';
		wait for 50ns;
end process;		
end test;