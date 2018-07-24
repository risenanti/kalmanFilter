// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module operator_mul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        mat3_a1_read,
        mat3_a2_read,
        mat3_a3_read,
        mat3_b1_read,
        mat3_b2_read,
        mat3_b3_read,
        mat3_c1_read,
        mat3_c2_read,
        mat3_c3_read,
        other_a1_read,
        other_a2_read,
        other_a3_read,
        other_b1_read,
        other_b2_read,
        other_b3_read,
        other_c1_read,
        other_c2_read,
        other_c3_read,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] mat3_a1_read;
input  [31:0] mat3_a2_read;
input  [31:0] mat3_a3_read;
input  [31:0] mat3_b1_read;
input  [31:0] mat3_b2_read;
input  [31:0] mat3_b3_read;
input  [31:0] mat3_c1_read;
input  [31:0] mat3_c2_read;
input  [31:0] mat3_c3_read;
input  [31:0] other_a1_read;
input  [31:0] other_a2_read;
input  [31:0] other_a3_read;
input  [31:0] other_b1_read;
input  [31:0] other_b2_read;
input  [31:0] other_b3_read;
input  [31:0] other_c1_read;
input  [31:0] other_c2_read;
input  [31:0] other_c3_read;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;
output  [31:0] ap_return_4;
output  [31:0] ap_return_5;
output  [31:0] ap_return_6;
output  [31:0] ap_return_7;
output  [31:0] ap_return_8;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] ap_return_0;
reg[31:0] ap_return_1;
reg[31:0] ap_return_2;
reg[31:0] ap_return_3;
reg[31:0] ap_return_4;
reg[31:0] ap_return_5;
reg[31:0] ap_return_6;
reg[31:0] ap_return_7;
reg[31:0] ap_return_8;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] grp_fu_184_p2;
reg   [31:0] reg_310;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state6;
wire   [31:0] grp_fu_190_p2;
reg   [31:0] reg_316;
wire   [31:0] grp_fu_196_p2;
reg   [31:0] reg_322;
wire   [31:0] grp_fu_202_p2;
reg   [31:0] reg_328;
wire   [31:0] grp_fu_208_p2;
reg   [31:0] reg_334;
wire   [31:0] grp_fu_214_p2;
reg   [31:0] reg_340;
wire   [31:0] grp_fu_220_p2;
reg   [31:0] reg_346;
wire   [31:0] grp_fu_226_p2;
reg   [31:0] reg_352;
wire   [31:0] grp_fu_232_p2;
reg   [31:0] reg_358;
wire   [31:0] grp_fu_238_p2;
reg   [31:0] tmp_41_i_reg_502;
wire   [31:0] grp_fu_244_p2;
reg   [31:0] tmp_44_i_reg_507;
wire   [31:0] grp_fu_250_p2;
reg   [31:0] tmp_45_i_reg_512;
wire   [31:0] grp_fu_256_p2;
reg   [31:0] tmp_48_i_reg_517;
wire   [31:0] grp_fu_262_p2;
reg   [31:0] tmp_49_i_reg_522;
wire   [31:0] grp_fu_268_p2;
reg   [31:0] tmp_52_i_reg_527;
wire   [31:0] grp_fu_274_p2;
reg   [31:0] tmp_53_i_reg_532;
wire   [31:0] grp_fu_280_p2;
reg   [31:0] tmp_56_i_reg_537;
wire   [31:0] grp_fu_286_p2;
reg   [31:0] tmp_57_i_reg_542;
wire    ap_CS_fsm_state5;
wire   [31:0] grp_fu_148_p2;
reg   [31:0] tmp_26_i_reg_589;
wire   [31:0] grp_fu_152_p2;
reg   [31:0] tmp_30_i_reg_594;
wire   [31:0] grp_fu_156_p2;
reg   [31:0] tmp_34_i_reg_599;
wire   [31:0] grp_fu_160_p2;
reg   [31:0] tmp_38_i_reg_604;
wire   [31:0] grp_fu_164_p2;
reg   [31:0] tmp_42_i_reg_609;
wire   [31:0] grp_fu_168_p2;
reg   [31:0] tmp_46_i_reg_614;
wire   [31:0] grp_fu_172_p2;
reg   [31:0] tmp_50_i_reg_619;
wire   [31:0] grp_fu_176_p2;
reg   [31:0] tmp_54_i_reg_624;
wire   [31:0] grp_fu_180_p2;
reg   [31:0] tmp_58_i_reg_629;
reg   [31:0] grp_fu_148_p0;
reg   [31:0] grp_fu_148_p1;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state7;
reg   [31:0] grp_fu_152_p0;
reg   [31:0] grp_fu_152_p1;
reg   [31:0] grp_fu_156_p0;
reg   [31:0] grp_fu_156_p1;
reg   [31:0] grp_fu_160_p0;
reg   [31:0] grp_fu_160_p1;
reg   [31:0] grp_fu_164_p0;
reg   [31:0] grp_fu_164_p1;
reg   [31:0] grp_fu_168_p0;
reg   [31:0] grp_fu_168_p1;
reg   [31:0] grp_fu_172_p0;
reg   [31:0] grp_fu_172_p1;
reg   [31:0] grp_fu_176_p0;
reg   [31:0] grp_fu_176_p1;
reg   [31:0] grp_fu_180_p0;
reg   [31:0] grp_fu_180_p1;
reg   [31:0] grp_fu_184_p0;
reg   [31:0] grp_fu_184_p1;
reg   [31:0] grp_fu_190_p0;
reg   [31:0] grp_fu_190_p1;
reg   [31:0] grp_fu_196_p0;
reg   [31:0] grp_fu_196_p1;
reg   [31:0] grp_fu_202_p0;
reg   [31:0] grp_fu_202_p1;
reg   [31:0] grp_fu_208_p0;
reg   [31:0] grp_fu_208_p1;
reg   [31:0] grp_fu_214_p0;
reg   [31:0] grp_fu_214_p1;
reg   [31:0] grp_fu_220_p0;
reg   [31:0] grp_fu_220_p1;
reg   [31:0] grp_fu_226_p0;
reg   [31:0] grp_fu_226_p1;
reg   [31:0] grp_fu_232_p0;
reg   [31:0] grp_fu_232_p1;
wire    ap_CS_fsm_state10;
reg   [31:0] ap_return_0_preg;
reg   [31:0] ap_return_1_preg;
reg   [31:0] ap_return_2_preg;
reg   [31:0] ap_return_3_preg;
reg   [31:0] ap_return_4_preg;
reg   [31:0] ap_return_5_preg;
reg   [31:0] ap_return_6_preg;
reg   [31:0] ap_return_7_preg;
reg   [31:0] ap_return_8_preg;
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_return_0_preg = 32'd0;
#0 ap_return_1_preg = 32'd0;
#0 ap_return_2_preg = 32'd0;
#0 ap_return_3_preg = 32'd0;
#0 ap_return_4_preg = 32'd0;
#0 ap_return_5_preg = 32'd0;
#0 ap_return_6_preg = 32'd0;
#0 ap_return_7_preg = 32'd0;
#0 ap_return_8_preg = 32'd0;
end

filter_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fadd_32ns_bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_148_p0),
    .din1(grp_fu_148_p1),
    .ce(1'b1),
    .dout(grp_fu_148_p2)
);

filter_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fadd_32ns_bkb_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_152_p0),
    .din1(grp_fu_152_p1),
    .ce(1'b1),
    .dout(grp_fu_152_p2)
);

filter_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fadd_32ns_bkb_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_156_p0),
    .din1(grp_fu_156_p1),
    .ce(1'b1),
    .dout(grp_fu_156_p2)
);

filter_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fadd_32ns_bkb_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_160_p0),
    .din1(grp_fu_160_p1),
    .ce(1'b1),
    .dout(grp_fu_160_p2)
);

filter_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fadd_32ns_bkb_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_164_p0),
    .din1(grp_fu_164_p1),
    .ce(1'b1),
    .dout(grp_fu_164_p2)
);

filter_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fadd_32ns_bkb_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_168_p0),
    .din1(grp_fu_168_p1),
    .ce(1'b1),
    .dout(grp_fu_168_p2)
);

filter_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fadd_32ns_bkb_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_172_p0),
    .din1(grp_fu_172_p1),
    .ce(1'b1),
    .dout(grp_fu_172_p2)
);

filter_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fadd_32ns_bkb_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_176_p0),
    .din1(grp_fu_176_p1),
    .ce(1'b1),
    .dout(grp_fu_176_p2)
);

filter_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fadd_32ns_bkb_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_180_p0),
    .din1(grp_fu_180_p1),
    .ce(1'b1),
    .dout(grp_fu_180_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U10(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_184_p0),
    .din1(grp_fu_184_p1),
    .ce(1'b1),
    .dout(grp_fu_184_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U11(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_190_p0),
    .din1(grp_fu_190_p1),
    .ce(1'b1),
    .dout(grp_fu_190_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_196_p0),
    .din1(grp_fu_196_p1),
    .ce(1'b1),
    .dout(grp_fu_196_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U13(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_202_p0),
    .din1(grp_fu_202_p1),
    .ce(1'b1),
    .dout(grp_fu_202_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U14(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_208_p0),
    .din1(grp_fu_208_p1),
    .ce(1'b1),
    .dout(grp_fu_208_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U15(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_214_p0),
    .din1(grp_fu_214_p1),
    .ce(1'b1),
    .dout(grp_fu_214_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U16(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_220_p0),
    .din1(grp_fu_220_p1),
    .ce(1'b1),
    .dout(grp_fu_220_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U17(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_226_p0),
    .din1(grp_fu_226_p1),
    .ce(1'b1),
    .dout(grp_fu_226_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U18(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_232_p0),
    .din1(grp_fu_232_p1),
    .ce(1'b1),
    .dout(grp_fu_232_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U19(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mat3_b2_read),
    .din1(other_b2_read),
    .ce(1'b1),
    .dout(grp_fu_238_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U20(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mat3_b1_read),
    .din1(other_a3_read),
    .ce(1'b1),
    .dout(grp_fu_244_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U21(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mat3_b2_read),
    .din1(other_b3_read),
    .ce(1'b1),
    .dout(grp_fu_250_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U22(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mat3_c1_read),
    .din1(other_a1_read),
    .ce(1'b1),
    .dout(grp_fu_256_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U23(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mat3_c2_read),
    .din1(other_b1_read),
    .ce(1'b1),
    .dout(grp_fu_262_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U24(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mat3_c1_read),
    .din1(other_a2_read),
    .ce(1'b1),
    .dout(grp_fu_268_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U25(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mat3_c2_read),
    .din1(other_b2_read),
    .ce(1'b1),
    .dout(grp_fu_274_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U26(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mat3_c1_read),
    .din1(other_a3_read),
    .ce(1'b1),
    .dout(grp_fu_280_p2)
);

filter_fmul_32ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter_fmul_32ns_cud_U27(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mat3_c2_read),
    .din1(other_b3_read),
    .ce(1'b1),
    .dout(grp_fu_286_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_0_preg <= grp_fu_148_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_1_preg <= grp_fu_152_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_2_preg <= grp_fu_156_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_3_preg <= grp_fu_160_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_4_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_4_preg <= grp_fu_164_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_5_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_5_preg <= grp_fu_168_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_6_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_6_preg <= grp_fu_172_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_7_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_7_preg <= grp_fu_176_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_8_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_8_preg <= grp_fu_180_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return_0 <= grp_fu_148_p2;
        ap_return_1 <= grp_fu_152_p2;
        ap_return_2 <= grp_fu_156_p2;
        ap_return_3 <= grp_fu_160_p2;
        ap_return_4 <= grp_fu_164_p2;
        ap_return_5 <= grp_fu_168_p2;
        ap_return_6 <= grp_fu_172_p2;
        ap_return_7 <= grp_fu_176_p2;
        ap_return_8 <= grp_fu_180_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_310 <= grp_fu_184_p2;
        reg_316 <= grp_fu_190_p2;
        reg_322 <= grp_fu_196_p2;
        reg_328 <= grp_fu_202_p2;
        reg_334 <= grp_fu_208_p2;
        reg_340 <= grp_fu_214_p2;
        reg_346 <= grp_fu_220_p2;
        reg_352 <= grp_fu_226_p2;
        reg_358 <= grp_fu_232_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_26_i_reg_589 <= grp_fu_148_p2;
        tmp_30_i_reg_594 <= grp_fu_152_p2;
        tmp_34_i_reg_599 <= grp_fu_156_p2;
        tmp_38_i_reg_604 <= grp_fu_160_p2;
        tmp_42_i_reg_609 <= grp_fu_164_p2;
        tmp_46_i_reg_614 <= grp_fu_168_p2;
        tmp_50_i_reg_619 <= grp_fu_172_p2;
        tmp_54_i_reg_624 <= grp_fu_176_p2;
        tmp_58_i_reg_629 <= grp_fu_180_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_41_i_reg_502 <= grp_fu_238_p2;
        tmp_44_i_reg_507 <= grp_fu_244_p2;
        tmp_45_i_reg_512 <= grp_fu_250_p2;
        tmp_48_i_reg_517 <= grp_fu_256_p2;
        tmp_49_i_reg_522 <= grp_fu_262_p2;
        tmp_52_i_reg_527 <= grp_fu_268_p2;
        tmp_53_i_reg_532 <= grp_fu_274_p2;
        tmp_56_i_reg_537 <= grp_fu_280_p2;
        tmp_57_i_reg_542 <= grp_fu_286_p2;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_148_p0 = tmp_26_i_reg_589;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_148_p0 = reg_310;
    end else begin
        grp_fu_148_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_148_p1 = reg_310;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_148_p1 = reg_316;
    end else begin
        grp_fu_148_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_152_p0 = tmp_30_i_reg_594;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_152_p0 = reg_322;
    end else begin
        grp_fu_152_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_152_p1 = reg_316;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_152_p1 = reg_328;
    end else begin
        grp_fu_152_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_156_p0 = tmp_34_i_reg_599;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_156_p0 = reg_334;
    end else begin
        grp_fu_156_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_156_p1 = reg_322;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_156_p1 = reg_340;
    end else begin
        grp_fu_156_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_160_p0 = tmp_38_i_reg_604;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_160_p0 = reg_346;
    end else begin
        grp_fu_160_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_160_p1 = reg_328;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_160_p1 = reg_352;
    end else begin
        grp_fu_160_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_164_p0 = tmp_42_i_reg_609;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_164_p0 = reg_358;
    end else begin
        grp_fu_164_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_164_p1 = reg_334;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_164_p1 = tmp_41_i_reg_502;
    end else begin
        grp_fu_164_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_168_p0 = tmp_46_i_reg_614;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_168_p0 = tmp_44_i_reg_507;
    end else begin
        grp_fu_168_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_168_p1 = reg_340;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_168_p1 = tmp_45_i_reg_512;
    end else begin
        grp_fu_168_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_172_p0 = tmp_50_i_reg_619;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_172_p0 = tmp_48_i_reg_517;
    end else begin
        grp_fu_172_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_172_p1 = reg_346;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_172_p1 = tmp_49_i_reg_522;
    end else begin
        grp_fu_172_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_176_p0 = tmp_54_i_reg_624;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_176_p0 = tmp_52_i_reg_527;
    end else begin
        grp_fu_176_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_176_p1 = reg_352;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_176_p1 = tmp_53_i_reg_532;
    end else begin
        grp_fu_176_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_180_p0 = tmp_58_i_reg_629;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_180_p0 = tmp_56_i_reg_537;
    end else begin
        grp_fu_180_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_180_p1 = reg_358;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_180_p1 = tmp_57_i_reg_542;
    end else begin
        grp_fu_180_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_184_p0 = mat3_a3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_184_p0 = mat3_a1_read;
    end else begin
        grp_fu_184_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_184_p1 = other_c1_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_184_p1 = other_a1_read;
    end else begin
        grp_fu_184_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_190_p0 = mat3_a3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_190_p0 = mat3_a2_read;
    end else begin
        grp_fu_190_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_190_p1 = other_c2_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_190_p1 = other_b1_read;
    end else begin
        grp_fu_190_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_196_p0 = mat3_a3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_196_p0 = mat3_a1_read;
    end else begin
        grp_fu_196_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_196_p1 = other_c3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_196_p1 = other_a2_read;
    end else begin
        grp_fu_196_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_202_p0 = mat3_b3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_202_p0 = mat3_a2_read;
    end else begin
        grp_fu_202_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_202_p1 = other_c1_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_202_p1 = other_b2_read;
    end else begin
        grp_fu_202_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_208_p0 = mat3_b3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_208_p0 = mat3_a1_read;
    end else begin
        grp_fu_208_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_208_p1 = other_c2_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_208_p1 = other_a3_read;
    end else begin
        grp_fu_208_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_214_p0 = mat3_b3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_214_p0 = mat3_a2_read;
    end else begin
        grp_fu_214_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_214_p1 = other_c3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_214_p1 = other_b3_read;
    end else begin
        grp_fu_214_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_220_p0 = mat3_c3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_220_p0 = mat3_b1_read;
    end else begin
        grp_fu_220_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_220_p1 = other_c1_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_220_p1 = other_a1_read;
    end else begin
        grp_fu_220_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_226_p0 = mat3_c3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_226_p0 = mat3_b2_read;
    end else begin
        grp_fu_226_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_226_p1 = other_c2_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_226_p1 = other_b1_read;
    end else begin
        grp_fu_226_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_232_p0 = mat3_c3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_232_p0 = mat3_b1_read;
    end else begin
        grp_fu_232_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_232_p1 = other_c3_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_232_p1 = other_a2_read;
    end else begin
        grp_fu_232_p1 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

endmodule //operator_mul