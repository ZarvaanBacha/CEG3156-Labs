LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library core;
use core.core_utils.all;

library pipeline; 
use pipeline.pipeline_pack.all;

library processor; 
use processor.processor_pack.all; 

LIBRARY lpm;
USE lpm.lpm_components.ALL;

ENTITY singleCycleProcessor IS
	PORT (
		swapButton					: IN STD_LOGIC;
		GReset, GClock, memClock 	: IN STD_LOGIC;
		ValueSelect 				: IN STD_LOGIC_VECTOR(2 downto 0);
		MuxOut 						: OUT STD_LOGIC_VECTOR(7 downto 0);
		InstructionOut 				: OUT STD_LOGIC_VECTOR(31 downto 0);
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

component ram_en_unreg2 IS
	PORT
	(
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rden		: IN STD_LOGIC  := '1';
		wraddress		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;

component clockDiv
	PORT
	(
		clock_25Mhz				: IN 	STD_LOGIC;
		clock_1MHz				: OUT	STD_LOGIC;
		clock_100KHz			: OUT	STD_LOGIC;
		clock_10KHz				: OUT	STD_LOGIC;
		clock_1KHz				: OUT	STD_LOGIC;
		clock_100Hz				: OUT	STD_LOGIC;
		clock_10Hz				: OUT	STD_LOGIC;
		clock_1Hz				: OUT	STD_LOGIC);
	
END component;

--Clock Signal
SIGNAL int_DivClk : STD_LOGIC;

--PC Signals
SIGNAL int_PCin, int_PCout : STD_LOGIC_VECTOR(7 downto 0);

--Register File Signals
SIGNAL int_writeRegister, int_writeData : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL int_readData1, int_readData2 : STD_LOGIC_VECTOR(7 downto 0);

--Branch and Jump Instruction Signals

SIGNAL int_aluZero : STD_LOGIC;
signal int_pcSrc : std_logic;
SIGNAL int_PCnext : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL int_PCBranchAddress, int_extendedShiftedAddress, int_extendedAddress : STD_LOGIC_VECTOR(7 downto 0);
signal int_pcWrite : std_logic; 
SIGNAL int_controlUnitALU : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL int_aluRes : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL int_muxOther : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL rom_instruction : STD_LOGIC_VECTOR(31 downto 0);

signal ctl_aluOp : std_logic_vector(1 downto 0);
signal ctl_regDst : std_logic; 
signal ctl_jmp, ctl_branch : std_logic;
signal ctl_memRead, ctl_memToReg, ctl_memWrite, ctl_aluSrc : std_logic;
signal ctl_regWrite : std_logic;

signal ctl_MuxAluOp : std_logic_vector(1 downto 0);
signal ctl_MuxRegDst : std_logic; 
signal ctl_MuxJmp, ctl_MuxBranch : std_logic;
signal ctl_MuxMemRead, ctl_MuxMemToReg, ctl_MuxMemWrite, ctl_MuxAluSrc : std_logic;
signal ctl_MuxRegWrite : std_logic;

signal ctl_muxOut : std_logic_vector(9 downto 0);

signal int_ctlMux : std_logic; 

SIGNAL int_aluInputA, int_aluInputB, int_readDataMemory : STD_LOGIC_VECTOR(7 downto 0);
signal int_forwardA, int_forwardB : std_logic_vectoR(1 downto 0); 

SIGNAL int_muxOut : STD_LOGIC_VECTOR(7 downto 0);

signal ifid_instruction : std_logic_vector(31 downto 0);

signal ifid_pc4 : std_logic_vector(7 downto 0);
signal ifid_write, ifid_isbranch : std_logic;
signal ifid_rs, ifid_rt : std_logic_vector(4 downto 0);

SIGNAL ifid_rdReg1, ifid_rdReg2 : STD_LOGIC_VECTOR(2 downto 0);

signal idex_rdData1, idex_rdData2, idex_pc, idex_sExtended : std_logic_vector(7 downto 0); 
signal idex_regRs, idex_regRt, idex_regRd : std_logic_vector(4 downto 0); -- idex rt, rd
signal idex_aluOp  : std_logic_vector(1 downto 0);
signal idex_regDst, idex_aluSrc, idex_memRead, idex_memWrite, idex_branch, idex_regWrite, idex_memToReg, idex_jmp : std_logic; 

signal exmem_aluZero,exmem_memRead, exmem_memWrite, exmem_branch, exmem_regWrite, exmem_memToReg, exmem_jmp : std_logic; 
signal exmem_resALU, exmem_branchALU, exmem_rdData2, exmem_RegDstRes : std_logic_vector(7 downto 0);

signal memwb_resALU, memwb_writeReg, memwb_dataMem : std_logic_vector(7 downto 0);
signal memwb_regWrite, memwb_memToReg : std_logic; 

signal int_concat : std_logic_vector(9 downto 0);
BEGIN

int_DivClk <= GClock;



PC: uniShiftReg
	generic map(8)
	PORT MAP (	
		in_reset 	=> GReset,
		in_clk 		=> int_DivClk,
		in_enable 	=> int_pcWrite,
		in_shl 		=> '1',
		in_shr 		=> '1',
		in_data 	=> int_PCin,
		out_data 	=> int_PCout,
		out_dataBar => open
	);

PCAdder: adder_nbit 
	generic map(8)
	PORT MAP (	
		a_in 			=> int_PCout,
		b_in 			=> (2 => '1', others => '0'),
		c_in 			=> '0',
		subtract 		=> '0', 
		c_out 			=> open,
		overflow_out 	=> open,
		s_out 			=> int_PCnext
	);

PCSrc_Mux: mux21n
	generic map(8)
	PORT MAP (	
		sel 	=> int_pcSrc,
		in0 	=> int_PCnext,
		in1 	=> exmem_branchALU,
		outp 	=> int_PCin
	);

instructionMem: rom_unregistered
	PORT MAP (	
		address => int_PCout,
		clock 	=> int_DivClk,
		q 		=> rom_instruction
	);

ifid_isbranch <= 	not(ifid_instruction(31)) 
					and not(ifid_instruction(30))
					and not(ifid_instruction(29)) 
					and ifid_instruction(28) 
					and not(ifid_instruction(27)) 
					and not(ifid_instruction(26));

ifid_rs <= ifid_instruction(25 downto 21);
ifid_rt <= ifid_instruction(20 downto 16);
HDU : hazardDetectionUnit
	port map (
        idExMemRead => idex_memRead,
        isBranch => ifid_isbranch, 
        idExRegRt => idex_regRt, 
        ifIdRegRs => ifid_rs, 
        ifIdRegRt => ifid_rt, 
        ifIdWrite => ifid_write, 
        PCwrite => int_pcWrite, 
        ctrlMux => int_ctlMux
	);


IDIF: IDIFRegister
	port map(
		in_clk 			=> int_DivClk, 
        in_rst 			=> GReset,
	    ifid_write 		=> ifid_write, 
	    in_instruction 	=> rom_instruction,
	    in_pc 			=> int_PCnext,
        out_instruction => ifid_instruction,
        out_pc  		=> ifid_pc4 
	); 

ifid_rdReg1 <= ifid_instruction(23 downto 21);
ifid_rdReg2 <= ifid_instruction(18 downto 16);

registers: registerFile
	PORT MAP (	 
		i_clock 			=> int_DivClk,
		i_gReset 			=> GReset,
		i_regWrite 			=> memwb_regWrite,
		i_readRegister1 	=> ifid_rdReg1,
		i_readRegister2 	=> ifid_rdReg2,
		i_writeRegister 	=> memwb_writeReg(2 downto 0),
		i_writeData 		=> int_writeData,
		o_readData1 		=> int_readData1,
		o_readData2 		=> int_readData2
	);

-- signal ctl_MuxAluOp : std_logic_vector(1 downto 0);
-- signal ctl_MuxRegDst : std_logic; 
-- signal ctl_MuxJmp, ctl_MuxBranch : std_logic;
-- signal ctl_MuxMemRead, ctl_MuxMemToReg, ctl_MuxMemWrite, ctl_MuxAluSrc : std_logic;
-- signal ctl_MuxRegWrite : std_logic;
int_concat <= (ctl_MuxMemToReg & ctl_MuxRegWrite) & 
					(ctl_MuxMemRead & ctl_MuxMemWrite & ctl_MuxJmp & ctl_MuxBranch) &
					(ctl_muxAluOp & ctl_MuxAluSrc & ctl_MuxRegDst);
ctl_hazard_mux : mux21n 
	generic map(10)
	port map(
		sel 	=> int_ctlMux, -- WB M Ex
		in0 	=> int_concat,
		in1		=> (others => '0'),
		outp 	=> ctl_muxOut
	);

control: controlUnit
	PORT MAP (	
		i_Opcode 	=> ifid_instruction(31 downto 26),
		o_ALUOp 	=> ctl_MuxAluOp,
		o_RegDst 	=> ctl_MuxRegDst,
		o_Jump 		=> ctl_MuxJmp,
		o_Branch 	=> ctl_MuxBranch,
		o_MemRead 	=> ctl_MuxMemRead,
		o_MemToReg 	=> ctl_MuxMemToReg,
		o_MemWrite 	=> ctl_MuxMemWrite,
		o_ALUSrc 	=> ctl_MuxAluSrc,
		o_RegWrite 	=> ctl_MuxRegWrite
	);

-- signal ctl_aluOp : std_logic_vector(1 downto 0);
-- signal ctl_regDst : std_logic; 
-- signal ctl_jmp, ctl_branch : std_logic;
-- signal ctl_memRead, ctl_memToReg, ctl_memWrite, ctl_aluSrc : std_logic;
-- signal ctl_regWrite : std_logic;
ctl_regDst 		<= ctl_muxOut(0);
ctl_aluSrc 		<= ctl_muxOut(1); 
ctl_AluOp 		<= ctl_muxOut(3) & ctl_muxOut(2);
ctl_branch 		<= ctl_muxOut(4);
ctl_jmp 		<= ctl_muxOut(5);
ctl_memWrite 	<= ctl_muxOut(6);
ctl_memRead 	<= ctl_muxOut(7);
ctl_regWrite 	<= ctl_muxOut(8);
ctl_memToReg 	<= ctl_muxOut(9);

int_extendedAddress <= ifid_instruction(6) & ifid_instruction(6 downto 0);

IDEX : IDEXRegister 
	port map (
  		in_clk 			=> int_DivClk, 
  		in_rst			=> GReset,
  		in_pc 			=> ifid_pc4,
  		in_rdData1 		=> int_readData1, 
  		in_rdData2 		=> int_readData2, 
  		in_sExtended 	=> int_extendedAddress,
  		in_regRs		=> ifid_instruction(25 downto 21),
		in_regRt		=> ifid_instruction(20 downto 16), 
  		in_regRd		=> ifid_instruction(15 downto 11), 
  		in_aluOP 		=> ctl_aluOp,
  		in_regDst 		=> ctl_regDst, 
  		in_aluSrc 		=> ctl_aluSrc,
  		in_memRead 		=> ctl_memRead, 
  		in_memWrite 	=> ctl_memWrite, 
  		in_branch 		=> ctl_branch,
		in_jmp			=> ctl_jmp,
  		in_regWrite 	=> ctl_regWrite, 
  		in_memToReg 	=> ctl_memToReg,

  		out_rdData1 	=> idex_rdData1, 
  		out_rdData2 	=> idex_rdData2, 
  		out_pc  		=> idex_pc,
  		out_sExtended 	=> idex_sExtended,
		out_regRs		=> idex_regRs,
  		out_regRt		=> idex_regRt, 
  		out_regRd	 	=> idex_regRd,
  		out_aluOp 		=> idex_aluOp,
  		out_regDst 		=> idex_regDst, 
  		out_aluSrc 		=> idex_aluSrc, 
  		out_memRead 	=> idex_memRead, 
  		out_memWrite 	=> idex_memWrite, 
   		out_branch 		=> idex_branch,
		out_jmp 		=> idex_jmp,
    	out_regWrite	=> idex_regWrite, 
   		out_memToReg 	=> idex_memToReg
  );

regDstMux: mux21n
	generic map(8)
	PORT MAP (	
		sel 	=> idex_regDst,
		in0(4 downto 0) => idex_regRt,
		in0(7 downto 5) => (others => '0'),
		in1(4 downto 0) => idex_regRd,
		in1(7 downto 5) => (others => '0'),
		outp 	=> int_writeRegister
	);

ALUctl: controlUnitALU
	PORT MAP (	
		i_func 		=> idex_sExtended(5 downto 0),
		i_aluOp 	=> idex_aluOp,
		o_control 	=> int_controlUnitALU
	);

alu: nBitALU
	generic map(8)
	PORT MAP (	
		i_op 	=> int_controlUnitALU,
		i_A 	=> int_aluInputA,
		i_B 	=> int_aluInputB,
		o_zero 	=> int_aluZero,
		o_q 	=> int_aluRes
	);

aluInputAMux : mux41n
	generic map(8)
	port map(
		sel 	=> int_forwardA,  
		zero 	=> idex_rdData1, 
		one 	=> exmem_resALU, 
		two		=> int_writeData,
		three	=> (others => '0'), 
		outp 	=> int_aluInputA 
	);	

aluInputBMux: mux41n
	generic map(8)
	PORT MAP (	
		sel 	=> int_forwardB,
		zero 	=> idex_rdData2,
		one 	=> exmem_resALU,
		two 	=> int_writeData,
		three 	=> (others => '0'), 
		outp 	=> int_aluInputB
	);

int_extendedShiftedAddress <= int_extendedAddress(5 downto 0) & '0' & '0';
branchAdder: adder_nbit
	generic map(8)
	PORT MAP (	
		a_in 			=> idex_pc,
		b_in 			=> int_extendedShiftedAddress,
		c_in 			=> '0',
		subtract 		=> '0', 
		c_out 			=> open,	
		overflow_out 	=> open, 
		s_out 			=> int_PCBranchAddress
	);		

forward:  forwardingUnit
    port map (
		i_EXRegisterRs 	=> idex_regRs,
        i_EXRegisterRt 	=> idex_regRt,
        i_MEMRegisterRd => exmem_RegDstRes(4 downto 0),
        i_WBRegisterRd 	=> memwb_writeReg(4 downto 0),
        i_MEMRegWrite 	=> exmem_regWrite,
        i_WBRegWrite 	=> memwb_regWrite,
		
        o_ForwardA 		=> int_forwardA,
        o_ForwardB 		=> int_forwardB
	);

EXMem : EXMemRegister 
	port map(
		in_clk 			=> int_DivClk, 
    	in_rst 			=> GReset, 

		in_branchALU 	=> int_PCBranchAddress, 
    	in_resALU 		=> int_aluRes,
		in_aluZero 		=> int_aluZero, 
		in_rdData2 		=> idex_rdData2, 
		in_RegDstRes 	=> int_writeRegister, 
    	in_memRead 		=> idex_memRead, 
    	in_memWrite 	=> idex_memWrite, 
    	in_branch 		=> idex_branch,
		in_jmp			=> idex_jmp,
		in_regWrite 	=> idex_regWrite, 
    	in_memToReg 	=> idex_memToReg,
		
		out_aluZero 	=> exmem_aluZero,
		out_resALU 		=> exmem_resALU, 
   	 	out_branchALU 	=> exmem_branchALU,
		out_rdData2 	=> exmem_rdData2, 
		out_memRead 	=> exmem_memRead, 
    	out_memWrite 	=> exmem_memWrite, 
    	out_branch 		=> exmem_branch, 
		out_jmp			=> exmem_jmp,
		out_regWrite	=> exmem_regWrite, 
    	out_memToReg 	=> exmem_memToReg, 
		out_RegDstRes 	=> exmem_RegDstRes
	);

int_pcSrc <= (exmem_aluZero and exmem_branch) or exmem_jmp;

dataMem: ram_en_unreg2
	PORT MAP ( --CLOCK_50
			clock 		=> memClock, 
			rden		=> exmem_memRead,
			wren 		=> exmem_memWrite,
			rdaddress 	=> exmem_resALU,
			wraddress 	=> exmem_resALU, 
			data 		=> exmem_rdData2,
			q 			=> int_readDataMemory);

MEMWB :  MEMWBRegister
	port map (
		in_clk => int_DivClk, 
		in_rst => GReset,  
	
		in_dataMem => int_readDataMemory, 
		in_RegDstRes => exmem_RegDstRes,
		in_resALU => exmem_resALU,
		in_regWrite => exmem_regWrite, 
		in_memToReg => exmem_memToReg, 

		out_resALU =>  memwb_resALU, 
		out_dataMem => memwb_dataMem, 
		out_regWrite => memwb_regWrite, 
		out_memToReg => memwb_memToReg,
		out_writeReg => memwb_writeReg
	);

memToReg_mux: mux21n
	generic map(8)
	PORT MAP (	
		sel 	=> memwb_memToReg,
		in0 	=> memwb_resALU,
		in1 	=> memwb_dataMem,
		outp 	=> int_writeData
	);
	
-- Output drivers
	MuxOut <= int_muxOut;
	InstructionOut <= ifid_instruction;
	BranchOut <= exmem_branch;
	ZeroOut <= int_aluZero;
	MemWriteOut <= exmem_memWrite;
	RegWriteOut <= exmem_regWrite;
	int_muxOther <= '0' & idex_regDst & 
					exmem_jmp & exmem_memRead 
					& memwb_memToReg 
					& idex_aluOp 
					& idex_aluSrc;
ioMUX: mux81n
	generic map(8)
	PORT MAP (	
			sel	 	=> ValueSelect,
			i0 		=> int_PCout,
			i1 		=> int_aluRes,
			i2 		=> int_readData1,
			i3 	 	=> int_readData2,
			i4 		=> int_writeData,
			i5 		=> int_muxOther,
			i6 		=> int_muxOther,
			i7 		=> int_muxOther,
			outp 	=> int_muxOut);

displayOutput: DispController
	PORT MAP(
			i_swapButton 	=> swapButton,
			i_instOut 		=> rom_instruction,
			i_MuxOut 		=> int_muxOut,
			co_display1 	=> o_display1,
			co_display2 	=> o_display2,
			co_display3 	=> o_display3,
			co_display4 	=> o_display4,
			co_display5 	=> o_display5,
			co_display6 	=> o_display6,
			co_display7 	=> o_display7,
			co_display8 	=> o_display8);
END rtl;
