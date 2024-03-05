library verilog;
use verilog.vl_types.all;
entity shift_multiplier_8_bit_data is
    port(
        i_a             : in     vl_logic_vector(7 downto 0);
        i_b             : in     vl_logic_vector(7 downto 0);
        i_clock         : in     vl_logic;
        i_initialize    : in     vl_logic;
        i_shift         : in     vl_logic;
        i_loadPR        : in     vl_logic;
        i_loadOut       : in     vl_logic;
        i_setCounter    : in     vl_logic;
        o_multiplier_LSB: out    vl_logic;
        o_multiplier_second_LSB: out    vl_logic;
        o_countDone     : out    vl_logic;
        o_product       : out    vl_logic_vector(15 downto 0)
    );
end shift_multiplier_8_bit_data;
