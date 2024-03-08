library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftLeft2_32_tb is
end entity shiftLeft2_32_tb;

architecture tb_arch of shiftLeft2_32_tb is
    -- Component declaration for the DUT (Design Under Test)
    component shiftLeft2_32
        Port (
            in_q  : in  std_logic_vector(31 downto 0);
            out_d : out std_logic_vector(31 downto 0)
        );
    end component;

    -- Test signals
    signal in_q_tb    : std_logic_vector(31 downto 0);
    signal out_d_tb   : std_logic_vector(31 downto 0);

begin
    -- Instantiate the DUT
    dut: shiftLeft2_32 port map (
        in_q  => in_q_tb,
        out_d => out_d_tb
    );

    -- Test cases
    process
    begin
        wait for 10 ns; -- Initial wait

        -- Test 1: All zeros input
        in_q_tb <= "00000000000000000000000000000000";
        wait for 10 ns;
        assert out_d_tb = "00000000000000000000000000000000"
            report "Test 1 failed"
            severity error;

        -- Test 2: Shift left by 2 with ones input
        in_q_tb <= "11111111111111111111111111111111";
        wait for 10 ns;
        assert out_d_tb = "11111111111111111111111111111100"
            report "Test 2 failed"
            severity error;

        -- Test 3: Shift left by 2 with alternating bits
        in_q_tb <= "10101010101010101010101010101010";
        wait for 10 ns;
        assert out_d_tb = "10101010101010101010101010101000"
            report "Test 3 failed"
            severity error;

        -- Test 4: Shift left by 2 with random data
        in_q_tb <= "11001010001111010110011010001100";
        wait for 10 ns;
        assert out_d_tb = "00101000111101011001101000110000"
            report "Test 4 failed"
            severity error;

        wait;
    end process;

end architecture tb_arch;
