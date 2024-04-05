library verilog;
use verilog.vl_types.all;
entity ALUnBit_vlg_sample_tst is
    port(
        a_in            : in     vl_logic_vector(7 downto 0);
        alu_op          : in     vl_logic_vector(2 downto 0);
        b_in            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALUnBit_vlg_sample_tst;
