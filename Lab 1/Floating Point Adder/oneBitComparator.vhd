library ieee; 
use ieee.std_logic_1164.all;

entity oneBitComparator is 
    port (
        in_a, in_b, in_greaterprev, in_lessprev: in std_logic;
        out_greater, out_less, out_equal: out std_logic
    );
end oneBitComparator;

architecture rtl of oneBitComparator is
signal int_greater, int_less : std_logic;

begin
    -- Greater than output calculation
    int_greater <= (in_a and not in_lessprev and not in_b) or in_greaterprev;
    
    -- Less than output calculation
    int_less <= (not in_a and in_b and not in_greaterprev) or in_lessprev;
    
    -- Equal output calculation
    out_equal <= not (int_greater or int_less);
	 
	 out_greater <= int_greater;
	 out_less <= int_less;
end rtl;
