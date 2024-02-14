transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/MUX_4_To_1.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/MUX_2_To_1.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/reg_clear.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/cmp.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/reg_load_shiftr.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/reg.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/dFF_2.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/timer.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/full_addr_1.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/reg_load_shiftL.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/shift_multiplier_8_bit_control.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/MUX_36_To_9.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/add_9.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/floating_point_multiplier_top.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/floating_point_multiplier_control.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/MUX_18_To_9.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/shift_multiplier_9_bit_data.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/add_18.vhd}
vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/shift_multiplier_9_bit_top.vhd}

vcom -93 -work work {C:/Users/ncers/OneDrive/Documents/CEG3156/QuartusProjects/Lab1/test_floating_point_multiplier_top.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  test_floating_point_multiplier_top

add wave *
view structure
view signals
run -all
