library ieee;
use ieee.std_logic_1164.all;

entity eightBitAdder is
    port (
        in_a, in_b : in std_logic_vector(7 downto 0);
        in_cin : in std_logic;
        out_sign : out std_logic;
        out_sum : out std_logic_vector(6 downto 0)
    );
end eightBitAdder;

architecture struct of eightBitAdder is
    component oneBitFullAdder
        port (
            in_a, in_b, in_cin : in std_logic;
            out_cout, out_sum : out std_logic
        );
    end component;

    signal carry : std_logic_vector(7 downto 0);
begin 
    adder7 : oneBitFullAdder
        port map (
				in_a => in_a(7),
            in_b => in_b(7),
            in_cin => carry(6),
            out_cout => carry(7),
            out_sum => out_sign
        );
    
    adder6 : oneBitFullAdder
        port map (
            in_a => in_a(6),
            in_b => in_b(6),
            in_cin => carry(5),
            out_cout => carry(6),
            out_sum => out_sum(6)
        );

	 adder5 : oneBitFullAdder
        port map (
            in_a => in_a(5),
            in_b => in_b(5),
            in_cin => carry(4),
            out_cout => carry(5),
            out_sum => out_sum(5)
        );

    adder4 : oneBitFullAdder
        port map (
            in_a => in_a(4),
            in_b => in_b(4),
            in_cin => carry(3),
            out_cout => carry(4),
            out_sum => out_sum(4)
        );

    adder3 : oneBitFullAdder
        port map (
            in_a => in_a(3),
            in_b => in_b(3),
            in_cin => carry(2),
            out_cout => carry(3),
            out_sum => out_sum(3)
        );

    adder2 : oneBitFullAdder
        port map (
            in_a => in_a(2),
            in_b => in_b(2),
            in_cin => carry(1),
            out_cout => carry(2),
            out_sum => out_sum(2)
        );

    adder1 : oneBitFullAdder
        port map (
            in_a => in_a(1),
            in_b => in_b(1),
            in_cin => carry(0),
            out_cout => carry(1),
            out_sum => out_sum(1)
        );

    adder0 : oneBitFullAdder
        port map (
             in_a => in_a(0),
				 in_b => in_b(0),
             in_cin => in_cin,
             out_cout => carry(0),
             out_sum => out_sum(0)
			);
end struct;
