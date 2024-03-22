library ieee;
use ieee.std_logic_1164.all;

entity eightBitAdder_tb is
end entity;

architecture behavioral of eightBitAdder_tb is

component eightBitAdder
	PORT ( 		
			i_x		: IN STD_LOGIC_VECTOR(7 downto 0);
			i_y		: IN STD_LOGIC_VECTOR(7 downto 0);
			i_cin		: IN STD_LOGIC;
			o_cout	: OUT STD_LOGIC;
			o_s		: OUT STD_LOGIC_VECTOR(7 downto 0));
END component;

signal i_x, i_y      : std_logic_vector(7 downto 0);
signal o_s           : std_logic_vector(7 downto 0);
signal i_cin, o_cout : std_logic;

begin

UUT: eightBitAdder
	PORT MAP (
		i_x => i_x,
		i_y => i_y,
		i_cin => i_cin,
		o_cout => o_cout,
		o_s => o_s
	);

test_process : process
begin
	-- Test case 1: Check the sum of two positive numbers with no carry in
	i_x <= "00000111";
	i_y <= "00000101";
	i_cin <= '0';
	wait for 10 ns;

	assert o_s = "00001100" and o_cout = '0' report "Test case 1 failed: Sum of two positive numbers with no carry in" severity failure;

	-- Test case 2: Check the sum of two positive numbers with carry in
	i_x <= "00001111";
	i_y <= "00000111";
	i_cin <= '1';
	wait for 10 ns;

	assert o_s = "00010111" and o_cout = '0' report "Test case 2 failed: Sum of two positive numbers with carry in" severity failure;

	-- more test cases can be added here
	
	wait;
end process;


end architecture;