// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _cordic_sincos_generi_HH_
#define _cordic_sincos_generi_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "scaled_fixed2ieee.h"
#include "cordic_sincos_geneOg.h"
#include "cordic_sincos_genfYi.h"

namespace ap_rtl {

struct cordic_sincos_generi : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > t_in;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_signal< sc_lv<6> > ap_var_for_const0;


    // Module declarations
    cordic_sincos_generi(sc_module_name name);
    SC_HAS_PROCESS(cordic_sincos_generi);

    ~cordic_sincos_generi();

    sc_trace_file* mVcdFile;

    cordic_sincos_geneOg* ref_4oPi_table_100_V_U;
    cordic_sincos_genfYi* cordic_ctab_table_12_1_U;
    scaled_fixed2ieee* grp_scaled_fixed2ieee_fu_344;
    scaled_fixed2ieee* grp_scaled_fixed2ieee_fu_356;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > ref_4oPi_table_100_V_address0;
    sc_signal< sc_logic > ref_4oPi_table_100_V_ce0;
    sc_signal< sc_lv<100> > ref_4oPi_table_100_V_q0;
    sc_signal< sc_lv<7> > cordic_ctab_table_12_1_address0;
    sc_signal< sc_logic > cordic_ctab_table_12_1_ce0;
    sc_signal< sc_lv<126> > cordic_ctab_table_12_1_q0;
    sc_signal< sc_lv<1> > p_Result_s_reg_1024;
    sc_signal< sc_lv<1> > tmp_s_fu_390_p2;
    sc_signal< sc_lv<1> > tmp_s_reg_1029;
    sc_signal< sc_lv<1> > tmp_36_fu_396_p2;
    sc_signal< sc_lv<1> > tmp_36_reg_1033;
    sc_signal< sc_lv<1> > closepath_fu_402_p2;
    sc_signal< sc_lv<1> > closepath_reg_1037;
    sc_signal< sc_lv<5> > tmp_reg_1043;
    sc_signal< sc_lv<23> > p_Result_9_fu_418_p1;
    sc_signal< sc_lv<23> > p_Result_9_reg_1048;
    sc_signal< sc_lv<4> > tmp_34_fu_451_p1;
    sc_signal< sc_lv<4> > tmp_34_reg_1058;
    sc_signal< sc_lv<69> > p_Val2_13_reg_1063;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<3> > tmp_16_i_reg_1069;
    sc_signal< sc_lv<3> > p_Val2_23_fu_531_p3;
    sc_signal< sc_lv<3> > p_Val2_23_reg_1074;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<40> > fout_V_fu_673_p3;
    sc_signal< sc_lv<40> > fout_V_reg_1080;
    sc_signal< sc_lv<1> > tmp_37_fu_681_p2;
    sc_signal< sc_lv<1> > tmp_37_reg_1085;
    sc_signal< sc_lv<43> > y_V_fu_707_p1;
    sc_signal< sc_lv<6> > yprescale_V_cast_fu_715_p2;
    sc_signal< sc_lv<43> > z_V_fu_740_p1;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<6> > k_fu_750_p2;
    sc_signal< sc_lv<6> > k_reg_1107;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > d_V_fu_756_p3;
    sc_signal< sc_lv<1> > d_V_reg_1112;
    sc_signal< sc_lv<1> > exitcond_i_fu_744_p2;
    sc_signal< sc_lv<43> > tx_V_fu_786_p3;
    sc_signal< sc_lv<43> > tx_V_reg_1117;
    sc_signal< sc_lv<43> > ty_V_fu_812_p3;
    sc_signal< sc_lv<43> > ty_V_reg_1122;
    sc_signal< sc_lv<3> > sel_fu_830_p3;
    sc_signal< sc_lv<3> > sel_reg_1132;
    sc_signal< sc_lv<43> > tz_V_fu_880_p3;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_344_ap_start;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_344_ap_done;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_344_ap_idle;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_344_ap_ready;
    sc_signal< sc_lv<32> > grp_scaled_fixed2ieee_fu_344_ap_return;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_356_ap_start;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_356_ap_done;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_356_ap_idle;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_356_ap_ready;
    sc_signal< sc_lv<32> > grp_scaled_fixed2ieee_fu_356_ap_return;
    sc_signal< sc_lv<43> > p_Val2_18_reg_210;
    sc_signal< sc_lv<43> > p_Val2_1_reg_220;
    sc_signal< sc_lv<43> > p_Val2_2_reg_231;
    sc_signal< sc_lv<6> > sh_assign_reg_242;
    sc_signal< sc_lv<43> > p_0_reg_253;
    sc_signal< sc_lv<43> > p_1_reg_266;
    sc_signal< sc_lv<6> > p_s_reg_277;
    sc_signal< sc_lv<32> > tmp_43_fu_1002_p1;
    sc_signal< sc_lv<32> > ap_phi_mux_s_out_write_assign_phi_fu_292_p20;
    sc_signal< sc_lv<32> > s_out_write_assign_reg_288;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< bool > ap_predicate_op125_call_state7;
    sc_signal< bool > ap_block_state7_on_subcall_done;
    sc_signal< sc_lv<32> > tmp_50_fu_897_p1;
    sc_signal< sc_lv<32> > tmp_48_fu_912_p1;
    sc_signal< sc_lv<32> > tmp_46_fu_942_p1;
    sc_signal< sc_lv<32> > ap_phi_mux_c_out_write_assign_phi_fu_320_p20;
    sc_signal< sc_lv<32> > c_out_write_assign_reg_315;
    sc_signal< sc_lv<32> > tmp_49_fu_927_p1;
    sc_signal< sc_lv<32> > tmp_47_fu_957_p1;
    sc_signal< sc_lv<32> > tmp_45_fu_972_p1;
    sc_signal< sc_lv<32> > tmp_44_fu_987_p1;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_344_ap_start_reg;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_356_ap_start_reg;
    sc_signal< sc_lv<64> > tmp_5_i_i_fu_446_p1;
    sc_signal< sc_lv<64> > tmp_40_fu_820_p1;
    sc_signal< sc_lv<32> > p_Val2_7_fu_368_p1;
    sc_signal< sc_lv<8> > loc_V_fu_380_p4;
    sc_signal< sc_lv<8> > expv_op_fu_422_p2;
    sc_signal< sc_lv<8> > addr_V_fu_428_p3;
    sc_signal< sc_lv<4> > tmp_12_fu_436_p4;
    sc_signal< sc_lv<100> > tmp_7_i_i_fu_462_p1;
    sc_signal< sc_lv<100> > r_V_fu_465_p2;
    sc_signal< sc_lv<80> > Med_V_fu_471_p4;
    sc_signal< sc_lv<24> > p_Result_10_fu_455_p3;
    sc_signal< sc_lv<80> > r_V_1_fu_489_p0;
    sc_signal< sc_lv<24> > r_V_1_fu_489_p1;
    sc_signal< sc_lv<104> > r_V_1_fu_489_p2;
    sc_signal< sc_lv<5> > p_i_cast_fu_515_p2;
    sc_signal< sc_lv<5> > storemerge_i_fu_520_p3;
    sc_signal< sc_lv<1> > tmp_35_fu_537_p1;
    sc_signal< sc_lv<69> > p_Val2_i_fu_541_p2;
    sc_signal< sc_lv<69> > p_Val2_15_fu_546_p3;
    sc_signal< sc_lv<29> > p_Result_i2_i_fu_553_p4;
    sc_signal< sc_lv<30> > p_Result_11_fu_563_p3;
    sc_signal< sc_lv<30> > p_Result_12_fu_571_p4;
    sc_signal< sc_lv<32> > p_Result_13_fu_581_p3;
    sc_signal< sc_lv<32> > val_assign_fu_589_p3;
    sc_signal< sc_lv<5> > Mx_zeros_V_fu_597_p1;
    sc_signal< sc_lv<69> > tmp_17_i_fu_601_p1;
    sc_signal< sc_lv<69> > p_Val2_17_fu_605_p2;
    sc_signal< sc_lv<7> > storemerge_i_cast_fu_527_p1;
    sc_signal< sc_lv<7> > tmp_20_i_cast_fu_621_p1;
    sc_signal< sc_lv<7> > Ex_V_fu_625_p2;
    sc_signal< sc_lv<1> > isNeg_fu_631_p3;
    sc_signal< sc_lv<7> > tmp_22_i_fu_639_p2;
    sc_signal< sc_lv<7> > sh_assign_2_fu_645_p3;
    sc_signal< sc_lv<32> > sh_assign_3_cast_fu_653_p1;
    sc_signal< sc_lv<40> > Mx_V_fu_611_p4;
    sc_signal< sc_lv<40> > tmp_23_i_fu_657_p1;
    sc_signal< sc_lv<40> > tmp_24_i_fu_661_p2;
    sc_signal< sc_lv<40> > tmp_25_i_fu_667_p2;
    sc_signal< sc_lv<40> > p_Val2_9_fu_691_p1;
    sc_signal< sc_lv<80> > p_Val2_9_fu_691_p2;
    sc_signal< sc_lv<40> > tmp_14_fu_697_p4;
    sc_signal< sc_lv<6> > tmp_39_fu_711_p1;
    sc_signal< sc_lv<40> > p_Val2_s_fu_724_p0;
    sc_signal< sc_lv<80> > p_Val2_s_fu_724_p2;
    sc_signal< sc_lv<40> > tmp_15_fu_730_p4;
    sc_signal< sc_lv<43> > tmp_38_fu_764_p1;
    sc_signal< sc_lv<43> > y_s_V_fu_768_p2;
    sc_signal< sc_lv<43> > r_V_i2_fu_780_p2;
    sc_signal< sc_lv<43> > r_V_4_i_fu_774_p2;
    sc_signal< sc_lv<43> > x_s_V_fu_794_p2;
    sc_signal< sc_lv<43> > r_V_1_i_fu_800_p2;
    sc_signal< sc_lv<43> > r_V_i7_fu_806_p2;
    sc_signal< sc_lv<3> > tmp_42_fu_825_p2;
    sc_signal< sc_lv<1> > tmp_41_fu_846_p3;
    sc_signal< sc_lv<40> > tmp_46_cast_fu_854_p1;
    sc_signal< sc_lv<40> > p_Val2_27_cast_fu_836_p4;
    sc_signal< sc_lv<40> > z_s_V_fu_858_p2;
    sc_signal< sc_lv<43> > z_s_V_cast_fu_864_p1;
    sc_signal< sc_lv<43> > r_V_i_fu_874_p2;
    sc_signal< sc_lv<43> > r_V_5_i_fu_868_p2;
    sc_signal< sc_lv<32> > tmp_218_to_int_fu_887_p1;
    sc_signal< sc_lv<32> > tmp_218_neg_fu_891_p2;
    sc_signal< sc_lv<32> > tmp_216_to_int_fu_902_p1;
    sc_signal< sc_lv<32> > tmp_216_neg_fu_906_p2;
    sc_signal< sc_lv<32> > tmp_217_to_int_fu_917_p1;
    sc_signal< sc_lv<32> > tmp_217_neg_fu_921_p2;
    sc_signal< sc_lv<32> > tmp_214_to_int_fu_932_p1;
    sc_signal< sc_lv<32> > tmp_214_neg_fu_936_p2;
    sc_signal< sc_lv<32> > tmp_215_to_int_fu_947_p1;
    sc_signal< sc_lv<32> > tmp_215_neg_fu_951_p2;
    sc_signal< sc_lv<32> > tmp_213_to_int_fu_962_p1;
    sc_signal< sc_lv<32> > tmp_213_neg_fu_966_p2;
    sc_signal< sc_lv<32> > tmp_212_to_int_fu_977_p1;
    sc_signal< sc_lv<32> > tmp_212_neg_fu_981_p2;
    sc_signal< sc_lv<32> > tmp_219_to_int_fu_992_p1;
    sc_signal< sc_lv<32> > tmp_219_neg_fu_996_p2;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< sc_lv<80> > p_Val2_9_fu_691_p10;
    sc_signal< sc_lv<80> > p_Val2_s_fu_724_p00;
    sc_signal< sc_lv<104> > r_V_1_fu_489_p00;
    sc_signal< sc_lv<104> > r_V_1_fu_489_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<43> ap_const_lv43_0;
    static const sc_lv<43> ap_const_lv43_9B74EDA843;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<43> ap_const_lv43_10000000000;
    static const sc_lv<32> ap_const_lv32_6;
    static const bool ap_const_boolean_0;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_7FFFFFFF;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<8> ap_const_lv8_73;
    static const sc_lv<8> ap_const_lv8_7E;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<8> ap_const_lv8_C2;
    static const sc_lv<8> ap_const_lv8_3F;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_63;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_4C;
    static const sc_lv<32> ap_const_lv32_4D;
    static const sc_lv<32> ap_const_lv32_4F;
    static const sc_lv<5> ap_const_lv5_3;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<69> ap_const_lv69_0;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_44;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<7> ap_const_lv7_74;
    static const sc_lv<80> ap_const_lv80_C90FDAA221;
    static const sc_lv<6> ap_const_lv6_2B;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_56;
    static const sc_lv<32> ap_const_lv32_7D;
    static const sc_lv<32> ap_const_lv32_55;
    static const sc_lv<32> ap_const_lv32_80000000;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_Ex_V_fu_625_p2();
    void thread_Med_V_fu_471_p4();
    void thread_Mx_V_fu_611_p4();
    void thread_Mx_zeros_V_fu_597_p1();
    void thread_addr_V_fu_428_p3();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_state7_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_c_out_write_assign_phi_fu_320_p20();
    void thread_ap_phi_mux_s_out_write_assign_phi_fu_292_p20();
    void thread_ap_predicate_op125_call_state7();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_closepath_fu_402_p2();
    void thread_cordic_ctab_table_12_1_address0();
    void thread_cordic_ctab_table_12_1_ce0();
    void thread_d_V_fu_756_p3();
    void thread_exitcond_i_fu_744_p2();
    void thread_expv_op_fu_422_p2();
    void thread_fout_V_fu_673_p3();
    void thread_grp_scaled_fixed2ieee_fu_344_ap_start();
    void thread_grp_scaled_fixed2ieee_fu_356_ap_start();
    void thread_isNeg_fu_631_p3();
    void thread_k_fu_750_p2();
    void thread_loc_V_fu_380_p4();
    void thread_p_Result_10_fu_455_p3();
    void thread_p_Result_11_fu_563_p3();
    void thread_p_Result_12_fu_571_p4();
    void thread_p_Result_13_fu_581_p3();
    void thread_p_Result_9_fu_418_p1();
    void thread_p_Result_i2_i_fu_553_p4();
    void thread_p_Val2_15_fu_546_p3();
    void thread_p_Val2_17_fu_605_p2();
    void thread_p_Val2_23_fu_531_p3();
    void thread_p_Val2_27_cast_fu_836_p4();
    void thread_p_Val2_7_fu_368_p1();
    void thread_p_Val2_9_fu_691_p1();
    void thread_p_Val2_9_fu_691_p10();
    void thread_p_Val2_9_fu_691_p2();
    void thread_p_Val2_i_fu_541_p2();
    void thread_p_Val2_s_fu_724_p0();
    void thread_p_Val2_s_fu_724_p00();
    void thread_p_Val2_s_fu_724_p2();
    void thread_p_i_cast_fu_515_p2();
    void thread_r_V_1_fu_489_p0();
    void thread_r_V_1_fu_489_p00();
    void thread_r_V_1_fu_489_p1();
    void thread_r_V_1_fu_489_p10();
    void thread_r_V_1_fu_489_p2();
    void thread_r_V_1_i_fu_800_p2();
    void thread_r_V_4_i_fu_774_p2();
    void thread_r_V_5_i_fu_868_p2();
    void thread_r_V_fu_465_p2();
    void thread_r_V_i2_fu_780_p2();
    void thread_r_V_i7_fu_806_p2();
    void thread_r_V_i_fu_874_p2();
    void thread_ref_4oPi_table_100_V_address0();
    void thread_ref_4oPi_table_100_V_ce0();
    void thread_sel_fu_830_p3();
    void thread_sh_assign_2_fu_645_p3();
    void thread_sh_assign_3_cast_fu_653_p1();
    void thread_storemerge_i_cast_fu_527_p1();
    void thread_storemerge_i_fu_520_p3();
    void thread_tmp_12_fu_436_p4();
    void thread_tmp_14_fu_697_p4();
    void thread_tmp_15_fu_730_p4();
    void thread_tmp_17_i_fu_601_p1();
    void thread_tmp_20_i_cast_fu_621_p1();
    void thread_tmp_212_neg_fu_981_p2();
    void thread_tmp_212_to_int_fu_977_p1();
    void thread_tmp_213_neg_fu_966_p2();
    void thread_tmp_213_to_int_fu_962_p1();
    void thread_tmp_214_neg_fu_936_p2();
    void thread_tmp_214_to_int_fu_932_p1();
    void thread_tmp_215_neg_fu_951_p2();
    void thread_tmp_215_to_int_fu_947_p1();
    void thread_tmp_216_neg_fu_906_p2();
    void thread_tmp_216_to_int_fu_902_p1();
    void thread_tmp_217_neg_fu_921_p2();
    void thread_tmp_217_to_int_fu_917_p1();
    void thread_tmp_218_neg_fu_891_p2();
    void thread_tmp_218_to_int_fu_887_p1();
    void thread_tmp_219_neg_fu_996_p2();
    void thread_tmp_219_to_int_fu_992_p1();
    void thread_tmp_22_i_fu_639_p2();
    void thread_tmp_23_i_fu_657_p1();
    void thread_tmp_24_i_fu_661_p2();
    void thread_tmp_25_i_fu_667_p2();
    void thread_tmp_34_fu_451_p1();
    void thread_tmp_35_fu_537_p1();
    void thread_tmp_36_fu_396_p2();
    void thread_tmp_37_fu_681_p2();
    void thread_tmp_38_fu_764_p1();
    void thread_tmp_39_fu_711_p1();
    void thread_tmp_40_fu_820_p1();
    void thread_tmp_41_fu_846_p3();
    void thread_tmp_42_fu_825_p2();
    void thread_tmp_43_fu_1002_p1();
    void thread_tmp_44_fu_987_p1();
    void thread_tmp_45_fu_972_p1();
    void thread_tmp_46_cast_fu_854_p1();
    void thread_tmp_46_fu_942_p1();
    void thread_tmp_47_fu_957_p1();
    void thread_tmp_48_fu_912_p1();
    void thread_tmp_49_fu_927_p1();
    void thread_tmp_50_fu_897_p1();
    void thread_tmp_5_i_i_fu_446_p1();
    void thread_tmp_7_i_i_fu_462_p1();
    void thread_tmp_s_fu_390_p2();
    void thread_tx_V_fu_786_p3();
    void thread_ty_V_fu_812_p3();
    void thread_tz_V_fu_880_p3();
    void thread_val_assign_fu_589_p3();
    void thread_x_s_V_fu_794_p2();
    void thread_y_V_fu_707_p1();
    void thread_y_s_V_fu_768_p2();
    void thread_yprescale_V_cast_fu_715_p2();
    void thread_z_V_fu_740_p1();
    void thread_z_s_V_cast_fu_864_p1();
    void thread_z_s_V_fu_858_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
