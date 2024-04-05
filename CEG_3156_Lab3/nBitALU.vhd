library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

use work.core_utils.all; 

ENTITY nBitALU IS
	generic(word_size : integer := 8);
	PORT (	i_op			: IN	STD_LOGIC_VECTOR(2 downto 0);
				i_A, i_B		: IN	STD_LOGIC_VECTOR(word_size - 1 downto 0);
				o_zero		: OUT	STD_LOGIC;
				o_q			: OUT	STD_LOGIC_VECTOR(word_size - 1 downto 0));
END nBitALU;

ARCHITECTURE struct OF nBitALU IS

SIGNAL int_AND, int_OR, int_RES, int_SUB, int_SLT, all_zeroes : STD_LOGIC_VECTOR(word_size - 1 downto 0);
SIGNAL int_cout, int_tosub : STD_LOGIC;
SIGNAL int_q : STD_LOGIC_VECTOR(word_size - 1 downto 0);
SIGNAL int_A3, int_A4, int_A5 : STD_LOGIC_VECTOR(word_size - 1 downto 0);

BEGIN

-- 000 -> and
-- 001 -> or
-- 010 -> add
--	110 -> sub
-- 111 -> slt
--
int_AND <= i_A AND i_B;
int_OR <= i_A OR i_B;
all_zeroes <= (others => '0');
int_SLT(word_size - 1 downto 1) <= (others => '0');
int_A3 <= (others => '0');
int_A4 <= (others => '0');
int_A5 <= (others => '0');

int_tosub <= i_op(2) and i_op(1) and not(i_op(0));

adder: adder_nbit
	generic map(word_size)
	PORT MAP (	a_in => i_A,
					b_in => i_B,
					c_in => '0',
					subtract => int_tosub, 
					c_out => int_cout,
					overflow_out => open, 
					s_out => int_RES);


comparator: nBitComparator
	generic map(word_size)
	PORT MAP (	i_Ai => i_A,
					i_Bi => i_B,
					o_LT => int_SLT(0));

mux: mux81n 
	generic map(word_size)
	PORT MAP (	
		sel 	=> i_op,
		i0 	=> int_AND,
		i1 	=> int_OR,
		i2 	=> int_RES,
		i3 	=> int_A3,
		i4 	=> int_A4,
		i5 	=> int_A5,
		i6 	=> int_RES,
		i7 	=> int_SLT,
		outp 	=> int_q);

	--Output driver
	o_zero <= '1' WHEN int_q = all_zeroes ELSE '0';
	o_q <= int_q;

END struct;
