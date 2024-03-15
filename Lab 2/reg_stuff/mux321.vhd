library ieee;
use ieee.std_logic_1164.all; 
entity mux321 is 
	port(
		in_vec : in std_logic_vector(31 downto 0);
		sel : in std_logic_vector(4 downto 0);
		outp : out std_logic
	);
end entity; 

architecture rtl of mux321 is 
signal sel_1 : std_logic_vector(3 downto 0);
signal mux1, mux2 : std_logic; 
begin 
	sel_1 <= sel(3 downto 0);
	mux_one: work.mux161(rtl)
		port map(
			in_vec => in_vec(15 downto 0),
			sel => sel_1,
			outp => mux1
		);
	mux_two: work.mux161(rtl)
		port map(
			in_vec => in_vec(31 downto 16),
			sel => sel_1,
			outp => mux2 
		);
	decider_mux : work.mux21(rtl)
		port map( 
			sel => sel(4),
			in0 => mux1,
			in1 => mux2, 
			outp => outp);
end rtl; 

