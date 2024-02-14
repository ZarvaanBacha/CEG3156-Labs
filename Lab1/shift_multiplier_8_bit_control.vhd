library ieee;
use ieee.std_logic_1164.all;

entity shift_multiplier_8_bit_control is
	port ( i_reset : in std_logic;
			 i_clock : in std_logic;
			 i_startMultiply : in std_logic;
			 i_countDone	: in std_logic;
			 i_multiplier_LSB : in std_logic;
			 i_multiplier_second_LSB : in std_logic;
			 o_initialize : out std_logic;
			 o_shift: out std_logic;
			 o_loadPR: out std_logic;
			 o_loadOut: out std_logic;
			 o_setCounter : out std_logic;
			 o_multiplier_Busy: out std_logic;
			 o_multiplication_Complete: out std_logic);
end shift_multiplier_8_bit_control;

architecture struct of shift_multiplier_8_bit_control is
signal int_nextState0, int_nextState1,int_nextState2, int_nextState3, int_nextState4, int_nextState5, int_nextState6: std_logic;
signal int_presentState0, int_presentState1,int_presentState2, int_presentState3, int_presentState4, int_presentState5, int_presentState6: std_logic;

component dFF_2 IS
	PORT(
		i_d		: IN	STD_LOGIC;
		i_clock		: IN	STD_LOGIC;
		o_q, o_qBar	: OUT	STD_LOGIC);
end component;

begin

	int_nextState0 <= (int_presentState6 or i_reset or (int_presentState0 and (not(i_startMultiply))));
	int_nextState1 <= (int_presentState0 and i_startMultiply and not(i_reset));
	int_nextState2 <= (int_presentState1 and not(i_reset));
	
	
	int_nextState3 <= (
	(
		(int_presentState2 and not(i_multiplier_LSB))
	or 
		(int_presentState3 and not(i_multiplier_second_LSB))
	or
		(int_presentState4 and not(i_multiplier_second_LSB))
	)
	and
		(not(i_countDone))
	and
		(not(i_reset))
	);
	
	int_nextState4 <= (
	(
		(int_presentState2 and i_multiplier_LSB)
	or 
		(int_presentState3 and i_multiplier_second_LSB)
	or
		(int_presentState4 and i_multiplier_second_LSB)
	)
	and
		(not(i_countDone))
	and
		(not(i_reset))
	);
	
	int_nextState5 <= (
	(
	(int_presentState3 and i_countDone)
	or
	(int_presentstate4 and i_countDone)
	)
	and
	(not(i_reset))
	);
	
	int_nextState6 <= (
	(
	(int_presentState5)
	)
	and
	(not(i_reset))
	);
	
	myDFF0: dFF_2 port map(int_nextState0, i_clock, int_presentState0, OPEN);
	myDFF1: dFF_2 port map(int_nextState1, i_clock, int_presentState1, OPEN);
	myDFF2: dFF_2 port map(int_nextState2, i_clock, int_presentState2, OPEN);
	myDFF3: dFF_2 port map(int_nextState3, i_clock, int_presentState3, OPEN);
	myDFF4: dFF_2 port map(int_nextState4, i_clock, int_presentState4, OPEN);
	myDFF5: dFF_2 port map(int_nextState5, i_clock, int_presentState5, OPEN);
	myDFF6: dFF_2 port map(int_nextState6, i_clock, int_presentState6, OPEN);
	
	
	o_initialize <= int_presentState1;
	o_shift<= (int_presentState3 or int_presentState4);
	o_loadPR<= int_presentState4;
	o_loadOut<= int_presentState5;
	o_setCounter <= int_presentState1;
	o_multiplier_Busy<= (int_presentState1 or int_presentState2 or int_presentState3 or int_presentState4 or int_presentState5);
	o_multiplication_Complete <= int_presentState6;


end struct;