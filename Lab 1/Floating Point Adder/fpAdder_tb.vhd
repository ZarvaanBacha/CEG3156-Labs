LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY fpAdder_tb IS
END fpAdder_tb;

ARCHITECTURE tb_arch OF fpAdder_tb IS
    -- Component declaration for the DUT (Design Under Test)
    COMPONENT fpAdder
    PORT (
        GClock, GReset           : IN    STD_LOGIC;
        SignA, SignB            : IN    STD_LOGIC;
        MantissaA, MantissaB    : IN    STD_LOGIC_VECTOR(7 downto 0);
        ExponentA, ExponentB    : IN    STD_LOGIC_VECTOR(6 downto 0);
        SignOut                 : OUT   STD_LOGIC;
        MantissaOut             : OUT   STD_LOGIC_VECTOR(7 downto 0);
        ExponentOut             : OUT   STD_LOGIC_VECTOR(6 downto 0);
        Overflow                : OUT   STD_LOGIC
    );
    END COMPONENT;

    -- Signals for testbench
    SIGNAL GClock_tb, GReset_tb         : STD_LOGIC := '0';
    SIGNAL SignA_tb, SignB_tb           : STD_LOGIC := '0';
    SIGNAL MantissaA_tb, MantissaB_tb   : STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL ExponentA_tb, ExponentB_tb   : STD_LOGIC_VECTOR(6 downto 0);
    SIGNAL SignOut_tb                   : STD_LOGIC;
    SIGNAL MantissaOut_tb               : STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL ExponentOut_tb               : STD_LOGIC_VECTOR(6 downto 0);
    SIGNAL Overflow_tb                  : STD_LOGIC;

BEGIN

    -- Instantiate the DUT
    dut: fpAdder PORT MAP (
        GClock => GClock_tb,
        GReset => GReset_tb,
        SignA => SignA_tb,
        SignB => SignB_tb,
        MantissaA => MantissaA_tb,
        MantissaB => MantissaB_tb,
        ExponentA => ExponentA_tb,
        ExponentB => ExponentB_tb,
        SignOut => SignOut_tb,
        MantissaOut => MantissaOut_tb,
        ExponentOut => ExponentOut_tb,
        Overflow => Overflow_tb
    );

    -- Clock process
    CLK_PROCESS: PROCESS
    BEGIN
        GClock_tb <= '0';
        WAIT FOR 20 ns;
        GClock_tb <= '1';
        WAIT FOR 20 ns;
    END PROCESS;

    -- Stimulus process
    STIMULUS_PROCESS: PROCESS
    BEGIN
        GReset_tb <= '0';
        SignA_tb <= '0';
        SignB_tb <= '0';
        MantissaA_tb <= "01001000"; -- Mantissa for 10.1
        MantissaB_tb <= "00110100"; -- Mantissa for 6.5
        ExponentA_tb <= "1000010";  -- Exponent for 10.1
        ExponentB_tb <= "1000001";  -- Exponent for 6.5

        WAIT FOR 50 ns;
        GReset_tb <= '1'; -- Release reset

        -- Wait for simulation to finish
        WAIT FOR 50 ns;

        -- Add more test cases here if needed

        WAIT;
    END PROCESS;

    -- Assertion process
    ASSERTION_PROCESS: PROCESS
    BEGIN
        -- Add assertions here based on expected results
        WAIT FOR 200 ns; -- Wait for a while before checking assertions
        ASSERT SignOut_tb = '0' AND MantissaOut_tb = "01100100" AND ExponentOut_tb = "1000010"
        REPORT "Addition of 10.1 and 6.5 failed!" SEVERITY ERROR;
        
        -- Add more assertions here if needed

        WAIT;
    END PROCESS;

END tb_arch;
