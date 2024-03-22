library ieee;
use ieee.std_logic_1164.all;

entity registerFile_tb is
end registerFile_tb;

architecture tb_arch of registerFile_tb is
    -- Component declaration
    component registerFile is
        port(
            i_gReset, i_clock, i_regWrite : in std_logic;
            i_readRegister1, i_readRegister2, i_writeRegister : in std_logic_vector(2 downto 0);
            i_writeData : in std_logic_vector(7 downto 0);
            o_readData1, o_readData2 : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Inputs
    signal i_gReset, i_clock, i_regWrite : std_logic := '0';
    signal i_readRegister1, i_readRegister2, i_writeRegister : std_logic_vector(2 downto 0) := "000";
    signal i_writeData : std_logic_vector(7 downto 0) := "00000000";

    -- Outputs
    signal o_readData1, o_readData2 : std_logic_vector(7 downto 0);

    -- Clock period definition
    constant clock_period : time := 10 ms;

begin
    -- Instantiation of the registerFile module
    uut : registerFile
        port map(
            i_gReset => i_gReset,
            i_clock => i_clock,
            i_regWrite => i_regWrite,
            i_readRegister1 => i_readRegister1,
            i_readRegister2 => i_readRegister2,
            i_writeRegister => i_writeRegister,
            i_writeData => i_writeData,
            o_readData1 => o_readData1,
            o_readData2 => o_readData2
        );

    -- Clock generation
    process
    begin
        while true loop
            i_clock <= '0';
            wait for clock_period / 2;
            i_clock <= '1';
            wait for clock_period / 2;
        end loop;
    end process;

    -- Stimulus process
    process
    begin
        -- Reset
        i_gReset <= '0';
        wait for 10 ns;
        i_gReset <= '1';
        wait for 10 ns;

        -- Write to register 0
        i_writeRegister <= "000";
        i_writeData <= "11110000";
        i_regWrite <= '1';
        wait for clock_period;
        i_regWrite <= '0';

        -- Read from register 0
        i_readRegister1 <= "000";
        wait for clock_period;
        assert(o_readData1 = "11110000")
            report "Error: Read value does not match expected value"
            severity error;

        -- Write to register 1
        i_writeRegister <= "001";
        i_writeData <= "00001111";
        i_regWrite <= '1';
        wait for clock_period;
        i_regWrite <= '0';

        -- Read from register 1
        i_readRegister1 <= "001";
        wait for clock_period;
        assert(o_readData1 = "00001111")
            report "Error: Read value does not match expected value"
            severity error;

        -- Write to register 2
        i_writeRegister <= "010";
        i_writeData <= "10101010";
        i_regWrite <= '1';
        wait for clock_period;
        i_regWrite <= '0';

        -- Read from register 2
        i_readRegister1 <= "010";
        wait for clock_period;
        assert(o_readData1 = "10101010")
            report "Error: Read value does not match expected value"
				severity error;
				
		 -- Read from register 0 and 1 simultaneously
		 i_readRegister1 <= "000";
		 i_readRegister2 <= "001";
		 wait for clock_period;
		 assert(o_readData1 = "11110000" and o_readData2 = "00001111")
			  report "Error: Read values do not match expected values"
			  severity error;

		 -- Write to register 1 again
		 i_writeRegister <= "001";
		 i_writeData <= "01010101";
		 i_regWrite <= '1';
		 wait for clock_period;
		 i_regWrite <= '0';

		 -- Read from register 1 again
		 i_readRegister1 <= "001";
		 wait for clock_period;
		 assert(o_readData1 = "01010101")
			  report "Error: Read value does not match expected value"
			  severity error;

		 -- Write to register 2 again
		 i_writeRegister <= "010";
		 i_writeData <= "00110011";
		 i_regWrite <= '1';
		 wait for clock_period;
		 i_regWrite <= '0';

		 -- Read from register 2 again
		 i_readRegister1 <= "010";
		 wait for clock_period;
		 assert(o_readData1 = "00110011")
			  report "Error: Read value does not match expected value"
			  severity error;

		 -- Read from register 0, 1, and 2 simultaneously
		 i_readRegister1 <= "000";
		 i_readRegister2 <= "001";
		 wait for clock_period;
		 assert(o_readData1 = "11110000" and o_readData2 = "01010101" )
			  report "Error: Read values do not match expected values"
			  severity error;

    -- End of testbench
    wait;
	end process;
end tb_arch;

