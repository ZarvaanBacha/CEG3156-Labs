LIBRARY ieee;
USE ieee.std_logic_1164.all;
use work.singleCycleProcessor;
entity singleCycleProcessor_testbench is
end singleCycleProcessor_testbench;

architecture testbench of singleCycleProcessor_testbench is
	signal int_clk1, int_clk2, int_GClk, int_GReset, int_BranchOut, int_ZeroOut, int_MemWriteOut, int_RegWriteOut: std_logic;
	signal int_valueSel: std_logic_vector(2 downto 0);
	signal int_muxOut: std_logic_vector(7 downto 0);
	signal int_instructionOut: std_logic_vector(31 downto 0);
	
	constant period: time := 20ns; 
	signal sim_end : boolean := false;
	component SingleCycleProcessor is 
		PORT (
			swapButton		: IN STD_LOGIC;
			GReset, GClock, memClock 					: IN STD_LOGIC;
			ValueSelect 					: IN STD_LOGIC_VECTOR(2 downto 0);
			MuxOut 						: OUT STD_LOGIC_VECTOR(7 downto 0);
			InstructionOut 					: OUT STD_LOGIC_VECTOR(31 downto 0);
			BranchOut, ZeroOut, MemWriteOut, RegWriteOut 	: OUT STD_LOGIC;
			o_display1, o_display2, o_display3, o_display4, o_display5, o_display6, o_display7, o_display8: out std_logic_vector (6 downto 0));
	end component;
	begin
	
		uut : SingleCycleProcessor
			port map(
						GClock => int_GClk,
						GReset => int_GReset,
						memClock => int_clk1,
						swapButton => '0',
						BranchOut => int_BranchOut,
						ZeroOut => int_ZeroOut,
						MemWriteOut => int_MemWriteOut,
						RegWriteOut => int_RegWriteOut,
						ValueSelect => int_valueSel,
						MuxOut => int_muxOut,
						InstructionOut => int_instructionOut
						);
		
		--Clock Process 1--
		clkProc1: process
		begin
			while (not sim_end)loop
				int_clk1 <= '0';
				wait for period;
				int_clk1 <= '1';
				wait for period;
			end loop;
			wait;
		end process;
		
		--Clock Process 2--
		clkProc2: process
		begin
			while (not sim_end)loop
				int_clk2 <= '1';
				wait for period;
				int_clk2 <= '0';
				wait for period;
			end loop;
			wait;
		end process;
	
		--Divided Clock Process--
		divClkProc: process
		begin
			while(not sim_end)loop
				int_GClk <= '1';
				wait for period;
				int_GClk <= '0';
				wait for period;
			end loop;
			wait;
		end process;
		
		--Stimulus Process--
		process
		begin
		
			int_GReset <= '0';
			int_valueSel <= "001";
			wait for period;
			
			int_GReset <= '1';
--			wait for period*10;
--			int_valueSel <= "001";
			
--			int_valueSel <= "000";
--			wait for period*3;
--			
--			int_valueSel <= "000";
--			wait for period*3;
--			
--			int_valueSel <= "000";
--			wait for period*3;
--			
--			int_valueSel <= "000";
--			wait for period*3;
--			
--			int_valueSel <= "000";
--			wait for period*3;
			
			wait for 2000ns; 
			sim_end <= true;
			wait;
		end process;
end testbench;
