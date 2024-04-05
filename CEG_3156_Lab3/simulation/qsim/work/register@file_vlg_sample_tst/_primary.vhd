library verilog;
use verilog.vl_types.all;
entity registerFile_vlg_sample_tst is
    port(
        i_clock         : in     vl_logic;
        i_gReset        : in     vl_logic;
        i_readRegister1 : in     vl_logic_vector(2 downto 0);
        i_readRegister2 : in     vl_logic_vector(2 downto 0);
        i_regWrite      : in     vl_logic;
        i_writeData     : in     vl_logic_vector(7 downto 0);
        i_writeRegister : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end registerFile_vlg_sample_tst;
