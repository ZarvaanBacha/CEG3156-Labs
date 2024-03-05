library IEEE;
use IEEE.std_logic_1164.all;

entity reg_load_shiftL is
	generic (bits : integer := 8);
	port ( i_data : in std_logic_vector(bits downto 1);
			i_load, i_shiftL : in std_logic;
			i_clock : in std_logic;
			o_data : out std_logic_vector(bits downto 1));
end reg_load_shiftL;

architecture struct of reg_load_shiftL is
signal int_in : std_logic_vector(bits downto 1);
signal int_out : std_logic_vector(bits downto 1);
signal int_load_shiftL : std_logic;
component reg is
	generic (bits : integer := 1);
	port ( i_data : in std_logic_vector(bits downto 1);
			i_load : in std_logic;
			i_clock : in std_logic;
			o_data : out std_logic_vector(bits downto 1));
end component;
component MUX_2_To_1 IS
	PORT(
		i_Value1, i_Value0	: IN	STD_LOGIC;
		i_Selector 				: IN	STD_LOGIC;
		o_Value					: OUT	STD_LOGIC);
end component;

begin

mux_1: MUX_2_To_1 port map('0', i_data(1), i_shiftL, int_in(1));
reg_1: reg port map (int_in(1 downto 1), int_load_shiftL, i_clock, int_out(1 downto 1));

int_load_shiftL <= i_load or i_shiftL;

perbitloop: for i in 2 to bits generate
	mux_i: MUX_2_To_1 port map(int_out(i-1), i_data(i), i_shiftL, int_in(i));
	
	reg_i: reg port map (int_in(i downto i), int_load_shiftL, i_clock, int_out(i downto i));
end generate;

o_data <= int_out(bits downto 1);

end struct;