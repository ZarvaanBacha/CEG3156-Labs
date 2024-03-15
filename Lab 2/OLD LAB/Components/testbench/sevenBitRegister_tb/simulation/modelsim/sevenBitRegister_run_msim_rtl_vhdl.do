transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/neira/OneDrive/Escritorio/8 semestre/Computer_System_Design/Labs/Lab 1/fpAdder/testbench/sevenBitRegister_tb/enardFF_2.vhd}
vcom -93 -work work {C:/Users/neira/OneDrive/Escritorio/8 semestre/Computer_System_Design/Labs/Lab 1/fpAdder/testbench/sevenBitRegister_tb/sevenBitRegister.vhd}

