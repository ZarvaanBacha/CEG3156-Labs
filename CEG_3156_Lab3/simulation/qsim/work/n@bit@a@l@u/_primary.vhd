library verilog;
use verilog.vl_types.all;
entity nBitALU is
    port(
        i_op            : in     vl_logic_vector(2 downto 0);
        i_A             : in     vl_logic_vector(7 downto 0);
        i_B             : in     vl_logic_vector(7 downto 0);
        o_zero          : out    vl_logic;
        o_q             : out    vl_logic_vector(7 downto 0)
    );
end nBitALU;
