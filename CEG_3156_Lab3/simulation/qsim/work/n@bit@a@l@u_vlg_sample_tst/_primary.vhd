library verilog;
use verilog.vl_types.all;
entity nBitALU_vlg_sample_tst is
    port(
        i_A             : in     vl_logic_vector(7 downto 0);
        i_B             : in     vl_logic_vector(7 downto 0);
        i_op            : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end nBitALU_vlg_sample_tst;
