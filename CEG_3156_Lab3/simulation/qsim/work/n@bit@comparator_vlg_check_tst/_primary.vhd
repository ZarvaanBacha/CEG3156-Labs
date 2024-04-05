library verilog;
use verilog.vl_types.all;
entity nBitComparator_vlg_check_tst is
    port(
        o_EQ            : in     vl_logic;
        o_GT            : in     vl_logic;
        o_LT            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end nBitComparator_vlg_check_tst;
