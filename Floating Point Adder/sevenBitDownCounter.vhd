library ieee;
use ieee.std_logic_1164.all;

entity sevenBitDownCounter is
    port (
        in_reset, in_load, in_countD   : in    std_logic;
        in_a                               : in    std_logic_vector(6 downto 0);
        in_clock                           : in    std_logic;
        out_zero                           : out   std_logic;
        out_q                              : out   std_logic_vector(6 downto 0)
    );
end sevenBitDownCounter;

architecture rtl of sevenBitDownCounter is

    component enARdFF_2
        port (
            i_resetBar  : in    std_logic;
            i_d         : in    std_logic;
            i_enable    : in    std_logic;
            i_clock     : in    std_logic;
            o_q, o_qBar : out   std_logic
        );
    end component;

    component sevenBitAdder
        port (
            in_a     : in    std_logic_vector(6 downto 0);
            in_b     : in    std_logic_vector(6 downto 0);
            cin      : in    std_logic;  -- Change input signal name
            out_sum  : out   std_logic_vector(6 downto 0)
        );
    end component;

    signal int_enable : std_logic;
    signal int_s, int_q, int_d : std_logic_vector(6 downto 0);
    signal int_reset: std_logic;

begin
    int_enable <= in_load xor in_countD;

    int_reset <= in_reset; -- Inverted reset signal

    int_d <= ((in_load & in_load & in_load & in_load & in_load & in_load & in_load) and in_a) or
             ((in_countD & in_countD & in_countD & in_countD & in_countD & in_countD & in_countD) and int_s); 

    adder: sevenBitAdder
        port map (
            in_a   => int_q,
            in_b   => "1111110",
            cin    => '1',  -- Update the input signal name
            out_sum => int_s
        );

    bit6: enARdFF_2
        port map (
            i_resetBar => int_reset, -- Using the inverted reset signal
            i_d        => int_d(6),
            i_enable   => int_enable, 
            i_clock    => in_clock,
            o_q        => int_q(6)
        );  

    bit5: enARdFF_2
        port map (
            i_resetBar => int_reset, -- Using the inverted reset signal
            i_d        => int_d(5),
            i_enable   => int_enable, 
            i_clock    => in_clock,
            o_q        => int_q(5)
        );
	 
    bit4: enARdFF_2
        port map (
            i_resetBar => int_reset, -- Using the inverted reset signal
            i_d        => int_d(4),
            i_enable   => int_enable, 
            i_clock    => in_clock,
            o_q        => int_q(4)
        );
	
    bit3: enARdFF_2
        port map (
            i_resetBar => int_reset, -- Using the inverted reset signal
            i_d        => int_d(3),
            i_enable   => int_enable, 
            i_clock    => in_clock,
            o_q        => int_q(3)
        );
	
    bit2: enARdFF_2
        port map (
            i_resetBar => int_reset, -- Using the inverted reset signal
            i_d        => int_d(2),
            i_enable   => int_enable, 
            i_clock    => in_clock,
            o_q        => int_q(2)
        );

    bit1: enARdFF_2
        port map (
            i_resetBar => int_reset, -- Using the inverted reset signal
            i_d        => int_d(1),
            i_enable   => int_enable, 
            i_clock    => in_clock,
            o_q        => int_q(1)
        );
	
    bit0: enARdFF_2
        port map (
            i_resetBar => int_reset, -- Using the inverted reset signal
            i_d        => int_d(0),
            i_enable   => int_enable, 
            i_clock    => in_clock,
            o_q        => int_q(0)
        );

    -- Output driver
    out_q <= int_d when (in_load = '1') else int_q;
    out_zero <= '1' when (int_q = "0000000") else '0';

end rtl;
