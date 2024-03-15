transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/neira/OneDrive/Escritorio/8 semestre/Computer_System_Design/Labs/Lab 2/testbench/eightBit2x1MUX_tb/eightBit2x1MUX.vhd}

