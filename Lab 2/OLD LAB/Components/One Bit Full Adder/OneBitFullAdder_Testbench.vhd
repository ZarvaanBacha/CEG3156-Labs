library ieee;
use ieee.std_logic_1164.all;

entity tb_oneBitFullAdder is
end tb_oneBitFullAdder;

architecture testbench of tb_oneBitFullAdder is
    signal i_x, i_y, i_cin : std_logic;
    signal o_s, o_cout : std_logic;
    
    component oneBitFullAdder is
        port (
            i_x, i_y, i_cin : in std_logic;
            o_s, o_cout : out std_logic
        );
    end component;

begin
    uut : oneBitFullAdder
        port map (
            i_x => i_x,
            i_y => i_y,
            i_cin => i_cin,
            o_s => o_s,
            o_cout => o_cout
        );
        
    stimulus : process
    begin
        report "Test case 1" severity note;
        i_x <= '0';
        i_y <= '0';
        i_cin <= '0';
        wait for 10 ns;
        assert(o_s = '0' and o_cout = '0')
            report "Test case 1 failed" severity error;
            
        report "Test case 2" severity note;
        i_x <= '0';
        i_y <= '0';
        i_cin <= '1';
        wait for 10 ns;
        assert(o_s = '1' and o_cout = '0')
            report "Test case 2 failed" severity error;
            
        report "Test case 3" severity note;
        i_x <= '0';
        i_y <= '1';
        i_cin <= '0';
        wait for 10 ns;
        assert(o_s = '1' and o_cout = '0')
            report "Test case 3 failed" severity error;
            
        report "Test case 4" severity note;
        i_x <= '0';
        i_y <= '1';
        i_cin <= '1';
        wait for 10 ns;
        assert(o_s = '0' and o_cout = '1')
            report "Test case 4 failed" severity error;
            
        report "Test case 5" severity note;
        i_x <= '1';
        i_y <= '0';
        i_cin <= '0';
        wait for 10 ns;
        assert(o_s = '1' and o_cout = '0')
            report "Test case 5 failed" severity error;
            
        report "Test case 6" severity note;
        i_x <= '1';
        i_y <= '0';
        i_cin <= '1';
        wait for 10 ns;
        assert(o_s = '0' and o_cout = '1')
            report "Test case 6 failed" severity error;
            
        report "Test case 7" severity note;
        i_x <= '1';
        i_y <= '1';
        i_cin <= '0';
        wait for 10 ns;
        assert(o_s = '0' and o_cout = '1')
            report "Test case 7 failed" severity error;
            
        report "Test case 8" severity note;
        i_x <= '1';
        i_y <= '1';
        i_cin <= '1';
        wait for 10 ns;
        assert(o_s = '1' and o_cout = '1')
            report "Test case 8 failed" severity error;
        
        report "All test cases passed" severity note;
        wait;
    end process;
end testbench;
