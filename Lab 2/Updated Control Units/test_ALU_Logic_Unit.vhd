library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_ALU_Logic_Unit is
end test_ALU_Logic_Unit;

architecture test of test_ALU_Logic_Unit is
signal ALUOp :  std_logic_vector(1 downto 0);
signal Funct:  std_logic_vector(5 downto 0);
signal Operation:  std_logic_Vector (2 downto 0);

component ALU_Logic_Unit is
	port(ALUOp : in std_logic_vector(1 downto 0);
			Funct: in std_logic_vector(5 downto 0);
			Operation: out std_logic_Vector (2 downto 0));
end component;

begin

impl: ALU_Logic_Unit
	port map(ALUOp, Funct, Operation);


stimulus: process begin
	-- Memory Reference
		ALUOp <= "00";
		Funct <= "XXXXXX";
		wait for 5 ns;
		
		ALUOp <= "01";
		Funct <= "XXXXXX";
		wait for 5 ns;
		
		ALUOp <= "10";
		Funct <= "XX0000";
		wait for 5 ns;
		
		ALUOp <= "10";
		Funct <= "XX0010";
		wait for 5 ns;
		
		ALUOp <= "10";
		Funct <= "XX0100";
		wait for 5 ns;
		
		ALUOp <= "10";
		Funct <= "XX0101";
		wait for 5 ns;
		
		ALUOp <= "10";
		Funct <= "XX1010";
		wait for 5 ns;

end process;	
end test;