onerror {exit -code 1}
vlib work
vlog -work work lfsr.vo
vlog -work work Waveform3.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lfsr_vlg_vec_tst -voptargs="+acc"
vcd file -direction lfsr.msim.vcd
vcd add -internal lfsr_vlg_vec_tst/*
vcd add -internal lfsr_vlg_vec_tst/i1/*
run -all
quit -f
