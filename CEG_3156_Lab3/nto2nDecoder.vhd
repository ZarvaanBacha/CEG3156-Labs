library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity nto2nDecoder is 
	generic(n : integer := 3);
	port(
		in_put : in std_logic_vector(n - 1 downto 0);
		out_put : out std_logic_vector((2**n)-1 downto 0)
	);
end entity; 
architecture struct of nto2nDecoder is
begin 
	process(in_put)
	begin
		out_put <= (others => '0');
		out_put(to_integer(unsigned(in_put))) <= '1'; 
	end process; 
end architecture; 