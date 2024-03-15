library ieee; 
use ieee.std_logic_1164.all;

entity mux161 is 
	port(
		in_vec : in std_logic_vector(15 downto 0);
		sel : in std_logic_vector(3 downto 0);
		outp : out std_logic
	);

end entity; 

architecture rtl of mux161 is
signal sel_1 : std_logic_vector(2 downto 0);
signal mux1, mux2 : std_logic; 
begin 
	sel_1 <= sel(2 downto 0);
	mux_one: work.mux81(rtl) 
		port map(
			i0 => in_vec(0),
			i1 => in_vec(1),
			i2 => in_vec(2), 
			i3 => in_vec(3), 
			i4 => in_vec(4), 
			i5 => in_vec(5), 
			i6 => in_vec(6), 
			i7 => in_vec(7),	
			sel => sel_1,									
			outp => mux1);
		
	mux_two : work.mux81(rtl) 
		port map(
			i0 => in_vec(8),
			i1 => in_vec(9),
			i2 => in_vec(10), 
			i3 => in_vec(11), 
			i4 => in_vec(12), 
			i5 => in_vec(13), 
			i6 => in_vec(14), 
			i7 => in_vec(15),	
			sel => sel_1,									
			outp => mux2);
	
	decider_mux : work.mux21(rtl)
		port map( 
			sel => sel(3),
			in0 => mux1,
			in1 => mux2, 
			outp => outp);
end rtl;  