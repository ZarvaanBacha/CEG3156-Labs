library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftLeft2_32 is
    Port (
        in_q  : in  std_logic_vector(31 downto 0);
        out_d : out std_logic_vector(31 downto 0)
    );
end entity shiftLeft2_32;

architecture RTL of shiftLeft2_32 is
    signal shifted_data : std_logic_vector(31 downto 0);
begin
    process(in_q)
    begin
		shifted_data <= in_q(29 downto 0) & "00"; -- Shift left by 2 bits
    end process;
	 out_d <= shifted_data;
end architecture RTL;
