library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_add_16 is
end test_add_16;

architecture test of test_add_16 is
signal a,b : std_logic_vector(15 downto 0);
signal sum: std_logic_vector(15 downto 0);
signal carry, overflow: std_logic;

component add_16 is
	port(i_a, i_b : in std_logic_vector(15 downto 0);
      o_sum : out std_logic_vector(15 downto 0);
      o_carry, o_overflow : out std_logic);
end component;

begin

impl: add_16 port map(a, b, sum, carry, overflow);

b <= std_logic_vector(to_unsigned(65535, 16));

stimulus: process begin
        for i in 0 to 65535 loop
            a <= std_logic_vector(to_unsigned(i, 16));
            wait for 5 ns;
        end loop;
		  wait;
    end process;	
end test;