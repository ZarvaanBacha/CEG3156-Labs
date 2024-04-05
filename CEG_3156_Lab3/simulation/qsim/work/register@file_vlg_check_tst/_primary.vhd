library verilog;
use verilog.vl_types.all;
entity registerFile_vlg_check_tst is
    port(
        o_readData1     : in     vl_logic_vector(7 downto 0);
        o_readData2     : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end registerFile_vlg_check_tst;
