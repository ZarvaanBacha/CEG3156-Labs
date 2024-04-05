library ieee;
use ieee.std_logic_1164.all;

entity HazardDetectionUnit_tb is
end entity HazardDetectionUnit_tb;

architecture tb of HazardDetectionUnit_tb is
    component HazardDetectionUnit
        port (
            idExMemRead : in std_logic;
            isBranch : in std_logic;
            idExRegRt : in std_logic_vector(4 downto 0);
            ifIdRegRs : in std_logic_vector(4 downto 0);
            ifIdRegRt : in std_logic_vector(4 downto 0);
            ifIdWrite : out std_logic;
            PCwrite : out std_logic;
            ctrlMux : out std_logic
        );
    end component;

    signal idExMemRead_tb : std_logic;
    signal isBranch_tb : std_logic;
    signal idExRegRt_tb : std_logic_vector(4 downto 0);
    signal ifIdRegRs_tb : std_logic_vector(4 downto 0);
    signal ifIdRegRt_tb : std_logic_vector(4 downto 0);
    signal ifIdWrite_tb : std_logic;
    signal PCwrite_tb : std_logic;
    signal ctrlMux_tb : std_logic;

begin
    DUT : HazardDetectionUnit
        port map (
            idExMemRead => idExMemRead_tb,
            isBranch => isBranch_tb,
            idExRegRt => idExRegRt_tb,
            ifIdRegRs => ifIdRegRs_tb,
            ifIdRegRt => ifIdRegRt_tb,
            ifIdWrite => ifIdWrite_tb,
            PCwrite => PCwrite_tb,
            ctrlMux => ctrlMux_tb
        );

    test_process : process
    begin
        -- Test case 1: No hazard
        idExMemRead_tb <= '0';
        isBranch_tb <= '0';
        idExRegRt_tb <= "00001";
        ifIdRegRs_tb <= "00010";
        ifIdRegRt_tb <= "00011";
        wait for 10 ns;
        assert ifIdWrite_tb = '1' report "Test case 1 failed: ifIdWrite should be '1' when no hazard" severity error;
        assert PCwrite_tb = '1' report "Test case 1 failed: PCwrite should be '1' when no hazard" severity error;
        assert ctrlMux_tb = '0' report "Test case 1 failed: ctrlMux should be '0' when no hazard" severity error;

        -- Test case 2: Load word stall (hazard detected)
        idExMemRead_tb <= '1';
        idExRegRt_tb <= "00010";
        ifIdRegRs_tb <= "00010";
        wait for 10 ns;
        assert ifIdWrite_tb = '0' report "Test case 2 failed: ifIdWrite should be '0' when load word stall" severity error;
        assert PCwrite_tb = '0' report "Test case 2 failed: PCwrite should be '0' when load word stall" severity error;
        assert ctrlMux_tb = '1' report "Test case 2 failed: ctrlMux should be '1' when load word stall" severity error;

        -- Test case 3: Branch stall
        idExMemRead_tb <= '0';
        isBranch_tb <= '1';
        wait for 10 ns;
        assert ifIdWrite_tb = '0' report "Test case 3 failed: ifIdWrite should be '0' when branch stall" severity error;
        assert PCwrite_tb = '1' report "Test case 3 failed: PCwrite should be '1' when branch stall" severity error;
        assert ctrlMux_tb = '0' report "Test case 3 failed: ctrlMux should be '0' when branch stall" severity error;

        -- Test case 4: Load word stall and branch stall
        idExMemRead_tb <= '1';
        idExRegRt_tb <= "00010";
        ifIdRegRs_tb <= "00010";
        isBranch_tb <= '1';
        wait for 10 ns;
        assert ifIdWrite_tb = '0' report "Test case 4 failed: ifIdWrite should be '0' when load word stall and branch stall" severity error;
        assert PCwrite_tb = '0' report "Test case 4 failed: PCwrite should be '0' when load word stall and branch stall" severity error;
        assert ctrlMux_tb = '1' report "Test case 4 failed: ctrlMux should be '1' when load word stall and branch stall" severity error;

        report "All tests passed";
        wait;
    end process test_process;
end architecture tb;