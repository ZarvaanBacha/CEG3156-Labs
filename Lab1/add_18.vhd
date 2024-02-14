library ieee;
use ieee.std_logic_1164.all;

entity add_18 is
	port(i_a, i_b : in std_logic_vector(17 downto 0);
      o_sum : out std_logic_vector(17 downto 0);
      o_carry, o_overflow : out std_logic);
end add_18;

architecture struct of add_18 is
signal int_carry, int_sum : std_logic_vector(17 downto 0);

component full_addr_1 is
 port(i_a,i_b,i_carry : in std_logic;
    	o_carry, o_sum : out std_logic);
end component;

begin

addr0: full_addr_1
	port map (i_a(0), i_b(0), '0',
    	int_carry(0), int_sum(0));
		
adderloop: for i in 1 to 17 generate
	addr_i: full_addr_1 port map (i_a(i), i_b(i), int_carry(i-1),
    	int_carry(i), int_sum(i));
end generate;		


o_carry <= int_carry(17);
o_overflow <= int_carry(17) xor int_carry(16);
o_sum <= int_sum;

end struct;
