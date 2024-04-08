library ieee;
use ieee.std_logic_1164.all;
library core; 
use core.core_utils.all; 
entity registerFile is
	port(i_gReset, i_clock, i_regWrite : in std_logic;
			i_readRegister1, i_readRegister2, i_writeRegister : in std_logic_vector(2 downto 0);
			i_writeData : in std_logic_vector(7 downto 0);
			o_readData1, o_readData2 : out std_logic_vector(7 downto 0));
end registerFile;


ARCHITECTURE rtl of registerFile IS

SIGNAL int_readData1, int_readData2 : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL int_writeRegister : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL int_enable : STD_LOGIC_VECTOR(7 downto 0);
signal int_registers : matrixNx8(7 downto 0);

BEGIN

int_enable <= (i_regWrite & i_regWrite & i_regWrite & i_regWrite & i_regWrite & i_regWrite & i_regWrite & i_regWrite) AND int_writeRegister;


decoder: nto2nDecoder
	generic map(3)
	PORT MAP (	in_put => i_writeRegister,
			out_put => int_writeRegister);

readData1: mux81n
	generic map(8)
	PORT MAP (	
			sel => i_readRegister1,
			i0 => int_registers(0),
			i1 => int_registers(1),
			i2 => int_registers(2),
			i3 => int_registers(3),
			i4 => int_registers(4),
			i5 => int_registers(5),
			i6 => int_registers(6),
			i7 => int_registers(7),
			outp => int_readData1);

readData2: mux81n
	generic map(8)
	PORT MAP (	
			sel => i_readRegister2,
			i0 => int_registers(0),
			i1 => int_registers(1),
			i2 => int_registers(2),
			i3 => int_registers(3),
			i4 => int_registers(4),
			i5 => int_registers(5),
			i6 => int_registers(6),
			i7 => int_registers(7),
			outp => int_readData2);

			
		reg_gen_loop: for i in 7 downto 0 generate
			reg: uniShiftReg
				generic map(8)
				port map(
					in_clk => i_clock, 
					in_reset => i_gReset,
					in_data => i_writeData,
					in_shl => '1',
					in_shr => '1', 
					in_enable => int_enable(i),
					out_data => int_registers(i),
					out_dataBar => open 				
				);	
		end generate; 

	o_readData1 <= int_readData1;
	o_readData2 <= int_readData2;

END rtl;
