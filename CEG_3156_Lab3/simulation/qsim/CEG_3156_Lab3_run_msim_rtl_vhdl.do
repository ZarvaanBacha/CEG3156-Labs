transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib core
vmap core core
vcom -93 -work core {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/core/OneBitComparator.vhd}
vcom -93 -work core {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/core/nto2nDecoder.vhd}
vcom -93 -work core {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/core/mux81n.vhd}
vcom -93 -work core {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/core/mux41n.vhd}
vcom -93 -work core {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/core/mux21n.vhd}
vcom -93 -work core {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/core/enardFF_2.vhd}
vcom -93 -work core {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/core/core_utils.vhd}
vcom -93 -work core {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/core/cmp.vhd}
vcom -93 -work core {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/core/adder_nbit.vhd}
vlib pipeline
vmap pipeline pipeline
vcom -93 -work pipeline {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/pipeline/pipeline_pack.vhd}
vlib processor
vmap processor processor
vcom -93 -work processor {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/processor/hazardDetectionUnit.vhd}
vcom -93 -work processor {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/processor/controlUnitALU.vhd}
vcom -93 -work processor {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/processor/controlUnit.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/rom_unregistered.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/ram_en_unreg2.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/DispController.vhd}
vcom -93 -work processor {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/processor/processor_pack.vhd}
vcom -93 -work core {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/core/uniShiftReg.vhd}
vcom -93 -work core {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/core/nBitComparator.vhd}
vcom -93 -work pipeline {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/pipeline/MemWBRegister.vhd}
vcom -93 -work pipeline {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/pipeline/IDIFRegister.vhd}
vcom -93 -work pipeline {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/pipeline/IDEXRegister.vhd}
vcom -93 -work pipeline {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/pipeline/EXMemRegister.vhd}
vcom -93 -work processor {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/processor/registerFile.vhd}
vcom -93 -work processor {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/processor/nBitALU.vhd}
vcom -93 -work processor {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/processor/forwardingUnit.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/SingleCycleProcessor.vhd}

vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/CEG_3156_Lab3/SingleCycleProcessor_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -L core -L pipeline -L processor -voptargs="+acc"  TestBench

add wave *
view structure
view signals
run -all
