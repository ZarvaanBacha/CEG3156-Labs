library ieee;
use ieee.std_logic_1164.all;

entity sevenBitRegister_tb is
end entity;

architecture behavioral of sevenBitRegister_tb is

	component sevenBitRegister is
		PORT ( 	
			i_GReset	: IN	STD_LOGIC;
			i_clock 	: IN	STD_LOGIC;
			i_E		: IN	STD_LOGIC_VECTOR(6 downto 0);
			i_load 		: IN	STD_LOGIC;
			o_E		: OUT	STD_LOGIC_VECTOR(6 downto 0));
	end component;

	signal i_GReset	: STD_LOGIC := '0';
	signal i_clock 	: STD_LOGIC := '0';
	signal i_E	: STD_LOGIC_VECTOR(6 downto 0) := "0000000";
	signal i_load 	: STD_LOGIC := '0';
	signal o_E	: STD_LOGIC_VECTOR(6 downto 0);

begin

	UUT: sevenBitRegister port map (
		i_GReset	=> i_GReset,
		i_clock 	=> i_clock,
		i_E		=> i_E,
		i_load 		=> i_load,
		o_E		=> o_E);
		
	-- Clock Generation Process
	clock_process : process
	begin
		i_clock <= '0';
		wait for 5 ns;
		i_clock <= '1';
		wait for 5 ns;
	end process;

	test: process
	begin
	
	-- Test case 1: Load new value into register
	i_E <= "1010110";
	i_GReset <= '1';
	i_load <= '1';
	wait for 10 ns;
	
	assert o_E = "1010110" report "Test case 1: Incorrect value loaded in register" severity error;
	
	-- Test case 2: Check if the register retains its value
	i_load <= '0';
	wait for 10 ns;
	assert o_E = "1010110" report "Test case 2: Incorrect value in register after clock edge" severity error;
	
	-- Test case 3: Check if the register resets properly
	i_GReset <= '0';
	wait for 10 ns;
	assert o_E = "0000000" report "Incorrect value in register after reset" severity error;

	end process;
	
end architecture;