library verilog;
use verilog.vl_types.all;
entity DispController_vlg_sample_tst is
    port(
        i_instOut       : in     vl_logic_vector(31 downto 0);
        i_MuxOut        : in     vl_logic_vector(7 downto 0);
        i_swapButton    : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DispController_vlg_sample_tst;
