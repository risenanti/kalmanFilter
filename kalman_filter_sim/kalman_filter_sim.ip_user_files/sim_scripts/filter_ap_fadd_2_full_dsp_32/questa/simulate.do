onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib filter_ap_fadd_2_full_dsp_32_opt

do {wave.do}

view wave
view structure
view signals

do {filter_ap_fadd_2_full_dsp_32.udo}

run -all

quit -force
