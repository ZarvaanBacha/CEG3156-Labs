library ieee;
use ieee.std_logic_1164.all;

entity fpAdderControl is
    port ( 
        in_reset, in_clock : in  std_logic;
        in_sign, in_notless9, in_zero, in_coutfz  : in  std_logic;
        out_load1, out_load2, out_load3, out_load4   : out std_logic;
        out_load5, out_load7, out_load6, out_cin  : out std_logic;
        out_on22, out_on21, out_flag0, out_flag1    : out std_logic;
        out_clear4, out_clear3, out_shiftr4, out_shiftr3: out std_logic;
        out_countd6, out_countu7, out_shiftr5, out_done   : out std_logic;
        out_state                    : out std_logic_vector(0 to 9));
end fpAdderControl;

architecture rtl of fpAdderControl is

component enardFF_2
    port(
        i_resetBar  : in std_logic;
        i_d       : in std_logic;
        i_enable    : in std_logic;
        i_clock        : in std_logic;
        o_q, o_qBar    : out std_logic);
end component;

component enasdFF
    port(
        i_resetBar  : in std_logic;
        i_d       : in std_logic;
        i_enable    : in std_logic;
        i_clock        : in std_logic;
        o_q, o_qBar    : out std_logic);
end component;

signal int_state, int_d : std_logic_vector(0 to 9);
signal int_reset: std_logic;

begin

int_reset <= in_reset;

int_d(0) <= '0';
int_d(1) <= int_state(0);
int_d(2) <= int_state(1) and in_sign;
int_d(3) <= int_state(1) and not(in_sign) and in_notless9;
int_d(4) <= (int_state(1) and not(in_sign) and not(in_notless9) and not(in_zero)) or (int_state(4) and not(in_zero));
int_d(5) <= int_state(2) and in_notless9;
int_d(6) <= (int_state(2) and not(in_notless9) and not(in_zero)) or (int_state(6) and not(in_zero));
int_d(7) <= int_state(3) or (int_state(4) and in_zero) or (int_state(2) and not(in_notless9) and in_zero) or (int_state(1) and not(in_sign) and not(in_notless9) and in_zero) or int_state(5) or (int_state(6) and in_zero);
int_d(8) <= int_state(7) and in_coutfz;
int_d(9) <= int_state(8) or int_state(9) or (int_state(7) and not(in_coutfz));

s0: enasdFF
    port map (    i_resetBar => in_reset,
            i_d => int_d(0),
            i_enable => '1',
            i_clock => in_clock,
            o_q => int_state(0));

s1: enardFF_2
    port map (    i_resetBar => int_reset,
            i_d => int_d(1),
            i_enable => '1',
            i_clock => in_clock,
            o_q => int_state(1));

s2: enardFF_2
    port map (    i_resetBar => int_reset,
            i_d => int_d(2) ,
            i_enable => '1',
            i_clock => in_clock,
            o_q => int_state(2));

s3: enardFF_2
    port map (    i_resetBar => int_reset,
            i_d => int_d(3),
            i_enable => '1',
            i_clock => in_clock,
            o_q => int_state(3));

s4: enardFF_2
    port map (    i_resetBar => int_reset,
            i_d => int_d(4),
            i_enable => '1',
            i_clock => in_clock,
            o_q => int_state(4));

s5: enardFF_2
    port map (    i_resetBar => int_reset,
            i_d => int_d(5),
            i_enable => '1',
            i_clock => in_clock,
            o_q => int_state(5));

s6: enardFF_2
    port map (    i_resetBar => int_reset,
            i_d => int_d(6),
            i_enable => '1',
            i_clock => in_clock,
            o_q => int_state(6));

s7: enardFF_2
    port map (    i_resetBar => int_reset,
            i_d => int_d(7),
            i_enable => '1',
            i_clock => in_clock,
            o_q => int_state(7));

s8: enardFF_2
    port map (    i_resetBar => int_reset,
            i_d => int_d(8),
            i_enable => '1',
            i_clock => in_clock,
            o_q => int_state(8));

s9: enardFF_2
    port map (    i_resetBar => int_reset,
            i_d => int_d(9),
            i_enable => '1',
            i_clock => in_clock,
            o_q => int_state(9));

    --Output drivers
    out_state <= int_state;

    out_load1 <= int_state(0);
    out_load2 <= int_state(0);
    out_load3 <= int_state(0);
    out_load4 <= int_state(0);

    out_on22 <= int_state(1);
    out_flag0 <= int_state(1);

    out_on21 <= int_state(2);
    out_flag1 <= int_state(2);

    out_clear4 <= int_state(3);

    out_shiftr4 <= int_state(4);

    out_clear3 <= int_state(5);

    out_shiftr3 <= int_state(6);

    out_load5 <= int_state(7);
    out_load7 <= int_state(7);

    out_shiftr5 <= int_state(8);
    out_countu7 <= int_state(8);

    out_cin <= int_state(1) or int_state(2);
    out_load6 <= int_state(1) or int_state(2);
    out_countd6 <= int_state(4) or int_state(6);
    out_done <= int_state(9);
end rtl;
