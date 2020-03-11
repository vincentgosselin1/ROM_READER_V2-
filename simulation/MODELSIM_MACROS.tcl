# vsim work.fft_atan2_v1_vhd_tst
# add wave -position insertpoint sim:/fft_atan2_v1_vhd_tst/i1/*
# add wave -position insertpoint sim:/fft_atan2_v1_vhd_tst/i1/u6/*
# add wave -position insertpoint sim:/fft_atan2_v1_vhd_tst/i1/b2v_inst/*

#source ./simulation/MODELSIM_MACROS.tcl

vsim work.rom_reader_v2_vhd_tst
add wave -position insertpoint sim:/rom_reader_v2_vhd_tst/*
run 10 us
wave zoom full

# vsim work.fft_atan2_v1_vhd_tst
# add wave -position insertpoint sim:/fft_atan2_v1_vhd_tst/i1/*
# add wave -position insertpoint sim:/fft_atan2_v1_vhd_tst/i1/u6/*
# add wave -position insertpoint sim:/fft_atan2_v1_vhd_tst/i1/b2v_inst/*
# run
# wave zoom full