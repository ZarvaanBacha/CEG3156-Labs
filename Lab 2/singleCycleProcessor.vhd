library ieee;
use ieee.std_logic_1164.all; 
entity singleCycleProcessor is 
	port(
		GClock, GReset : in std_logic; 
		ValueSelect : in std_logic_vector(2 downto 0);
		InstructionOut : out std_logic_vector(31 downto 0);
		BranchOut, ZeroOut, MemWriteOut, RegWriteOut : out std_logic; 
	);
end entity; 


architecture rtl of singleCycleProcessor is 
signal instruction, aluRes : std_logic_vector(31 downto 0);
signal instr31_26, instr25_21, instr20_16, instr15_11 : std_logic_vector(4 downto 0);
signal instr15_0, s_extended_instr15_0 : std_logic_vector(15 downto 0);
signal regDst_mux : std_logic_vector(4 downto 0);
signal ctlAluOp : std_logic_vector(2 downto 0);
signal reg_data_1, reg_data_2 : std_logic_vector(7 downto 0);
signal RegDst, AluSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, ALUOp1, ALUOp2 : std_logic; 
signal to_write, aluSrc_mux : std_logic_vector(7 downto 0);
signal pc_out, pc_plus_4, pc_in : std_logic_vector(7 downto 0);

signal Z : std_logic; 
begin 
	InstructionOut <= instruction; 
	
	instr31_26 <= instruction(31 downto 26);
	instr25_21 <= instruction(25 downto 21);
	instr20_16 <= instruction(20 downto 16);
	instr15_0 <= instruction(15 downto 0);
	
	control : work.control_Logic_Unit(struct)
		port map(
			op => instr31_26,
			MemRead => MemRead, 
			MemWrite => MemWrite,
			Branch => Branch,
			ALUOp1 => ALUOp1, 
			ALUOp2 => ALUOp2,
			RegDst => RegDst,
			AluSrc => AluSrc,
			MemToReg => MemToReg,
			RegWrite => RegWrite
		);
		
	mux_regDst : work.mux21n(rtl)
		generic map(5)
		port map(
			sel => RegDst,
			in0 => instr20_16,
			in1 => instr15_11,
			outp => regDst_mux
		);
		
	reg_file : work.register_file_8x8b(reg)
		port map(
			in_clk => GClock,
			GReset => GReset, 
			write_sig => RegWrite,
			read_reg_1 => instr25_21(2 downto 0),
			read_reg_2 => regDst_mux(2 downto 0),
			read_data_1 => reg_data_1,
			read_data_2 => reg_data_2, 
			write_register => regDst_mux,
			write_data => to_write
		);
		
	sign_e_instr15_0 : work.sgnExt16_32 
		port map(
			in_q => instr15_0,
			out_d => s_extended_instr15_0
		);
		
		
	alusrc_mux : work.mux21n(rtl)
		generic map(8)
		port map(
			sel => AluSrc,
			in0 => reg_data_2,
			in1 => s_extended_instr15_0(7 downto 0),
			outp => aluSrc_mux
		);
	
	aluCtl : work.ALU_Logic_Unit(struct)
		port map(
			ALUOp =>(0 => AluOp1, 1 => AluOp2),
			Funct => instr15_0(5 downto 0),
			Operation => ctlAluOp
		);
		
	main_alu : work.single_cycle_ALU_32(rtl)
		port map(
			a_in => ((7 downto 0) => read_data_1, others => '0'),
			b_in => ((7 downto 0) => aluSrc_mux, others => '0'),
			zero => Z, 
			c_out => open,
			V => open, 
			result => aluRes 
		);
	
	PC_reg : work.shift_reg_n(rtl)
		generic map(8)
		port map(
			in_clk =>GClock,
			in_reset => GReset, 
			in_SHL => ,
			in_SHR => ,
			in_lsb => '0',
			in_msb => '0',
			in_load => pc_in,
			out_bits => pc_out,
			out_qBits => open,
			out_lsb => open,
			out_msb => open 
		);
	
		
		
		
	
end entity; 