library ieee;
use ieee.std_logic_1164.all;

entity control_Logic_Unit is
	port(op : in std_logic_vector(5 downto 0);
      RegDst, AluSrc, MemToReg, RegWrite,
		MemRead, MemWrite, Branch, Jump, ALUOp1, ALUOp0: out std_logic);
end control_Logic_Unit;

architecture struct of control_Logic_Unit is
signal int_R_Type : std_logic;
signal int_LW : std_logic;
signal int_SW : std_logic;
signal int_Jump : std_logic;
signal int_BEQ : std_logic;


begin

int_R_Type <= not(op(0)) and not(op(1)) and not(op(2)) and not(op(3)) and not(op(4)) and not(op(5));
int_LW <= op(0) and op(1) and not(op(2)) and not(op(3)) and not(op(4)) and op(5);
int_SW <= op(0) and op(1) and not(op(2))and op(3) and not(op(4)) and op(5);
int_Jump <= not(op(0)) and op(1) and not(op(2)) and not(op(3))and not(op(4)) and not(op(5));
int_BEQ <= not(op(0)) and not(op(1))and op(2) and not(op(3))and not(op(4)) and not(op(5));

RegDst <= int_R_Type;
ALUSrc <= int_LW or int_SW;
MemToReg <= int_LW;
RegWrite <= int_R_Type or int_LW;
MemRead <= int_LW;
MemWrite <= int_SW;
Branch <= int_BEQ;
Jump <= int_Jump;
ALUOp1 <= int_R_Type;
ALUOp0 <= int_BEQ;

end struct;