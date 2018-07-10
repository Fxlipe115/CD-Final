onerror {exit -code 1}
vlib work
vlog -work work genius.vo
vlog -work work genius.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.genius_vlg_vec_tst -voptargs="+acc"
vcd file -direction genius.msim.vcd
vcd add -internal genius_vlg_vec_tst/*
vcd add -internal genius_vlg_vec_tst/i1/*
run -all
quit -f
