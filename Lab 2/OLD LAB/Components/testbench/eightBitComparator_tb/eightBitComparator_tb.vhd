library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eightBitComparator_tb is
end entity;

architecture tb of eightBitComparator_tb is
    component eightBitComparator is
        	port(
					i_Ai, i_Bi			: IN	STD_LOGIC_VECTOR(7 downto 0);
					o_GT, o_LT, o_EQ		: OUT	STD_LOGIC
				 );
    end component;

    signal A : std_logic_vector(7 downto 0) := (others => '0');
    signal B : std_logic_vector(7 downto 0) := (others => '0');
	 signal LT : std_logic;
    signal EQ : std_logic;
    signal GT : std_logic;

begin

    UUT: eightBitComparator
    port map (
        i_Ai => A,
        i_Bi => B,
		  o_LT => LT,
        o_EQ => EQ,
        o_GT => GT
    );

	test: process
	begin
	
    -- Test Case 1: A = B
    A <= "10001010";
    B <= "10001010";
    wait for 10 ns;
	 assert (LT = '0') report "Error: Test Case 1 failed" severity error;
    assert (EQ = '1') report "Error: Test Case 1 failed" severity error;
    assert (GT = '0') report "Error: Test Case 1 failed" severity error;

    -- Test Case 2: A > B
    A <= "10001110";
    B <= "10001010";
    wait for 10 ns;
	 assert (LT = '0') report "Error: Test Case 2 failed" severity error;
    assert (EQ = '0') report "Error: Test Case 2 failed" severity error;
    assert (GT = '1') report "Error: Test Case 2 failed" severity error;

    -- Test Case 3: A < B
    A <= "10001000";
    B <= "10001100";
    wait for 10 ns;
	 assert (LT = '1') report "Error: Test Case 3 failed" severity error;
    assert (EQ = '0') report "Error: Test Case 3 failed" severity error;
    assert (GT = '0') report "Error: Test Case 3 failed" severity error;
	 
	 end process;

end architecture;
