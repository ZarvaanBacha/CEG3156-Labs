transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Zarvaan Bacha/Documents/School/Year 4/Winter/CEG 3156 - Computer Systems Design/Labs/Lab 2/Code/8 Bit Register/eightBitRegister.vhd}
vcom -93 -work work {C:/Users/Zarvaan Bacha/Documents/School/Year 4/Winter/CEG 3156 - Computer Systems Design/Labs/Lab 2/Code/8 Bit Register/enardFF_2.vhd}

