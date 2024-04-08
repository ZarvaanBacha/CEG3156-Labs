library verilog;
use verilog.vl_types.all;
entity singleCycleProcessor_vlg_sample_tst is
    port(
        GClock          : in     vl_logic;
        GReset          : in     vl_logic;
        memClock        : in     vl_logic;
        swapButton      : in     vl_logic;
        ValueSelect     : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end singleCycleProcessor_vlg_sample_tst;
