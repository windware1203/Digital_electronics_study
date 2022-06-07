onerror {exit -code 1}
vlib work
vlog -work work p0606.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.p0606_vlg_vec_tst -voptargs="+acc"
vcd file -direction p0606.msim.vcd
vcd add -internal p0606_vlg_vec_tst/*
vcd add -internal p0606_vlg_vec_tst/i1/*
run -all
quit -f
