transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/Lab 3/hazardDetectionUnit.vhd}

vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/Lab 3/hazardDetectionUnit_tb.vhd}
vcom -93 -work work {X:/School/Year 5/Computer Systems Design/CEG3156-Labs/Lab 3/hazardDetectionUnit.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  hazardDetectionUnit_tb

add wave *
view structure
view signals
run -all
