library ieee;
use ieee.std_logic_1164.all;

entity eightBitComplementer is
	port (in_a : in std_logic_vector (7 downto 0);
			in_enable : in std_logic;
			out_result : out std_logic_vector(7 downto 0));
end eightBitComplementer;

architecture rtl of eightBitComplementer is
	begin
	out_result <= in_a XOR (in_enable & in_enable & in_enable & in_enable & in_enable & in_enable & in_enable & in_enable);

end rtl;