library ieee;
use ieee.std_logic_1164.all;

library core;
use core.core_utils.all;

entity forwardingUnit is
    port (
		i_EXRegisterRs          : in std_logic_vector (4 downto 0);
        i_EXRegisterRt          : in std_logic_vector (4 downto 0);
        i_MEMRegisterRd         : in std_logic_vector (4 downto 0);
        i_WBRegisterRd          : in std_logic_vector (4 downto 0);
        i_MEMRegWrite           : in std_logic;
        i_WBRegWrite            : in std_logic;
		
        o_ForwardA              : out std_logic_vector(1 downto 0);
        o_ForwardB              : out std_logic_vector(1 downto 0)
	);
end forwardingUnit;


architecture rtl of forwardingUnit is

	component cmp is
		generic (bits : integer := 5); --must be 2 or greater. use cmp_1 for 1 bit.
		port (i_a, i_b : in std_logic_vector(bits downto 1);
			o_gt, o_eq, o_lt : out std_logic);
	end component;
    
    signal int_ForwardA, int_ForwardB   :std_logic_vector(1 downto 0);

    signal int_CompA, int_CompB, int_CompC, int_CompD :std_logic; -- Comparator Outputs

    signal int_A, int_C :std_logic; -- Data Hazard types 3 & 4
    signal int_B, int_D :std_logic; -- Data Hazard types 1 & 2

    signal int_MEMRegisterRd_NotZero    :std_logic; -- $0 register must always return 0
    signal int_WBRegisterRd_NotZero     :std_logic; -- $0 register must always return 0
    

    BEGIN

    comparatorA: cmp generic map (bits => 5)		 
        port map (i_EXRegisterRs,i_MEMRegisterRd,OPEN,int_CompA,OPEN);
		  
	 comparatorB: cmp generic map (bits => 5)		 
        port map (i_EXRegisterRs,i_WBRegisterRd,OPEN,int_CompB,OPEN);		  

    comparatorC: cmp generic map (bits => 5)		 
        port map (i_EXRegisterRt,i_MEMRegisterRd,OPEN,int_CompC,OPEN);
		  
	 comparatorD: cmp generic map (bits => 5)		 
        port map (i_EXRegisterRt,i_WBRegisterRd,OPEN,int_CompD,OPEN);		  

     int_MEMRegisterRd_NotZero <= i_MEMRegisterRd(4) OR i_MEMRegisterRd(3) OR i_MEMRegisterRd(2) OR i_MEMRegisterRd(1) OR i_MEMRegisterRd(0);
     int_WBRegisterRd_NotZero <= i_WBRegisterRd(4) OR i_WBRegisterRd(3) OR i_WBRegisterRd(2) OR i_WBRegisterRd(1) OR i_WBRegisterRd(0);

     int_A <= int_MEMRegisterRd_NotZero AND int_CompA AND i_MEMRegWrite; --replace first op with ALU result
     int_B <= int_WBRegisterRd_NotZero AND int_CompB AND i_WBRegWrite; --replace second op with WriteBack result
	  
     int_C <= int_MEMRegisterRd_NotZero AND int_CompC AND i_MEMRegWrite; --replace second op with ALU result
     int_D <= int_WBRegisterRd_NotZero AND int_CompD AND i_WBRegWrite; --replace second op with WriteBack result

     int_ForwardA <= (int_B AND not(int_A)) & int_A;--(int_B AND (not(int_A)));-- & int_A);
     int_ForwardB <= (int_D AND not(int_C)) & int_C;--(int_D AND (not(int_C)));-- & int_C);

     o_ForwardA <= int_ForwardA;
     o_ForwardB <= int_ForwardB;

end architecture rtl; 
