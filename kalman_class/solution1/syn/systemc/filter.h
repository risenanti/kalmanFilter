// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _filter_HH_
#define _filter_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "operator_mul.h"
#include "cordic_sincos_generi.h"
#include "filter_faddfsub_3g8j.h"
#include "filter_fsub_32ns_hbi.h"
#include "filter_fmul_32ns_cud.h"

namespace ap_rtl {

struct filter : public sc_module {
    // Port declarations 123
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > agg_result_M0;
    sc_out< sc_logic > agg_result_M0_ap_vld;
    sc_out< sc_lv<32> > agg_result_M1;
    sc_out< sc_logic > agg_result_M1_ap_vld;
    sc_out< sc_lv<32> > agg_result_M2;
    sc_out< sc_logic > agg_result_M2_ap_vld;
    sc_out< sc_lv<32> > agg_result_A_a1;
    sc_out< sc_logic > agg_result_A_a1_ap_vld;
    sc_out< sc_lv<32> > agg_result_A_a2;
    sc_out< sc_logic > agg_result_A_a2_ap_vld;
    sc_out< sc_lv<32> > agg_result_A_a3;
    sc_out< sc_logic > agg_result_A_a3_ap_vld;
    sc_out< sc_lv<32> > agg_result_A_b1;
    sc_out< sc_logic > agg_result_A_b1_ap_vld;
    sc_out< sc_lv<32> > agg_result_A_b2;
    sc_out< sc_logic > agg_result_A_b2_ap_vld;
    sc_out< sc_lv<32> > agg_result_A_b3;
    sc_out< sc_logic > agg_result_A_b3_ap_vld;
    sc_out< sc_lv<32> > agg_result_A_c1;
    sc_out< sc_logic > agg_result_A_c1_ap_vld;
    sc_out< sc_lv<32> > agg_result_A_c2;
    sc_out< sc_logic > agg_result_A_c2_ap_vld;
    sc_out< sc_lv<32> > agg_result_A_c3;
    sc_out< sc_logic > agg_result_A_c3_ap_vld;
    sc_out< sc_lv<32> > agg_result_P_a1;
    sc_out< sc_logic > agg_result_P_a1_ap_vld;
    sc_out< sc_lv<32> > agg_result_P_a2;
    sc_out< sc_logic > agg_result_P_a2_ap_vld;
    sc_out< sc_lv<32> > agg_result_P_a3;
    sc_out< sc_logic > agg_result_P_a3_ap_vld;
    sc_out< sc_lv<32> > agg_result_P_b1;
    sc_out< sc_logic > agg_result_P_b1_ap_vld;
    sc_out< sc_lv<32> > agg_result_P_b2;
    sc_out< sc_logic > agg_result_P_b2_ap_vld;
    sc_out< sc_lv<32> > agg_result_P_b3;
    sc_out< sc_logic > agg_result_P_b3_ap_vld;
    sc_out< sc_lv<32> > agg_result_P_c1;
    sc_out< sc_logic > agg_result_P_c1_ap_vld;
    sc_out< sc_lv<32> > agg_result_P_c2;
    sc_out< sc_logic > agg_result_P_c2_ap_vld;
    sc_out< sc_lv<32> > agg_result_P_c3;
    sc_out< sc_logic > agg_result_P_c3_ap_vld;
    sc_out< sc_lv<32> > agg_result_Q_a1;
    sc_out< sc_logic > agg_result_Q_a1_ap_vld;
    sc_out< sc_lv<32> > agg_result_Q_a2;
    sc_out< sc_logic > agg_result_Q_a2_ap_vld;
    sc_out< sc_lv<32> > agg_result_Q_a3;
    sc_out< sc_logic > agg_result_Q_a3_ap_vld;
    sc_out< sc_lv<32> > agg_result_Q_b1;
    sc_out< sc_logic > agg_result_Q_b1_ap_vld;
    sc_out< sc_lv<32> > agg_result_Q_b2;
    sc_out< sc_logic > agg_result_Q_b2_ap_vld;
    sc_out< sc_lv<32> > agg_result_Q_b3;
    sc_out< sc_logic > agg_result_Q_b3_ap_vld;
    sc_out< sc_lv<32> > agg_result_Q_c1;
    sc_out< sc_logic > agg_result_Q_c1_ap_vld;
    sc_out< sc_lv<32> > agg_result_Q_c2;
    sc_out< sc_logic > agg_result_Q_c2_ap_vld;
    sc_out< sc_lv<32> > agg_result_Q_c3;
    sc_out< sc_logic > agg_result_Q_c3_ap_vld;
    sc_out< sc_lv<32> > agg_result_MU;
    sc_out< sc_logic > agg_result_MU_ap_vld;
    sc_out< sc_lv<32> > agg_result_H0;
    sc_out< sc_logic > agg_result_H0_ap_vld;
    sc_out< sc_lv<32> > agg_result_H1;
    sc_out< sc_logic > agg_result_H1_ap_vld;
    sc_out< sc_lv<32> > agg_result_H2;
    sc_out< sc_logic > agg_result_H2_ap_vld;
    sc_out< sc_lv<32> > agg_result_S;
    sc_out< sc_logic > agg_result_S_ap_vld;
    sc_out< sc_lv<32> > agg_result_K0;
    sc_out< sc_logic > agg_result_K0_ap_vld;
    sc_out< sc_lv<32> > agg_result_K1;
    sc_out< sc_logic > agg_result_K1_ap_vld;
    sc_out< sc_lv<32> > agg_result_K2;
    sc_out< sc_logic > agg_result_K2_ap_vld;
    sc_out< sc_lv<32> > agg_result_Y;
    sc_out< sc_logic > agg_result_Y_ap_vld;
    sc_in< sc_lv<32> > value_M0;
    sc_in< sc_lv<32> > value_M1;
    sc_in< sc_lv<32> > value_M2;
    sc_in< sc_lv<32> > value_A_a1;
    sc_in< sc_lv<32> > value_A_a2;
    sc_in< sc_lv<32> > value_A_a3;
    sc_in< sc_lv<32> > value_A_b1;
    sc_in< sc_lv<32> > value_A_b2;
    sc_in< sc_lv<32> > value_A_b3;
    sc_in< sc_lv<32> > value_A_c1;
    sc_in< sc_lv<32> > value_A_c2;
    sc_in< sc_lv<32> > value_A_c3;
    sc_in< sc_lv<32> > value_P_a1;
    sc_in< sc_lv<32> > value_P_a2;
    sc_in< sc_lv<32> > value_P_a3;
    sc_in< sc_lv<32> > value_P_b1;
    sc_in< sc_lv<32> > value_P_b2;
    sc_in< sc_lv<32> > value_P_b3;
    sc_in< sc_lv<32> > value_P_c1;
    sc_in< sc_lv<32> > value_P_c2;
    sc_in< sc_lv<32> > value_P_c3;
    sc_in< sc_lv<32> > value_Q_a1;
    sc_in< sc_lv<32> > value_Q_a2;
    sc_in< sc_lv<32> > value_Q_a3;
    sc_in< sc_lv<32> > value_Q_b1;
    sc_in< sc_lv<32> > value_Q_b2;
    sc_in< sc_lv<32> > value_Q_b3;
    sc_in< sc_lv<32> > value_Q_c1;
    sc_in< sc_lv<32> > value_Q_c2;
    sc_in< sc_lv<32> > value_Q_c3;
    sc_in< sc_lv<32> > value_MU;
    sc_in< sc_lv<32> > value_H0;
    sc_in< sc_lv<32> > value_H1;
    sc_in< sc_lv<32> > value_H2;
    sc_in< sc_lv<32> > value_S;
    sc_in< sc_lv<32> > value_K0;
    sc_in< sc_lv<32> > value_K1;
    sc_in< sc_lv<32> > value_K2;
    sc_in< sc_lv<32> > value_Y;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    filter(sc_module_name name);
    SC_HAS_PROCESS(filter);

    ~filter();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    operator_mul* grp_operator_mul_fu_648;
    cordic_sincos_generi* grp_cordic_sincos_generi_fu_682;
    filter_faddfsub_3g8j<1,4,32,32,32>* filter_faddfsub_3g8j_U56;
    filter_faddfsub_3g8j<1,4,32,32,32>* filter_faddfsub_3g8j_U57;
    filter_faddfsub_3g8j<1,4,32,32,32>* filter_faddfsub_3g8j_U58;
    filter_faddfsub_3g8j<1,4,32,32,32>* filter_faddfsub_3g8j_U59;
    filter_fsub_32ns_hbi<1,4,32,32,32>* filter_fsub_32ns_hbi_U60;
    filter_fsub_32ns_hbi<1,4,32,32,32>* filter_fsub_32ns_hbi_U61;
    filter_fsub_32ns_hbi<1,4,32,32,32>* filter_fsub_32ns_hbi_U62;
    filter_fsub_32ns_hbi<1,4,32,32,32>* filter_fsub_32ns_hbi_U63;
    filter_fsub_32ns_hbi<1,4,32,32,32>* filter_fsub_32ns_hbi_U64;
    filter_fmul_32ns_cud<1,2,32,32,32>* filter_fmul_32ns_cud_U65;
    filter_fmul_32ns_cud<1,2,32,32,32>* filter_fmul_32ns_cud_U66;
    filter_fmul_32ns_cud<1,2,32,32,32>* filter_fmul_32ns_cud_U67;
    filter_fmul_32ns_cud<1,2,32,32,32>* filter_fmul_32ns_cud_U68;
    filter_fmul_32ns_cud<1,2,32,32,32>* filter_fmul_32ns_cud_U69;
    filter_fmul_32ns_cud<1,2,32,32,32>* filter_fmul_32ns_cud_U70;
    filter_fmul_32ns_cud<1,2,32,32,32>* filter_fmul_32ns_cud_U71;
    filter_fmul_32ns_cud<1,2,32,32,32>* filter_fmul_32ns_cud_U72;
    filter_fmul_32ns_cud<1,2,32,32,32>* filter_fmul_32ns_cud_U73;
    sc_signal< sc_lv<47> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > grp_fu_750_p2;
    sc_signal< sc_lv<32> > reg_843;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_lv<32> > grp_fu_756_p2;
    sc_signal< sc_lv<32> > reg_855;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<32> > reg_864;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<32> > grp_fu_691_p2;
    sc_signal< sc_lv<32> > reg_872;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > grp_operator_mul_fu_648_ap_idle;
    sc_signal< sc_logic > grp_operator_mul_fu_648_ap_ready;
    sc_signal< sc_logic > grp_operator_mul_fu_648_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_lv<32> > reg_883;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<32> > reg_894;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > grp_cordic_sincos_generi_fu_682_ap_idle;
    sc_signal< sc_logic > grp_cordic_sincos_generi_fu_682_ap_ready;
    sc_signal< sc_logic > grp_cordic_sincos_generi_fu_682_ap_done;
    sc_signal< bool > ap_block_state11_on_subcall_done;
    sc_signal< sc_lv<32> > reg_900;
    sc_signal< sc_lv<32> > reg_906;
    sc_signal< sc_lv<32> > reg_912;
    sc_signal< sc_lv<32> > reg_918;
    sc_signal< sc_lv<32> > reg_924;
    sc_signal< sc_lv<32> > reg_930;
    sc_signal< sc_lv<32> > reg_936;
    sc_signal< sc_lv<32> > reg_942;
    sc_signal< sc_lv<32> > grp_fu_768_p2;
    sc_signal< sc_lv<32> > reg_948;
    sc_signal< sc_lv<32> > grp_fu_772_p2;
    sc_signal< sc_lv<32> > reg_958;
    sc_signal< sc_lv<32> > grp_fu_697_p2;
    sc_signal< sc_lv<32> > reg_965;
    sc_signal< sc_lv<32> > grp_fu_777_p2;
    sc_signal< sc_lv<32> > reg_975;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > tmp_12_reg_1044;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > s_out_reg_1123;
    sc_signal< sc_lv<32> > c_out_reg_1132;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > tempAdd_a1_reg_1157;
    sc_signal< sc_lv<32> > tempAdd_a2_reg_1163;
    sc_signal< sc_lv<32> > grp_fu_702_p2;
    sc_signal< sc_lv<32> > tempAdd_b1_reg_1169;
    sc_signal< sc_lv<32> > grp_fu_707_p2;
    sc_signal< sc_lv<32> > tempAdd_b2_reg_1175;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > tempAdd_a3_reg_1201;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<32> > tempAdd_b3_reg_1207;
    sc_signal< sc_lv<32> > tempAdd_c1_reg_1213;
    sc_signal< sc_lv<32> > tempAdd_c2_reg_1219;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<32> > tempAdd_c3_reg_1235;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<32> > tmp_25_reg_1241;
    sc_signal< sc_lv<32> > tmp_32_reg_1246;
    sc_signal< sc_lv<32> > temp2_reg_1252;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_lv<32> > value_M0_buf_assign_5_reg_1262;
    sc_signal< sc_lv<32> > grp_fu_782_p2;
    sc_signal< sc_lv<32> > tempMat_b3_reg_1269;
    sc_signal< sc_lv<32> > grp_fu_786_p2;
    sc_signal< sc_lv<32> > tempMat_c1_reg_1274;
    sc_signal< sc_lv<32> > grp_fu_790_p2;
    sc_signal< sc_lv<32> > tempMat_c2_reg_1279;
    sc_signal< sc_lv<32> > grp_fu_794_p2;
    sc_signal< sc_lv<32> > tempMat_c3_reg_1284;
    sc_signal< sc_logic > grp_operator_mul_fu_648_ap_start;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_mat3_a1_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_mat3_a2_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_mat3_a3_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_mat3_b1_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_mat3_b2_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_mat3_b3_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_mat3_c1_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_mat3_c2_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_mat3_c3_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_other_a1_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_other_a2_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_other_a3_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_other_b1_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_other_b2_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_other_b3_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_other_c1_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_other_c2_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_other_c3_read;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_ap_return_0;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_ap_return_1;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_ap_return_2;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_ap_return_3;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_ap_return_4;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_ap_return_5;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_ap_return_6;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_ap_return_7;
    sc_signal< sc_lv<32> > grp_operator_mul_fu_648_ap_return_8;
    sc_signal< sc_logic > grp_cordic_sincos_generi_fu_682_ap_start;
    sc_signal< sc_lv<32> > grp_cordic_sincos_generi_fu_682_ap_return_0;
    sc_signal< sc_lv<32> > grp_cordic_sincos_generi_fu_682_ap_return_1;
    sc_signal< sc_logic > grp_operator_mul_fu_648_ap_start_reg;
    sc_signal< sc_logic > grp_cordic_sincos_generi_fu_682_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_logic > ap_CS_fsm_state47;
    sc_signal< sc_lv<32> > grp_fu_725_p2;
    sc_signal< sc_lv<32> > grp_fu_730_p2;
    sc_signal< sc_lv<32> > grp_fu_735_p2;
    sc_signal< sc_lv<32> > grp_fu_740_p2;
    sc_signal< sc_lv<32> > grp_fu_745_p2;
    sc_signal< sc_lv<32> > grp_fu_691_p0;
    sc_signal< sc_lv<32> > grp_fu_691_p1;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_lv<32> > grp_fu_697_p0;
    sc_signal< sc_lv<32> > grp_fu_697_p1;
    sc_signal< sc_lv<32> > grp_fu_702_p0;
    sc_signal< sc_lv<32> > grp_fu_702_p1;
    sc_signal< sc_lv<32> > grp_fu_707_p0;
    sc_signal< sc_lv<32> > grp_fu_707_p1;
    sc_signal< sc_lv<32> > grp_fu_750_p0;
    sc_signal< sc_lv<32> > grp_fu_750_p1;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<32> > grp_fu_756_p0;
    sc_signal< sc_lv<32> > grp_fu_756_p1;
    sc_signal< sc_lv<32> > grp_fu_768_p0;
    sc_signal< sc_lv<32> > grp_fu_768_p1;
    sc_signal< sc_lv<32> > grp_fu_772_p0;
    sc_signal< sc_lv<32> > grp_fu_772_p1;
    sc_signal< sc_lv<32> > grp_fu_777_p0;
    sc_signal< sc_lv<32> > grp_fu_777_p1;
    sc_signal< sc_lv<2> > grp_fu_691_opcode;
    sc_signal< sc_logic > grp_fu_691_ce;
    sc_signal< sc_lv<2> > grp_fu_697_opcode;
    sc_signal< sc_lv<2> > grp_fu_702_opcode;
    sc_signal< sc_lv<2> > grp_fu_707_opcode;
    sc_signal< sc_lv<47> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<47> ap_ST_fsm_state1;
    static const sc_lv<47> ap_ST_fsm_state2;
    static const sc_lv<47> ap_ST_fsm_state3;
    static const sc_lv<47> ap_ST_fsm_state4;
    static const sc_lv<47> ap_ST_fsm_state5;
    static const sc_lv<47> ap_ST_fsm_state6;
    static const sc_lv<47> ap_ST_fsm_state7;
    static const sc_lv<47> ap_ST_fsm_state8;
    static const sc_lv<47> ap_ST_fsm_state9;
    static const sc_lv<47> ap_ST_fsm_state10;
    static const sc_lv<47> ap_ST_fsm_state11;
    static const sc_lv<47> ap_ST_fsm_state12;
    static const sc_lv<47> ap_ST_fsm_state13;
    static const sc_lv<47> ap_ST_fsm_state14;
    static const sc_lv<47> ap_ST_fsm_state15;
    static const sc_lv<47> ap_ST_fsm_state16;
    static const sc_lv<47> ap_ST_fsm_state17;
    static const sc_lv<47> ap_ST_fsm_state18;
    static const sc_lv<47> ap_ST_fsm_state19;
    static const sc_lv<47> ap_ST_fsm_state20;
    static const sc_lv<47> ap_ST_fsm_state21;
    static const sc_lv<47> ap_ST_fsm_state22;
    static const sc_lv<47> ap_ST_fsm_state23;
    static const sc_lv<47> ap_ST_fsm_state24;
    static const sc_lv<47> ap_ST_fsm_state25;
    static const sc_lv<47> ap_ST_fsm_state26;
    static const sc_lv<47> ap_ST_fsm_state27;
    static const sc_lv<47> ap_ST_fsm_state28;
    static const sc_lv<47> ap_ST_fsm_state29;
    static const sc_lv<47> ap_ST_fsm_state30;
    static const sc_lv<47> ap_ST_fsm_state31;
    static const sc_lv<47> ap_ST_fsm_state32;
    static const sc_lv<47> ap_ST_fsm_state33;
    static const sc_lv<47> ap_ST_fsm_state34;
    static const sc_lv<47> ap_ST_fsm_state35;
    static const sc_lv<47> ap_ST_fsm_state36;
    static const sc_lv<47> ap_ST_fsm_state37;
    static const sc_lv<47> ap_ST_fsm_state38;
    static const sc_lv<47> ap_ST_fsm_state39;
    static const sc_lv<47> ap_ST_fsm_state40;
    static const sc_lv<47> ap_ST_fsm_state41;
    static const sc_lv<47> ap_ST_fsm_state42;
    static const sc_lv<47> ap_ST_fsm_state43;
    static const sc_lv<47> ap_ST_fsm_state44;
    static const sc_lv<47> ap_ST_fsm_state45;
    static const sc_lv<47> ap_ST_fsm_state46;
    static const sc_lv<47> ap_ST_fsm_state47;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_A;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_agg_result_A_a1();
    void thread_agg_result_A_a1_ap_vld();
    void thread_agg_result_A_a2();
    void thread_agg_result_A_a2_ap_vld();
    void thread_agg_result_A_a3();
    void thread_agg_result_A_a3_ap_vld();
    void thread_agg_result_A_b1();
    void thread_agg_result_A_b1_ap_vld();
    void thread_agg_result_A_b2();
    void thread_agg_result_A_b2_ap_vld();
    void thread_agg_result_A_b3();
    void thread_agg_result_A_b3_ap_vld();
    void thread_agg_result_A_c1();
    void thread_agg_result_A_c1_ap_vld();
    void thread_agg_result_A_c2();
    void thread_agg_result_A_c2_ap_vld();
    void thread_agg_result_A_c3();
    void thread_agg_result_A_c3_ap_vld();
    void thread_agg_result_H0();
    void thread_agg_result_H0_ap_vld();
    void thread_agg_result_H1();
    void thread_agg_result_H1_ap_vld();
    void thread_agg_result_H2();
    void thread_agg_result_H2_ap_vld();
    void thread_agg_result_K0();
    void thread_agg_result_K0_ap_vld();
    void thread_agg_result_K1();
    void thread_agg_result_K1_ap_vld();
    void thread_agg_result_K2();
    void thread_agg_result_K2_ap_vld();
    void thread_agg_result_M0();
    void thread_agg_result_M0_ap_vld();
    void thread_agg_result_M1();
    void thread_agg_result_M1_ap_vld();
    void thread_agg_result_M2();
    void thread_agg_result_M2_ap_vld();
    void thread_agg_result_MU();
    void thread_agg_result_MU_ap_vld();
    void thread_agg_result_P_a1();
    void thread_agg_result_P_a1_ap_vld();
    void thread_agg_result_P_a2();
    void thread_agg_result_P_a2_ap_vld();
    void thread_agg_result_P_a3();
    void thread_agg_result_P_a3_ap_vld();
    void thread_agg_result_P_b1();
    void thread_agg_result_P_b1_ap_vld();
    void thread_agg_result_P_b2();
    void thread_agg_result_P_b2_ap_vld();
    void thread_agg_result_P_b3();
    void thread_agg_result_P_b3_ap_vld();
    void thread_agg_result_P_c1();
    void thread_agg_result_P_c1_ap_vld();
    void thread_agg_result_P_c2();
    void thread_agg_result_P_c2_ap_vld();
    void thread_agg_result_P_c3();
    void thread_agg_result_P_c3_ap_vld();
    void thread_agg_result_Q_a1();
    void thread_agg_result_Q_a1_ap_vld();
    void thread_agg_result_Q_a2();
    void thread_agg_result_Q_a2_ap_vld();
    void thread_agg_result_Q_a3();
    void thread_agg_result_Q_a3_ap_vld();
    void thread_agg_result_Q_b1();
    void thread_agg_result_Q_b1_ap_vld();
    void thread_agg_result_Q_b2();
    void thread_agg_result_Q_b2_ap_vld();
    void thread_agg_result_Q_b3();
    void thread_agg_result_Q_b3_ap_vld();
    void thread_agg_result_Q_c1();
    void thread_agg_result_Q_c1_ap_vld();
    void thread_agg_result_Q_c2();
    void thread_agg_result_Q_c2_ap_vld();
    void thread_agg_result_Q_c3();
    void thread_agg_result_Q_c3_ap_vld();
    void thread_agg_result_S();
    void thread_agg_result_S_ap_vld();
    void thread_agg_result_Y();
    void thread_agg_result_Y_ap_vld();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state43();
    void thread_ap_CS_fsm_state44();
    void thread_ap_CS_fsm_state47();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state11_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_cordic_sincos_generi_fu_682_ap_start();
    void thread_grp_fu_691_ce();
    void thread_grp_fu_691_opcode();
    void thread_grp_fu_691_p0();
    void thread_grp_fu_691_p1();
    void thread_grp_fu_697_opcode();
    void thread_grp_fu_697_p0();
    void thread_grp_fu_697_p1();
    void thread_grp_fu_702_opcode();
    void thread_grp_fu_702_p0();
    void thread_grp_fu_702_p1();
    void thread_grp_fu_707_opcode();
    void thread_grp_fu_707_p0();
    void thread_grp_fu_707_p1();
    void thread_grp_fu_750_p0();
    void thread_grp_fu_750_p1();
    void thread_grp_fu_756_p0();
    void thread_grp_fu_756_p1();
    void thread_grp_fu_768_p0();
    void thread_grp_fu_768_p1();
    void thread_grp_fu_772_p0();
    void thread_grp_fu_772_p1();
    void thread_grp_fu_777_p0();
    void thread_grp_fu_777_p1();
    void thread_grp_operator_mul_fu_648_ap_start();
    void thread_grp_operator_mul_fu_648_mat3_a1_read();
    void thread_grp_operator_mul_fu_648_mat3_a2_read();
    void thread_grp_operator_mul_fu_648_mat3_a3_read();
    void thread_grp_operator_mul_fu_648_mat3_b1_read();
    void thread_grp_operator_mul_fu_648_mat3_b2_read();
    void thread_grp_operator_mul_fu_648_mat3_b3_read();
    void thread_grp_operator_mul_fu_648_mat3_c1_read();
    void thread_grp_operator_mul_fu_648_mat3_c2_read();
    void thread_grp_operator_mul_fu_648_mat3_c3_read();
    void thread_grp_operator_mul_fu_648_other_a1_read();
    void thread_grp_operator_mul_fu_648_other_a2_read();
    void thread_grp_operator_mul_fu_648_other_a3_read();
    void thread_grp_operator_mul_fu_648_other_b1_read();
    void thread_grp_operator_mul_fu_648_other_b2_read();
    void thread_grp_operator_mul_fu_648_other_b3_read();
    void thread_grp_operator_mul_fu_648_other_c1_read();
    void thread_grp_operator_mul_fu_648_other_c2_read();
    void thread_grp_operator_mul_fu_648_other_c3_read();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
