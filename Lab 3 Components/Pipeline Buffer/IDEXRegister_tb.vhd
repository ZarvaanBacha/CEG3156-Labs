library ieee;
use ieee.std_logic_1164.all;

library pipeline;
use pipeline.all;

entity IDEXRegister_tb is
end entity IDEXRegister_tb;

architecture tb_arch of IDEXRegister_tb is
    -- Component Declaration
    component IDEXRegister
        port (
            in_clk, in_rst : in std_logic;
            in_pc : in std_logic_vector(7 downto 0);
            in_rdData1, in_rdData2 : in std_logic_vector(7 downto 0);
            in_sExtended : in std_logic_vector(7 downto 0);
            in_regRs, in_regRt, in_regRd : in std_logic_vector(4 downto 0);
            in_aluOP : in std_logic_vector(1 downto 0);
            in_regDst, in_aluSrc : in std_logic;
            in_memRead, in_memWrite, in_branch, in_jmp : in std_logic;
            in_regWrite, in_memToReg : in std_logic;
            out_rdData1, out_rdData2, out_pc : out std_logic_vector(7 downto 0);
            out_sExtended : out std_logic_vector(7 downto 0);
            out_regRs, out_regRt, out_regRd : out std_logic_vector(4 downto 0);
            out_aluOp : out std_logic_vector(1 downto 0);
            out_regDst, out_aluSrc : out std_logic;
            out_memRead, out_memWrite, out_branch, out_jmp : out std_logic;
            out_regWrite, out_memToReg : out std_logic
        );
    end component;

    -- Constants
    constant CLK_PERIOD : time := 10 ns; -- Clock period

    -- Signals
    signal clk, rst : std_logic;
    signal in_pc, out_pc, in_rdData1, out_rdData1, in_rdData2, out_rdData2 : std_logic_vector(7 downto 0);
    signal in_sExtended, out_sExtended : std_logic_vector(7 downto 0);
    signal in_regRs, out_regRs, in_regRt, out_regRt, in_regRd, out_regRd : std_logic_vector(4 downto 0);
    signal in_aluOP, out_aluOp : std_logic_vector(1 downto 0);
    signal in_regDst, out_regDst, in_aluSrc, out_aluSrc : std_logic;
    signal in_memRead, out_memRead, in_memWrite, out_memWrite, in_branch, out_branch, in_jmp, out_jmp : std_logic;
    signal in_regWrite, out_regWrite, in_memToReg, out_memToReg : std_logic;

begin
    -- Instantiate the IDEXRegister component
    uut : IDEXRegister
        port map (
            in_clk => clk, in_rst => rst,
            in_pc => in_pc, in_rdData1 => in_rdData1, in_rdData2 => in_rdData2,
            in_sExtended => in_sExtended, in_regRs => in_regRs, in_regRt => in_regRt, in_regRd => in_regRd,
            in_aluOP => in_aluOP, in_regDst => in_regDst, in_aluSrc => in_aluSrc,
            in_memRead => in_memRead, in_memWrite => in_memWrite, in_branch => in_branch, in_jmp => in_jmp,
            in_regWrite => in_regWrite, in_memToReg => in_memToReg,
            out_rdData1 => out_rdData1, out_rdData2 => out_rdData2, out_pc => out_pc,
            out_sExtended => out_sExtended, out_regRs => out_regRs, out_regRt => out_regRt, out_regRd => out_regRd,
            out_aluOp => out_aluOp, out_regDst => out_regDst, out_aluSrc => out_aluSrc,
            out_memRead => out_memRead, out_memWrite => out_memWrite, out_branch => out_branch, out_jmp => out_jmp,
            out_regWrite => out_regWrite, out_memToReg => out_memToReg
        );

    -- Clock process
    clk_process : process
    begin
        while now < 500 ns loop -- Run for a finite time
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process clk_process;

    -- Stimulus process
    stimulus_process : process
    begin
        -- Case 1: Reset operation
        rst <= '0'; -- Assert reset
        wait for CLK_PERIOD;
        rst <= '1'; -- Deassert reset
        wait for CLK_PERIOD;

        -- Assert output signals after reset
        assert out_pc = X"00" report "Case 1: Incorrect output PC after reset" severity error;
        assert out_rdData1 = X"00" report "Case 1: Incorrect output rdData1 after reset" severity error;
        assert out_rdData2 = X"00" report "Case 1: Incorrect output rdData2 after reset" severity error;
        assert out_sExtended = X"00" report "Case 1: Incorrect output sExtended after reset" severity error;
        assert out_regRs = "00000" report "Case 1: Incorrect output regRs after reset" severity error;
        assert out_regRt = "00000" report "Case 1: Incorrect output regRt after reset" severity error;
        assert out_regRd = "00000" report "Case 1: Incorrect output regRd after reset" severity error;
        assert out_aluOp = "00" report "Case 1: Incorrect output aluOp after reset" severity error;
        assert out_regDst = '0' report "Case 1: Incorrect output regDst after reset" severity error;
        assert out_aluSrc = '0' report "Case 1: Incorrect output aluSrc after reset" severity error;
        assert out_memRead = '0' report "Case 1: Incorrect output memRead after reset" severity error;
        assert out_memWrite = '0' report "Case 1: Incorrect output memWrite after reset" severity error;
        assert out_branch = '0' report "Case 1: Incorrect output branch after reset" severity error;
        assert out_jmp = '0' report "Case 1: Incorrect output jmp after reset" severity error;
        assert out_regWrite = '0' report "Case 1: Incorrect output regWrite after reset" severity error;
        assert out_memToReg = '0' report "Case 1: Incorrect output memToReg after reset" severity error;

        -- Case 2: Write operation
        in_pc <= X"AB"; -- Input PC value
        in_rdData1 <= X"01"; -- Input rdData1 value
        in_rdData2 <= X"02"; -- Input rdData2 value
        in_sExtended <= X"03"; -- Input sExtended value
        in_regRs <= "00001"; -- Input regRs value
        in_regRt <= "00010"; -- Input regRt value
        in_regRd <= "00011"; -- Input regRd value
        in_aluOP <= "01"; -- Input aluOP value
        in_regDst <= '1'; -- Input regDst value
		  in_aluSrc <= '1'; -- Input aluSrc value
        in_memRead <= '1'; -- Input memRead value
        in_memWrite <= '1'; -- Input memWrite value
        in_branch <= '1'; -- Input branch value
        in_jmp <= '1'; -- Input jmp value
        in_regWrite <= '1'; -- Input regWrite value
        in_memToReg <= '1'; -- Input memToReg value

        wait for 20 ns; -- Delay for initial setup

        -- Assert output signals after write operation
        assert out_pc = X"AB" report "Case 2: Incorrect output PC after write" severity error;
        assert out_rdData1 = X"01" report "Case 2: Incorrect output rdData1 after write" severity error;
        assert out_rdData2 = X"02" report "Case 2: Incorrect output rdData2 after write" severity error;
        assert out_sExtended = X"03" report "Case 2: Incorrect output sExtended after write" severity error;
        assert out_regRs = "00001" report "Case 2: Incorrect output regRs after write" severity error;
        assert out_regRt = "00010" report "Case 2: Incorrect output regRt after write" severity error;
        assert out_regRd = "00011" report "Case 2: Incorrect output regRd after write" severity error;
        assert out_aluOp = "01" report "Case 2: Incorrect output aluOp after write" severity error;
        assert out_regDst = '1' report "Case 2: Incorrect output regDst after write" severity error;
        assert out_aluSrc = '1' report "Case 2: Incorrect output aluSrc after write" severity error;
        assert out_memRead = '1' report "Case 2: Incorrect output memRead after write" severity error;
        assert out_memWrite = '1' report "Case 2: Incorrect output memWrite after write" severity error;
        assert out_branch = '1' report "Case 2: Incorrect output branch after write" severity error;
        assert out_jmp = '1' report "Case 2: Incorrect output jmp after write" severity error;
        assert out_regWrite = '1' report "Case 2: Incorrect output regWrite after write" severity error;
        assert out_memToReg = '1' report "Case 2: Incorrect output memToReg after write" severity error;

        -- Case 3: Hold operation
        in_pc <= X"00"; -- Reset input PC value
        in_rdData1 <= X"00"; -- Reset input rdData1 value
        in_rdData2 <= X"00"; -- Reset input rdData2 value
        in_sExtended <= X"00"; -- Reset input sExtended value
        in_regRs <= "00000"; -- Reset input regRs value
        in_regRt <= "00000"; -- Reset input regRt value
        in_regRd <= "00000"; -- Reset input regRd value
        in_aluOP <= "00"; -- Reset input aluOP value
        in_regDst <= '0'; -- Reset input regDst value
        in_aluSrc <= '0'; -- Reset input aluSrc value
        in_memRead <= '0'; -- Reset input memRead value
        in_memWrite <= '0'; -- Reset input memWrite value
        in_branch <= '0'; -- Reset input branch value
        in_jmp <= '0'; -- Reset input jmp value
        in_regWrite <= '0'; -- Reset input regWrite value
        in_memToReg <= '0'; -- Reset input memToReg value

        wait for 20 ns; -- Delay for initial setup

        -- Assert output signals after hold operation
        assert out_pc = X"AB" report "Case 3: Incorrect output PC after hold" severity error;
        assert out_rdData1 = X"01" report "Case 3: Incorrect output rdData1 after hold" severity error;
        assert out_rdData2 = X"02" report "Case 3: Incorrect output rdData2 after hold" severity error;
        assert out_sExtended = X"03" report "Case 3: Incorrect output sExtended after hold" severity error;
        assert out_regRs = "00001" report "Case 3: Incorrect output regRs after hold" severity error;
        assert out_regRt = "00010" report "Case 3: Incorrect output regRt after hold" severity error;
        assert out_regRd = "00011" report "Case 3: Incorrect output regRd after hold" severity error;
        assert out_aluOp = "01" report "Case 3: Incorrect output aluOp after hold" severity error;
        assert out_regDst = '1' report "Case 3: Incorrect output regDst after hold" severity error;
        assert out_aluSrc = '1' report "Case 3: Incorrect output aluSrc after hold" severity error;
        assert out_memRead = '1' report "Case 3: Incorrect output memRead after hold" severity error;
        assert out_memWrite = '1' report "Case 3: Incorrect output memWrite after hold" severity error;
        assert out_branch = '1' report "Case 3: Incorrect output branch after hold" severity error;
        assert out_jmp = '1' report "Case 3: Incorrect output jmp after hold" severity error;
        assert out_regWrite = '1' report "Case 3: Incorrect output regWrite after hold" severity error;
        assert out_memToReg = '1' report "Case 3: Incorrect output memToReg after hold" severity error;

        -- Add more test cases here

        wait;
    end process stimulus_process;

end architecture tb_arch;