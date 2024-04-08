library verilog;
use verilog.vl_types.all;
entity singleCycleProcessor_vlg_check_tst is
    port(
        BranchOut       : in     vl_logic;
        InstructionOut  : in     vl_logic_vector(31 downto 0);
        MemWriteOut     : in     vl_logic;
        MuxOut          : in     vl_logic_vector(7 downto 0);
        o_display1      : in     vl_logic_vector(6 downto 0);
        o_display2      : in     vl_logic_vector(6 downto 0);
        o_display3      : in     vl_logic_vector(6 downto 0);
        o_display4      : in     vl_logic_vector(6 downto 0);
        o_display5      : in     vl_logic_vector(6 downto 0);
        o_display6      : in     vl_logic_vector(6 downto 0);
        o_display7      : in     vl_logic_vector(6 downto 0);
        o_display8      : in     vl_logic_vector(6 downto 0);
        RegWriteOut     : in     vl_logic;
        ZeroOut         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end singleCycleProcessor_vlg_check_tst;
