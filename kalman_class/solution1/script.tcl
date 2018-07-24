############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project kalman_class
set_top filter
add_files kalman_class/mat5.hpp
add_files kalman_class/mat4.hpp
add_files kalman_class/mat3.hpp
add_files kalman_class/mat2.hpp
add_files kalman_class/kf_top.cpp
add_files kalman_class/KalmanFilter2D.hpp
add_files -tb kalman_class/main_tb.cpp
open_solution "solution1"
set_part {xcku5p-ffvb676-2-e} -tool vivado
create_clock -period 10 -name default
#source "./kalman_class/solution1/directives.tcl"
csim_design -clean -compiler gcc
csynth_design
cosim_design -compiler gcc -rtl vhdl
export_design -rtl vhdl -format ip_catalog
