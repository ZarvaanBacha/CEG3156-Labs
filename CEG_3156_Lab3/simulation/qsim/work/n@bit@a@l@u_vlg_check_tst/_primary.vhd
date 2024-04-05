library verilog;
use verilog.vl_types.all;
entity nBitALU_vlg_check_tst is
    port(
        o_q             : in     vl_logic_vector(7 downto 0);
        o_zero          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end nBitALU_vlg_check_tst;
