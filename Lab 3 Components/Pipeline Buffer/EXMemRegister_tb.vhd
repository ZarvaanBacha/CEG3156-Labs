library ieee;
use ieee.std_logic_1164.all;

library pipeline;
use pipeline.all;

entity EXMemRegister_tb is
end entity EXMemRegister_tb;

architecture tb_arch of EXMemRegister_tb is
    -- Component Declaration
    component EXMemRegister
        port (
            in_clk, in_rst : in std_logic;
            in_branchALU, in_resALU : in std_logic_vector(7 downto 0);
            in_aluZero : in std_logic;
            in_rdData2 : in std_logic_vector(7 downto 0);
            in_RegDstRes : in std_logic_vector(7 downto 0);
            in_memRead, in_memWrite, in_branch, in_jmp : in std_logic;
            in_regWrite, in_memToReg : in std_logic;
            out_aluZero : out std_logic;
            out_resALU, out_branchALU : out std_logic_vector(7 downto 0);
            out_rdData2 : out std_logic_vector(7 downto 0);
            out_memRead, out_memWrite, out_branch, out_jmp : out std_logic;
            out_regWrite, out_memToReg : out std_logic;
            out_RegDstRes : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Constants
    constant CLK_PERIOD : time := 10 ns; -- Clock period

    -- Signals
    signal clk, rst : std_logic;
    signal in_branchALU, out_branchALU, in_resALU, out_resALU : std_logic_vector(7 downto 0);
    signal in_aluZero, out_aluZero : std_logic;
    signal in_rdData2, out_rdData2, in_RegDstRes, out_RegDstRes : std_logic_vector(7 downto 0);
    signal in_memRead, out_memRead, in_memWrite, out_memWrite, in_branch, out_branch, in_jmp, out_jmp : std_logic;
    signal in_regWrite, out_regWrite, in_memToReg, out_memToReg : std_logic;

begin
    -- Instantiate the EXMemRegister component
    uut : EXMemRegister
        port map (
            in_clk => clk, in_rst => rst,
            in_branchALU => in_branchALU, in_resALU => in_resALU,
            in_aluZero => in_aluZero, in_rdData2 => in_rdData2, in_RegDstRes => in_RegDstRes,
            in_memRead => in_memRead, in_memWrite => in_memWrite, in_branch => in_branch, in_jmp => in_jmp,
            in_regWrite => in_regWrite, in_memToReg => in_memToReg,
            out_aluZero => out_aluZero, out_resALU => out_resALU, out_branchALU => out_branchALU,
            out_rdData2 => out_rdData2, out_memRead => out_memRead, out_memWrite => out_memWrite,
            out_branch => out_branch, out_jmp => out_jmp, out_regWrite => out_regWrite,
            out_memToReg => out_memToReg, out_RegDstRes => out_RegDstRes
        );

    -- Clock process
    clk_process : process
    begin
		  while now < 400 ns loop -- Run for a finite time
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
        assert out_aluZero = '0' report "Case 1: Incorrect output aluZero after reset" severity error;
        assert out_resALU = X"00" report "Case 1: Incorrect output resALU after reset" severity error;
        assert out_branchALU = X"00" report "Case 1: Incorrect output branchALU after reset" severity error;
        assert out_rdData2 = X"00" report "Case 1: Incorrect output rdData2 after reset" severity error;
        assert out_RegDstRes = X"00" report "Case 1: Incorrect output RegDstRes after reset" severity error;
        assert out_memRead = '0' report "Case 1: Incorrect output memRead after reset" severity error;
        assert out_memWrite = '0' report "Case 1: Incorrect output memWrite after reset" severity error;
        assert out_branch = '0' report "Case 1: Incorrect output branch after reset" severity error;
        assert out_jmp = '0' report "Case 1: Incorrect output jmp after reset" severity error;
        assert out_regWrite = '0' report "Case 1: Incorrect output regWrite after reset" severity error;
        assert out_memToReg = '0' report "Case 1: Incorrect output memToReg after reset" severity error;

        -- Case 2: Write operation
        in_branchALU <= X"01"; -- Input branchALU value
        in_resALU <= X"02"; -- Input resALU value
        in_aluZero <= '1'; -- Input aluZero value
        in_rdData2 <= X"03"; -- Input rdData2 value
        in_RegDstRes <= X"04"; -- Input RegDstRes value
        in_memRead <= '1'; -- Input memRead value
        in_memWrite <= '1'; -- Input memWrite value
        in_branch <= '1'; -- Input branch value
        in_jmp <= '1'; -- Input jmp value
        in_regWrite <= '1'; -- Input regWrite value
        in_memToReg <= '1'; -- Input memToReg value

        wait for 80 ns; -- Delay for initial setup

        -- Assert output signals after write operation
        assert out_aluZero = '1' report "Case 2: Incorrect output aluZero after write" severity error;
        assert out_resALU = X"02" report "Case 2: Incorrect output resALU after write" severity error;
        assert out_branchALU = X"01" report "Case 2: Incorrect output branchALU after write" severity error;
        assert out_rdData2 = X"03" report "Case 2: Incorrect output rdData2 after write" severity error;
        assert out_RegDstRes = X"04" report "Case 2: Incorrect output RegDstRes after write" severity error;
        assert out_memRead = '1' report "Case 2: Incorrect output memRead after write" severity error;
        assert out_memWrite = '1' report "Case 2: Incorrect output memWrite after write" severity error;
        assert out_branch = '1' report "Case 2: Incorrect output branch after write" severity error;
        assert out_jmp = '1' report "Case 2: Incorrect output jmp after write" severity error;
        assert out_regWrite = '1' report "Case 2: Incorrect output regWrite after write" severity error;
        assert out_memToReg = '1' report "Case 2: Incorrect output memToReg after write" severity error;

        -- Case 3: Hold operation
        in_branchALU <= X"00"; -- Reset input branchALU value
        in_resALU <= X"00"; -- Reset input resALU value
        in_aluZero <= '0'; -- Reset input aluZero value
		in_rdData2 <= X"00"; -- Reset input rdData2 value
		in_RegDstRes <= X"00"; -- Reset input RegDstRes value
		in_memRead <= '0'; -- Reset input memRead value
		in_memWrite <= '0'; -- Reset input memWrite value
		in_branch <= '0'; -- Reset input branch value
		in_jmp <= '0'; -- Reset input jmp value
		in_regWrite <= '0'; -- Reset input regWrite value
		in_memToReg <= '0'; -- Reset input memToReg value
		
			 wait for 80 ns; -- Delay for initial setup
		
			 -- Assert output signals after hold operation
			 assert out_aluZero = '1' report "Case 3: Incorrect output aluZero after hold" severity error;
			 assert out_resALU = X"02" report "Case 3: Incorrect output resALU after hold" severity error;
			 assert out_branchALU = X"01" report "Case 3: Incorrect output branchALU after hold" severity error;
			 assert out_rdData2 = X"03" report "Case 3: Incorrect output rdData2 after hold" severity error;
			 assert out_RegDstRes = X"04" report "Case 3: Incorrect output RegDstRes after hold" severity error;
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