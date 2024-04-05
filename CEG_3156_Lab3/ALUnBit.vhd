-- assuming we're using the components i provided
library ieee; 
use ieee.std_logic_1164.all; 
use work.core_utils.all; 
entity ALUnBit is 
	generic(word_size : integer := 8);
    port (
        a_in, b_in : in std_logic_vector(word_size - 1 downto 0);
        alu_op : in std_logic_vector(2 downto 0);
        zero, c_out, V : out std_logic;
        result : out std_logic_vector(word_size - 1 downto 0)
    );
end ALUnBit;
architecture rtl of ALUnBit is 
signal res, send_out, slt: std_logic_vector(word_size - 1 downto 0);
begin 

-- 000 -> and 
-- 001 -> or
-- 010 -> add
-- 110 -> sub
-- 111 -> slt
    adder: adder_nbit
        generic map(word_size)
        port map(
            a_in => a_in,
            b_in => b_in,
				c_in => '0', 
            c_out => c_out,
            subtract => (alu_op(2) and alu_op(1) and not(alu_op(0))) or (alu_op(2) and alu_op(1) and alu_op(0)),
            overflow_out => V,
            s_out => res
        );

    mux : mux81n
        generic map(word_size)
        port map(
            sel => alu_op,
            i0 => a_in and b_in, -- and 
            i1 => a_in or b_in, -- or
            i2 => res, -- add 
            i3 => (others => '0'),
            i4 => (others => '0'), 
            i5 => (others => '0'), 
            i6 => res, -- sub
            i7 => slt, -- slt
            outp => send_out
        );
    slt <= (0 => res(word_size - 1), others => '0');
    result <= send_out; 

end rtl; 
