library ieee;
use ieee.std_logic_1164.all; 
library core; 
use core.core_utils.all;

entity MEMWBRegister is 
	port(
		in_clk, in_rst : in std_logic; 
		
		in_dataMem : in std_logic_vector(7 downto 0); 
		in_RegDstRes : in std_logic_vector(7 downto 0); 
		in_resALU: in std_logic_vector(7 downto 0);
		in_regWrite, in_memToReg : in std_logic; -- WB 
		
		out_resALU : out std_logic_vector(7 downto 0);
		out_dataMem : out std_logic_vector(7 downto 0);
		out_regWrite, out_memToReg : out std_logic;
		out_writeReg : out std_logic_vector(7 downto 0)
	);
end MEMWBRegister;

architecture rtl of MEMWBRegister is 
begin 
	dataMem : uniShiftReg
		generic map(8)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => '1',
			in_data => in_dataMem, 
			in_shl => '1',
			in_shr => '1', 
			out_data => out_dataMem,
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
		
	RegDstRes : uniShiftReg
		generic map(8)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => '1',
			in_data => in_RegDstRes, 
			in_shl => '1',
			in_shr => '1', 
			out_data => out_writeReg,
			out_dataBar => open 
		);



end rtl; 
