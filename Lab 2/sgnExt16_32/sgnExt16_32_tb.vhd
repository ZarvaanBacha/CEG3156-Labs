library ieee;
use ieee.std_logic_1164.all;

entity sgnExt16_32_tb is
end entity sgnExt16_32_tb;

architecture testbench of sgnExt16_32_tb is
    -- Component declaration
    component sgnExt16_32 is
        port (
            clk   : in  std_logic;
            in_q  : in  std_logic_vector(15 downto 0);
            out_d : out std_logic_vector(31 downto 0)
        );
    end component;
    
    -- Inputs
    signal clk     : std_logic := '0';
    signal in_data : std_logic_vector(15 downto 0) := (others => '0');

    -- Outputs
    signal out_data : std_logic_vector(31 downto 0);
begin
    -- Instantiate the UUT
    uut: sgnExt16_32
        port map (
            clk   => clk,
            in_q  => in_data,
            out_d => out_data
        );

    -- Clock process
    clk_process: process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    -- Stimulus process
    stimulus: process
    begin
        -- Test case 1: Positive number (e.g., 10)
        in_data <= "0000000000001010";
        wait for 10 ns;
        
        -- Test case 2: Negative number (e.g., -5)
        in_data <= "1111111111111011";
        wait for 10 ns;
        
        -- Test case 3: Positive number (e.g., 200)
        in_data <= "0000000011001000";
        wait for 10 ns;
        
        -- Test case 4: Negative number (e.g., -300)
        in_data <= "1111111100001100";
        wait for 10 ns;

        wait;
    end process;

end architecture testbench;
