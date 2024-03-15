library ieee;
use ieee.std_logic_1164.all;
use work.utils.all; 

entity mux321n is 
	generic(data_width : integer := 8);
	port(
		in_vec : in matrix32b(data_width - 1 downto 0);
		sel : in std_logic_vector(4 downto 0);
		outp : out std_logic_vector(data_width - 1 downto 0)
		);
end entity; 

architecture rtl of mux321n is 
begin 
	gen: for i in data_width - 1 downto 0 generate
		mux: work.mux321(rtl)
			port map(
				in_vec => in_vec(i),
				sel => sel,
				outp => outp(i)
			);
	end generate; 
end rtl; 