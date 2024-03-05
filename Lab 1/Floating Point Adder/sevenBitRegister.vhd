library ieee;
use ieee.std_logic_1164.all;

entity sevenBitRegister is
    port (
        in_reset, in_clock, in_load : in std_logic;
        in_data : in std_logic_vector(6 downto 0);
        out_data : out std_logic_vector(6 downto 0)
    );
end sevenBitRegister;

architecture rtl of sevenBitRegister is
    signal data : std_logic_vector(6 downto 0);

    component enardFF_2
        port (
            i_resetBar, i_d, i_enable, i_clock : in std_logic;
            o_q, o_qBar : out std_logic
        );
    end component;

begin
    gen_enardFF_2: for i in 6 downto 0 generate
        signal bit_data : std_logic;  -- Use a signal for each bit
    begin
        bit_component : enardFF_2
            port map (
                i_resetBar => in_reset,
                i_d => in_data(i),
                i_enable => in_load,
                i_clock => in_clock,
                o_q => bit_data
            );
        data(i) <= bit_data;  -- Assign each bit individually
    end generate gen_enardFF_2;

    -- Output Assignment
    out_data <= data;

end rtl;
