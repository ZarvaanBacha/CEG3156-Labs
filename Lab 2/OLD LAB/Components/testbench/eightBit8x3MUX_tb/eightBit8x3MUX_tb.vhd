library ieee;
use ieee.std_logic_1164.all;

entity eightBit8x3MUX_tb is
end eightBit8x3MUX_tb;

architecture tb of eightBit8x3MUX_tb is

component eightBit8x3MUX is
	PORT (
		i_sel															: IN 	STD_LOGIC_VECTOR(2 downto 0);
		i_A0, i_A1, i_A2, i_A3, i_A4, i_A5, i_A6, i_A7  : IN 	STD_LOGIC_VECTOR(7 downto 0);
		o_q															: OUT	STD_LOGIC_VECTOR(7 downto 0));
end component;

signal sel										: STD_LOGIC_VECTOR(2 downto 0);
signal A0, A1, A2, A3, A4, A5, A6, A7  : STD_LOGIC_VECTOR(7 downto 0);
signal q											: STD_LOGIC_VECTOR(7 downto 0);

begin

DUT: eightBit8x3MUX
	PORT MAP (
		i_sel	=> sel,
		i_A0	=> A0,
		i_A1	=> A1,
		i_A2	=> A2,
		i_A3	=> A3,
		i_A4	=> A4,
		i_A5	=> A5,
		i_A6	=> A6,
		i_A7	=> A7,
		o_q	=> q);

stimulus: process
begin

	A0 <= "00000001"; 
 	A1 <= "00000010"; 
	A2 <= "00000100"; 
	A3 <= "00001000"; 
	A4 <= "00010000"; 
	A5 <= "00100000"; 
	A6 <= "01000000"; 
	A7 <= "10000000"; 
	sel <= "000";
	wait for 10 ns;
	assert (q = A0) report "Test case 1 failed" severity error;

	sel <= "100";
	wait for 10 ns;
	assert (q = A4) report "Test case 2 failed" severity error;

	sel <= "111";
	wait for 10 ns;
	assert (q = A7) report "Test case 3 failed" severity error;
	
	wait;
end process;

end tb;
