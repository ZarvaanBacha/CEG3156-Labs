library ieee;
use ieee.std_logic_1164.all;

entity clockDiv2 is
	port(in_clk : in std_logic;
			out_clk : out std_logic);
end clockDiv2;

architecture rtl of clockDiv2 is
	signal counter : integer range 0 to 1 := 0;
	signal int_clk: std_logic;
	begin	
		process(in_clk)
		begin	if rising_edge(in_clk) then
			counter <= counter + 1;
			if counter = 1 then
				int_clk <= not int_clk;
				counter <= 0;
			end if;
		end if;
		out_clk <= int_clk;
		end process;
end rtl;	