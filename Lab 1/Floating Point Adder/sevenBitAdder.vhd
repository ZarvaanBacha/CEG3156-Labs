library ieee;
use ieee.std_logic_1164.all;

entity sevenBitAdder is
    port (
        in_a, in_b : in std_logic_vector(6 downto 0);
        cin : in std_logic;
        out_sum : out std_logic_vector(6 downto 0);
        out_cout : out std_logic
    );
end entity sevenBitAdder;

architecture structural of sevenBitAdder is
    signal temp_cout_0, temp_cout_1, temp_cout_2, temp_cout_3, temp_cout_4, temp_cout_5 : std_logic;
    signal temp_sum : std_logic_vector(6 downto 0);

    component oneBitFullAdder
        port (
            in_a, in_b, in_cin : in std_logic;
            out_cout, out_sum : out std_logic
        );
    end component;

begin
    -- Connecting the one-bit full adders in series
    FA0 : oneBitFullAdder port map (
        in_a => in_a(0),
        in_b => in_b(0),
        in_cin => cin,
        out_cout => temp_cout_0,
        out_sum => temp_sum(0)
    );

    FA1 : oneBitFullAdder port map (
        in_a => in_a(1),
        in_b => in_b(1),
        in_cin => temp_cout_0,
        out_cout => temp_cout_1,
        out_sum => temp_sum(1)
    );

    -- Repeat the above process for remaining bits (2 to 6)

    FA2 : oneBitFullAdder port map (
        in_a => in_a(2),
        in_b => in_b(2),
        in_cin => temp_cout_1,
        out_cout => temp_cout_2,
        out_sum => temp_sum(2)
    );

    FA3 : oneBitFullAdder port map (
        in_a => in_a(3),
        in_b => in_b(3),
        in_cin => temp_cout_2,
        out_cout => temp_cout_3,
        out_sum => temp_sum(3)
    );

    FA4 : oneBitFullAdder port map (
        in_a => in_a(4),
        in_b => in_b(4),
        in_cin => temp_cout_3,
        out_cout => temp_cout_4,
        out_sum => temp_sum(4)
    );

    FA5 : oneBitFullAdder port map (
        in_a => in_a(5),
        in_b => in_b(5),
        in_cin => temp_cout_4,
        out_cout => temp_cout_5,
        out_sum => temp_sum(5)
    );

    FA6 : oneBitFullAdder port map (
        in_a => in_a(6),
        in_b => in_b(6),
        in_cin => temp_cout_5,
        out_cout => out_cout,
        out_sum => temp_sum(6)
    );

    -- Output assignment
    out_sum <= temp_sum;

end architecture structural;
