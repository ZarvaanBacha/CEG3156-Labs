transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/DispController.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/controlUnitALU.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/controlUnit.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/OneBitComparator.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/nto2nDecoder.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/mux81n.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/mux41n.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/mux21n.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/enardFF_2.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/core_utils.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/adder_nbit.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/rom_unregistered.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/ram_unreg.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/SingleCycleProcessor.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/registerFile.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/nBitALU.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/nBitComparator.vhd}
vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/uniShiftReg.vhd}

vcom -93 -work work {D:/quartus/CEG_3156_Lab3/CEG_3156_Lab3/SingleCycleProcessor_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  singlecycleprocessor_testbench

add wave *
view structure
view signals
run -all
