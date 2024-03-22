library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DispController is
	port(i_swapButton : in std_logic;
			i_MuxOut : in std_logic_vector(7 downto 0);
			i_instOut : in std_logic_vector (31 downto 0);
			co_display1, co_display2, co_display3, co_display4, co_display5, co_display6, co_display7, co_display8: out std_logic_vector (6 downto 0));
end DispController;

architecture behave of DispController is
	signal int_display1, int_display2, int_display3, int_display4, int_display5, int_display6, int_display7, int_display8: std_logic_vector (6 downto 0);
	signal hex1, hex2, hex3, hex4, hex5, hex6, hex7, hex8: std_logic_vector(3 downto 0);
	signal bin1, bin2: std_logic_vector(3 downto 0);
	signal swap: std_logic;
	
	--Function To Convert 4 Bits to 7 Seg--
	function convert(i_input: in std_logic_vector(3 downto 0)) return std_logic_vector is variable v_Temp : std_logic_vector(6 downto 0);
	 begin
		case i_input is
			when "0000" => v_Temp := "1111110"; -- 0
			when "0001" => v_Temp := "0110000"; -- 1
			when "0010" => v_Temp := "1101101"; -- 2
			when "0011" => v_Temp := "1111001"; -- 3
			when "0100" => v_Temp := "0110011"; -- 4
			when "0101" => v_Temp := "1011011"; -- 5
			when "0110" => v_Temp := "1011111"; -- 6
			when "0111" => v_Temp := "1110000"; -- 7
			when "1000" => v_Temp := "1111111"; -- 8
			when "1001" => v_Temp := "1110011"; -- 9
			when "1010" => v_Temp := "1110111"; -- A
			when "1011" => v_Temp := "0011111"; -- B
			when "1100" => v_Temp := "1001110"; -- C
			when "1101" => v_Temp := "0111101"; -- D
			when "1110" => v_Temp := "1001111"; -- E
			when "1111" => v_Temp := "1000111"; -- F
			when others => v_Temp := "0000001";
		end case;
	 return std_logic_vector(v_Temp);
	 end convert;
	
	--Behave Start--
	begin
	
	--Split 32 Bit Input--
	split32: process(i_instOut)
	begin
        hex1 <= i_instOut(3 downto 0);
        hex2 <= i_instOut(7 downto 4);
        hex3 <= i_instOut(11 downto 8);
        hex4 <= i_instOut(15 downto 12);
        hex5 <= i_instOut(19 downto 16);
        hex6 <= i_instOut(23 downto 20);
        hex7 <= i_instOut(27 downto 24);
        hex8 <= i_instOut(31 downto 28);
    end process;
	 
	 --Split 8 Bit Input--
	 split8: process(i_MuxOut)
	 begin
			bin1 <= i_MuxOut(3 downto 0);
			bin2 <= i_MuxOut(7 downto 4);
	 end process;
	
	 
	 process(i_swapButton)
		begin 
			if(i_swapButton = '1') then
				if (swap = '0') then
					swap <= '1';
				else 
					swap <='0';
				end if;
			end if;
		end process;
	
	 process(i_swapButton, i_instOut)
	 begin 
		if (swap= '1') then
			int_display1 <= convert(bin1);
			int_display2 <= convert(bin2);
			int_display3 <= "0000001";
			int_display4 <= "0000001";
			int_display5 <= "0000001";
			int_display6 <= "0000001";
			int_display7 <= "0000001";
			int_display8 <= "0000001";
		
		else 
			int_display1 <=convert(hex1);
			int_display2 <=convert(hex2);
			int_display3 <=convert(hex3);
			int_display4 <=convert(hex4);
			int_display5 <=convert(hex5);
			int_display6 <=convert(hex6);
			int_display7 <=convert(hex7);
			int_display8 <=convert(hex8);
		end if;
		end process;
	 
	 --Outputs--
	 co_display1 <= int_display1;
	 co_display2 <= int_display2;
	 co_display3 <= int_display3;
	 co_display4 <= int_display4;
	 co_display5 <= int_display5;
	 co_display6 <= int_display6;
	 co_display7 <= int_display7;
	 co_display8 <= int_display8;
	 
end behave;
