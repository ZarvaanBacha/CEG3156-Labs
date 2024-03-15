library ieee;
use ieee.std_logic_1164.all;

entity testbench_eightBitRegister is
end testbench_eightBitRegister;

architecture behavior of testbench_eightBitRegister is

  -- Component declaration for eightBitRegister
  component eightBitRegister
    port (
      i_clock     : in  std_logic;
      i_gReset    : in  std_logic;
      i_enable    : in  std_logic;
      i_Data      : in  std_logic_vector(7 downto 0);
      o_q         : out std_logic_vector(7 downto 0)
    );
	 
  end component;
  signal sim_end : boolean := false;
  constant period: time := 10 ms; 

  -- Inputs
  signal i_clock     : std_logic := '0';
  signal i_gReset    : std_logic := '1';
  signal i_enable    : std_logic := '0';
  signal i_Data      : std_logic_vector(7 downto 0) := (others => '0');

  -- Outputs
  signal o_q         : std_logic_vector(7 downto 0);

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: eightBitRegister port map (
    i_clock     => i_clock,
    i_gReset    => i_gReset,
    i_enable    => i_enable,
    i_Data      => i_Data,
    o_q         => o_q
  );

 
  -- Clock process definitions
  clock_process : process
  begin
    while (not sim_end) loop
      i_clock <= '1';
      wait for (period /2);
      i_clock <= '0';
      wait for (period /2);
    end loop;
    wait;
  end process;

  -- Stimulus process
  process
  begin

    i_gReset <= '0';
    wait for period;
    i_gReset <= '1';
    wait for period;

    i_enable <= '1';
    i_Data <= "10101010";
    wait for period*2;

    i_enable <= '0';
    i_Data <= "01010101";
    wait for period*2;

    i_enable <= '1';
    i_Data <= "11111111";
    wait for period*2;

    i_enable <= '0';
    i_Data <= "00000000";
    wait for period*2;

    i_enable <= '1';
    i_Data <= "00110011";
    wait for period*2;
	 
	 sim_end <= true;

    wait;
  end process;

end behavior;
