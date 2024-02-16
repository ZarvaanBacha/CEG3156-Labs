library ieee;
use ieee.std_logic_1164.all;

entity oneBitFullAdder is 
	port (in_a, in_b, in_cin : in std_logic;
			out_cout, out_sum : out std_logic);
end oneBitFullAdder;

architecture struct of oneBitFullAdder is
	signal sum : std_logic;
	signal cout : std_logic;
	
	begin 
	-- Calculating sum and carry out 
	sum <= (in_a xor in_b) xor in_cin;
	cout <= (in_a and in_b) or (in_a and in_cin) or (in_b and in_cin);

	-- Output Assignment 
	out_sum <= sum;
	out_cout <= cout;
	
end struct;