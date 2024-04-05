library verilog;
use verilog.vl_types.all;
entity DispController_vlg_check_tst is
    port(
        co_display1     : in     vl_logic_vector(6 downto 0);
        co_display2     : in     vl_logic_vector(6 downto 0);
        co_display3     : in     vl_logic_vector(6 downto 0);
        co_display4     : in     vl_logic_vector(6 downto 0);
        co_display5     : in     vl_logic_vector(6 downto 0);
        co_display6     : in     vl_logic_vector(6 downto 0);
        co_display7     : in     vl_logic_vector(6 downto 0);
        co_display8     : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end DispController_vlg_check_tst;
