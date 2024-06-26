library ieee;
use ieee.std_logic_1164.all; 
library core; 
use core.core_utils.all;
entity EXMemRegister is 
	port(
		in_clk, in_rst : in std_logic; 
		
		in_branchALU, in_resALU : in std_logic_vector(7 downto 0); 
		in_aluZero : in std_logic; 
		
		in_rdData2 : in std_logic_vector(7 downto 0); 
		in_RegDstRes : in std_logic_vector(7 downto 0); 
		
		in_memRead, in_memWrite, in_branch, in_jmp : in std_logic;  -- M 
		in_regWrite, in_memToReg : in std_logic; -- WB 
		
		out_aluZero : out std_logic; 
		out_resALU, out_branchALU : out std_logic_vector(7 downto 0);
		out_rdData2 : out std_logic_vector(7 downto 0);
		out_memRead, out_memWrite, out_branch, out_jmp : out std_logic; 
		out_regWrite, out_memToReg : out std_logic;
		out_RegDstRes : out std_logic_vector(7 downto 0)
	);
end EXMemRegister;
architecture rtl of EXMemRegister is 
begin 

	aluZero : enARdFF_2 
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_aluZero,
			i_enable	=> '1',
			i_clock		=> in_clk, 
			o_q 		=> out_aluZero,
			o_qBar		=> open
		);		
		
	memRead_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_memRead,
			i_enable	=> '1',
			i_clock		=> in_clk, 
			o_q 		=> out_memRead,
			o_qBar		=> open
		);
		
	memWrite_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_memWrite,
			i_enable	=> '1',
			i_clock		=> in_clk, 
			o_q 		=> out_memWrite,
			o_qBar		=> open
		);
		
	branch_FF : enARdFF_2
		port map(
			i_resetBar	=> in_rst, 
			i_d			=> in_branch,
			i_enable	=> '1',
			i_clock		=> in_clk, 
			o_q 		=> out_branch,
			o_qBar		=> open
		);
		
	jmp_FF: enARdFF_2
	 port map(
		i_resetBar => in_rst,
		i_d => in_jmp,
		i_enable => '1',
		i_clock => in_clk,
		o_q => out_jmp,
		o_qBar => open
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

	branchALU : uniShiftReg
		generic map(8)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => '1',
			in_data => in_branchALU, 
			in_shl => '1',
			in_shr => '1', 
			out_data => out_branchALU,
			out_dataBar => open 
		);
		
	resALU : uniShiftReg
		generic map(8)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => '1',
			in_data => in_resALU, 
			in_shl => '1',
			in_shr => '1', 
			out_data => out_resALU,
			out_dataBar => open 
		);
		
	RegDstRes : uniShiftReg
		generic map(8)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => '1',
			in_data => in_RegDstRes, 
			in_shl => '1',
			in_shr => '1', 
			out_data => out_RegDstRes,
			out_dataBar => open 
		);
	
	rdData2 : uniShiftReg
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
