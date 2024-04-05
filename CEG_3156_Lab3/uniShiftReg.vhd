library ieee;
use ieee.std_logic_1164.all;
library work; 
use work.core_utils.all; 

entity uniShiftReg is 
	generic(n : integer := 8);
	port(
		in_clk, in_reset, in_enable : in std_logic; 
		in_data : in std_logic_vector(n - 1 downto 0);
		in_shl, in_shr: in std_logic; 
		out_data, out_dataBar : out std_logic_vector(n - 1 downto 0)
	);
end uniShiftReg; 

architecture rtl of uniShiftReg is 
	signal int_mux, int_val, int_valBar : std_logic_vector(n - 1 downto 0);
begin 
	out_data <= int_val; 
	out_dataBar <= int_valBar;
	
	mux_lsb : mux41 
		port map(
			sel0 	=> in_shl, 
			sel1 	=> in_shr, 
			zero 	=> int_val(0),
			one 	=> '0',
			two 	=> int_val(1), -- shl 
			three => in_data(0),
			outp => int_mux(0)
		);
	
	dff_lsb : enArdFF_2 
		port map(
			i_resetBar => in_reset,
			i_clock => in_clk, 
			i_d => int_mux(0),
			i_enable => in_enable,  
			o_q => int_val(0),
			o_qBar => int_valBar(0)
		);
		
		
	gen: for i in 1 to n - 2 generate 
		dff : enArdFF_2 
			port map(
				i_resetBar => in_reset,
				i_clock => in_clk,
				i_d => int_mux(i),
				i_enable => in_enable,
				o_q => int_val(i),
				o_qBar => int_valBar(i)
			);
				
		mux : mux41 
			port map(
				sel0 => in_shl,
				sel1 => in_shr,
				zero => int_val(i),
				one => int_val(i - 1),
				two => int_val(i + 1),
				three => in_data(i),
				outp => int_mux(i)
			);	
	end generate; 
	
	mux_msb : mux41
		port map(
			sel0 	=> in_shl, 
			sel1 	=> in_shr, 
			zero 	=> int_val(n - 1),
			one 	=> int_val(n - 2),
			two 	=> '0', -- shr 
			three => in_data(n - 1),
			outp => int_mux(n - 1)
		);
		
	dff_msb : enArdFF_2
		port map(
			i_resetBar => in_reset,
			i_clock => in_clk, 
			i_d => int_mux(n - 1),
			i_enable => in_enable,  
			o_q => int_val(n - 1),
			o_qBar => int_valBar(n - 1)
		);
		
end rtl; 