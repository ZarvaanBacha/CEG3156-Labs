library verilog;
use verilog.vl_types.all;
entity shift_multiplier_8_bit_data_vlg_check_tst is
    port(
        o_countDone     : in     vl_logic;
        o_multiplier_LSB: in     vl_logic;
        o_multiplier_second_LSB: in     vl_logic;
        o_product       : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end shift_multiplier_8_bit_data_vlg_check_tst;
