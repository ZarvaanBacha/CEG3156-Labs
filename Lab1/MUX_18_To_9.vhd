LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity MUX_18_To_9 is
	port(i_1, i_0 : in STD_LOGIC_VECTOR(8 downto 0);
			i_Selector 		: IN	STD_LOGIC;		
			o : out STD_LOGIC_VECTOR(8 downto 0));
end MUX_18_To_9;

ARCHITECTURE struct of MUX_18_To_9 is
	SIGNAL int : STD_LOGIC_VECTOR(8 downto 0);
	
COMPONENT MUX_2_To_1 IS
	PORT(
		i_Value1, i_Value0	: IN	STD_LOGIC;
		i_Selector 				: IN	STD_LOGIC;
		o_Value					: OUT	STD_LOGIC);
END COMPONENT;

BEGIN

perbitloop: for i in 0 to 8 generate
	bit_i: MUX_2_To_1 port map(i_1(i), i_0(i), i_Selector, int(i));
end generate;

	o <= int;

end struct;