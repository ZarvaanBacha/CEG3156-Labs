LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.core_utils.all; 
LIBRARY lpm;
USE lpm.lpm_components.ALL;

ENTITY singleCycleProcessor IS
	PORT (
		swapButton			: IN STD_LOGIC;
		GReset, GClock, memClock 	: IN STD_LOGIC;
		ValueSelect 		: IN STD_LOGIC_VECTOR(2 downto 0);
		MuxOut 				: OUT STD_LOGIC_VECTOR(7 downto 0);
		InstructionOut 	: OUT STD_LOGIC_VECTOR(31 downto 0);
		BranchOut, ZeroOut, MemWriteOut, RegWriteOut 	: OUT STD_LOGIC;
		o_display1, o_display2, o_display3, o_display4, o_display5, o_display6, o_display7, o_display8: out std_logic_vector (6 downto 0));
END singleCycleProcessor;

ARCHITECTURE rtl OF singleCycleProcessor IS

component rom_unregistered IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END component;

component ram_unreg IS
	PORT
	(
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wraddress		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END component;

COMPONENT registerFile
	PORT (	i_clock			: IN	STD_LOGIC;
		i_gReset		: IN 	STD_LOGIC;
		i_regWrite		: IN	STD_LOGIC;
		i_readRegister1 	: IN 	STD_LOGIC_VECTOR(2 downto 0);
		i_readRegister2 	: IN 	STD_LOGIC_VECTOR(2 downto 0);
		i_writeRegister 	: IN 	STD_LOGIC_VECTOR(2 downto 0);
		i_writeData 		: IN 	STD_LOGIC_VECTOR(7 downto 0);
		o_readData1 		: OUT 	STD_LOGIC_VECTOR(7 downto 0);
		o_readData2 		: OUT 	STD_LOGIC_VECTOR(7 downto 0));
END COMPONENT;

COMPONENT controlUnit
	PORT (	
	   i_Opcode								  		: IN	STD_LOGIC_VECTOR(5 downto 0);
		o_ALUOp									  	: OUT	STD_LOGIC_VECTOR(1 downto 0);
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

component IDIFRegister is 
	port(
		in_clk, in_rst : in std_logic;
		ifid_write : in std_logic; 
		in_instruction : in std_logic_vector(31 downto 0);
		in_pc : in std_logic_vector(7 downto 0);
		out_instruction : out std_logic_vector(31 downto 0);
		out_pc : out std_logic_vector(7 downto 0)
	);

end component; 

component clockDiv
	PORT
	(
		clock_25Mhz				: IN	STD_LOGIC;
		clock_1MHz				: OUT	STD_LOGIC;
		clock_100KHz				: OUT	STD_LOGIC;
		clock_10KHz				: OUT	STD_LOGIC;
		clock_1KHz				: OUT	STD_LOGIC;
		clock_100Hz				: OUT	STD_LOGIC;
		clock_10Hz				: OUT	STD_LOGIC;
		clock_1Hz				: OUT	STD_LOGIC);
	
END component;

COMPONENT clockDiv2
	port(in_clk : in std_logic;
			out_clk : out std_logic);
END COMPONENT;

component IDEXRegister is 
	port(
		in_clk, in_rst : in std_logic; 
		in_pc : in std_logic_vector(7 downto 0); --
		in_rdData1, in_rdData2 : in std_logic_vector(7 downto 0); --
		in_sExtended : in std_logic_vector(7 downto 0); --
		in_instr20_16, in_instr15_11 : in std_logic_vector(4 downto 0); 
		in_aluOP : in std_logic_vector(1 downto 0); --EX --
		in_regDst, in_aluSrc : in std_logic;  -- EX --
		in_memRead, in_memWrite, in_branch : in std_logic;  -- M --
		in_regWrite, in_memToReg : in std_logic; -- WB --
		
		out_rdData1, out_rdData2, out_pc : out std_logic_vector(7 downto 0);
		out_sExtended : out std_logic_vector(7 downto 0);
		out_instr20_16, out_instr15_11 : out std_logic_vector(4 downto 0);
		out_aluOp : out std_logic_vector(1 downto 0);
		out_regDst, out_aluSrc : out std_logic;  
		out_memRead, out_memWrite, out_branch : out std_logic; 
		out_regWrite, out_memToReg : out std_logic
	);
end component;

component EXMemRegister is 
	port(
		in_clk, in_rst : in std_logic; 
		
		in_branchALU, in_resALU : in std_logic_vector(7 downto 0); 
		in_aluZero : in std_logic; 
		
		in_rdData2 : in std_logic_vector(7 downto 0); 
		in_RegDstRes : in std_logic_vector(4 downto 0); 
		
		in_memRead, in_memWrite, in_branch : in std_logic;  -- M 
		in_regWrite, in_memToReg : in std_logic; -- WB 
		
		out_aluZero : out std_logic; 
		out_resALU, out_branchALU : out std_logic_vector(7 downto 0);
		out_rdData2 : out std_logic_vector(7 downto 0);
		out_memRead, out_memWrite, out_branch : out std_logic; 
		out_regWrite, out_memToReg : out std_logic;
		out_RegDstRes : out std_logic_vector(4 downto 0)
	);
end component;
--Clock Signal
SIGNAL int_DivClk : STD_LOGIC;

--PC Signals
SIGNAL int_PCin, int_PCout : STD_LOGIC_VECTOR(7 downto 0);

--Register File Signals
SIGNAL int_regDst, int_regWrite : STD_LOGIC;
SIGNAL int_readRegister1, int_readRegister2 : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL int_writeRt, int_writeRd : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL int_writeRegister, int_writeData : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL int_readData1, int_readData2 : STD_LOGIC_VECTOR(7 downto 0);

--Branch and Jump Instruction Signals

SIGNAL int_zero : STD_LOGIC;
SIGNAL int_branch, int_jump, int_beq : STD_LOGIC;
SIGNAL int_PCnext : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL int_jumpAddress, int_PCBranchAddress, int_extendedShiftedAddress, int_extendedAddress, int_nextAddress : STD_LOGIC_VECTOR(7 downto 0);

SIGNAL int_memRead, int_memToReg, int_aluSrc : STD_LOGIC;
SIGNAL int_controlUnitALU : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL int_aluOp : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL int_aluRes : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL int_muxOther : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL int_instruction : STD_LOGIC_VECTOR(31 downto 0);

SIGNAL int_PCCout : STD_LOGIC;

SIGNAL int_memWrite : STD_LOGIC;

SIGNAL int_PCBranchCout : STD_LOGIC;

SIGNAL int_aluInputB, int_readDataMemory : STD_LOGIC_VECTOR(7 downto 0);

SIGNAL int_muxOut : STD_LOGIC_VECTOR(7 downto 0);

signal ifid_instruction : std_logic_vector(31 downto 0);

signal ifid_pc4 : std_logic_vector(7 downto 0);

signal idex_rdData1, idex_rdData2, idex_pc, idex_sExtended : std_logic_vector(7 downto 0);; 
signal idex_instr20_16, idex_instr15_11 : std_logic_vector(4 downto 0); 
signal idex_aluOp  : std_logic_vector(1 downto 0);
signal idex_regDst, idex_aluSrc, idex_memRead, idex_memWrite, idex_branch, idex_regWrite, idex_memToReg : std_logic; 
signal exmem_aluZero,exmem_memRead, exmem_memWrite, exmem_branch, exmem_regWrite, exmem_memToReg : std_logic; 
signal exmem_resALU, exmem_branchALU, exmem_rdData2, exmem_RegDstRes : std_logic_vector(7 downto 0);
BEGIN

int_DivClk <= GClock;

int_readRegister1 <= int_instruction(23 downto 21);
int_readRegister2 <= int_instruction(18 downto 16);
	
int_muxOther <= '0' & int_regDst & int_jump & int_memRead & int_memToReg & int_aluOp(1) & int_aluOp(0) & int_aluSrc;


displayOutput: DispController
	PORT MAP(
			i_swapButton 	=> swapButton,
			i_instOut 		=> int_instruction,
			i_MuxOut 		=> int_muxOut,
			co_display1 	=> o_display1,
			co_display2 	=> o_display2,
			co_display3 	=> o_display3,
			co_display4 	=> o_display4,
			co_display5 	=> o_display5,
			co_display6 	=> o_display6,
			co_display7 	=> o_display7,
			co_display8 	=> o_display8);
			
ioMUX: mux81n
	generic map(8)
	PORT MAP (	
			sel 	=> ValueSelect,
			i0 	=> int_PCout,
			i1 	=> int_aluRes,
			i2 	=> int_readData1,
			i3		=> int_readData2,
			i4 	=> int_writeData,
			i5 	=> int_muxOther,
			i6 	=> int_muxOther,
			i7 	=> int_muxOther,
			outp 	=> int_muxOut);

IDIF: IDIFRegister
			port map(
		    in_clk => GClock, 
        in_rst => GReset,
		    ifid_write => '0', 
		    in_instruction => int_instruction,
		    in_pc => int_PCnext,
        out_instruction => ifid_instruction,
        out_pc  => ifid_pc4
			); 
	
IDEX : IDEXRegister 
  port map (
      in_clk => GClock, 
      in_rst => GReset,
      in_pc => ifid_pc4,
      in_rdData1 => int_readData1, 
      in_rdData2 => int_readData2, 
      in_sExtended => int_extendedShiftedAddress,
      in_instr20_16 => ifid_instruction(20 downto 16), 
      in_instr15_11 => ifid_instruction(15 downto 11), 
      in_aluOP => int_aluOp,
      in_regDst => int_regDst, 
      in_aluSrc => int_aluSrc,
      in_memRead => int_memRead, 
      in_memWrite => int_memWrite, 
      in_branch => int_branch,
      in_regWrite => int_regWrite, 
      in_memToReg => int_memToReg,
      out_rdData1 => idex_rdData1, 
      out_rdData2 => idex_rdData2, 
      out_pc  => idex_pc
      out_sExtended => idex_sExtended,
      out_instr20_16 => idex_instr20_16, 
      out_instr15_11 => idex_instr15_11
      out_aluOp =>idex_aluOp,
      out_regDst => idex_regDst, 
      out_aluSrc => idex_aluSrc, 
      out_memRead => idex_memRead, 
      out_memWrite => idex_memRead, 
      out_branch => idex_branch,
		  out_regWrite => idex_regWrite, 
      out_memToReg =>idex_memToReg
  );
EXMem : EXMemRegister 
	port map(
		in_clk => GClock, 
    in_rst => GReset, 
		
		in_branchALU, 
    in_resALU => int_aluRes,
		in_aluZero => int_zero, 
		
		in_rdData2 => idex_rdData2, 
		in_RegDstRes => int_writeRegister, 
		
    in_memRead => idex_memRead, 
    in_memWrite => idex_memWrite, 
    in_branch => idex_branch,
		in_regWrite => idex_regWrite, 
    in_memToReg => idex_memToReg,
		
		out_aluZero => exmem_aluZero,
		out_resALU => exmem_resALU, 
    out_branchALU => exmem_branchALU,
		out_rdData2 => exmem_rdData2, 
		out_memRead => exmem_memRead, 
    out_memWrite => exmem_memWrite, 
    out_branch => exmem_branch, 
		out_regWrite => exmem_regWrite, 
    out_memToReg => exmem_memToReg, 
		out_RegDstRes => exmem_RegDstRes
	);

PC: uniShiftReg
	generic map(8)
	PORT MAP (	
			in_reset 	=> GReset,
			in_clk 		=> int_DivClk,
			in_enable 	=> int_DivClk,
			in_shl 		=> '1',
			in_shr 		=> '1',
			in_data 		=> int_PCin,
			out_data 	=> int_PCout,
			out_dataBar => open);

PCAdder: adder_nbit 
	generic map(8)
	PORT MAP (	
			a_in 				=> int_PCout,
			b_in 				=> (2 => '1', others => '0'),
			c_in 				=> '0',
			subtract 		=> '0', 
			c_out 			=> int_PCCout,
			overflow_out 	=> open,
			s_out 			=> int_PCnext);
			
branchAdder: adder_nbit
	generic map(8)
	PORT MAP (	
			a_in 				=> int_PCnext,
			b_in 				=> int_extendedShiftedAddress,
			c_in 				=> '0',
			subtract 		=> '0', 
			c_out 			=> int_PCBranchCout,	
			overflow_out 	=> open, 
			s_out 			=> int_PCBranchAddress);		
			
branchSelect: mux21n
	generic map(8)
	PORT MAP (	
			sel 	=> int_beq,
			in0 	=> int_PCnext,
			in1 	=> int_PCBranchAddress,
			outp 	=> int_nextAddress);

branchOrJump: mux21n
	generic map(8)
	PORT MAP (	
			sel 	=> int_jump,
			in0 	=> int_nextAddress,
			in1 	=> int_jumpAddress,
			outp 	=> int_PCin);

instructionMem: rom_unregistered
	PORT MAP (	
			address => int_PCout,
			clock => int_DivClk,
			q => int_instruction);

int_beq <= int_branch AND int_zero;
int_jumpAddress <= int_PCnext(7) &  int_instruction(4 downto 0) & '0' & '0';
int_extendedAddress <= int_instruction(6) & int_instruction(6 downto 0);
int_extendedShiftedAddress <= int_extendedAddress(5 downto 0) & '0' & '0';

registers: registerFile
	PORT MAP (	 
			i_clock 				=> int_DivClk,
			i_gReset 			=> GReset,
			i_regWrite 			=> int_regWrite,
			i_readRegister1 	=> int_readRegister1,
			i_readRegister2 	=> int_readRegister2,
			i_writeRegister 	=> int_writeRegister(2 downto 0),
			i_writeData 		=> int_writeData,
			o_readData1 		=> int_readData1,
			o_readData2 		=> int_readData2);

int_writeRt <= '0' & '0' & '0' & '0' & '0' & int_instruction(18 downto 16);
int_writeRd <= '0' & '0' & '0' & '0' & '0' & int_instruction(13 downto 11);

writeRegMUX: mux21n
	generic map(8)
	PORT MAP (	
			sel 	=> int_regDst,
			in0 	=> int_writeRt,
			in1 	=> int_writeRd,
			outp 	=> int_writeRegister);

readData2MUX: mux21n
	generic map(8)
	PORT MAP (	
			sel 	=> int_ALUSrc,
			in0 	=> int_readData2,
			in1 	=> int_extendedAddress,
			outp 	=> int_aluInputB);

control: controlUnit
	PORT MAP (	
			i_Opcode 	=> int_instruction(31 downto 26),
			o_ALUOp 		=> int_aluOp,
			o_RegDst 	=> int_regDst,
			o_Jump 		=> int_jump,
			o_Branch 	=> int_branch,
			o_MemRead 	=> int_memRead,
			o_MemToReg 	=> int_memToReg,
			o_MemWrite 	=> int_memWrite,
			o_ALUSrc 	=> int_aluSrc,
			o_RegWrite 	=> int_regWrite);

controlUnitALUunit: controlUnitALU
	PORT MAP (	i_func => int_instruction(5 downto 0),
			i_aluOp => int_aluOp,
			o_control => int_controlUnitALU);
	
alu: nBitALU
	generic map(8)
	PORT MAP (	
			i_op 		=> int_controlUnitALU,
			i_A 		=> int_readData1,
			i_B 		=> int_aluInputB,
			o_zero 	=> int_zero,
			o_q 		=> int_aluRes);

dataMem: ram_unreg
	PORT MAP ( --CLOCK_50
			clock 		=> memClock, 
			wren 			=> int_memWrite,
			rdaddress 	=> int_aluRes,
			wraddress 	=> int_aluRes, 
			data 			=> int_readData2,
			q 				=> int_readDataMemory);

dataMUX: mux21n
	generic map(8)
	PORT MAP (	
			sel 	=> int_memToReg,
			in0 	=> int_aluRes,
			in1 	=> int_readDataMemory,
			outp 	=> int_writeData);

	--Output drivers
	MuxOut <= int_muxOut;
	InstructionOut <= int_instruction;
	BranchOut <= int_branch;
	ZeroOut <= int_zero;
	MemWriteOut <= int_memWrite;
	RegWriteOut <= int_regWrite;

END rtl;
