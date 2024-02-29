onerror {exit -code 1}
vlib work
vcom -work work Projeto_radiador.vho
vcom -work work Waveform_bin2bcd.vwf.vht
vsim -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.bin2bcd_vhd_vec_tst
vcd file -direction Projeto_radiador.msim.vcd
vcd add -internal bin2bcd_vhd_vec_tst/*
vcd add -internal bin2bcd_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
