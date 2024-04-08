library ieee;
use ieee.std_logic_1164.all; 

package core_utils is
	component enArdFF_2 is 
		port(
			i_resetBar	: IN	STD_LOGIC;
			i_d			: IN	STD_LOGIC;
			i_enable		: IN	STD_LOGIC;
			i_clock		: IN	STD_LOGIC;
			o_q, o_qBar	: OUT	STD_LOGIC
		);
	end component;
	
	component mux21 is 
		port(
			sel, in0, in1 : in std_logic;
			outp : out std_logic);
	end component;
	
	component mux21n is 
		generic(data_width : integer := 8);
		port(
			in0, in1: in std_logic_vector(data_width-1 downto 0);
			sel : in std_logic; 
			outp : out std_logic_vector(data_width-1 downto 0));
	end component; 
	
	component mux41 IS 
		PORT(
			zero, one, two, three 	: IN STD_LOGIC;
			sel0, sel1 					: IN STD_LOGIC;
			outp 							: OUT STD_LOGIC 
		);
	end component; 
	
	component mux41n is
		generic(data_width : integer := 8);
		port(
			zero, one, two, three 	: in std_logic_vector(data_width-1 downto 0);
			sel 							: in std_logic_vector(1 downto 0); 
			outp							: out std_logic_vector(data_width -1 downto 0)
		);
	end component; 
	
	component nto2nDecoder is 
		generic(n : integer := 3);
		port(
			in_put : in std_logic_vector(n - 1 downto 0);
			out_put : out std_logic_vector((2**n)-1 downto 0)
		);
	end component; 
	
	component adder_nbit is 
		generic(data_width : integer := 8);
		port(
			a_in, b_in : in std_logic_vector(data_width-1 downto 0); 
			subtract, c_in : in std_logic; 
			c_out, overflow_out : out std_logic;
			s_out : out std_logic_vector(data_width-1 downto 0));
	end component; 
	
	component mux81 is
		port(
			i0, i1, i2, i3, i4, i5, i6, i7	: in std_logic;
			sel 										: in std_logic_vector(2 downto 0);
			outp 										: out std_logic
		);
	end component; 
	
	component mux81n is 
		generic(data_width : integer := 8);
		port(
			i0, i1, i2, i3, i4, i5, i6, i7	: in std_logic_vector(data_width-1 downto 0);
			sel 										: in std_logic_vector(2 downto 0);
			outp 										: out std_logic_vector(data_width-1 downto 0)
			); 
	end component; 
	
	component oneBitComparator is 
		port(
			i_A, i_B, i_GTprev, i_LTprev : in std_logic;
			o_GT, o_LT, o_EQ: out std_logic);
	end component; 
	
	component nBitComparator IS
		generic(word_size : integer := 8);
		PORT(
			i_Ai, i_Bi			: IN	STD_LOGIC_VECTOR(7 downto 0);
			o_GT, o_LT, o_EQ		: OUT	STD_LOGIC);
	end component;

	
	component uniShiftReg is
		generic(n : integer := 8);
		port(
			in_clk, in_reset, in_enable : in std_logic; 
			in_data : in std_logic_vector(n - 1 downto 0);
			in_shl, in_shr: in std_logic; 
			out_data, out_dataBar : out std_logic_vector(n - 1 downto 0)
		);
	end component; 
	
	component  cmp is
		generic (bits : integer := 2); --must be 2 or greater. use cmp_1 for 1 bit.
		port (i_a, i_b : in std_logic_vector(bits downto 1);
				o_gt, o_eq, o_lt : out std_logic);
	end component;
	
	type matrixNx8 is array(natural range <>) of std_logic_vector(7 downto 0);
	type matrix32b is array(natural range <>) of std_logic_vector(31 downto 0);
end package; 
