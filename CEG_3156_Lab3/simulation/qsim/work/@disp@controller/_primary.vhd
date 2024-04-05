library verilog;
use verilog.vl_types.all;
entity DispController is
    port(
        i_swapButton    : in     vl_logic;
        i_MuxOut        : in     vl_logic_vector(7 downto 0);
        i_instOut       : in     vl_logic_vector(31 downto 0);
        co_display1     : out    vl_logic_vector(6 downto 0);
        co_display2     : out    vl_logic_vector(6 downto 0);
        co_display3     : out    vl_logic_vector(6 downto 0);
        co_display4     : out    vl_logic_vector(6 downto 0);
        co_display5     : out    vl_logic_vector(6 downto 0);
        co_display6     : out    vl_logic_vector(6 downto 0);
        co_display7     : out    vl_logic_vector(6 downto 0);
        co_display8     : out    vl_logic_vector(6 downto 0)
    );
end DispController;
