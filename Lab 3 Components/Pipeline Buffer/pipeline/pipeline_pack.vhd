library ieee; 
use ieee.std_logic_1164.all;

package pipeline_pack is 

    component IDIFRegister is 
    	port(
    		in_clk, in_rst : in std_logic;
    		ifid_write : in std_logic; 
    		in_instruction : in std_logic_vector(31 downto 0);
    		in_pc : in std_logic_vector(7 downto 0);
    		out_instruction : out std_logic_vector(31 downto 0);
    		out_pc : out std_logic_vector(7 downto 0)
    	);
    end component; 
    
    component IDEXRegister is 
    	port(
    		in_clk, in_rst : in std_logic; 
    		in_pc : in std_logic_vector(7 downto 0); --
    		in_rdData1, in_rdData2 : in std_logic_vector(7 downto 0); --
    		in_sExtended : in std_logic_vector(7 downto 0); --
    		in_regRs, in_regRt, in_regRd : in std_logic_vector(4 downto 0); 
    		in_aluOP : in std_logic_vector(1 downto 0); --EX --
    		in_regDst, in_aluSrc : in std_logic;  -- EX --
    		in_memRead, in_memWrite, in_branch, in_jmp : in std_logic;  -- M --
    		in_regWrite, in_memToReg : in std_logic; -- WB --
    		
    		out_rdData1, out_rdData2, out_pc : out std_logic_vector(7 downto 0);
    		out_sExtended : out std_logic_vector(7 downto 0);
    		out_regRs, out_regRt, out_regRd : out std_logic_vector(4 downto 0);
    		out_aluOp : out std_logic_vector(1 downto 0);
    		out_regDst, out_aluSrc : out std_logic;  
    		out_memRead, out_memWrite, out_branch, out_jmp : out std_logic; 
    		out_regWrite, out_memToReg : out std_logic
    	);
    end component;

    component EXMemRegister is 
    	port(
    		in_clk, in_rst : in std_logic; 
    		
    		in_branchALU, in_resALU : in std_logic_vector(7 downto 0); 
    		in_aluZero : in std_logic; 
    		
    		in_rdData2 : in std_logic_vector(7 downto 0); 
    		in_RegDstRes : in std_logic_vector(7 downto 0); 
    		
    		in_memRead, in_memWrite, in_branch, in_jmp : in std_logic;  -- M 
    		in_regWrite, in_memToReg : in std_logic; -- WB 
    		
    		out_aluZero : out std_logic; 
    		out_resALU, out_branchALU : out std_logic_vector(7 downto 0);
    		out_rdData2 : out std_logic_vector(7 downto 0);
    		out_memRead, out_memWrite, out_branch, out_jmp : out std_logic; 
    		out_regWrite, out_memToReg : out std_logic;
    		out_RegDstRes : out std_logic_vector(7 downto 0)
    	);
    end component;
    
    component MEMWBRegister is 
    	port(
    		in_clk, in_rst : in std_logic; 
    		
    		in_dataMem : in std_logic_vector(7 downto 0); 
    		in_RegDstRes : in std_logic_vector(7 downto 0); 
    		in_resALU: in std_logic_vector(7 downto 0);
    		in_regWrite, in_memToReg : in std_logic; -- WB 
    		
    		out_resALU : out std_logic_vector(7 downto 0);
    		out_dataMem : out std_logic_vector(7 downto 0);
    		out_regWrite, out_memToReg : out std_logic;
    		out_writeReg : out std_logic_vector(7 downto 0)
    	);
    end component;
end package; 
