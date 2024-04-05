library verilog;
use verilog.vl_types.all;
entity nBitComparator_vlg_sample_tst is
    port(
        i_Ai            : in     vl_logic_vector(7 downto 0);
        i_Bi            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end nBitComparator_vlg_sample_tst;
