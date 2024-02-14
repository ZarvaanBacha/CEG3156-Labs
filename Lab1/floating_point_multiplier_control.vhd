library ieee;
use ieee.std_logic_1164.all;

entity floating_point_multiplier_control is
	port(i_reset : in std_logic;
		  i_clock : in std_logic;
		  i_multiplierDone: in std_logic;
		  i_MSB: in std_logic;
		  o_loadInputs: out std_logic;
		  o_startMultiplication: out std_logic;
		  o_loadSum: out std_logic;
		  o_MUX_Signal_1: out std_logic;
		  o_MUX_Signal_2: out std_logic_vector (1 downto 0);
		  o_loadProduct: out std_logic;
		  o_loadOutput: out std_logic;
		  o_shiftProduct: out std_logic);
end floating_point_multiplier_control;

architecture structural of floating_point_multiplier_control is
--Internal Data Signals
signal int_presentState0, int_presentState1, int_presentState2, int_presentState3, int_presentState4, 
			int_presentState5, int_presentState6, int_presentState7 : std_logic;
			
signal int_nextState0, int_nextState1, int_nextState2, int_nextState3, int_nextState4, 
			int_nextState5, int_nextState6, int_nextState7 : std_logic;

--External Data Signals


--Control Signals


component dFF_2 IS
	PORT(
		i_d		: IN	STD_LOGIC;
		i_clock		: IN	STD_LOGIC;
		o_q, o_qBar	: OUT	STD_LOGIC);
end component;


begin
	
	int_nextState0 <= (i_reset or (int_presentState6 and (not (i_reset))));
	int_nextState1 <= (int_presentState0 and not(i_reset));
	int_nextState2 <= (int_presentState1 and not(i_reset));
	int_nextState3 <= ((int_presentState2 or (int_presentState3 and not(i_multiplierDone))) and not(i_reset));	
	int_nextState4 <= (int_presentState3 and i_multiplierDone and not(i_reset));
	
	int_nextState5 <= (int_presentState4 and not(i_reset));	
	
	int_nextState6 <= (
	((int_presentState5 and not(i_MSB))
	or
	(int_presentState7))
	and
	(not(i_reset))
	);
	
	
	int_nextState7 <= (int_presentState5 and (i_MSB) and not(i_reset));	
	
	myDFF0: dFF_2 port map(int_nextState0, i_clock, int_presentState0, OPEN);
	myDFF1: dFF_2 port map(int_nextState1, i_clock, int_presentState1, OPEN);
	myDFF2: dFF_2 port map(int_nextState2, i_clock, int_presentState2, OPEN);
	myDFF3: dFF_2 port map(int_nextState3, i_clock, int_presentState3, OPEN);
	myDFF4: dFF_2 port map(int_nextState4, i_clock, int_presentState4, OPEN);
	myDFF5: dFF_2 port map(int_nextState5, i_clock, int_presentState5, OPEN);
	myDFF6: dFF_2 port map(int_nextState6, i_clock, int_presentState6, OPEN);
	myDFF7: dFF_2 port map(int_nextState7, i_clock, int_presentState7, OPEN);
	
	o_loadInputs <= int_presentState0;
	o_startMultiplication <= int_presentState1;
	o_loadSum <= int_presentState1 or int_presentState2 or int_presentState7;
	o_MUX_Signal_1 <= int_presentState2 or int_presentState7;
	o_MUX_Signal_2(0) <= int_presentState2;
	o_MUX_Signal_2(1) <= int_presentState7;
	o_loadProduct <= int_presentState4;
	o_loadOutput <= int_PresentState6;
	o_shiftProduct <= int_PresentState7;

end structural;