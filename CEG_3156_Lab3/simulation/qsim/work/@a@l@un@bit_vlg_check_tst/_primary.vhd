library verilog;
use verilog.vl_types.all;
entity ALUnBit_vlg_check_tst is
    port(
        c_out           : in     vl_logic;
        result          : in     vl_logic_vector(7 downto 0);
        V               : in     vl_logic;
        zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ALUnBit_vlg_check_tst;
