library ieee;
use ieee.std_logic_1164.all;

entity oneBitFullAdder is
	port(i_x, i_y, i_cin : in std_logic;
			o_cout, o_s : out std_logic);
end oneBitFullAdder;

architecture rtl of oneBitFullAdder is

signal int_s, int_cout : std_logic;

begin 
	int_s <= (i_x xor i_y) xor i_cin;
	int_cout <= (i_x and i_y) or (i_x and i_cin) or (i_y and i_cin);
	
	o_s <= int_s;
	o_cout <= int_cout;
end rtl;
