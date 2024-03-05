library ieee; 
use ieee.std_logic_1164.all;

entity sevenBitComparator is
    port (
        in_a, in_b: in std_logic_vector(6 downto 0);
        out_greater, out_less, out_equal: out std_logic
    );
end sevenBitComparator;

architecture rtl of sevenBitComparator is
    signal greater_prev, less_prev: std_logic;
    signal greater_bit, less_bit, equal_bit: std_logic_vector(6 downto 0);

    component oneBitComparator is 
        port (
            in_a, in_b, in_greaterprev, in_lessprev: in std_logic;
            out_greater, out_less, out_equal: out std_logic
        );
    end component;

begin
    -- Comparison for the most significant bit
    compare_0: oneBitComparator port map (
        in_a => in_a(6),
        in_b => in_b(6),
        in_greaterprev => '0', -- Since it's the most significant bit, no previous bit is greater
        in_lessprev => '0',    -- Since it's the most significant bit, no previous bit is lesser
        out_greater => greater_bit(6),
        out_less => less_bit(6),
        out_equal => equal_bit(6)
    );

    -- Comparison for the rest of the bits
    comparison_loop: for i in 5 downto 0 generate
        compare_i: oneBitComparator port map (
            in_a => in_a(i),
            in_b => in_b(i),
            in_greaterprev => greater_prev,
            in_lessprev => less_prev,
            out_greater => greater_bit(i),
            out_less => less_bit(i),
            out_equal => equal_bit(i)
        );
        greater_prev <= greater_bit(i);
        less_prev <= less_bit(i);
    end generate;

    -- Output determination
    out_greater <= greater_bit(6);
    out_less <= less_bit(6);
    out_equal <= equal_bit(6);
end rtl;
