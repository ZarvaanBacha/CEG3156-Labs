library verilog;
use verilog.vl_types.all;
entity registerFile is
    port(
        i_gReset        : in     vl_logic;
        i_clock         : in     vl_logic;
        i_regWrite      : in     vl_logic;
        i_readRegister1 : in     vl_logic_vector(2 downto 0);
        i_readRegister2 : in     vl_logic_vector(2 downto 0);
        i_writeRegister : in     vl_logic_vector(2 downto 0);
        i_writeData     : in     vl_logic_vector(7 downto 0);
        o_readData1     : out    vl_logic_vector(7 downto 0);
        o_readData2     : out    vl_logic_vector(7 downto 0)
    );
end registerFile;
