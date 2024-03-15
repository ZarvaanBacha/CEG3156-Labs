library ieee;
use ieee.std_logic_1164.all;

entity eightBitALU_tb is
end entity;

architecture behavioral of eightBitALU_tb is

component eightBitALU
	PORT (	i_op			: IN	STD_LOGIC_VECTOR(2 downto 0);
				i_A, i_B		: IN	STD_LOGIC_VECTOR(7 downto 0);
				o_zero		: OUT	STD_LOGIC;
				o_q			: OUT	STD_LOGIC_VECTOR(7 downto 0));
END component;

signal i_op			:	STD_LOGIC_VECTOR(2 downto 0);
signal i_A, i_B	:  STD_LOGIC_VECTOR(7 downto 0);
signal o_zero		:	STD_LOGIC;
signal o_q			:	STD_LOGIC_VECTOR(7 downto 0);

begin

UUT: eightBitALU
	PORT MAP (
		i_op => i_op,
		i_A => i_A,
		i_B => i_B,
		o_zero => o_zero,
		o_q => o_q);

test_process : process
begin

	-- Test case 1: Check the AND of two positive numbers with no carry in
	i_A <= "00000101";
	i_B <= "00000101";
	i_op <= "000";
	wait for 10 ns;
	assert o_q = "00000101" and o_zero = '0' report "Test case 1 failed: AND of 2 numbers" severity failure;

	-- Test case 2: Check the OR of two positive numbers with carry in
	i_op <= "001";
	wait for 10 ns;
	assert o_q = "00000101" and o_zero = '0' report "Test case 2 failed: OR of 2 numbers" severity failure;

	-- Test case 3: Check the ADD of two positive numbers with carry in
	i_op <= "010";
	wait for 10 ns;
	assert o_q = "00001010" and o_zero = '0' report "Test case 3 failed: ADD of 2 numbers" severity failure;
	
	-- Test case 4: Check the SUB of two positive numbers with carry in
	i_op <= "110";
	wait for 10 ns;
	assert o_q = "00000000" and o_zero = '1' report "Test case 4 failed: SUB of 2 numbers" severity failure;
	
	-- Test case 5: Check the COMPARATOR of two positive numbers with carry in
	i_op <= "111";
	wait for 10 ns;
	assert o_q = "00000000" and o_zero = '1' report "Test case 5 failed: COMPARATOR of 2 numbers" severity failure;
	
	
	wait;
end process;


end architecture;
