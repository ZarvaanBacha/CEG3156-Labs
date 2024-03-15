library ieee;
use ieee.std_logic_1164.all;

entity tb_oneBitComparator is
end tb_oneBitComparator;

architecture testbench of tb_oneBitComparator is

    signal i_A, i_B, i_GTprev, i_LTprev : std_logic;
    signal o_GT, o_LT, o_EQ : std_logic;

    component oneBitComparator is 
        port (
            i_A, i_B, i_GTprev, i_LTprev : in std_logic;
            o_GT, o_LT, o_EQ : out std_logic
        );
    end component;

begin

    uut : oneBitComparator
        port map (
            i_A => i_A,
            i_B => i_B,
            i_GTprev => i_GTprev,
            i_LTprev => i_LTprev,
            o_GT => o_GT,
            o_LT => o_LT,
            o_EQ => o_EQ
        );

    stimulus : process
    begin

        -- Test case 1: i_A > i_B
        i_A <= '1';
        i_B <= '0';
        i_GTprev <= '0';
        i_LTprev <= '0';
        wait for 10 ns;
        assert(o_GT = '1' and o_LT = '0' and o_EQ = '0')
            report "Test case 1 failed" severity error;

        -- Test case 2: i_A < i_B
        i_A <= '0';
        i_B <= '1';
        i_GTprev <= '0';
        i_LTprev <= '0';
        wait for 10 ns;
        assert(o_GT = '0' and o_LT = '1' and o_EQ = '0')
            report "Test case 2 failed" severity error;

        -- Test case 3: i_A = i_B
        i_A <= '1';
        i_B <= '1';
        i_GTprev <= '0';
        i_LTprev <= '0';
        wait for 10 ns;
        assert(o_GT = '0' and o_LT = '0' and o_EQ = '1')
            report "Test case 3 failed" severity error;

        -- Test case 4: previous output was greater than
        i_A <= '0';
        i_B <= '1';
        i_GTprev <= '1';
        i_LTprev <= '0';
        wait for 10 ns;
        assert(o_GT = '1' and o_LT = '0' and o_EQ = '0')
            report "Test case 4 failed" severity error;

        -- Test case 5: previous output was less than
        i_A <= '1';
        i_B <= '0';
        i_GTprev <= '0';
        i_LTprev <= '1';
        wait for 10 ns;
        assert(o_GT = '0' and o_LT = '1' and o_EQ = '0')
            report "Test case 5 failed" severity error;

        -- Test case 6: previous output was equal
        i_A <= '1';
        i_B <= '1';
        i_GTprev <= '0';
        i_LTprev <= '0';
        wait for 10 ns;
        assert(o_GT = '0' and o_LT = '0' and o_EQ = '1')
            report "Test case 6 failed" severity error;
	end process;
end testbench;