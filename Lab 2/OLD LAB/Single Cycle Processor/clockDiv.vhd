library ieee;
use ieee.std_logic_1164.all;

entity clockDiv is
	port(in_clk : in std_logic;
			out_clk : buffer std_logic);
end clockDiv;

architecture rtl of clockDiv is
	signal counter : integer range 0 to 4 := 0;
	begin	
		process(in_clk)
		begin	if rising_edge(in_clk) then
			counter <= counter + 1;
			if counter = 4 then
				out_clk <= not out_clk;
				counter <= 0;
			end if;
		end if;
	end process;
end rtl;	