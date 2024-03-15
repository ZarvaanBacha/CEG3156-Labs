library ieee;
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all; 
use work.utils.all; 
entity register_file_8x8b is 
	port(
		in_clk, GReset, write_sig : in std_logic; 
		read_reg_1, read_reg_2 : in std_logic_vector(2 downto 0);
		read_data_1, read_data_2 : out std_logic_vector(7 downto 0);
		write_register : in std_logic_vector(2 downto 0);
		write_data : in std_logic_vector(7 downto 0)
	);
end entity; 

architecture reg of register_file_8x8b is
signal regs : matrixnx8(7 downto 0); 
signal to_write : matrixnx8(7 downto 0); 
signal write_here : std_logic_vector(7 downto 0);
signal temp : integer; 
begin
	registers: for i in 7 downto 0 generate
		reg : work.shift_reg_n(rtl)
			generic map(8)
			port map(
				in_clk => in_clk, 
				in_reset => GReset, 
				in_SHL => write_sig and write_here(i), 
				in_SHR => write_sig and write_here(i),
				in_lsb => '0', 
				in_msb => '0', 
				in_load => to_write(i),
				out_bits => regs(i),
				out_qBits => open,
				out_lsb => open, 
				out_msb => open 
			);
	end generate; 
	
	read_mux1 : work.mux81n(rtl)
		generic map(8)
		port map(
			sel => read_reg_1,
			i0 => regs(0), 
			i1 => regs(1), 
			i2 => regs(2), 
			i3 => regs(3), 
			i4 => regs(4), 
			i5 => regs(5), 
			i6 => regs(6), 
			i7 => regs(7),	
			outp => read_data_1
		);
	read_mux2 : work.mux81n(rtl)
		generic map(8)
		port map(
			sel => read_reg_2,
			i0 => regs(0), 
			i1 => regs(1), 
			i2 => regs(2), 
			i3 => regs(3), 
			i4 => regs(4), 
			i5 => regs(5), 
			i6 => regs(6), 
			i7 => regs(7),	
			outp => read_data_2
		);
		
	process(in_clk, write_sig, write_register, write_data)
	begin 
		if rising_edge(in_clk) then 
			if(write_sig = '1') then
			temp <= to_integer(unsigned(write_register));
				write_here(temp) <= '1';
				to_write(temp) <= write_data; 
			else 
				write_here <= (others => '0');
				to_write <= (others=> (others =>'0'));
			end if; 
		end if; 
	end process; 
end reg; 
