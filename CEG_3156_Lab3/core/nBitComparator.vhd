LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.core_utils.all;
ENTITY nBitComparator IS
	generic(word_size : integer := 8);
	PORT(
		i_Ai, i_Bi			: IN	STD_LOGIC_VECTOR(7 downto 0);
		o_GT, o_LT, o_EQ		: OUT	STD_LOGIC);
END nBitComparator;

ARCHITECTURE rtl OF nBitComparator IS
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
		PORT MAP (
			i_GTPrev => gnd, 
	      i_LTPrev => gnd,
			i_A => i_Ai(7),
			i_B => i_Bi(7),
			o_GT => int_GT(7),
			o_LT => int_LT(7));
			  
	genloop: for i in word_size - 2 downto 0 generate
		comp: oneBitComparator
			port map(
				i_GTPrev => int_GT(i + 1),
				i_LTPrev => int_LT(i + 1),
				i_A => i_Ai(i),
				i_B => i_Bi(i),
				o_GT => int_GT(i),
				o_LT => int_LT(i)
			);
	end generate; 

	-- Output Driver
	o_GT <= int_GT(0);
	o_LT <= int_LT(0);
	o_EQ <= int_GT(0) nor int_LT(0);

END rtl;
