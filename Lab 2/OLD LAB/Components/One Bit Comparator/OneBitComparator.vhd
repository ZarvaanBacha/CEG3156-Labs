library ieee;
use ieee.std_logic_1164.all;

entity oneBitComparator is 
	port(i_A, i_B, i_GTprev, i_LTprev : in std_logic;
			o_GT, o_LT, o_EQ: out std_logic);
end oneBitComparator;

architecture rtl of oneBitComparator is
	signal int_GT, int_LT : std_logic;
	
	begin 
	int_GT <= (i_A and not(i_LTPrev) and not(i_B)) or i_GTprev;
	int_LT <= (not(i_A) and i_B and not(i_GTprev)) or i_LTPrev;

	o_GT <= int_GT;
	o_LT <= int_LT;
	o_EQ <= int_GT nor int_LT;
end rtl;