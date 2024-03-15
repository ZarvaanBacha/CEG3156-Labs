library ieee;
use ieee.std_logic_1164.all;

entity eightBitRegister is
	port(i_clock, i_gReset, i_enable: in std_logic;
			i_Data : in std_logic_vector(7 downto 0);
			o_q : out std_logic_vector(7 downto 0));
end eightBitRegister;

architecture rtl of eightbitRegister is

component enardFF_2
	port(i_resetBar: in	std_logic;
			i_d: in	std_logic;
			i_enable: in std_logic;
			i_clock: in std_logic;
			o_q, o_qBar: out std_logic);
end component;

signal int_q : std_logic_vector(7 downto 0);

begin 


bit7: enardFF_2
	port map (i_resetBar => i_gReset,
			i_clock => i_clock,
			i_d => i_Data(7),
			i_enable => i_enable,
			o_q => int_q(7));

bit6: enardFF_2
	port map (i_resetBar => i_gReset,
			i_clock => i_clock,
			i_d => i_Data(6),
			i_enable => i_enable,
			o_q => int_q(6));

bit5: enardFF_2
	port map (i_resetBar => i_gReset,
			i_clock => i_clock,
			i_d => i_Data(5),
			i_enable => i_enable,
			o_q => int_q(5));

bit4: enardFF_2
	port map (i_resetBar => i_gReset,
			i_clock => i_clock,
			i_d => i_Data(4),
			i_enable => i_enable,
			o_q => int_q(4));

bit3: enardFF_2
	port map (i_resetBar => i_gReset,
			i_clock => i_clock,
			i_d => i_Data(3),
			i_enable => i_enable,
			o_q => int_q(3));

bit2: enardFF_2
	port map (i_resetBar => i_gReset,
			i_clock => i_clock,
			i_d => i_Data(2),
			i_enable => i_enable,
			o_q => int_q(2));

bit1: enardFF_2
	port map (i_resetBar => i_gReset,
			i_clock => i_clock,
			i_d => i_Data(1),
			i_enable => i_enable,
			o_q => int_q(1));

bit0: enardFF_2
	port map (i_resetBar => i_gReset,
			i_clock => i_clock,
			i_d => i_Data(0),
			i_enable => i_enable,
			o_q => int_q(0));
o_q <= int_q;

end rtl;