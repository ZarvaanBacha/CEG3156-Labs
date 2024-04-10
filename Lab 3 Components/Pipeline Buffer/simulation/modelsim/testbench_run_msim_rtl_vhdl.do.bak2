transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/Lab 3 Components/Pipeline Buffer/core/mux41n.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/Lab 3 Components/Pipeline Buffer/core/enardFF_2.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/Lab 3 Components/Pipeline Buffer/core/core_utils.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/Lab 3 Components/Pipeline Buffer/MemWBRegister.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/Lab 3 Components/Pipeline Buffer/core/uniShiftReg.vhd}

vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/Lab 3 Components/Pipeline Buffer/MemWBRegister_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  MemWBRegister_tb

add wave *
view structure
view signals
run -all
