transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/reg_clear.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/cmp.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/reg_load_shiftr.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/reg.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/dFF_2.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/timer.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/full_addr_1.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/add_16.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/shift_multiplier_8_bit_data.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/reg_load_shiftL.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/mux_2_to_1.vhd}

vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/Quartus Projects/Lab 1/test_shift_multiplier_8_bit_data.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  test_shift_multiplier_8_bit_data

add wave *
view structure
view signals
run -all
