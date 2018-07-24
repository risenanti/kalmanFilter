# This script segment is generated automatically by AutoPilot

set id 56
set name filter_faddfsub_3g8j
set corename simcore_faddfsub
set op faddfsub
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set opcode_width 2
set opcode_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_faddfsub] == "ap_gen_simcore_faddfsub"} {
eval "ap_gen_simcore_faddfsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_faddfsub, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op faddfsub
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 60
set name filter_fsub_32ns_hbi
set corename simcore_fsub
set op fsub
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fsub] == "ap_gen_simcore_fsub"} {
eval "ap_gen_simcore_fsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fsub, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fsub
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name agg_result_M0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_M0 \
    op interface \
    ports { agg_result_M0 { O 32 vector } agg_result_M0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name agg_result_M1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_M1 \
    op interface \
    ports { agg_result_M1 { O 32 vector } agg_result_M1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name agg_result_M2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_M2 \
    op interface \
    ports { agg_result_M2 { O 32 vector } agg_result_M2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name agg_result_A_a1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_A_a1 \
    op interface \
    ports { agg_result_A_a1 { O 32 vector } agg_result_A_a1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name agg_result_A_a2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_A_a2 \
    op interface \
    ports { agg_result_A_a2 { O 32 vector } agg_result_A_a2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name agg_result_A_a3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_A_a3 \
    op interface \
    ports { agg_result_A_a3 { O 32 vector } agg_result_A_a3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name agg_result_A_b1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_A_b1 \
    op interface \
    ports { agg_result_A_b1 { O 32 vector } agg_result_A_b1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name agg_result_A_b2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_A_b2 \
    op interface \
    ports { agg_result_A_b2 { O 32 vector } agg_result_A_b2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name agg_result_A_b3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_A_b3 \
    op interface \
    ports { agg_result_A_b3 { O 32 vector } agg_result_A_b3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name agg_result_A_c1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_A_c1 \
    op interface \
    ports { agg_result_A_c1 { O 32 vector } agg_result_A_c1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name agg_result_A_c2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_A_c2 \
    op interface \
    ports { agg_result_A_c2 { O 32 vector } agg_result_A_c2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name agg_result_A_c3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_A_c3 \
    op interface \
    ports { agg_result_A_c3 { O 32 vector } agg_result_A_c3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name agg_result_P_a1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_P_a1 \
    op interface \
    ports { agg_result_P_a1 { O 32 vector } agg_result_P_a1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name agg_result_P_a2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_P_a2 \
    op interface \
    ports { agg_result_P_a2 { O 32 vector } agg_result_P_a2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name agg_result_P_a3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_P_a3 \
    op interface \
    ports { agg_result_P_a3 { O 32 vector } agg_result_P_a3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name agg_result_P_b1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_P_b1 \
    op interface \
    ports { agg_result_P_b1 { O 32 vector } agg_result_P_b1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name agg_result_P_b2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_P_b2 \
    op interface \
    ports { agg_result_P_b2 { O 32 vector } agg_result_P_b2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name agg_result_P_b3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_P_b3 \
    op interface \
    ports { agg_result_P_b3 { O 32 vector } agg_result_P_b3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name agg_result_P_c1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_P_c1 \
    op interface \
    ports { agg_result_P_c1 { O 32 vector } agg_result_P_c1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name agg_result_P_c2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_P_c2 \
    op interface \
    ports { agg_result_P_c2 { O 32 vector } agg_result_P_c2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name agg_result_P_c3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_P_c3 \
    op interface \
    ports { agg_result_P_c3 { O 32 vector } agg_result_P_c3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name agg_result_Q_a1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_Q_a1 \
    op interface \
    ports { agg_result_Q_a1 { O 32 vector } agg_result_Q_a1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name agg_result_Q_a2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_Q_a2 \
    op interface \
    ports { agg_result_Q_a2 { O 32 vector } agg_result_Q_a2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name agg_result_Q_a3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_Q_a3 \
    op interface \
    ports { agg_result_Q_a3 { O 32 vector } agg_result_Q_a3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name agg_result_Q_b1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_Q_b1 \
    op interface \
    ports { agg_result_Q_b1 { O 32 vector } agg_result_Q_b1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name agg_result_Q_b2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_Q_b2 \
    op interface \
    ports { agg_result_Q_b2 { O 32 vector } agg_result_Q_b2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name agg_result_Q_b3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_Q_b3 \
    op interface \
    ports { agg_result_Q_b3 { O 32 vector } agg_result_Q_b3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name agg_result_Q_c1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_Q_c1 \
    op interface \
    ports { agg_result_Q_c1 { O 32 vector } agg_result_Q_c1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name agg_result_Q_c2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_Q_c2 \
    op interface \
    ports { agg_result_Q_c2 { O 32 vector } agg_result_Q_c2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name agg_result_Q_c3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_Q_c3 \
    op interface \
    ports { agg_result_Q_c3 { O 32 vector } agg_result_Q_c3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name agg_result_MU \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_MU \
    op interface \
    ports { agg_result_MU { O 32 vector } agg_result_MU_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name agg_result_H0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_H0 \
    op interface \
    ports { agg_result_H0 { O 32 vector } agg_result_H0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name agg_result_H1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_H1 \
    op interface \
    ports { agg_result_H1 { O 32 vector } agg_result_H1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name agg_result_H2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_H2 \
    op interface \
    ports { agg_result_H2 { O 32 vector } agg_result_H2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name agg_result_S \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_S \
    op interface \
    ports { agg_result_S { O 32 vector } agg_result_S_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name agg_result_K0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_K0 \
    op interface \
    ports { agg_result_K0 { O 32 vector } agg_result_K0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name agg_result_K1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_K1 \
    op interface \
    ports { agg_result_K1 { O 32 vector } agg_result_K1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name agg_result_K2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_K2 \
    op interface \
    ports { agg_result_K2 { O 32 vector } agg_result_K2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name agg_result_Y \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_agg_result_Y \
    op interface \
    ports { agg_result_Y { O 32 vector } agg_result_Y_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name value_M0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_M0 \
    op interface \
    ports { value_M0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name value_M1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_M1 \
    op interface \
    ports { value_M1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name value_M2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_M2 \
    op interface \
    ports { value_M2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name value_A_a1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_A_a1 \
    op interface \
    ports { value_A_a1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name value_A_a2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_A_a2 \
    op interface \
    ports { value_A_a2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name value_A_a3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_A_a3 \
    op interface \
    ports { value_A_a3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name value_A_b1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_A_b1 \
    op interface \
    ports { value_A_b1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name value_A_b2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_A_b2 \
    op interface \
    ports { value_A_b2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name value_A_b3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_A_b3 \
    op interface \
    ports { value_A_b3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name value_A_c1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_A_c1 \
    op interface \
    ports { value_A_c1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name value_A_c2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_A_c2 \
    op interface \
    ports { value_A_c2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name value_A_c3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_A_c3 \
    op interface \
    ports { value_A_c3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name value_P_a1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_P_a1 \
    op interface \
    ports { value_P_a1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name value_P_a2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_P_a2 \
    op interface \
    ports { value_P_a2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name value_P_a3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_P_a3 \
    op interface \
    ports { value_P_a3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name value_P_b1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_P_b1 \
    op interface \
    ports { value_P_b1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name value_P_b2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_P_b2 \
    op interface \
    ports { value_P_b2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name value_P_b3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_P_b3 \
    op interface \
    ports { value_P_b3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name value_P_c1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_P_c1 \
    op interface \
    ports { value_P_c1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name value_P_c2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_P_c2 \
    op interface \
    ports { value_P_c2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name value_P_c3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_P_c3 \
    op interface \
    ports { value_P_c3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name value_Q_a1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_Q_a1 \
    op interface \
    ports { value_Q_a1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name value_Q_a2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_Q_a2 \
    op interface \
    ports { value_Q_a2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name value_Q_a3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_Q_a3 \
    op interface \
    ports { value_Q_a3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name value_Q_b1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_Q_b1 \
    op interface \
    ports { value_Q_b1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name value_Q_b2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_Q_b2 \
    op interface \
    ports { value_Q_b2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name value_Q_b3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_Q_b3 \
    op interface \
    ports { value_Q_b3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name value_Q_c1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_Q_c1 \
    op interface \
    ports { value_Q_c1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name value_Q_c2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_Q_c2 \
    op interface \
    ports { value_Q_c2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name value_Q_c3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_Q_c3 \
    op interface \
    ports { value_Q_c3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name value_Y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_value_Y \
    op interface \
    ports { value_Y { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


