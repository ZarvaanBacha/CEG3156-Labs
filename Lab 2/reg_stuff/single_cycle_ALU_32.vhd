-- assuming we're using the components i provided
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 

entity single_cycle_ALU_32 is 
    port (
        a_in, b_in : in std_logic_vector(31 downto 0);
        alu_op : in std_logic_vector(2 downto 0);
        zero, c_out, V : out std_logic;
        result : out std_logic_vector(31 downto 0) 
    );
end entity;


architecture rtl of single_cycle_ALU_32 is 
signal res, send_out, slt, all_zeroes : std_logic_vector(31 downto 0);
begin 

-- 000 -> and 
-- 001 -> or
-- 010 -> add
-- 110 -> sub
-- 111 -> slt
	process(all_zeroes, res)
	begin 
		if all_zeroes = res then
			zero <= '1';
		else 
			zero <= '0'; 
		end if; 
	end process; 
    adder: work.adder_nbit(rtl)
        generic map(32)
        port map(
            a_in => a_in,
            b_in => b_in,
            c_out => c_out,
            subtract => (alu_op(2) and alu_op(1) and not(alu_op(0))) or (alu_op(2) and alu_op(1) and alu_op(0)),
            overflow_out => V,
            s_out => res
        );
    mux : work.mux81n(rtl)
        generic map(32)
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
	all_zeroes <= (others => '0');
	slt <= (0 => res(31), others => '0');
   result <= send_out;

	
end rtl; 
