transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/lpm_rom1.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/lpm_ram2.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/DispController.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/registerFile.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/OneBitFullAdder.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/OneBitComparator.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/enardFF_2.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/eightBitRegister.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/eightBitDecoder.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/eightBitComparator.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/eightBitALU.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/eightBitAdder.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/eightBit8x3MUX.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/eightBit2x1MUX.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/controlUnitALU.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/controlUnit.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/SingleCycleProcessor.vhd}

vcom -93 -work work {X:/School/Year 5/Computer Systems Design/My Labs/Lab 2/Single Cycle Processor/SingleCycleProcessor_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_singleCycleProcessor

add wave *
view structure
view signals
run -all
