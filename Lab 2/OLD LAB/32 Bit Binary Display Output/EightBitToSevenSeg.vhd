library ieee;
use ieee.std_logic_1164.all;

entity EightBitToSevenSeg is
	port(i_eightBit : in std_logic_vector (7 downto 0);
			o_display1, o_display2 : out std_logic_vector (6 downto 0));
end EightBitToSevenSeg;

architecture rtl of EightBitToSevenSeg is 
	signal display1, display2 : std_logic_vector(6 downto 0);
	
		begin
		process(i_eightBit)
		begin 
			case i_eightBit is
				when "00000000" => display1 <= "1111110"; display2 <= "1111110";
				when "00000001" => display1 <= "0110000"; display2 <= "1111110";
				when "00000010" => display1 <= "1101101"; display2 <= "1111110";
				when "00000011" => display1 <= "1111001"; display2 <= "1111110";
				when "00000100" => display1 <= "0110011"; display2 <= "1111110";
				when "00000101" => display1 <= "1011011"; display2 <= "1111110";
				when "00000110" => display1 <= "1011111"; display2 <= "1111110";
				when "00000111" => display1 <= "1110000"; display2 <= "1111110";
				when "00001000" => display1 <= "1111111"; display2 <= "1111110";
				when "00001001" => display1 <= "1110011"; display2 <= "1111110";
				when "00001010" => display1 <= "1111110"; display2 <= "0110000";
				when "00001011" => display1 <= "0110000"; display2 <= "0110000";
				when "00001100" => display1 <= "1101101"; display2 <= "0110000";
				when "00001101" => display1 <= "1111001"; display2 <= "0110000";
				when "00001110" => display1 <= "0110011"; display2 <= "0110000";
				when "00001111" => display1 <= "1011011"; display2 <= "0110000";
				when "00010000" => display1 <= "1011111"; display2 <= "0110000";
				when "00010001" => display1 <= "1110000"; display2 <= "0110000";
				when "00010010" => display1 <= "1111111"; display2 <= "0110000";
				when "00010011" => display1 <= "1110011"; display2 <= "0110000";
				when "00010100" => display1 <= "1111110"; display2 <= "1101101";
				when "00010101" => display1 <= "0110000"; display2 <= "1101101";
				when "00010110" => display1 <= "1101101"; display2 <= "1101101";
				when "00010111" => display1 <= "1111001"; display2 <= "1101101";
				when "00011000" => display1 <= "0110011"; display2 <= "1101101";
				when "00011001" => display1 <= "1011011"; display2 <= "1101101";
				when "00011010" => display1 <= "1011111"; display2 <= "1101101";
				when "00011011" => display1 <= "1110000"; display2 <= "1101101";
				when "00011100" => display1 <= "1111111"; display2 <= "1101101";
				when "00011101" => display1 <= "1110011"; display2 <= "1101101";
				when "00011110" => display1 <= "1111110"; display2 <= "1111001";
				when "00011111" => display1 <= "0110000"; display2 <= "1111001";
				when "00100000" => display1 <= "1101101"; display2 <= "1111001";
				when "00100001" => display1 <= "1111001"; display2 <= "1111001";
				when "00100010" => display1 <= "0110011"; display2 <= "1111001";
				when "00100011" => display1 <= "1011011"; display2 <= "1111001";
				when "00100100" => display1 <= "1011111"; display2 <= "1111001";
				when "00100101" => display1 <= "1110000"; display2 <= "1111001";
				when "00100110" => display1 <= "1111111"; display2 <= "1111001";
				when "00100111" => display1 <= "1110011"; display2 <= "1111001";
				when "00101000" => display1 <= "1111110"; display2 <= "0110011";
				when "00101001" => display1 <= "0110000"; display2 <= "0110011";
				when "00101010" => display1 <= "1101101"; display2 <= "0110011";
				when "00101011" => display1 <= "1111001"; display2 <= "0110011";
				when "00101100" => display1 <= "0110011"; display2 <= "0110011";
				when "00101101" => display1 <= "1011011"; display2 <= "0110011";
				when "00101110" => display1 <= "1011111"; display2 <= "0110011";
				when "00101111" => display1 <= "1110000"; display2 <= "0110011";
				when "00110000" => display1 <= "1111111"; display2 <= "0110011";
				when "00110001" => display1 <= "1110011"; display2 <= "0110011";
				when "00110010" => display1 <= "1111110"; display2 <= "1011011";
				when "00110011" => display1 <= "0110000"; display2 <= "1011011";
				when "00110100" => display1 <= "1101101"; display2 <= "1011011";
				when "00110101" => display1 <= "1111001"; display2 <= "1011011";
				when "00110110" => display1 <= "0110011"; display2 <= "1011011";
				when "00110111" => display1 <= "1011011"; display2 <= "1011011";
				when "00111000" => display1 <= "1011111"; display2 <= "1011011";
				when "00111001" => display1 <= "1110000"; display2 <= "1011011";
				when "00111010" => display1 <= "1111111"; display2 <= "1011011";
				when "00111011" => display1 <= "1110011"; display2 <= "1011011";
				when "00111100" => display1 <= "1111110"; display2 <= "1011111";
				when "00111101" => display1 <= "0110000"; display2 <= "1011111";
				when "00111110" => display1 <= "1101101"; display2 <= "1011111";
				when "00111111" => display1 <= "1111001"; display2 <= "1011111";

				when others => display1 <= "0000001"; display2 <= "0000001";
		end case;
	end process;
	o_display1 <= not display1;
	o_display2 <= not display2;
end rtl;
