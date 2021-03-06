// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _scaled_fixed2ieee_HH_
#define _scaled_fixed2ieee_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "filter_mux_32_32_dEe.h"

namespace ap_rtl {

struct scaled_fixed2ieee : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<43> > in_V;
    sc_in< sc_lv<6> > prescale;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    scaled_fixed2ieee(sc_module_name name);
    SC_HAS_PROCESS(scaled_fixed2ieee);

    ~scaled_fixed2ieee();

    sc_trace_file* mVcdFile;

    filter_mux_32_32_dEe<1,1,32,32,32,2,32>* filter_mux_32_32_dEe_U48;
    filter_mux_32_32_dEe<1,1,32,32,32,2,32>* filter_mux_32_32_dEe_U49;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > p_Result_s_fu_209_p3;
    sc_signal< sc_lv<1> > p_Result_s_reg_688;
    sc_signal< sc_lv<43> > in_shift_V_2_fu_223_p3;
    sc_signal< sc_lv<43> > in_shift_V_2_reg_693;
    sc_signal< sc_lv<2> > i_1_fu_237_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > out_bits_1_V_1_fu_409_p3;
    sc_signal< sc_lv<1> > exitcond1_fu_231_p2;
    sc_signal< sc_lv<32> > out_bits_1_V_2_fu_417_p3;
    sc_signal< sc_lv<32> > p_Result_6_fu_436_p5;
    sc_signal< sc_lv<32> > p_Result_6_reg_737;
    sc_signal< sc_lv<2> > i_2_fu_454_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<2> > i_3_fu_510_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > shift_2_fu_537_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_504_p2;
    sc_signal< sc_lv<43> > in_shift_V_fu_582_p3;
    sc_signal< sc_lv<32> > out_bits_1_V_s_reg_112;
    sc_signal< sc_lv<32> > out_bits_0_V_s_reg_124;
    sc_signal< sc_lv<2> > i_reg_136;
    sc_signal< sc_lv<2> > ap_phi_mux_i1_phi_fu_151_p4;
    sc_signal< sc_lv<2> > i1_reg_147;
    sc_signal< sc_lv<1> > exitcond_fu_448_p2;
    sc_signal< sc_lv<43> > in_shift_reg_158;
    sc_signal< sc_lv<1> > tmp_1_fu_591_p2;
    sc_signal< sc_lv<32> > shift_reg_167;
    sc_signal< sc_lv<2> > i2_reg_178;
    sc_signal< sc_lv<43> > ap_phi_mux_p_Val2_s_phi_fu_192_p4;
    sc_signal< sc_lv<32> > ap_phi_mux_shift_1_phi_fu_202_p4;
    sc_signal< sc_lv<32> > c_2_fu_88;
    sc_signal< sc_lv<32> > c_0_fu_481_p3;
    sc_signal< sc_lv<32> > c_2_1_fu_92;
    sc_signal< sc_lv<32> > c_2_2_fu_96;
    sc_signal< sc_lv<43> > p_Val2_2_fu_217_p2;
    sc_signal< sc_lv<1> > tmp_12_fu_243_p1;
    sc_signal< sc_lv<5> > tmp_5_fu_247_p3;
    sc_signal< sc_lv<6> > tmp_5_cast_fu_255_p1;
    sc_signal< sc_lv<6> > Hi_assign_fu_259_p2;
    sc_signal< sc_lv<5> > Lo_assign_fu_269_p2;
    sc_signal< sc_lv<32> > Lo_assign_cast_fu_275_p1;
    sc_signal< sc_lv<32> > Hi_assign_cast_fu_265_p1;
    sc_signal< sc_lv<6> > tmp_14_fu_285_p1;
    sc_signal< sc_lv<1> > tmp_13_fu_279_p2;
    sc_signal< sc_lv<6> > tmp_16_fu_298_p2;
    sc_signal< sc_lv<6> > tmp_18_fu_310_p2;
    sc_signal< sc_lv<43> > tmp_15_fu_289_p4;
    sc_signal< sc_lv<6> > tmp_17_fu_304_p2;
    sc_signal< sc_lv<6> > tmp_19_fu_316_p3;
    sc_signal< sc_lv<6> > tmp_21_fu_331_p3;
    sc_signal< sc_lv<6> > tmp_22_fu_339_p2;
    sc_signal< sc_lv<43> > tmp_20_fu_324_p3;
    sc_signal< sc_lv<43> > tmp_23_fu_345_p1;
    sc_signal< sc_lv<43> > tmp_24_fu_349_p1;
    sc_signal< sc_lv<43> > tmp_25_fu_353_p2;
    sc_signal< sc_lv<43> > tmp_26_fu_359_p2;
    sc_signal< sc_lv<1> > cond_fu_371_p2;
    sc_signal< sc_lv<43> > p_Result_4_fu_365_p2;
    sc_signal< sc_lv<16> > tmp_28_fu_385_p1;
    sc_signal< sc_lv<32> > p_Val2_3_fu_377_p3;
    sc_signal< sc_lv<17> > tmp_3_fu_389_p3;
    sc_signal< sc_lv<32> > p_Result_5_fu_397_p5;
    sc_signal< sc_lv<11> > tmp_11_fu_425_p1;
    sc_signal< sc_lv<12> > tmp_fu_428_p3;
    sc_signal< sc_lv<32> > p_Val2_4_fu_460_p5;
    sc_signal< sc_lv<32> > p_Result_7_fu_471_p4;
    sc_signal< sc_lv<32> > sh_assign_fu_525_p5;
    sc_signal< sc_lv<1> > isNeg_fu_544_p3;
    sc_signal< sc_lv<32> > tmp_2_fu_552_p2;
    sc_signal< sc_lv<32> > sh_assign_1_fu_558_p3;
    sc_signal< sc_lv<43> > tmp_6_fu_566_p1;
    sc_signal< sc_lv<43> > tmp_s_fu_576_p2;
    sc_signal< sc_lv<43> > tmp_9_fu_570_p2;
    sc_signal< sc_lv<8> > prescale_cast_fu_597_p1;
    sc_signal< sc_lv<8> > tmp_4_fu_600_p2;
    sc_signal< sc_lv<32> > tmp_4_cast_fu_606_p1;
    sc_signal< sc_lv<32> > newexp_fu_610_p2;
    sc_signal< sc_lv<1> > tmp_30_fu_616_p3;
    sc_signal< sc_lv<1> > tmp_7_fu_624_p2;
    sc_signal< sc_lv<1> > or_cond_fu_629_p2;
    sc_signal< sc_lv<23> > phitmp1_fu_639_p4;
    sc_signal< sc_lv<8> > tmp_31_fu_635_p1;
    sc_signal< sc_lv<8> > out_exp_V_fu_657_p3;
    sc_signal< sc_lv<23> > p_Val2_5_fu_649_p3;
    sc_signal< sc_lv<32> > p_Result_8_fu_665_p4;
    sc_signal< sc_lv<32> > result_write_assign_fu_674_p1;
    sc_signal< sc_lv<32> > ap_return_preg;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<43> ap_const_lv43_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<6> ap_const_lv6_2A;
    static const sc_lv<5> ap_const_lv5_1B;
    static const sc_lv<43> ap_const_lv43_7FFFFFFFFFF;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<8> ap_const_lv8_81;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Hi_assign_cast_fu_265_p1();
    void thread_Hi_assign_fu_259_p2();
    void thread_Lo_assign_cast_fu_275_p1();
    void thread_Lo_assign_fu_269_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_i1_phi_fu_151_p4();
    void thread_ap_phi_mux_p_Val2_s_phi_fu_192_p4();
    void thread_ap_phi_mux_shift_1_phi_fu_202_p4();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_c_0_fu_481_p3();
    void thread_cond_fu_371_p2();
    void thread_exitcond1_fu_231_p2();
    void thread_exitcond_fu_448_p2();
    void thread_i_1_fu_237_p2();
    void thread_i_2_fu_454_p2();
    void thread_i_3_fu_510_p2();
    void thread_in_shift_V_2_fu_223_p3();
    void thread_in_shift_V_fu_582_p3();
    void thread_isNeg_fu_544_p3();
    void thread_newexp_fu_610_p2();
    void thread_or_cond_fu_629_p2();
    void thread_out_bits_1_V_1_fu_409_p3();
    void thread_out_bits_1_V_2_fu_417_p3();
    void thread_out_exp_V_fu_657_p3();
    void thread_p_Result_4_fu_365_p2();
    void thread_p_Result_5_fu_397_p5();
    void thread_p_Result_6_fu_436_p5();
    void thread_p_Result_7_fu_471_p4();
    void thread_p_Result_8_fu_665_p4();
    void thread_p_Result_s_fu_209_p3();
    void thread_p_Val2_2_fu_217_p2();
    void thread_p_Val2_3_fu_377_p3();
    void thread_p_Val2_5_fu_649_p3();
    void thread_phitmp1_fu_639_p4();
    void thread_prescale_cast_fu_597_p1();
    void thread_result_write_assign_fu_674_p1();
    void thread_sh_assign_1_fu_558_p3();
    void thread_shift_2_fu_537_p2();
    void thread_tmp_11_fu_425_p1();
    void thread_tmp_12_fu_243_p1();
    void thread_tmp_13_fu_279_p2();
    void thread_tmp_14_fu_285_p1();
    void thread_tmp_15_fu_289_p4();
    void thread_tmp_16_fu_298_p2();
    void thread_tmp_17_fu_304_p2();
    void thread_tmp_18_fu_310_p2();
    void thread_tmp_19_fu_316_p3();
    void thread_tmp_1_fu_591_p2();
    void thread_tmp_20_fu_324_p3();
    void thread_tmp_21_fu_331_p3();
    void thread_tmp_22_fu_339_p2();
    void thread_tmp_23_fu_345_p1();
    void thread_tmp_24_fu_349_p1();
    void thread_tmp_25_fu_353_p2();
    void thread_tmp_26_fu_359_p2();
    void thread_tmp_28_fu_385_p1();
    void thread_tmp_2_fu_552_p2();
    void thread_tmp_30_fu_616_p3();
    void thread_tmp_31_fu_635_p1();
    void thread_tmp_3_fu_389_p3();
    void thread_tmp_4_cast_fu_606_p1();
    void thread_tmp_4_fu_600_p2();
    void thread_tmp_5_cast_fu_255_p1();
    void thread_tmp_5_fu_247_p3();
    void thread_tmp_6_fu_566_p1();
    void thread_tmp_7_fu_624_p2();
    void thread_tmp_8_fu_504_p2();
    void thread_tmp_9_fu_570_p2();
    void thread_tmp_fu_428_p3();
    void thread_tmp_s_fu_576_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
