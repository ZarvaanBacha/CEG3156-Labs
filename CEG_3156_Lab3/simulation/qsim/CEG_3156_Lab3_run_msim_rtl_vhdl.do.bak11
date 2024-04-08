transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib core
vmap core core
vcom -93 -work core {D:/quartus/CEG_3156_Lab3/core/OneBitComparator.vhd}
vcom -93 -work core {D:/quartus/CEG_3156_Lab3/core/nto2nDecoder.vhd}
vcom -93 -work core {D:/quartus/CEG_3156_Lab3/core/mux81n.vhd}
vcom -93 -work core {D:/quartus/CEG_3156_Lab3/core/mux41n.vhd}
vcom -93 -work core {D:/quartus/CEG_3156_Lab3/core/mux21n.vhd}
vcom -93 -work core {D:/quartus/CEG_3156_Lab3/core/enardFF_2.vhd}
vcom -93 -work core {D:/quartus/CEG_3156_Lab3/core/core_utils.vhd}
vcom -93 -work core {D:/quartus/CEG_3156_Lab3/core/adder_nbit.vhd}
vlib pipeline
vmap pipeline pipeline
vcom -93 -work pipeline {D:/quartus/CEG_3156_Lab3/pipeline/pipeline_pack.vhd}
vlib processor
vmap processor processor
vcom -93 -work processor {D:/quartus/CEG_3156_Lab3/processor/hazardDetectionUnit.vhd}
vcom -93 -work processor {D:/quartus/CEG_3156_Lab3/processor/controlUnitALU.vhd}
vcom -93 -work processor {D:/quartus/CEG_3156_Lab3/processor/controlUnit.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/rom_unregistered.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/ram_en_unreg2.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/DispController.vhd}
vcom -93 -work core {D:/quartus/CEG_3156_Lab3/core/uniShiftReg.vhd}
vcom -93 -work core {D:/quartus/CEG_3156_Lab3/core/nBitComparator.vhd}
vcom -93 -work pipeline {D:/quartus/CEG_3156_Lab3/pipeline/MemWBRegister.vhd}
vcom -93 -work pipeline {D:/quartus/CEG_3156_Lab3/pipeline/IDIFRegister.vhd}
vcom -93 -work pipeline {D:/quartus/CEG_3156_Lab3/pipeline/IDEXRegister.vhd}
vcom -93 -work pipeline {D:/quartus/CEG_3156_Lab3/pipeline/EXMemRegister.vhd}
vcom -93 -work processor {D:/quartus/CEG_3156_Lab3/processor/registerFile.vhd}
vcom -93 -work processor {D:/quartus/CEG_3156_Lab3/processor/nBitALU.vhd}
vcom -93 -work processor {D:/quartus/CEG_3156_Lab3/processor/forwardingUnit.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/SingleCycleProcessor.vhd}

