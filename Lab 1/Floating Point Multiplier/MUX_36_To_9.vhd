LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity MUX_36_To_9 is
	port(i_3, i_2, i_1, i_0 : in STD_LOGIC_VECTOR(8 downto 0);
			i_Selector 		: IN	STD_LOGIC_VECTOR(1 downto 0);		
			o : out STD_LOGIC_VECTOR(8 downto 0));
end MUX_36_To_9;

ARCHITECTURE struct of MUX_36_To_9 is
	SIGNAL int : STD_LOGIC_VECTOR(8 downto 0);
	
COMPONENT MUX_4_To_1 IS
	PORT(
		i_0, i_1,i_2,i_3			: IN	STD_LOGIC;
		i_Selector 		: IN	STD_LOGIC_VECTOR(1 downto 0);
		o_Value			: OUT	STD_LOGIC);
END COMPONENT;

BEGIN

muxloop: FOR i IN 0 TO 8 GENERATE
	mux_i: MUX_4_To_1 port map (
		i_0(i),i_1(i),i_2(i),i_3(i),
		i_Selector,
		int(i));
END GENERATE;

	o <= int;

end struct;