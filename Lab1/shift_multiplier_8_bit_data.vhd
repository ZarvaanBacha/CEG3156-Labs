library ieee;
use ieee.std_logic_1164.all;

entity shift_multiplier_8_bit_data is
	port(i_a, i_b: in std_logic_vector(7 downto 0);
		i_clock: in std_logic;
		i_initialize, i_shift, i_loadPR, i_loadOut, i_setCounter: in std_logic;
		o_multiplier_LSB, o_multiplier_second_LSB,o_countDone: out std_logic;
      o_product : out std_logic_vector(15 downto 0));
end shift_multiplier_8_bit_data;

architecture structural of shift_multiplier_8_bit_data is
signal int_multiplicand, int_sum, int_product, int_output : std_logic_vector(15 downto 0);
signal int_multiplier: std_logic_vector (7 downto 0);
signal int_timer: std_logic_vector (3 downto 0);
signal int_greaterThan: std_logic;
signal int_multiplicand_Input: std_logic_vector (15 downto 0);

component add_16 is
	port(i_a, i_b : in std_logic_vector(15 downto 0);
      o_sum : out std_logic_vector(15 downto 0);
      o_carry, o_overflow : out std_logic);
end component;

component timer is
	port(i_clock, i_clear : in std_logic;
			output : out std_logic_vector(3 downto 0));
end component;

component reg_load_shiftL is
	generic (bits : integer := 8);
	port ( i_data : in std_logic_vector(bits downto 1);
			i_load, i_shiftL : in std_logic;
			i_clock : in std_logic;
			o_data : out std_logic_vector(bits downto 1));
end component;

component reg_load_shiftr is
	generic (bits : integer := 1);
	port ( i_data : in std_logic_vector(bits downto 1);
			i_load, i_shiftr : in std_logic;
			i_clock : in std_logic;
			o_data : out std_logic_vector(bits downto 1));
end component;

component reg is
	generic (bits : integer := 1);
	port ( i_data : in std_logic_vector(bits downto 1);
			i_load : in std_logic;
			i_clock : in std_logic;
			o_data : out std_logic_vector(bits downto 1));
end component;

component cmp is
	generic (bits : integer := 2); --must be 2 or greater. use cmp_1 for 1 bit.
	port (i_a, i_b : in std_logic_vector(bits downto 1);
			o_gt, o_eq, o_lt : out std_logic);
end component;

component reg_clear is
	generic (bits : integer := 1);
	port ( i_data : in std_logic_vector(bits downto 1);
			i_load, i_clear : in std_logic;
			i_clock : in std_logic;
			o_data : out std_logic_vector(bits downto 1));
end component;

begin

int_multiplicand_Input <= ("00000000" & i_a);

multiplicand: reg_load_shiftL generic map(bits => 16)
	port map(int_multiplicand_Input, i_initialize, i_shift, i_clock, int_multiplicand);

multiplier: reg_load_shiftr generic map(bits => 8)
	port map(i_b, i_initialize, i_shift, i_clock, int_multiplier);

--//////////
o_multiplier_LSB <= int_multiplier(0);
o_multiplier_second_LSB <= int_multiplier(1);	
--//////////

adder: add_16 port map (int_multiplicand, int_product, int_sum, OPEN, OPEN);

productReg: reg_clear generic map (bits => 16)
	port map (int_sum, i_loadPR, i_initialize, i_clock, int_product);
	
outputReg: reg generic map (bits => 16)
	port map (int_product, i_loadOut, i_clock, int_output);

--//////////
o_product <= int_output;	
--//////////	

counter: timer port map (i_clock, i_setCounter, int_timer);

comparator: cmp generic map (bits => 4)
	port map ("1000", int_timer, int_greaterThan, OPEN, OPEN); 

--//////////	
o_countDone <= not(int_greaterThan);
--//////////	

end structural;