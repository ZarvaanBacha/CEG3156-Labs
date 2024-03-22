library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_control_Logic_Unit is
end test_control_Logic_Unit;

architecture test of test_control_Logic_Unit is
signal op: std_logic_vector(5 downto 0);
signal RegDst, AluSrc, MemToReg, RegWrite,
		MemRead, MemWrite, Branch,Jump, ALUOp1, ALUOp2: std_logic;

component control_Logic_Unit is
	port(op : in std_logic_vector(5 downto 0);
      RegDst, AluSrc, MemToReg, RegWrite,
		MemRead, MemWrite, Branch,Jump, ALUOp1, ALUOp2: out std_logic);
end component;

begin

impl: control_Logic_Unit
	port map(op, RegDst, AluSrc, MemToReg, RegWrite,
		MemRead, MemWrite, Branch, Jump, ALUOp1, ALUOp2);

stimulus: process begin
	op <= "000000"; -- R Type
	wait for 5 ns;
	op <= "100011"; -- Load Word
	wait for 5 ns;
	op <= "101011"; -- Store Word
	wait for 5 ns;
	op <= "000100"; -- Branch
	wait for 5 ns; 
	op <= "000010"; -- Jump
	wait for 5 ns; 
end process;	
end test;