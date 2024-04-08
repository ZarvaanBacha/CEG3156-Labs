onerror {exit -code 1}
vlib work
vlog -work work CEG_3156_Lab3.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SingleCycleProcessor_vlg_vec_tst -voptargs="+acc"
vcd file -direction CEG_3156_Lab3.msim.vcd
vcd add -internal SingleCycleProcessor_vlg_vec_tst/*
vcd add -internal SingleCycleProcessor_vlg_vec_tst/i1/*
run -all
quit -f
