transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/School/Year 5/Computer Systems Design/My Labs/Lab 2/shiftLeft2_32/shiftLeft2_32.vhd}

