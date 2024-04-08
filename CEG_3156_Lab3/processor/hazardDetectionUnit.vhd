--1. If (ID/EX.MemRead & ((ID/EX.RegisterRt = IF/ID.RegisterRs) or (ID/EX.RegisterRt = IF/ID.RegisterRt))) <-- lw stall (hazard detected)
--2  If (IF/ID.op = 000100 AND data1 == data2) <-- branch stall
--3  If (MEM/WB.WriteRegister = IF/ID.rt OR MEM/WB.WriteRegister = IF/ID.rs) AND (MEM/WB.RegWrite)	<-- lw stall

library ieee;
use ieee.std_logic_1164.all;

entity HazardDetectionUnit is
    port (
        idExMemRead : in std_logic;      -- Signal indicating a memory read operation in the ID/EX stage
        isBranch : in std_logic;         -- Signal indicating a branch instruction in the IF/ID stage
		  
        idExRegRt : in std_logic_vector(4 downto 0);  -- Register value from the ID/EX stage
        ifIdRegRs : in std_logic_vector(4 downto 0);  -- Source register value from the IF/ID stage
        ifIdRegRt : in std_logic_vector(4 downto 0);  -- Target register value from the IF/ID stage
		  
        ifIdWrite : out std_logic := '0';   -- Signal indicating whether to write to the IF/ID stage
        PCwrite : out std_logic := '0';     -- Signal indicating whether to write to the PC
        ctrlMux : out std_logic := '0'      -- Signal controlling the multiplexer
    );
end entity;

architecture structural of HazardDetectionUnit is
    signal IdExRtEqIfIdRs, IdExRtEqIfIdRt : std_logic_vector(4 downto 0);  -- Signals for comparing register values
    signal RtRs, RtRt : std_logic;        -- Signals indicating register equality
    signal hazard1, hazard2 : std_logic;   -- Signals indicating hazard detection
begin
    -- Compute XNOR of idExRegRt and ifIdRegRs/ifIdRegRt for register equality checks
    -- Checks if RegisterRs or RegisterRt matches idExRegRt
    IdExRtEqIfIdRs <= idExRegRt xnor ifIdRegRs;
    IdExRtEqIfIdRt <= idExRegRt xnor ifIdRegRt;

    -- 1 if IDEXrt and IFIDrs are equal
    RtRs <= IdExRtEqIfIdRs(0) and IdExRtEqIfIdRs(1) and IdExRtEqIfIdRs(2) and IdExRtEqIfIdRs(3) and IdExRtEqIfIdRs(4);

    -- 1 if IDEXrt and IFIDrt are equal
    RtRt <= IdExRtEqIfIdRt(0) and IdExRtEqIfIdRt(1) and IdExRtEqIfIdRt(2) and IdExRtEqIfIdRt(3) and IdExRtEqIfIdRt(4);

    -- Load word stall
    -- Detects a hazard if either RegisterRs or RegisterRt matches idExRegRt
    hazard1 <= idExMemRead and (RtRs or RtRt);

    -- Branch stall
    -- Detects a branch instruction in the IF/ID stage
    hazard2 <= isBranch;

    -- Output signals
	 
    -- Determines whether to write to the IF/ID stage
    ifIdWrite <= not (hazard1 or hazard2);
	 
    -- Determines whether to write to the PC
    PCwrite <= not hazard1;
	 
    -- Controls the multiplexer
    ctrlMux <= hazard1;

end architecture structural;
