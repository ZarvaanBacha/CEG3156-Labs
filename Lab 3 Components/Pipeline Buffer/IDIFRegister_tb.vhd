library ieee;
use ieee.std_logic_1164.all;

library pipeline;
use pipeline.all;

entity IDIFRegister_tb is
end entity IDIFRegister_tb;

architecture tb_arch of IDIFRegister_tb is
    -- Component Declaration
    component IDIFRegister
        port (
            in_clk, in_rst : in std_logic;
            ifid_write : in std_logic;
            in_instruction : in std_logic_vector(31 downto 0);
            in_pc : in std_logic_vector(7 downto 0);
            out_instruction : out std_logic_vector(31 downto 0);
            out_pc : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Constants
    constant CLK_PERIOD : time := 10 ns; -- Clock period

    -- Signals
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal ifid_write : std_logic;
    signal in_instruction : std_logic_vector(31 downto 0);
    signal in_pc : std_logic_vector(7 downto 0);
    signal out_instruction : std_logic_vector(31 downto 0);
    signal out_pc : std_logic_vector(7 downto 0);

begin
    -- Instantiate the IDIFRegister component
    uut : IDIFRegister
        port map (
            in_clk => clk,
            in_rst => rst,
            ifid_write => ifid_write,
            in_instruction => in_instruction,
            in_pc => in_pc,
            out_instruction => out_instruction,
            out_pc => out_pc
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
        ifid_write <= '1'; -- Enable write
        in_instruction <= X"12345678"; -- Input instruction
        in_pc <= X"AB"; -- Input PC value

        wait for 40 ns; -- Delay for initial setup

        -- Generate reset
        rst <= '0'; -- Assert reset
        wait for CLK_PERIOD;
        rst <= '1'; -- Deassert reset
        wait for CLK_PERIOD;

        -- Assert output signals
        assert out_instruction = X"00000000" report "Case 1: Incorrect output instruction after reset" severity error;
        assert out_pc = X"00" report "Case 1: Incorrect output PC after reset" severity error;

        -- Case 2: Write operation
        ifid_write <= '1'; -- Enable write
        in_instruction <= X"ABCDEF01"; -- Input instruction
        in_pc <= X"CD"; -- Input PC value

        wait for 40 ns; -- Delay for initial setup

        -- Assert output signals
        assert out_instruction = X"ABCDEF01" report "Case 2: Incorrect output instruction after write" severity error;
        assert out_pc = X"CD" report "Case 2: Incorrect output PC after write" severity error;

        -- Case 3: Hold operation
        ifid_write <= '0'; -- Disable write

        wait for 40 ns; -- Delay for initial setup

        -- Assert output signals
        assert out_instruction = X"ABCDEF01" report "Case 3: Incorrect output instruction after hold" severity error;
        assert out_pc = X"CD" report "Case 3: Incorrect output PC after hold" severity error;

        -- Add more test cases here

        wait;
    end process stimulus_process;

end architecture tb_arch;