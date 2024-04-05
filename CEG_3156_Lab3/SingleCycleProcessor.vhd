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

component clk_div
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

--Clock Signal
SIGNAL int_DivClk, int_memClk : STD_LOGIC;

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

BEGIN


div_clk : clk_div
	port map(
			clock_25Mhz				=> GClock,
		clock_1MHz				=> open, 
		clock_100KHz			=> open, 
		clock_10KHz				=> open,
		clock_1KHz				=> open,
		clock_100Hz				=> open,
		clock_10Hz				=> open, --int_memClk,
		clock_1Hz				=> open -- int_divClk
	);
int_memClk <= memClock;
int_divClk <= GClock;
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
			clock 		=> int_memClk, 
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