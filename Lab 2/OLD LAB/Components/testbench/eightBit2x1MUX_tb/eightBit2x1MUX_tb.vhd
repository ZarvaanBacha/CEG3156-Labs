library ieee;
use ieee.std_logic_1164.all;

entity eightBit2x1MUX_tb is
end eightBit2x1MUX_tb;

architecture tb of eightBit2x1MUX_tb is

component eightBit2x1MUX is
	PORT (
		i_sel		: IN	STD_LOGIC;
		i_A		: IN	STD_LOGIC_VECTOR(7 downto 0);
		i_B		: IN	STD_LOGIC_VECTOR(7 downto 0);
		o_q		: OUT	STD_LOGIC_VECTOR(7 downto 0));
end component;

signal i_sel		: STD_LOGIC;
signal i_A			: STD_LOGIC_VECTOR(7 downto 0);
signal i_B			: STD_LOGIC_VECTOR(7 downto 0);
signal o_q			: STD_LOGIC_VECTOR(7 downto 0);

begin

DUT: eightBit2x1MUX
	PORT MAP (
		i_sel	=> i_sel,
		i_A	=> i_A,
		i_B	=> i_B,
		o_q	=> o_q);

stimulus: process
begin
	-- Test case 1: i_sel = 0, o_q = i_A
	i_A <= "00000001"; 
	i_B <= "01000000"; 
	i_sel <= '0';
	wait for 10 ns;
	assert (o_q = i_A) report "Test case 1 failed" severity error;

	-- Test case 2: i_sel = 1, o_q = i_B
	i_sel <= '1';
	wait for 10 ns;
	assert (o_q = i_B) report "Test case 2 failed" severity error;

	wait;
end process;

end tb;
