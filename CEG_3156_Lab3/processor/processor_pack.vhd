library ieee;
use ieee.std_logic_1164.all; 

package processor_pack is 
COMPONENT registerFile
	PORT (
    i_clock           : IN STD_LOGIC;
		i_gReset          : IN STD_LOGIC;
		i_regWrite        : IN STD_LOGIC;
		i_readRegister1   : IN STD_LOGIC_VECTOR(2 downto 0);
		i_readRegister2   : IN STD_LOGIC_VECTOR(2 downto 0);
		i_writeRegister   : IN STD_LOGIC_VECTOR(2 downto 0);
		i_writeData       : IN STD_LOGIC_VECTOR(7 downto 0);
		o_readData1       : OUT STD_LOGIC_VECTOR(7 downto 0);
		o_readData2       : OUT STD_LOGIC_VECTOR(7 downto 0));
END COMPONENT;

COMPONENT controlUnit
	PORT (
	  i_Opcode  : IN	STD_LOGIC_VECTOR(5 downto 0);
		o_ALUOp   : OUT	STD_LOGIC_VECTOR(1 downto 0);
		o_RegDst, o_Jump, o_Branch, o_MemRead, o_MemToReg, o_MemWrite, o_RegWrite, o_ALUSrc : OUT STD_LOGIC); 
END COMPONENT;

COMPONENT controlUnitALU
	PORT (
		i_func 		: IN 	STD_LOGIC_VECTOR(5 downto 0);
		i_aluOp 	: IN 	STD_LOGIC_VECTOR(1 downto 0);
		o_control 	: OUT 	STD_LOGIC_VECTOR(2 downto 0)
		);
END COMPONENT;

component nBitALU IS
	generic(word_size : integer := 8);
	PORT (	i_op			: IN	STD_LOGIC_VECTOR(2 downto 0);
				i_A, i_B		: IN	STD_LOGIC_VECTOR(word_size - 1 downto 0);
				o_zero		: OUT	STD_LOGIC;
				o_q			: OUT	STD_LOGIC_VECTOR(word_size - 1 downto 0));
end component;

COMPONENT DispController
	port(i_swapButton : in std_logic;
			i_MuxOut : in std_logic_vector(7 downto 0);
			i_instOut : in std_logic_vector (31 downto 0);
			co_display1, co_display2, co_display3, co_display4, co_display5, co_display6, co_display7, co_display8: out std_logic_vector (6 downto 0));
END COMPONENT;

component HazardDetectionUnit is
    port (
        idExMemRead : in std_logic;      -- Signal indicating a memory read operation in the ID/EX stage
        isBranch : in std_logic;         -- Signal indicating a branch instruction in the IF/ID stage
		  
        idExRegRt : in std_logic_vector(4 downto 0);  -- Register value from the ID/EX stage
        ifIdRegRs : in std_logic_vector(4 downto 0);  -- Source register value from the IF/ID stage
        ifIdRegRt : in std_logic_vector(4 downto 0);  -- Target register value from the IF/ID stage
		  
        ifIdWrite : out std_logic := '0';   -- Signal indicating whether to write to the IF/ID stage
        PCwrite : out std_logic := '0';     -- Signal indicating whether to write to the PC
        ctrlMux : out std_logic := '0'      -- Signal controlling the multiplexer
    );
end component;

component forwardingUnit is
    port (
		i_EXRegisterRs          : in std_logic_vector (4 downto 0);
        i_EXRegisterRt          : in std_logic_vector (4 downto 0);
        i_MEMRegisterRd         : in std_logic_vector (4 downto 0);
        i_WBRegisterRd          : in std_logic_vector (4 downto 0);
        i_MEMRegWrite           : in std_logic;
        i_WBRegWrite            : in std_logic;
		
        o_ForwardA              : out std_logic_vector(1 downto 0);
        o_ForwardB              : out std_logic_vector(1 downto 0)
	);
end component;

end package; 
