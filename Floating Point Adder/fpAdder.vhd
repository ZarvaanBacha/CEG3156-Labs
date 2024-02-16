library ieee;
use ieee.std_logic_1164.all;

entity fpAdder is
	port ( GClock, GReset           : IN    std_logic;
	       SignA, SignB 		: IN 	std_logic;
	       MantissaA, MantissaB     : IN    std_logic_vector(7 downto 0);
	       ExponentA, ExponentB     : IN    std_logic_vector(6 downto 0);
	       SignOut                  : OUT   std_logic;
	       MantissaOut              : OUT   std_logic_vector(7 downto 0);
	       ExponentOut		: OUT	std_logic_vector(6 downto 0);
	       Overflow			: OUT 	std_logic);
end fpAdder;

architecture rtl OF fpAdder is

component sevenBitRegister
		port (
        in_reset, in_clock, in_load : in std_logic;
        in_data : in std_logic_vector(6 downto 0);
        out_data : out std_logic_vector(6 downto 0)
    );
end component;

component eightBitComplementer
		port (in_a : in std_logic_vector (7 downto 0);
			in_enable : in std_logic;
			out_result : out std_logic_vector(7 downto 0));
end component;

component eightBitAdder
	port (
        in_a, in_b : in std_logic_vector(7 downto 0);
        in_cin : in std_logic;
        out_sign : out std_logic;
        out_sum : out std_logic_vector(6 downto 0)
    );
end component;

component sevenBitDownCounter
	port (
        in_reset, in_load, in_countD   : in    std_logic;
        in_a                               : in    std_logic_vector(6 downto 0);
        in_clock                           : in    std_logic;
        out_zero                           : out   std_logic;
        out_q                              : out   std_logic_vector(6 downto 0)
    );
end component;

component sevenBitComparator
	port (
        in_a, in_b: in std_logic_vector(6 downto 0);
        out_greater, out_less, out_equal: out std_logic
    );
end component;

component sevenBit2x1MUX
	port(in_sel : in std_logic;
			in_a, in_b : in std_logic_vector(6 downto 0);
			out_q : out std_logic_vector(6 downto 0));
end component;

component srlatch
	port(
		i_set, i_reset		: IN	std_logic;
		o_q, o_qBar		: OUT	std_logic);
end component;

component sevenBitUpCounter
	    port(
        in_reset, in_load, in_countU   : in    std_logic;
        in_a                               : in    std_logic_vector(6 downto 0);
        i_clock                           : in    std_logic;
        out_q                              : out   std_logic_vector(6 downto 0));
end component;

component nineBitShiftRegister
	port (
        in_reset, in_clock       : in    std_logic;
        in_load, in_clear, in_shift : in    std_logic;
        in_a                        : in    std_logic_vector(8 downto 0);
        out_q                       : out   std_logic_vector(8 downto 0)
    );
end component;

component nineBitAdder
	port(
        in_a, in_b : in std_logic_vector(8 downto 0);
        in_cin, in_reset, in_clock: in std_logic;  -- Added in_load signal
        out_sum : out std_logic_vector(8 downto 0);
        out_cout : out std_logic
    );
end component;

component fpAdderControl
	port ( 
		in_reset, in_clock			: IN	std_logic;
		in_sign, in_notLess9, in_zero, in_coutFz	: IN	std_logic;
		out_load1, out_load2, out_load3, out_load4	: OUT	std_logic;
		out_load5, out_load7, out_load6, out_cin	: OUT 	std_logic;
		out_on22, out_on21, out_flag0, out_flag1	: OUT	std_logic;
		out_clear4, out_clear3, out_shiftR4, out_shiftR3: OUT	std_logic;
		out_countD6, out_countU7, out_shiftR5, out_done	: OUT	std_logic;
		out_state					: OUT	std_logic_vector(0 to 9));
end component;

--state 0 signals
signal		int_load1, int_load2, int_load3, int_load4	: 	std_logic;

--state 1 signals
signal		int_on22, int_flag0				:	std_logic;

--state 2 signals
signal		int_on21, int_flag1				:	std_logic;

--state 1 and 2 signals
signal 		int_cin, int_load6				:	std_logic;

--state 3 signals
signal int_clear4						:	std_logic;

--state 4 signals
signal int_shiftR4						:	std_logic;

--state 5 signals
signal int_clear3						:	std_logic;

--state 6 signals						
signal int_shiftR3						:	std_logic;

--state 4 and 6 signals
signal int_countD6						:	std_logic;

--state 7 signals
signal int_load5, int_load7					:	std_logic;

--state 8 signals
signal int_shiftR5, int_countU7, int_clear5					:	std_logic;

--state 9 signals
signal int_done							:	std_logic;

--status signals
signal int_sign, int_notLess9, int_zero, int_coutFz		:	std_logic;
signal int_state						:	std_logic_vector(0 to 9);				


--datapath signals
signal int_Ex, int_Ey			 :	std_logic_vector(6 downto 0);

signal int_ExComplementIn, int_EyComplementIn	:	std_logic_vector(7 downto 0);
signal int_xComplement, int_yComplement  :	std_logic_vector(7 downto 0);
signal int_Ediff			 :	std_logic_vector(6 downto 0);
signal int_EtoComparator		 :	std_logic_vector(6 downto 0);
signal int_GT, int_LT, int_EQ		 :	std_logic;
signal int_FLAG				 :	std_logic;
signal int_Ez, int_REz			 :	std_logic_vector(6 downto 0);
signal int_FxShifted, int_FyShifted	 :	std_logic_vector(8 downto 0);
signal int_mantissaSum			 : 	std_logic_vector(8 downto 0);
signal int_RFz				 : 	std_logic_vector(8 downto 0);

signal int_Fx, int_Fy			:	std_logic_vector(8 downto 0);

begin

int_notLess9 <= int_GT AND NOT(int_EQ) AND NOT(int_LT);

int_ExComplementIn <= '0' & int_Ex;
int_EyComplementIn <= '0' & int_Ey;

int_Fx <= '1' & MantissaA;
int_Fy <= '1' & MantissaB;

int_clear5 <= '0';

controller: fpAdderControl
	port map (	in_reset => GReset,
			in_clock => GClock,
			in_sign => int_sign,
			in_notLess9 => int_notLess9,
			in_zero => int_zero,
			in_coutFz => int_coutFz,
			out_load1 => int_load1,
			out_load2 => int_load2,
			out_load3 => int_load3,
			out_load4 => int_load4,
			out_load5 => int_load5,
			out_load6 => int_load6,
			out_load7 => int_load7,
			out_cin => int_cin,
			out_on22 => int_on22,
			out_on21 => int_on21,
			out_flag0 => int_flag0,
			out_flag1 => int_flag1,
			out_clear3 => int_clear3,
			out_clear4 => int_clear4,
			out_shiftR4 => int_shiftR4,
			out_shiftR3 => int_shiftR3,
			out_countD6 => int_countD6,
			out_countU7 => int_countU7,
			out_shiftR5 => int_shiftR5,
			out_done => int_done,
			out_state => int_state);
Ex: sevenBitRegister
	port map (	in_reset => GReset,
			in_clock => GClock,
			in_data => ExponentA,
			in_load => int_load1,
			out_data => int_Ex);

Ey: sevenBitRegister
	port map (	in_reset => GReset,
			in_clock => GClock,
			in_data => ExponentB,
			in_load => int_load2,
			out_data => int_Ey);

complementerX: eightBitComplementer
	port map (	in_a => int_ExComplementIn,
			in_enable => int_on21,
			out_result => int_xComplement);

complementerY: eightBitComplementer
	port map (	in_a => int_EyComplementIn,
			in_enable => int_on22,
			out_result => int_yComplement);

exponentAdder: eightBitAdder
	port map (	in_a => int_xComplement,
			in_b => int_yComplement,
			in_cin => int_cin,
			out_sign => int_sign,
			out_sum => int_Ediff);

exponentCounter: sevenBitDownCounter
	port map (	in_reset => GReset,
			in_load => int_load6,
			in_countD => int_countD6,
			in_a => int_Ediff,
			in_clock => GClock,
			out_zero => int_zero,
			out_q => int_EtoComparator);

exponentComparator: sevenBitComparator
	port map (	in_a => int_EtoComparator,
			in_b => "0001000",
			out_greater => int_GT,
			out_less => int_LT,
			out_equal => int_EQ);

exponentSRLatch: srlatch
	port map (	i_set => int_flag1,
			i_reset => int_flag0,
			o_q => int_FLAG);

exponentSelect: sevenBit2x1MUX
	port map (	in_sel => int_FLAG,
			in_a => int_Ex,
			in_b => int_Ey,
			out_q => int_Ez);

exponentUpCounter: sevenBitUpCounter
	port map (	in_reset => GReset,
			in_load => int_load7,
			in_countU => int_countU7,
			in_a => int_Ez,
			i_clock => GClock,
			out_q => int_REz);

Fx: nineBitShiftRegister
	port map (	in_reset => GReset,
			in_clock => GClock,
			in_load => int_load3,
			in_shift => int_shiftR3,
			in_clear => int_clear3,
			in_a => int_Fx,
			out_q => int_FxShifted);

Fy: nineBitShiftRegister
	port map (	in_reset => GReset,
			in_clock => GClock,
			in_load => int_load4,
			in_shift => int_shiftR4,
			in_clear => int_clear4,
			in_a => int_Fy,
			out_q => int_FyShifted);

mantissaAdder: nineBitAdder
	port map (	in_reset => GReset,
			in_clock => GClock,
			in_a => int_FxShifted,
			in_b => int_FyShifted,
			in_cin => '0',
			out_cout => int_coutFz,
			out_sum => int_mantissaSum);

normalizeRegister: nineBitShiftRegister
	port map (	in_reset => GReset,
			in_clock => GClock,
			in_load => int_load5,
			in_shift => int_shiftR5,
			in_clear => int_clear5,
			in_a => int_mantissaSum,
			out_q => int_RFz);

	--Output Drivers
	SignOut <= SignA WHEN (ExponentA > ExponentB) ELSE
		   SignB WHEN (ExponentB > ExponentA) ELSE
		   SignA WHEN (MantissaA > MantissaB) ELSE
		   SignB WHEN (MantissaB > MantissaA) ELSE
		   SignA;
	MantissaOut <= int_RFz(7 downto 0);
	ExponentOut <= int_REz;
	
			
end rtl;