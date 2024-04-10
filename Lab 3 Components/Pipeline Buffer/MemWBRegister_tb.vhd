library ieee;
use ieee.std_logic_1164.all;

library pipeline;
use pipeline.all;

entity MEMWBRegister_tb is
end entity MEMWBRegister_tb;

architecture tb_arch of MEMWBRegister_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns; -- Clock period

    -- Signals for testbench
    signal clk : std_logic := '0'; -- Clock signal
    signal rst : std_logic := '0'; -- Reset signal
    signal in_dataMem, in_RegDstRes, in_resALU : std_logic_vector(7 downto 0); -- Input signals
    signal in_regWrite, in_memToReg : std_logic; -- Control signals
    signal out_resALU, out_dataMem : std_logic_vector(7 downto 0); -- Output signals
    signal out_regWrite, out_memToReg : std_logic; -- Corrected signal types
    signal out_writeReg : std_logic_vector(7 downto 0); -- Corrected signal type

    -- Component Declaration
    component MEMWBRegister
        port (
            in_clk, in_rst : in std_logic;
            in_dataMem : in std_logic_vector(7 downto 0);
            in_RegDstRes : in std_logic_vector(7 downto 0);
            in_resALU: in std_logic_vector(7 downto 0);
            in_regWrite, in_memToReg : in std_logic;
            out_resALU : out std_logic_vector(7 downto 0);
            out_dataMem : out std_logic_vector(7 downto 0);
            out_regWrite, out_memToReg : out std_logic;
            out_writeReg : out std_logic_vector(7 downto 0)
        );
    end component;

begin

    -- Instantiate the MEMWBRegister component
    uut : MEMWBRegister
        port map (
            in_clk => clk,
            in_rst => rst,
            in_dataMem => in_dataMem,
            in_RegDstRes => in_RegDstRes,
            in_resALU => in_resALU,
            in_regWrite => in_regWrite,
            in_memToReg => in_memToReg,
            out_resALU => out_resALU,
            out_dataMem => out_dataMem,
            out_regWrite => out_regWrite,
            out_memToReg => out_memToReg,
            out_writeReg => out_writeReg
        );

    -- Clock process
    clk_process : process
    begin
        while now < 400 ns loop -- Run for a finite time
            clk <= not clk;
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process clk_process;

    -- Stimulus process
    stimulus_process : process
    begin
        -- Case 1: No write-back operation
        in_dataMem <= "00000000"; -- Data from memory
        in_RegDstRes <= "00000000"; -- Destination register
        in_resALU <= "00000000"; -- Result from ALU
        in_regWrite <= '0'; -- No write-back
        in_memToReg <= '0'; -- No memory-to-register operation

        wait for 20 ns; -- Delay for initial setup

        -- Generate reset
        rst <= '0';
        wait for CLK_PERIOD;
        rst <= '1';
        wait for CLK_PERIOD;

        -- Assert output signals
        assert out_resALU = "00000000" report "Case 1: Incorrect result from ALU" severity error;
        assert out_dataMem = "00000000" report "Case 1: Incorrect data from memory" severity error;
        assert out_regWrite = '0' report "Case 1: Incorrect regWrite signal" severity error;
        assert out_memToReg = '0' report "Case 1: Incorrect memToReg signal" severity error;
        assert out_writeReg = "00000000" report "Case 1: Incorrect write register" severity error;

        -- Case 2: Write-back operation with data from ALU
        in_dataMem <= "00000000"; -- Data from memory
        in_RegDstRes <= "00000010"; -- Destination register
        in_resALU <= "00001111"; -- Result from ALU
        in_regWrite <= '1'; -- Write-back operation
        in_memToReg <= '0'; -- No memory-to-register operation

        wait for 100 ns; -- Delay for initial setup

        -- Generate reset
        rst <= '0';
        wait for CLK_PERIOD;
        rst <= '1';
        wait for CLK_PERIOD;

        -- Assert output signals
        assert out_resALU = "00001111" report "Case 2: Incorrect result from ALU" severity error;
        assert out_dataMem = "00000000" report "Case 2: Incorrect data from memory" severity error;
        assert out_regWrite = '1' report "Case 2: Incorrect regWrite signal" severity error;
        assert out_memToReg = '0' report "Case 2: Incorrect memToReg signal" severity error;
        assert out_writeReg = "00000010" report "Case 2: Incorrect write register" severity error;

        -- Add more test cases here

        wait;
    end process stimulus_process;

end architecture tb_arch;