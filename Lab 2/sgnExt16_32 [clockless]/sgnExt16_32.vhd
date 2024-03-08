library ieee;
use ieee.std_logic_1164.all;

entity sgnExt16_32 is
    port (
        in_q  : in  std_logic_vector(15 downto 0);
        out_d : out std_logic_vector(31 downto 0)
    );
end entity sgnExt16_32;

architecture RTL of sgnExt16_32 is 
    signal data : std_logic_vector(31 downto 0);
begin 
    process(in_q)
    begin 
		if (in_q(15) = '1') then
			data(31 downto 16) <= (others => '1');
			else
				data(31 downto 16) <= (others => '0');
					end if;
      data(15 downto 0) <= in_q;
    end process;

    out_d <= data;
end architecture RTL;
