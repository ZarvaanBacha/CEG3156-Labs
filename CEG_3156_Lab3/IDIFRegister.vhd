library ieee;
use ieee.std_logic_1164.all; 
use work.core_utils.all;
entity IDIFRegister is 
	port(
		in_clk, in_rst : in std_logic;
		ifid_write : in std_logic; 
		in_instruction : in std_logic_vector(31 downto 0);
		in_pc : in std_logic_vector(7 downto 0);
		out_instruction : out std_logic_vector(31 downto 0);
		out_pc : out std_logic_vector(7 downto 0)
	);

end entity; 

architecture rtl of IDIFRegister is 
begin   
	
	pc_p_4_reg : uniShiftReg
		generic map(8)
		port map(
			in_clk => in_clk, 
			in_reset => in_rst, 
			in_enable => ifid_write,
			in_data => in_pc, 
			in_shl => '1',
			in_shr => '1',
			out_data => out_pc, 
			out_databar => open
		);
	instr_reg : uniShiftReg
		generic map(32)
		port map(
			in_clk => in_clk,
			in_reset => in_rst,
			in_enable => ifid_write,
			in_data => in_instruction,
			in_shl => '1',
			in_shr => '1',
			out_data => out_instruction,
			out_databar => open
		);
		
		

end rtl; 