vlog -work work Waveform.vwf.vtvsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.p0606_vlg_vec_tst -voptargs="+acc"
add wave /*
run -all
