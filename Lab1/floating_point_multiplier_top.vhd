library ieee;
use ieee.std_logic_1164.all;

entity floating_point_multiplier_top is
	port(i_clock: in std_logic;
		  i_reset: in std_logic;
		  i_signA: in std_logic_vector (0 downto 0);
		  i_exponentA: in std_logic_vector (6 downto 0);
		  i_mantissaA: in std_logic_vector (7 downto 0);
		  i_signB: in std_logic_vector (0 downto 0);
		  i_exponentB: in std_logic_vector (6 downto 0);
		  i_mantissaB: in std_logic_vector (7 downto 0);
		  o_signOut: out std_logic;
		  o_exponentOut: out std_logic_vector (6 downto 0);
		  o_mantissaOut: out std_logic_vector (7 downto 0);
		  o_underflowOut: out std_logic;
		  o_overflowOut: out std_logic);
end floating_point_multiplier_top;

architecture structural of floating_point_multiplier_top is
--Internal Signals
--Exponent--
signal int_exponentConcatenateA: std_logic_vector (8 downto 0);
signal int_exponentConcatenateB: std_logic_vector (8 downto 0);
signal int_exponentA: std_logic_vector (8 downto 0);
signal int_exponentB: std_logic_vector (8 downto 0);
signal int_op1: std_logic_vector (8 downto 0);
signal int_op2: std_logic_vector (8 downto 0);
signal int_sum: std_logic_vector (8 downto 0);
signal int_exponentCurrent: std_logic_vector (8 downto 0);
signal int_exponentLoad: std_logic_vector (6 downto 0);
signal int_exponentFinal: std_logic_vector (6 downto 0);
signal int_overflowBits: std_logic_vector (1 downto 0);
signal int_underOverFinal: std_logic_vector (1 downto 0);


--Mantissa--
signal int_mantissaConcatenateA: std_logic_vector (8 downto 0);
signal int_mantissaConcatenateB: std_logic_vector (8 downto 0);
signal int_mantissaA: std_logic_vector (8 downto 0);
signal int_mantissaB: std_logic_vector (8 downto 0);
signal int_product: std_logic_vector (17 downto 0);
signal int_mantissaCurrent: std_logic_vector (17 downto 0);
signal int_mantissaLoad: std_logic_vector (7 downto 0);
signal int_mantissaFinal: std_logic_vector (7 downto 0);

--Sign--
signal int_signA: std_logic_vector (0 downto 0);
signal int_signB: std_logic_vector (0 downto 0);
signal int_signCurrent: std_logic_vector (0 downto 0);
signal int_signFinal: std_logic_vector (0 downto 0);

--Data Signals
signal int_multiplierDone: std_logic;
signal int_MSB: std_logic;

--Control Signals
signal int_loadInputs: std_logic;
signal int_startMultiplication: std_logic;
signal int_loadSum: std_logic;
signal int_MUX_Signal_1: std_logic;
signal int_MUX_Signal_2: std_logic_vector (1 downto 0);
signal int_loadProduct: std_logic;
signal int_loadOutput: std_logic;
signal int_shiftProduct: std_logic;

component reg is
	generic (bits : integer := 1);
	port ( i_data : in std_logic_vector(bits downto 1);
			i_load : in std_logic;
			i_clock : in std_logic;
			o_data : out std_logic_vector(bits downto 1));
end component;

component MUX_36_To_9 is
	port(i_3, i_2, i_1, i_0 : in STD_LOGIC_VECTOR(8 downto 0);
			i_Selector 		: IN	STD_LOGIC_VECTOR(1 downto 0);		
			o : out STD_LOGIC_VECTOR(8 downto 0));
end component;

component MUX_18_To_9 is
	port(i_1, i_0 : in STD_LOGIC_VECTOR(8 downto 0);
			i_Selector 		: IN	STD_LOGIC;		
			o : out STD_LOGIC_VECTOR(8 downto 0));
end component;

component add_9 is
	port(i_a, i_b : in std_logic_vector(8 downto 0);
      o_sum : out std_logic_vector(8 downto 0);
      o_carry, o_overflow : out std_logic);
end component;

component shift_multiplier_9_bit_top is
	port(i_a, i_b: in std_logic_vector(8 downto 0);
		i_clock, i_reset: in std_logic;
		i_startMultiply: in std_logic;
		o_multiplier_Busy: out std_logic;
		o_multiplication_Complete: out std_logic;
      o_product : out std_logic_vector(17 downto 0));
end component;

component reg_load_shiftr is
	generic (bits : integer := 1);
	port ( i_data : in std_logic_vector(bits downto 1);
			i_load, i_shiftr : in std_logic;
			i_clock : in std_logic;
			o_data : out std_logic_vector(bits downto 1));
end component;

component floating_point_multiplier_control is
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
end component;

begin
--Exponent--
--//////////
int_exponentConcatenateA <= "00" & i_exponentA;
int_exponentConcatenateB <= "00" & i_exponentB;
--//////////

exponentRegisterA: reg generic map (bits => 9)
	port map (int_exponentConcatenateA, int_loadInputs, i_clock, int_exponentA);
	
exponentRegisterB: reg generic map (bits => 9)
	port map (int_exponentConcatenateB, int_loadInputs, i_clock, int_exponentB);
	
operand1Mux: MUX_18_To_9 port map(int_exponentCurrent, int_exponentA, int_MUX_Signal_1, int_op1);

operand2Mux: MUX_36_To_9 port map("000000001","000000001","111000001", int_exponentB, int_MUX_Signal_2, int_op2);

exponentAdder: add_9 port map(int_op1, int_op2, int_sum, OPEN, OPEN);

exponentCurrentRegister: reg generic map (bits => 9)
	port map (int_sum, int_loadSum, i_clock, int_exponentCurrent);

--//////////	
int_exponentLoad <= int_exponentCurrent (6 downto 0);
--//////////
	
exponentFinalRegister: reg generic map (bits => 7)
	port map (int_exponentLoad, int_loadOutput, i_clock, int_exponentFinal);	

underOverflowRegister: reg generic map (bits => 2)
	port map (int_exponentCurrent (8 downto 7), int_loadOutput, i_clock, int_underOverFinal);

--Sign--	
signRegisterA: reg generic map (bits => 1)
	port map (i_signA, int_loadInputs, i_clock, int_signA);

signRegisterB: reg generic map (bits => 1)
	port map (i_signB, int_loadInputs, i_clock, int_signB);

--//////////	
int_signCurrent(0) <= int_signA(0) xor int_signB(0);
--//////////
	
signFinalRegister: reg generic map (bits => 1)
	port map (int_signCurrent, int_loadOutput, i_clock, int_signFinal);
	
--Mantissa--
--//////////
int_mantissaConcatenateA <= "1" & i_mantissaA;
int_mantissaConcatenateB <= "1" & i_mantissaB;
--//////////	
mantissaRegisterA: reg generic map (bits => 9)
	port map (int_mantissaConcatenateA, int_loadInputs, i_clock, int_mantissaA);
	
mantissaRegisterB: reg generic map (bits => 9)
	port map (int_mantissaConcatenateB, int_loadInputs, i_clock, int_mantissaB);

multiplier: shift_multiplier_9_bit_top port map(int_mantissaA, int_mantissaB, i_clock, i_reset, 
															int_startMultiplication, OPEN, int_multiplierDone, int_product);

mantissaCurrentRegister: reg_load_shiftr generic map (bits => 18)
	port map (int_product, int_loadProduct, int_shiftProduct, i_clock, int_mantissaCurrent);

--//////////
int_MSB <= int_mantissaCurrent(17);
int_mantissaLoad <= int_mantissaCurrent (15 downto 8);
--//////////
	
mantissaFinalRegister: reg generic map (bits => 8)
	port map (int_mantissaLoad, int_loadOutput, i_clock, int_mantissaFinal);

--Control Unit--
controlUnit: floating_point_multiplier_control port map(i_reset, i_clock, int_multiplierDone, int_MSB, int_loadinputs, 
																	int_startMultiplication, int_loadSum, int_MUX_Signal_1, int_MUX_Signal_2,
																	int_loadProduct, int_loadOutput, int_shiftProduct);
	
	
o_signOut <= int_signFinal(0);
o_exponentOut <= int_exponentFinal;
o_mantissaOut <= int_mantissaFinal;
o_underflowOut <= int_underOverFinal(1);
o_overflowOut <= (not(int_underOverFinal(1))) and int_underOverFinal(0);

end structural;