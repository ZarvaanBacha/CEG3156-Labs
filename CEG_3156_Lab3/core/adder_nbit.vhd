library ieee;
use ieee.std_logic_1164.all; 

entity fadder is 
    port(
        a, b, c_in : in std_logic; 
        c_out, s_out : out std_logic
    );
end fadder;

architecture rtl of fadder is
begin 
    s_out <= c_in xor (a xor b);
    c_out <= ((a xor b) and c_in) or (a and b); 
end rtl; 

library ieee; 
use ieee.std_logic_1164.all; 

entity adder_nbit is 
generic(data_width : integer := 8);
    port(
        a_in, b_in : in std_logic_vector(data_width-1 downto 0); 
        subtract, c_in : in std_logic; 
        c_out, overflow_out : out std_logic;
        s_out : out std_logic_vector(data_width-1 downto 0));
end adder_nbit; 

architecture rtl of adder_nbit is 
component fadder is 
    port(
        a, b, c_in : in std_logic; 
        c_out, s_out : out std_logic
    );
end component;
signal do_2s_complement, static_subtract : std_logic_vector(data_width-1 downto 0);
signal carries : std_logic_vector(data_width downto 0);
begin 
	static_subtract <= (others => subtract);
	do_2s_complement <= b_in xor static_subtract; 
	carries(0) <= c_in or subtract; 
	
	gen: for i in 0 to data_width-1 generate
		foo: fadder
            port map(
                a       => a_in(i),
                b       => do_2s_complement(i),
                c_in    => carries(i),
                s_out   => s_out(i),
                c_out   => carries(i+1)
            );
	end generate; 
	
	c_out <= carries(data_width);
	overflow_out <= carries(data_width) xor carries(data_width-1);
end rtl; 
