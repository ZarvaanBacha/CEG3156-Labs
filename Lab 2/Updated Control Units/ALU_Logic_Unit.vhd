library ieee;
use ieee.std_logic_1164.all;

entity ALU_Logic_Unit is
	port(ALUOp : in std_logic_vector(1 downto 0);
			Funct: in std_logic_vector(5 downto 0);
			Operation: out std_logic_Vector (2 downto 0));
end ALU_Logic_Unit;

architecture struct of ALU_Logic_Unit is
signal Operation0: std_logic;
signal Operation1: std_logic;
signal Operation2: std_logic;
begin

Operation0 <= ALUOp(1) and (Funct(3) or Funct(0));
Operation1 <= not(ALUOp(1)) or (not(Funct(2)));
Operation2 <= ALUOp(0) or (ALUOp(1) and Funct(1));

Operation(0) <= Operation0;
Operation(1) <= Operation1;
Operation(2) <= Operation2;

end struct;