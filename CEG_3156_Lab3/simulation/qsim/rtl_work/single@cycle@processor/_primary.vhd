library verilog;
use verilog.vl_types.all;
entity singleCycleProcessor is
    port(
        swapButton      : in     vl_logic;
        GReset          : in     vl_logic;
        GClock          : in     vl_logic;
        memClock        : in     vl_logic;
        ValueSelect     : in     vl_logic_vector(2 downto 0);
        MuxOut          : out    vl_logic_vector(7 downto 0);
        InstructionOut  : out    vl_logic_vector(31 downto 0);
        BranchOut       : out    vl_logic;
        ZeroOut         : out    vl_logic;
        MemWriteOut     : out    vl_logic;
        RegWriteOut     : out    vl_logic;
        o_display1      : out    vl_logic_vector(6 downto 0);
        o_display2      : out    vl_logic_vector(6 downto 0);
        o_display3      : out    vl_logic_vector(6 downto 0);
        o_display4      : out    vl_logic_vector(6 downto 0);
        o_display5      : out    vl_logic_vector(6 downto 0);
        o_display6      : out    vl_logic_vector(6 downto 0);
        o_display7      : out    vl_logic_vector(6 downto 0);
        o_display8      : out    vl_logic_vector(6 downto 0)
    );
end singleCycleProcessor;
