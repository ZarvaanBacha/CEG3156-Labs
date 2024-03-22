LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY eightBitComparator IS
	PORT(
		i_Ai, i_Bi			: IN	STD_LOGIC_VECTOR(7 downto 0);
		o_GT, o_LT, o_EQ		: OUT	STD_LOGIC);
END eightBitComparator;

ARCHITECTURE rtl OF eightBitComparator IS
	SIGNAL int_GT, int_LT : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL gnd : STD_LOGIC;

	COMPONENT oneBitComparator
	port(i_A, i_B, i_GTprev, i_LTprev : in std_logic;
			o_GT, o_LT, o_EQ: out std_logic);
	END COMPONENT;

BEGIN

	-- Concurrent Signal Assignment
	gnd <= '0';

comp7: oneBitComparator
	PORT MAP (i_GTPrev => gnd, 
	          i_LTPrev => gnd,
			  i_A => i_Ai(7),
			  i_B => i_Bi(7),
			  o_GT => int_GT(7),
			  o_LT => int_LT(7));

comp6: oneBitComparator
	PORT MAP (i_GTPrev => int_GT(7), 
	          i_LTPrev => int_LT(7),
			  i_A => i_Ai(6),
			  i_B => i_Bi(6),
			  o_GT => int_GT(6),
			  o_LT => int_LT(6));

comp5: oneBitComparator
	PORT MAP (i_GTPrev => int_GT(6), 
	          i_LTPrev => int_LT(6),
			  i_A => i_Ai(5),
			  i_B => i_Bi(5),
			  o_GT => int_GT(5),
			  o_LT => int_LT(5));
comp4: oneBitComparator
	PORT MAP (i_GTPrev => int_GT(5), 
	          i_LTPrev => int_LT(5),
			  i_A => i_Ai(4),
			  i_B => i_Bi(4),
			  o_GT => int_GT(4),
			  o_LT => int_LT(4));

comp3: oneBitComparator
	PORT MAP (i_GTPrev => int_GT(4), 
	          i_LTPrev => int_LT(4),
			  i_A => i_Ai(3),
			  i_B => i_Bi(3),
			  o_GT => int_GT(3),
			  o_LT => int_LT(3));
		
comp2: oneBitComparator
	PORT MAP (i_GTPrev => int_GT(3), 
	          i_LTPrev => int_LT(3),
			  i_A => i_Ai(2),
			  i_B => i_Bi(2),
			  o_GT => int_GT(2),
			  o_LT => int_LT(2));

comp1: oneBitComparator
	PORT MAP (i_GTPrev => int_GT(2), 
	          i_LTPrev => int_LT(2),
			  i_A => i_Ai(1),
			  i_B => i_Bi(1),
			  o_GT => int_GT(1),
			  o_LT => int_LT(1));

comp0: oneBitComparator
	PORT MAP (i_GTPrev => int_GT(1), 
	          i_LTPrev => int_LT(1),
			  i_A => i_Ai(0),
			  i_B => i_Bi(0),
			  o_GT => int_GT(0),
			  o_LT => int_LT(0));

	-- Output Driver
	o_GT <= int_GT(0);
	o_LT <= int_LT(0);
	o_EQ <= int_GT(0) nor int_LT(0);

END rtl;
