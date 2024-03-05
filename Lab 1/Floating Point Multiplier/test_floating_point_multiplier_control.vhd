library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_floating_point_multiplier_control is
end test_floating_point_multiplier_control;

architecture test of test_floating_point_multiplier_control is
signal reset : std_logic;
signal clock : std_logic := '1';
signal multiplierDone: std_logic;
signal MSB: std_logic := '1';
signal loadInputs: std_logic;
signal startMultiplication: std_logic;
signal loadSum: std_logic;
signal MUX_Signal_1: std_logic;
signal MUX_Signal_2: std_logic_vector (1 downto 0);
signal loadProduct: std_logic;
signal loadOutput: std_logic;
signal shiftProduct: std_logic;

component floating_point_multiplier_control is
	port(i_reset : in std_logic;
		  i_clock : in std_logic;
		  i_multiplierDone: in std_logic;
		  i_MSB: in std_logic;
		  o_loadInputs: out std_logic;
		  o_startMultiplication: out std_logic;
		  o_loadSum: out std_logic;
		  o_MUX_Signal_1: out std_logic;
		  o_MUX_Signal_2: out std_logic_vector (1 downto 0);
		  o_loadProduct: out std_logic;
		  o_loadOutput: out std_logic;
		  o_shiftProduct: out std_logic);
end component;

begin

impl: floating_point_multiplier_control port map
					(reset,clock,multiplierDone,MSB,loadInputs,startMultiplication,
					loadSum,MUX_Signal_1,MUX_Signal_2,loadProduct,loadOutput,shiftProduct);

clock <= not(clock) after 1 ns;

stimulus: process begin
		wait for 4 ns;
		reset <= '1';
		wait for 2 ns;
		reset <= '0';
		wait for 2 ns;
		multiplierDone <= '0';
		wait for 28 ns;
		multiplierDone <= '1';
		wait for 4 ns;
		MSB <= not(MSB);
		wait for 6 ns;
end process;	
end test;