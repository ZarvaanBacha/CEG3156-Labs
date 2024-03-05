library ieee;
use ieee.std_logic_1164.all; 

entity sevenBit2x1Mux is 
	port(in_sel : in std_logic;
			in_a, in_b : in std_logic_vector(6 downto 0);
			out_q : out std_logic_vector(6 downto 0));
	end sevenBit2x1Mux;

architecture struct of sevenBit2x1Mux is 
	begin 
	with in_sel select
		out_q <= in_a when '0',
					in_b when '1',
					"0000000" when others;
end struct;