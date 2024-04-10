library ieee;
use ieee.std_logic_1164.all; 
library core; 
use core.core_utils.all;
entity IDEXRegister is 
	port(
		in_clk, in_rst : in std_logic; 
		in_pc : in std_logic_vector(7 downto 0); --
		in_rdData1, in_rdData2 : in std_logic_vector(7 downto 0); --
		in_sExtended : in std_logic_vector(7 downto 0); --
		in_regRs, in_regRt, in_regRd : in std_logic_vector(4 downto 0); 
		in_aluOP : in std_logic_vector(1 downto 0); --EX --
		in_regDst, in_aluSrc : in std_logic;  -- EX --
		in_memRead, in_memWrite, in_branch, in_jmp : in std_logic;  -- M --
		in_regWrite, in_memToReg : in std_logic; -- WB --
		
		out_rdData1, out_rdData2, out_pc : out std_logic_vector(7 downto 0);
		out_sExtended : out std_logic_vector(7 downto 0);
		out_regRs, out_regRt, out_regRd : out std_logic_vector(4 downto 0);
		out_aluOp : out std_logic_vector(1 downto 0);
		out_regDst, out_aluSrc : out std_logic;  
		out_memRead, out_memWrite, out_branch, out_jmp : out std_logic; 
		out_regWrite, out_memToReg : out std_logic
	);
end IDEXRegister;

architecture rtl of IDEXRegister is
begin 
	rs : uniShiftReg
	generic map(5)
	 port map(
		in_clk => in_clk,
		in_reset => in_rst,
		in_enable => '1',
		in_data => in_regRs,
		in_shl => '1',
		in_shr => '1',
		out_data => out_regRs,
		out_dataBar => open
	);

	rt : uniShiftReg
		generic map(5)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => '1',
			in_data => in_regRt, 
			in_shl => '1',
			in_shr => '1', 
			out_data => out_regRt,
			out_dataBar => open 
		);
		
	rd: uniShiftReg
		generic map(5)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => '1',
			in_data => in_regRd, 
			in_shl => '1',
			in_shr => '1', 
			out_data => out_regRd,
			out_dataBar => open 
		);
		
	regWrite_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_regWrite,
			i_enable		=> '1',
			i_clock		=> in_clk, 
			o_q 			=> out_regWrite,
			o_qBar		=> open
		);
		
	memToReg_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_memToReg,
			i_enable		=> '1',
			i_clock		=> in_clk, 
			o_q 			=> out_memToReg,
			o_qBar		=> open
		);
	
	regDst_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_regDst,
			i_enable		=> '1',
			i_clock		=> in_clk, 
			o_q 			=> out_regDst,
			o_qBar		=> open
		);
		
	aluSrc_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_aluSrc,
			i_enable		=> '1',
			i_clock		=> in_clk, 
			o_q 			=> out_aluSrc,
			o_qBar		=> open
		);
		
		
	memRead_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_memRead,
			i_enable		=> '1',
			i_clock		=> in_clk, 
			o_q 			=> out_memRead,
			o_qBar		=> open
		);
		
	memWrite_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_memWrite,
			i_enable		=> '1',
			i_clock		=> in_clk, 
			o_q 			=> out_memWrite,
			o_qBar		=> open
		);
		
	branch_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_branch,
			i_enable		=> '1',
			i_clock		=> in_clk, 
			o_q 			=> out_branch,
			o_qBar		=> open
		);
	jmp_FF : enARdFF_2
	 port map(
		i_resetBar => in_rst,
		i_d => in_jmp,
		i_enable => '1',
		i_clock => in_clk,
		o_q => out_jmp,
		o_qBar => open
	);
	
	aluOp0_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_aluOP(0),
			i_enable		=> '1',
			i_clock		=> in_clk, 
			o_q 			=> out_aluOp(0),
			o_qBar		=> open
		);
		
	aluOp1_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_aluOP(1),
			i_enable		=> '1',
			i_clock		=> in_clk, 
			o_q 			=> out_aluOp(1),
			o_qBar		=> open
		);
		
	pc_reg : uniShiftReg
		generic map(8)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => '1',
			in_data => in_pc, 
			in_shl => '1',
			in_shr => '1', 
			out_data => out_pc,
			out_dataBar => open 
		);
		
	s_extended_reg : uniShiftReg
		generic map(8)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => '1',
			in_data => in_sExtended, 
			in_shl => '1',
			in_shr => '1', 
			out_data => out_sExtended,
			out_dataBar => open 
		);
		
	rdData1_reg : uniShiftReg
		generic map(8)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => '1',
			in_data => in_rdData1, 
			in_shl => '1',
			in_shr => '1', 
			out_data => out_rdData1,
			out_dataBar => open 
		);
		
	rdData2_reg : uniShiftReg
		generic map(8)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => '1',
			in_data => in_rdData2, 
			in_shl => '1',
			in_shr => '1', 
			out_data => out_rdData2,
			out_dataBar => open 
		);
	
end rtl; 
