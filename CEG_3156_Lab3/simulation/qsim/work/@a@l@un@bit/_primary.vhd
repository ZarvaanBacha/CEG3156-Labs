library verilog;
use verilog.vl_types.all;
entity ALUnBit is
    port(
        a_in            : in     vl_logic_vector(7 downto 0);
        b_in            : in     vl_logic_vector(7 downto 0);
        alu_op          : in     vl_logic_vector(2 downto 0);
        zero            : out    vl_logic;
        c_out           : out    vl_logic;
        V               : out    vl_logic;
        result          : out    vl_logic_vector(7 downto 0)
    );
end ALUnBit;
