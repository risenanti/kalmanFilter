; ModuleID = '/home/keith/Documents/github/kalmanFilter/kalman_class/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ref_4oPi_table_100_V = internal constant [13 x i100] [i100 651, i100 42722829, i100 2799883368761, i100 183493156455125076, i100 12025407501443077023728, i100 788097106014573495827078495, i100 -324942669586316838841415153708, i100 -180360774834634567866366241929, i100 -549543034600100134917344132243, i100 368887532063083979769717295702, i100 48704333708782244565861426417, i100 -56997435928453100404229468607, i100 382357865489658119201891647380]
@q_c3 = constant float 7.000000e+00
@q_c2 = constant float 6.000000e+00
@q_c1 = constant float 2.000000e+00
@q_b3 = constant float 3.000000e+00
@q_b2 = constant float 5.000000e+00
@q_b1 = constant float 1.500000e+01
@q_a3 = constant float 1.000000e+01
@q_a2 = constant float 1.100000e+01
@q_a1 = constant float 2.200000e+01
@p_c3 = constant float 1.000000e+00
@p_c2 = constant float 1.000000e+00
@p_c1 = constant float 0.000000e+00
@p_b3 = constant float -2.000000e+00
@p_b2 = constant float 0.000000e+00
@p_b1 = constant float 2.000000e+00
@p_a3 = constant float 2.000000e+00
@p_a2 = constant float 0.000000e+00
@p_a1 = constant float 3.000000e+00
@myFilter2_Y = constant float 0.000000e+00
@myFilter2_S = constant float 0.000000e+00
@myFilter2_Q_c3 = constant float 0.000000e+00
@myFilter2_Q_c2 = constant float 0.000000e+00
@myFilter2_Q_c1 = constant float 0.000000e+00
@myFilter2_Q_b3 = constant float 0.000000e+00
@myFilter2_Q_b2 = constant float 0.000000e+00
@myFilter2_Q_b1 = constant float 0.000000e+00
@myFilter2_Q_a3 = constant float 0.000000e+00
@myFilter2_Q_a2 = constant float 0.000000e+00
@myFilter2_Q_a1 = constant float 0.000000e+00
@myFilter2_P_c3 = constant float 0.000000e+00
@myFilter2_P_c2 = constant float 0.000000e+00
@myFilter2_P_c1 = constant float 0.000000e+00
@myFilter2_P_b3 = constant float 0.000000e+00
@myFilter2_P_b2 = constant float 0.000000e+00
@myFilter2_P_b1 = constant float 0.000000e+00
@myFilter2_P_a3 = constant float 0.000000e+00
@myFilter2_P_a2 = constant float 0.000000e+00
@myFilter2_P_a1 = constant float 0.000000e+00
@myFilter2_MU = constant float 0.000000e+00
@myFilter2_M2 = constant float 3.000000e+00
@myFilter2_M1 = constant float 2.000000e+00
@myFilter2_M0 = constant float 1.000000e+00
@myFilter2_K2 = constant float 0.000000e+00
@myFilter2_K1 = constant float 0.000000e+00
@myFilter2_K0 = constant float 0.000000e+00
@myFilter2_H2 = constant float 0.000000e+00
@myFilter2_H1 = constant float 0.000000e+00
@myFilter2_H0 = constant float 0.000000e+00
@myFilter2_A_c3 = constant float 0.000000e+00
@myFilter2_A_c2 = constant float 0.000000e+00
@myFilter2_A_c1 = constant float 0.000000e+00
@myFilter2_A_b3 = constant float 0.000000e+00
@myFilter2_A_b2 = constant float 0.000000e+00
@myFilter2_A_b1 = constant float 0.000000e+00
@myFilter2_A_a3 = constant float 0.000000e+00
@myFilter2_A_a2 = constant float 0.000000e+00
@myFilter2_A_a1 = constant float 0.000000e+00
@m2 = global float 3.000000e+00, align 4
@m1 = global float 2.000000e+00, align 4
@m0 = global float 1.000000e+00, align 4
@llvm_global_ctors_1 = appending global [5 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a14, void ()* @_GLOBAL__I_a120, void ()* @_GLOBAL__I_a204, void ()* @_GLOBAL__I_a517]
@llvm_global_ctors_0 = appending global [5 x i32] [i32 65535, i32 65535, i32 65535, i32 65535, i32 65535]
@filter_str = internal unnamed_addr constant [7 x i8] c"filter\00"
@cordic_ctab_table_in = constant [128 x i128] [i128 66814286504060421741230023322616923956, i128 39442776452007029438581988151662170528, i128 20840479833484141535907734465581556094, i128 10578952970703094087978879161197675639, i128 5310005101453174985675347574176397365, i128 2657591115466887314119419599185582276, i128 1329119838776566165767415771090515808, i128 664600476781209930782809735563259991, i128 332305308760902745757206114308150239, i128 166153288198498015084967484089993543, i128 83076723327184848864159991914295098, i128 41538371567105655170464436460279954, i128 20769187021492645509723191025817333, i128 10384593665488820748005411471848144, i128 5192296852087223271663992833358155, i128 2596148428461463268305855343910053, i128 1298074214532963088845478733246034, i128 649037107304260476279099458567081, i128 324518553656852604622213216067037, i128 162259276829016598121458871234286, i128 81129638414582086037024072497015, i128 40564819207300266390548884732859, i128 20282409603651286116779049016797, i128 10141204801825787173577600358126, i128 5070602400912911601187309660855, i128 2535301200456458052393468515669, i128 1267650600228229307671710968490, i128 633825300114114689020227573077, i128 316912650057057348908160297642, i128 158456325028528675003835962709, i128 79228162514264337570637458090, i128 39614081257132168793908663637, i128 19807040628566084398028073642, i128 9903520314283042199148254549, i128 4951760157141521099590904490, i128 2475880078570760549797549397, i128 1237940039285380274899036842, i128 618970019642690137449551189, i128 309485009821345068724779690, i128 154742504910672534362390357, i128 77371252455336267181195242, i128 38685626227668133590597629, i128 19342813113834066795298815, i128 9671406556917033397649407, i128 4835703278458516698824703, i128 2417851639229258349412351, i128 1208925819614629174706175, i128 604462909807314587353087, i128 302231454903657293676543, i128 151115727451828646838271, i128 75557863725914323419135, i128 37778931862957161709567, i128 18889465931478580854783, i128 9444732965739290427391, i128 4722366482869645213695, i128 2361183241434822606847, i128 1180591620717411303423, i128 590295810358705651711, i128 295147905179352825855, i128 147573952589676412927, i128 73786976294838206463, i128 36893488147419103231, i128 18446744073709551615, i128 9223372036854775807, i128 4611686018427387903, i128 2305843009213693951, i128 1152921504606846975, i128 576460752303423487, i128 288230376151711743, i128 144115188075855871, i128 72057594037927935, i128 36028797018963967, i128 18014398509481983, i128 9007199254740991, i128 4503599627370495, i128 2251799813685247, i128 1125899906842623, i128 562949953421311, i128 281474976710655, i128 140737488355327, i128 70368744177663, i128 35184372088831, i128 17592186044415, i128 8796093022207, i128 4398046511103, i128 2199023255551, i128 1099511627775, i128 549755813887, i128 274877906943, i128 137438953471, i128 68719476735, i128 34359738367, i128 17179869183, i128 8589934591, i128 4294967295, i128 2147483647, i128 1073741823, i128 536870911, i128 268435455, i128 134217727, i128 67108863, i128 33554431, i128 16777215, i128 8388607, i128 4194303, i128 2097151, i128 1048575, i128 524287, i128 262143, i128 131071, i128 65535, i128 32767, i128 16383, i128 8191, i128 4095, i128 2047, i128 1023, i128 511, i128 255, i128 127, i128 63, i128 31, i128 15, i128 7, i128 3, i128 1, i128 0, i128 0]
@cordic_ctab_table_fl = constant [128 x float] [float 0x3FE921FB60000000, float 0x3FDDAC6700000000, float 0x3FCF5B7640000000, float 0x3FBFD5BAC0000000, float 0x3FAFF55BC0000000, float 0x3F9FFD5580000000, float 0x3F8FFF5580000000, float 0x3F7FFFD560000000, float 0x3F6FFFF540000000, float 0x3F5FFFFDE0000000, float 0x3F4FFFFF60000000, float 0x3F3FFFFFC0000000, float 0x3F2FFFFFC0000000, float 0x3F1FFFFFC0000000, float 0x3F10000020000000, float 0x3F00000020000000, float 0x3EF0000020000000, float 0x3EE0000020000000, float 0x3ECFFFFFE0000000, float 0x3EC0000040000000, float 0x3EB0000000000000, float 0x3EA0000020000000, float 0x3E90000020000000, float 0x3E80000020000000, float 0x3E6FFFFFE0000000, float 0x3E5FFFFFE0000000, float 0x3E4FFFFFE0000000, float 0x3E40000000000000, float 0x3E2FFFFFE0000000, float 0x3E1FFFFFE0000000, float 0x3E10000000000000, float 0x3E00000000000000, float 0x3DEFFFFFA0000000, float 0x3DDFFFFFA0000000, float 0x3DD0000000000000, float 0x3DC0000000000000, float 0x3DB0000060000000, float 0x3DA0000000000000, float 0x3D90000000000000, float 0x3D7FFFFF80000000, float 0x3D70000000000000, float 0x3D60000020000000, float 0x3D50000020000000, float 0x3D3FFFFF40000000, float 0x3D30000000000000, float 0x3D20000000000000, float 0x3D0FFFFF40000000, float 0x3CFFFFFFE0000000, float 0x3CF0000020000000, float 0x3CE0000020000000, float 0x3CD0000000000000, float 0x3CC0000000000000, float 0x3CB0000000000000, float 0x3CA0000000000000, float 0x3C90000000000000, float 0x3C80000020000000, float 0x3C70000020000000, float 0x3C60000000000000, float 0x3C50000000000000, float 0x3C3FFFFF60000000, float 0x3C2FFFFFE0000000, float 0x3C20000020000000, float 0x3C0FFFFFA0000000, float 0x3BFFFFFFA0000000, float 0x3BF0000000000000, float 0x3BDFFFFFA0000000, float 0x3BD0000040000000, float 0x3BC0000020000000, float 0x3BB0000020000000, float 0x3BA0000020000000, float 0x3B8FFFFFE0000000, float 0x3B80000020000000, float 0x3B6FFFFFA0000000, float 0x3B5FFFFFA0000000, float 0x3B50000000000000, float 0x3B40000000000000, float 0x3B30000000000000, float 0x3B20000000000000, float 0x3B0FFFFFC0000000, float 0x3AFFFFFFC0000000, float 0x3AF0000000000000, float 0x3AE0000000000000, float 0x3AD0000040000000, float 0x3AC0000040000000, float 0x3AB0000000000000, float 0x3A9FFFFFA0000000, float 0x3A90000040000000, float 0x3A80000020000000, float 0x3A6FFFFFE0000000, float 0x3A5FFFFFE0000000, float 0x3A50000000000000, float 0x3A40000000000000, float 0x3A30000000000000, float 0x3A20000000000000, float 0x3A10000000000000, float 0x3A00000000000000, float 0x39EFFFFF40000000, float 0x39DFFFFFE0000000, float 0x39D0000020000000, float 0x39C0000020000000, float 0x39B0000000000000, float 0x39A0000020000000, float 0x398FFFFFC0000000, float 0x397FFFFFE0000000, float 0x3970000020000000, float 0x395FFFFFC0000000, float 0x394FFFFFC0000000, float 0x3940000000000000, float 0x3930000000000000, float 0x3920000000000000, float 0x3910000000000000, float 0x3900000000000000, float 0x38F0000000000000, float 0x38E0000000000000, float 0x38D0000000000000, float 0x38BFFFFFA0000000, float 0x38AFFFFFA0000000, float 0x38A0000000000000, float 0x3890000020000000, float 0x3880000020000000, float 0x3870000000000000, float 0x3860000000000000, float 0x3850000000000000, float 0x3840000000000000, float 0x382FFFFFE0000000, float 0x3820000020000000, float 0x380FFFFF40000000, float 0x3800000000000000], align 16
@cordic_ctab_table_12_1 = constant [128 x i126] [i126 -18256305226174194124613628535325128908, i126 39442776452007029438581988151662170528, i126 20840479833484141535907734465581556094, i126 10578952970703094087978879161197675639, i126 5310005101453174985675347574176397365, i126 2657591115466887314119419599185582276, i126 1329119838776566165767415771090515808, i126 664600476781209930782809735563259991, i126 332305308760902745757206114308150239, i126 166153288198498015084967484089993543, i126 83076723327184848864159991914295098, i126 41538371567105655170464436460279954, i126 20769187021492645509723191025817333, i126 10384593665488820748005411471848144, i126 5192296852087223271663992833358155, i126 2596148428461463268305855343910053, i126 1298074214532963088845478733246034, i126 649037107304260476279099458567081, i126 324518553656852604622213216067037, i126 162259276829016598121458871234286, i126 81129638414582086037024072497015, i126 40564819207300266390548884732859, i126 20282409603651286116779049016797, i126 10141204801825787173577600358126, i126 5070602400912911601187309660855, i126 2535301200456458052393468515669, i126 1267650600228229307671710968490, i126 633825300114114689020227573077, i126 316912650057057348908160297642, i126 158456325028528675003835962709, i126 79228162514264337570637458090, i126 39614081257132168793908663637, i126 19807040628566084398028073642, i126 9903520314283042199148254549, i126 4951760157141521099590904490, i126 2475880078570760549797549397, i126 1237940039285380274899036842, i126 618970019642690137449551189, i126 309485009821345068724779690, i126 154742504910672534362390357, i126 77371252455336267181195242, i126 38685626227668133590597629, i126 19342813113834066795298815, i126 9671406556917033397649407, i126 4835703278458516698824703, i126 2417851639229258349412351, i126 1208925819614629174706175, i126 604462909807314587353087, i126 302231454903657293676543, i126 151115727451828646838271, i126 75557863725914323419135, i126 37778931862957161709567, i126 18889465931478580854783, i126 9444732965739290427391, i126 4722366482869645213695, i126 2361183241434822606847, i126 1180591620717411303423, i126 590295810358705651711, i126 295147905179352825855, i126 147573952589676412927, i126 73786976294838206463, i126 36893488147419103231, i126 18446744073709551615, i126 9223372036854775807, i126 4611686018427387903, i126 2305843009213693951, i126 1152921504606846975, i126 576460752303423487, i126 288230376151711743, i126 144115188075855871, i126 72057594037927935, i126 36028797018963967, i126 18014398509481983, i126 9007199254740991, i126 4503599627370495, i126 2251799813685247, i126 1125899906842623, i126 562949953421311, i126 281474976710655, i126 140737488355327, i126 70368744177663, i126 35184372088831, i126 17592186044415, i126 8796093022207, i126 4398046511103, i126 2199023255551, i126 1099511627775, i126 549755813887, i126 274877906943, i126 137438953471, i126 68719476735, i126 34359738367, i126 17179869183, i126 8589934591, i126 4294967295, i126 2147483647, i126 1073741823, i126 536870911, i126 268435455, i126 134217727, i126 67108863, i126 33554431, i126 16777215, i126 8388607, i126 4194303, i126 2097151, i126 1048575, i126 524287, i126 262143, i126 131071, i126 65535, i126 32767, i126 16383, i126 8191, i126 4095, i126 2047, i126 1023, i126 511, i126 255, i126 127, i126 63, i126 31, i126 15, i126 7, i126 3, i126 1, i126 0, i126 0]
@cordic_ctab_table_12 = constant [128 x i128] [i128 66814286504060421741230023322616923956, i128 39442776452007029438581988151662170528, i128 20840479833484141535907734465581556094, i128 10578952970703094087978879161197675639, i128 5310005101453174985675347574176397365, i128 2657591115466887314119419599185582276, i128 1329119838776566165767415771090515808, i128 664600476781209930782809735563259991, i128 332305308760902745757206114308150239, i128 166153288198498015084967484089993543, i128 83076723327184848864159991914295098, i128 41538371567105655170464436460279954, i128 20769187021492645509723191025817333, i128 10384593665488820748005411471848144, i128 5192296852087223271663992833358155, i128 2596148428461463268305855343910053, i128 1298074214532963088845478733246034, i128 649037107304260476279099458567081, i128 324518553656852604622213216067037, i128 162259276829016598121458871234286, i128 81129638414582086037024072497015, i128 40564819207300266390548884732859, i128 20282409603651286116779049016797, i128 10141204801825787173577600358126, i128 5070602400912911601187309660855, i128 2535301200456458052393468515669, i128 1267650600228229307671710968490, i128 633825300114114689020227573077, i128 316912650057057348908160297642, i128 158456325028528675003835962709, i128 79228162514264337570637458090, i128 39614081257132168793908663637, i128 19807040628566084398028073642, i128 9903520314283042199148254549, i128 4951760157141521099590904490, i128 2475880078570760549797549397, i128 1237940039285380274899036842, i128 618970019642690137449551189, i128 309485009821345068724779690, i128 154742504910672534362390357, i128 77371252455336267181195242, i128 38685626227668133590597629, i128 19342813113834066795298815, i128 9671406556917033397649407, i128 4835703278458516698824703, i128 2417851639229258349412351, i128 1208925819614629174706175, i128 604462909807314587353087, i128 302231454903657293676543, i128 151115727451828646838271, i128 75557863725914323419135, i128 37778931862957161709567, i128 18889465931478580854783, i128 9444732965739290427391, i128 4722366482869645213695, i128 2361183241434822606847, i128 1180591620717411303423, i128 590295810358705651711, i128 295147905179352825855, i128 147573952589676412927, i128 73786976294838206463, i128 36893488147419103231, i128 18446744073709551615, i128 9223372036854775807, i128 4611686018427387903, i128 2305843009213693951, i128 1152921504606846975, i128 576460752303423487, i128 288230376151711743, i128 144115188075855871, i128 72057594037927935, i128 36028797018963967, i128 18014398509481983, i128 9007199254740991, i128 4503599627370495, i128 2251799813685247, i128 1125899906842623, i128 562949953421311, i128 281474976710655, i128 140737488355327, i128 70368744177663, i128 35184372088831, i128 17592186044415, i128 8796093022207, i128 4398046511103, i128 2199023255551, i128 1099511627775, i128 549755813887, i128 274877906943, i128 137438953471, i128 68719476735, i128 34359738367, i128 17179869183, i128 8589934591, i128 4294967295, i128 2147483647, i128 1073741823, i128 536870911, i128 268435455, i128 134217727, i128 67108863, i128 33554431, i128 16777215, i128 8388607, i128 4194303, i128 2097151, i128 1048575, i128 524287, i128 262143, i128 131071, i128 65535, i128 32767, i128 16383, i128 8191, i128 4095, i128 2047, i128 1023, i128 511, i128 255, i128 127, i128 63, i128 31, i128 15, i128 7, i128 3, i128 1, i128 0, i128 0]
@cordic_KD_KD_addsu_2 = internal unnamed_addr constant [138 x i8] c"cordic_::addsub<0, 0, ap_fixed<43, 3, (ap_q_mode)5, (ap_o_mode)3, 0>, ap_fixed<43, 3, (ap_q_mode)0, (ap_o_mode)3, 0>, ap_uint<1> >.region\00"
@cordic_KD_KD_addsu_1 = internal unnamed_addr constant [138 x i8] c"cordic_::addsub<0, 0, ap_fixed<43, 3, (ap_q_mode)5, (ap_o_mode)3, 0>, ap_fixed<43, 3, (ap_q_mode)5, (ap_o_mode)3, 0>, ap_uint<1> >.region\00"
@cordic_KD_KD_addsu = internal unnamed_addr constant [131 x i8] c"cordic_::addsub<0, 0, ap_fixed<43, 3, (ap_q_mode)5, (ap_o_mode)3, 0>, ap_fixed<43, 3, (ap_q_mode)5, (ap_o_mode)3, 0>, bool>.region\00"
@a_c3 = constant float 1.000000e+00
@a_c2 = constant float 1.000000e+00
@a_c1 = constant float 0.000000e+00
@a_b3 = constant float -2.000000e+00
@a_b2 = constant float 3.000000e+01
@a_b1 = constant float 2.000000e+00
@a_a3 = constant float 2.200000e+01
@a_a2 = constant float 0.000000e+00
@a_a1 = constant float 0x400547AE20000000
@p_str57 = private unnamed_addr constant [14 x i8] c"ROM_1P_LUTRAM\00", align 1
@p_str53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str52180 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc float @scaled_fixed2ieee(i43 %in_V, i6 %prescale) readonly {
.preheader.preheader:
  %prescale_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %prescale)
  %in_V_read = call i43 @_ssdm_op_Read.ap_auto.i43(i43 %in_V)
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i43.i32(i43 %in_V_read, i32 42)
  %p_Val2_2 = sub i43 0, %in_V_read
  %in_shift_V_2 = select i1 %p_Result_s, i43 %p_Val2_2, i43 %in_V_read
  br label %.preheader

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %out_bits_1_V_s = phi i32 [ undef, %.preheader.preheader ], [ %out_bits_1_V_1, %_ifconv ]
  %out_bits_0_V_s = phi i32 [ undef, %.preheader.preheader ], [ %out_bits_1_V_2, %_ifconv ]
  %i = phi i2 [ 0, %.preheader.preheader ], [ %i_1, %_ifconv ]
  %exitcond1 = icmp eq i2 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_1 = add i2 %i, 1
  br i1 %exitcond1, label %0, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %tmp_12 = trunc i2 %i to i1
  %tmp_5 = call i5 @_ssdm_op_BitConcatenate.i5.i1.i4(i1 %tmp_12, i4 0)
  %tmp_5_cast = zext i5 %tmp_5 to i6
  %Hi_assign = sub i6 -22, %tmp_5_cast
  %Hi_assign_cast = zext i6 %Hi_assign to i32
  %Lo_assign = sub i5 -5, %tmp_5
  %Lo_assign_cast = zext i5 %Lo_assign to i32
  %tmp_13 = icmp ugt i32 %Lo_assign_cast, %Hi_assign_cast
  %tmp_14 = zext i5 %Lo_assign to i6
  %tmp_15 = call i43 @llvm.part.select.i43(i43 %in_shift_V_2, i32 42, i32 0)
  %tmp_16 = sub i6 %tmp_14, %Hi_assign
  %tmp_17 = sub i6 -22, %tmp_14
  %tmp_18 = sub i6 %Hi_assign, %tmp_14
  %tmp_19 = select i1 %tmp_13, i6 %tmp_16, i6 %tmp_18
  %tmp_20 = select i1 %tmp_13, i43 %tmp_15, i43 %in_shift_V_2
  %tmp_21 = select i1 %tmp_13, i6 %tmp_17, i6 %tmp_14
  %tmp_22 = sub i6 -22, %tmp_19
  %tmp_23 = zext i6 %tmp_21 to i43
  %tmp_24 = zext i6 %tmp_22 to i43
  %tmp_25 = lshr i43 %tmp_20, %tmp_23
  %tmp_26 = lshr i43 -1, %tmp_24
  %p_Result_4 = and i43 %tmp_25, %tmp_26
  %cond = icmp eq i2 %i, 0
  %p_Val2_3 = select i1 %cond, i32 %out_bits_0_V_s, i32 %out_bits_1_V_s
  %tmp_28 = trunc i43 %p_Result_4 to i16
  %tmp_3 = call i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16 %tmp_28, i1 true)
  %p_Result_5 = call i32 @_ssdm_op_PartSet.i32.i32.i17.i32.i32(i32 %p_Val2_3, i17 %tmp_3, i32 15, i32 31)
  %out_bits_1_V_1 = select i1 %cond, i32 %out_bits_1_V_s, i32 %p_Result_5
  %out_bits_1_V_2 = select i1 %cond, i32 %p_Result_5, i32 %out_bits_0_V_s
  br label %.preheader

; <label>:0                                       ; preds = %.preheader
  %c_2 = alloca i32
  %c_2_1 = alloca i32
  %c_2_2 = alloca i32
  %tmp_11 = trunc i43 %in_shift_V_2 to i11
  %tmp = call i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11 %tmp_11, i1 true)
  %p_Result_6 = call i32 @_ssdm_op_PartSet.i32.i32.i12.i32.i32(i32 undef, i12 %tmp, i32 20, i32 31)
  br label %branch6

branch6:                                          ; preds = %branch6.backedge, %0
  %i1 = phi i2 [ 0, %0 ], [ %i_2, %branch6.backedge ]
  %exitcond = icmp eq i2 %i1, -1
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %i_2 = add i2 %i1, 1
  br i1 %exitcond, label %.preheader5.preheader, label %1

.preheader5.preheader:                            ; preds = %branch6
  br label %.preheader5

; <label>:1                                       ; preds = %branch6
  %p_Val2_4 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 %out_bits_0_V_s, i32 %out_bits_1_V_s, i32 %p_Result_6, i2 %i1)
  %p_Result_7 = call i32 @_ssdm_op_PartSelect.i32.i32.i32.i32(i32 %p_Val2_4, i32 31, i32 0) nounwind
  %c_0 = call i32 @llvm.cttz.i32(i32 %p_Result_7, i1 true) nounwind
  switch i2 %i1, label %branch8 [
    i2 0, label %.branch6.backedge_crit_edge
    i2 1, label %branch7
  ]

.branch6.backedge_crit_edge:                      ; preds = %1
  store i32 %c_0, i32* %c_2_1
  br label %branch6.backedge

.preheader5:                                      ; preds = %.preheader5.preheader, %"operator<<.exit"
  %in_shift = phi i43 [ %in_shift_V, %"operator<<.exit" ], [ %in_shift_V_2, %.preheader5.preheader ]
  %shift = phi i32 [ %shift_2, %"operator<<.exit" ], [ 0, %.preheader5.preheader ]
  %i2 = phi i2 [ %i_3, %"operator<<.exit" ], [ 0, %.preheader5.preheader ]
  %tmp_8 = icmp eq i2 %i2, -1
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 3, i64 2)
  %i_3 = add i2 %i2, 1
  br i1 %tmp_8, label %.loopexit_ifconv, label %"operator<<.exit"

"operator<<.exit":                                ; preds = %.preheader5
  %c_2_load = load i32* %c_2
  %c_2_1_load = load i32* %c_2_1
  %c_2_2_load = load i32* %c_2_2
  %sh_assign = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 %c_2_1_load, i32 %c_2_2_load, i32 %c_2_load, i2 %i2)
  %shift_2 = add nsw i32 %sh_assign, %shift
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %sh_assign, i32 31)
  %tmp_2 = sub nsw i32 0, %sh_assign
  %sh_assign_1 = select i1 %isNeg, i32 %tmp_2, i32 %sh_assign
  %tmp_6 = zext i32 %sh_assign_1 to i43
  %tmp_9 = shl i43 %in_shift, %tmp_6
  %tmp_s = lshr i43 %in_shift, %tmp_6
  %in_shift_V = select i1 %isNeg, i43 %tmp_s, i43 %tmp_9
  %tmp_1 = icmp eq i32 %sh_assign, 16
  br i1 %tmp_1, label %.preheader5, label %.loopexit_ifconv

.loopexit_ifconv:                                 ; preds = %"operator<<.exit", %.preheader5
  %p_Val2_s = phi i43 [ %in_shift, %.preheader5 ], [ %in_shift_V, %"operator<<.exit" ]
  %shift_1 = phi i32 [ %shift, %.preheader5 ], [ %shift_2, %"operator<<.exit" ]
  %prescale_cast = zext i6 %prescale_read to i8
  %tmp_4 = sub i8 -127, %prescale_cast
  %tmp_4_cast = zext i8 %tmp_4 to i32
  %newexp = sub i32 %tmp_4_cast, %shift_1
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %newexp, i32 31)
  %tmp_7 = icmp eq i43 %in_V_read, 0
  %or_cond = or i1 %tmp_30, %tmp_7
  %tmp_31 = trunc i32 %newexp to i8
  %phitmp1 = call i23 @_ssdm_op_PartSelect.i23.i43.i32.i32(i43 %p_Val2_s, i32 19, i32 41)
  %p_Val2_5 = select i1 %or_cond, i23 0, i23 %phitmp1
  %out_exp_V = select i1 %or_cond, i8 0, i8 %tmp_31
  %p_Result_8 = call i32 @_ssdm_op_BitConcatenate.i32.i1.i8.i23(i1 %p_Result_s, i8 %out_exp_V, i23 %p_Val2_5)
  %result_write_assign = bitcast i32 %p_Result_8 to float
  ret float %result_write_assign

branch7:                                          ; preds = %1
  store i32 %c_0, i32* %c_2_2
  br label %branch6.backedge

branch8:                                          ; preds = %1
  store i32 %c_0, i32* %c_2
  br label %branch6.backedge

branch6.backedge:                                 ; preds = %.branch6.backedge_crit_edge, %branch8, %branch7
  br label %branch6
}

define internal fastcc { float, float, float, float, float, float, float, float, float } @"operator*"(float %mat3_a1_read, float %mat3_a2_read, float %mat3_a3_read, float %mat3_b1_read, float %mat3_b2_read, float %mat3_b3_read, float %mat3_c1_read, float %mat3_c2_read, float %mat3_c3_read, float %other_a1_read, float %other_a2_read, float %other_a3_read, float %other_b1_read, float %other_b2_read, float %other_b3_read, float %other_c1_read, float %other_c2_read, float %other_c3_read) readnone {
  %other_c3_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %other_c3_read)
  %other_c2_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %other_c2_read)
  %other_c1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %other_c1_read)
  %other_b3_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %other_b3_read)
  %other_b2_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %other_b2_read)
  %other_b1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %other_b1_read)
  %other_a3_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %other_a3_read)
  %other_a2_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %other_a2_read)
  %other_a1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %other_a1_read)
  %mat3_c3_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %mat3_c3_read)
  %mat3_c2_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %mat3_c2_read)
  %mat3_c1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %mat3_c1_read)
  %mat3_b3_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %mat3_b3_read)
  %mat3_b2_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %mat3_b2_read)
  %mat3_b1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %mat3_b1_read)
  %mat3_a3_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %mat3_a3_read)
  %mat3_a2_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %mat3_a2_read)
  %mat3_a1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %mat3_a1_read)
  %tmp_i = fmul float %mat3_a1_read_1, %other_a1_read_1
  %tmp_i_30 = fmul float %mat3_a2_read_1, %other_b1_read_1
  %tmp_26_i = fadd float %tmp_i, %tmp_i_30
  %tmp_27_i = fmul float %mat3_a3_read_1, %other_c1_read_1
  %tempMulti_a1 = fadd float %tmp_26_i, %tmp_27_i
  %tmp_28_i = fmul float %mat3_a1_read_1, %other_a2_read_1
  %tmp_29_i = fmul float %mat3_a2_read_1, %other_b2_read_1
  %tmp_30_i = fadd float %tmp_28_i, %tmp_29_i
  %tmp_31_i = fmul float %mat3_a3_read_1, %other_c2_read_1
  %tempMulti_a2 = fadd float %tmp_30_i, %tmp_31_i
  %tmp_32_i = fmul float %mat3_a1_read_1, %other_a3_read_1
  %tmp_33_i = fmul float %mat3_a2_read_1, %other_b3_read_1
  %tmp_34_i = fadd float %tmp_32_i, %tmp_33_i
  %tmp_35_i = fmul float %mat3_a3_read_1, %other_c3_read_1
  %tempMulti_a3 = fadd float %tmp_34_i, %tmp_35_i
  %tmp_36_i = fmul float %mat3_b1_read_1, %other_a1_read_1
  %tmp_37_i = fmul float %mat3_b2_read_1, %other_b1_read_1
  %tmp_38_i = fadd float %tmp_36_i, %tmp_37_i
  %tmp_39_i = fmul float %mat3_b3_read_1, %other_c1_read_1
  %tempMulti_b1 = fadd float %tmp_38_i, %tmp_39_i
  %tmp_40_i = fmul float %mat3_b1_read_1, %other_a2_read_1
  %tmp_41_i = fmul float %mat3_b2_read_1, %other_b2_read_1
  %tmp_42_i = fadd float %tmp_40_i, %tmp_41_i
  %tmp_43_i = fmul float %mat3_b3_read_1, %other_c2_read_1
  %tempMulti_b2 = fadd float %tmp_42_i, %tmp_43_i
  %tmp_44_i = fmul float %mat3_b1_read_1, %other_a3_read_1
  %tmp_45_i = fmul float %mat3_b2_read_1, %other_b3_read_1
  %tmp_46_i = fadd float %tmp_44_i, %tmp_45_i
  %tmp_47_i = fmul float %mat3_b3_read_1, %other_c3_read_1
  %tempMulti_b3 = fadd float %tmp_46_i, %tmp_47_i
  %tmp_48_i = fmul float %mat3_c1_read_1, %other_a1_read_1
  %tmp_49_i = fmul float %mat3_c2_read_1, %other_b1_read_1
  %tmp_50_i = fadd float %tmp_48_i, %tmp_49_i
  %tmp_51_i = fmul float %mat3_c3_read_1, %other_c1_read_1
  %tempMulti_c1 = fadd float %tmp_50_i, %tmp_51_i
  %tmp_52_i = fmul float %mat3_c1_read_1, %other_a2_read_1
  %tmp_53_i = fmul float %mat3_c2_read_1, %other_b2_read_1
  %tmp_54_i = fadd float %tmp_52_i, %tmp_53_i
  %tmp_55_i = fmul float %mat3_c3_read_1, %other_c2_read_1
  %tempMulti_c2 = fadd float %tmp_54_i, %tmp_55_i
  %tmp_56_i = fmul float %mat3_c1_read_1, %other_a3_read_1
  %tmp_57_i = fmul float %mat3_c2_read_1, %other_b3_read_1
  %tmp_58_i = fadd float %tmp_56_i, %tmp_57_i
  %tmp_59_i = fmul float %mat3_c3_read_1, %other_c3_read_1
  %tempMulti_c3 = fadd float %tmp_58_i, %tmp_59_i
  %mrv_i = insertvalue { float, float, float, float, float, float, float, float, float } undef, float %tempMulti_a1, 0
  %mrv_1_i = insertvalue { float, float, float, float, float, float, float, float, float } %mrv_i, float %tempMulti_a2, 1
  %mrv_2_i = insertvalue { float, float, float, float, float, float, float, float, float } %mrv_1_i, float %tempMulti_a3, 2
  %mrv_3_i = insertvalue { float, float, float, float, float, float, float, float, float } %mrv_2_i, float %tempMulti_b1, 3
  %mrv_4_i = insertvalue { float, float, float, float, float, float, float, float, float } %mrv_3_i, float %tempMulti_b2, 4
  %mrv_5_i = insertvalue { float, float, float, float, float, float, float, float, float } %mrv_4_i, float %tempMulti_b3, 5
  %mrv_6_i = insertvalue { float, float, float, float, float, float, float, float, float } %mrv_5_i, float %tempMulti_c1, 6
  %mrv_7_i = insertvalue { float, float, float, float, float, float, float, float, float } %mrv_6_i, float %tempMulti_c2, 7
  %mrv_8_i = insertvalue { float, float, float, float, float, float, float, float, float } %mrv_7_i, float %tempMulti_c3, 8
  ret { float, float, float, float, float, float, float, float, float } %mrv_8_i
}

declare i32 @llvm.part.set.i32.i17(i32, i17, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i12(i32, i12, i32, i32) nounwind readnone

declare i80 @llvm.part.select.i80(i80, i32, i32) nounwind readnone

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i69 @llvm.part.select.i69(i69, i32, i32) nounwind readnone

declare i43 @llvm.part.select.i43(i43, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i30 @llvm.part.select.i30(i30, i32, i32) nounwind readnone

declare i126 @llvm.part.select.i126(i126, i32, i32) nounwind readnone

declare i104 @llvm.part.select.i104(i104, i32, i32) nounwind readnone

declare i100 @llvm.part.select.i100(i100, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @llvm.cttz.i32(i32, i1) nounwind readnone

define void @filter(float* noalias %agg_result_M0, float* noalias %agg_result_M1, float* noalias %agg_result_M2, float* noalias %agg_result_A_a1, float* noalias %agg_result_A_a2, float* noalias %agg_result_A_a3, float* noalias %agg_result_A_b1, float* noalias %agg_result_A_b2, float* noalias %agg_result_A_b3, float* noalias %agg_result_A_c1, float* noalias %agg_result_A_c2, float* noalias %agg_result_A_c3, float* noalias %agg_result_P_a1, float* noalias %agg_result_P_a2, float* noalias %agg_result_P_a3, float* noalias %agg_result_P_b1, float* noalias %agg_result_P_b2, float* noalias %agg_result_P_b3, float* noalias %agg_result_P_c1, float* noalias %agg_result_P_c2, float* noalias %agg_result_P_c3, float* noalias %agg_result_Q_a1, float* noalias %agg_result_Q_a2, float* noalias %agg_result_Q_a3, float* noalias %agg_result_Q_b1, float* noalias %agg_result_Q_b2, float* noalias %agg_result_Q_b3, float* noalias %agg_result_Q_c1, float* noalias %agg_result_Q_c2, float* noalias %agg_result_Q_c3, float* noalias %agg_result_MU, float* noalias %agg_result_H0, float* noalias %agg_result_H1, float* noalias %agg_result_H2, float* noalias %agg_result_S, float* noalias %agg_result_K0, float* noalias %agg_result_K1, float* noalias %agg_result_K2, float* noalias %agg_result_Y, float %value_M0, float %value_M1, float %value_M2, float %value_A_a1, float %value_A_a2, float %value_A_a3, float %value_A_b1, float %value_A_b2, float %value_A_b3, float %value_A_c1, float %value_A_c2, float %value_A_c3, float %value_P_a1, float %value_P_a2, float %value_P_a3, float %value_P_b1, float %value_P_b2, float %value_P_b3, float %value_P_c1, float %value_P_c2, float %value_P_c3, float %value_Q_a1, float %value_Q_a2, float %value_Q_a3, float %value_Q_b1, float %value_Q_b2, float %value_Q_b3, float %value_Q_c1, float %value_Q_c2, float %value_Q_c3, float %value_MU, float %value_H0, float %value_H1, float %value_H2, float %value_S, float %value_K0, float %value_K1, float %value_K2, float %value_Y) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_M0), !map !80
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_M1), !map !84
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_M2), !map !88
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_A_a1), !map !92
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_A_a2), !map !96
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_A_a3), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_A_b1), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_A_b2), !map !108
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_A_b3), !map !112
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_A_c1), !map !116
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_A_c2), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_A_c3), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_P_a1), !map !128
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_P_a2), !map !132
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_P_a3), !map !136
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_P_b1), !map !140
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_P_b2), !map !144
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_P_b3), !map !148
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_P_c1), !map !152
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_P_c2), !map !156
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_P_c3), !map !160
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_Q_a1), !map !164
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_Q_a2), !map !168
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_Q_a3), !map !172
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_Q_b1), !map !176
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_Q_b2), !map !180
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_Q_b3), !map !184
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_Q_c1), !map !188
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_Q_c2), !map !192
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_Q_c3), !map !196
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_MU), !map !200
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_H0), !map !204
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_H1), !map !208
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_H2), !map !212
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_S), !map !216
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_K0), !map !220
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_K1), !map !224
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_K2), !map !228
  call void (...)* @_ssdm_op_SpecBitsMap(float* %agg_result_Y), !map !232
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_M0), !map !236
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_M1), !map !242
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_M2), !map !246
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_A_a1), !map !250
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_A_a2), !map !254
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_A_a3), !map !258
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_A_b1), !map !262
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_A_b2), !map !266
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_A_b3), !map !270
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_A_c1), !map !274
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_A_c2), !map !278
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_A_c3), !map !282
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_P_a1), !map !286
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_P_a2), !map !290
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_P_a3), !map !294
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_P_b1), !map !298
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_P_b2), !map !302
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_P_b3), !map !306
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_P_c1), !map !310
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_P_c2), !map !314
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_P_c3), !map !318
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_Q_a1), !map !322
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_Q_a2), !map !326
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_Q_a3), !map !330
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_Q_b1), !map !334
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_Q_b2), !map !338
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_Q_b3), !map !342
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_Q_c1), !map !346
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_Q_c2), !map !350
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_Q_c3), !map !354
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_MU), !map !358
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_H0), !map !362
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_H1), !map !366
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_H2), !map !370
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_S), !map !374
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_K0), !map !378
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_K1), !map !382
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_K2), !map !386
  call void (...)* @_ssdm_op_SpecBitsMap(float %value_Y), !map !390
  %value_Y_read = call float @_ssdm_op_Read.ap_auto.float(float %value_Y)
  %value_Q_c3_read = call float @_ssdm_op_Read.ap_auto.float(float %value_Q_c3)
  %value_Q_c2_read = call float @_ssdm_op_Read.ap_auto.float(float %value_Q_c2)
  %value_Q_c1_read = call float @_ssdm_op_Read.ap_auto.float(float %value_Q_c1)
  %value_Q_b3_read = call float @_ssdm_op_Read.ap_auto.float(float %value_Q_b3)
  %value_Q_b2_read = call float @_ssdm_op_Read.ap_auto.float(float %value_Q_b2)
  %value_Q_b1_read = call float @_ssdm_op_Read.ap_auto.float(float %value_Q_b1)
  %value_Q_a3_read = call float @_ssdm_op_Read.ap_auto.float(float %value_Q_a3)
  %value_Q_a2_read = call float @_ssdm_op_Read.ap_auto.float(float %value_Q_a2)
  %value_Q_a1_read = call float @_ssdm_op_Read.ap_auto.float(float %value_Q_a1)
  %value_P_c3_read = call float @_ssdm_op_Read.ap_auto.float(float %value_P_c3)
  %value_P_c2_read = call float @_ssdm_op_Read.ap_auto.float(float %value_P_c2)
  %value_P_c1_read = call float @_ssdm_op_Read.ap_auto.float(float %value_P_c1)
  %value_P_b3_read = call float @_ssdm_op_Read.ap_auto.float(float %value_P_b3)
  %value_P_b2_read = call float @_ssdm_op_Read.ap_auto.float(float %value_P_b2)
  %value_P_b1_read = call float @_ssdm_op_Read.ap_auto.float(float %value_P_b1)
  %value_P_a3_read = call float @_ssdm_op_Read.ap_auto.float(float %value_P_a3)
  %value_P_a2_read = call float @_ssdm_op_Read.ap_auto.float(float %value_P_a2)
  %value_P_a1_read = call float @_ssdm_op_Read.ap_auto.float(float %value_P_a1)
  %value_A_c3_read = call float @_ssdm_op_Read.ap_auto.float(float %value_A_c3)
  %value_A_c2_read = call float @_ssdm_op_Read.ap_auto.float(float %value_A_c2)
  %value_A_c1_read = call float @_ssdm_op_Read.ap_auto.float(float %value_A_c1)
  %value_A_b3_read = call float @_ssdm_op_Read.ap_auto.float(float %value_A_b3)
  %value_A_b2_read = call float @_ssdm_op_Read.ap_auto.float(float %value_A_b2)
  %value_A_b1_read = call float @_ssdm_op_Read.ap_auto.float(float %value_A_b1)
  %value_A_a3_read = call float @_ssdm_op_Read.ap_auto.float(float %value_A_a3)
  %value_A_a2_read = call float @_ssdm_op_Read.ap_auto.float(float %value_A_a2)
  %value_A_a1_read = call float @_ssdm_op_Read.ap_auto.float(float %value_A_a1)
  %value_M2_read = call float @_ssdm_op_Read.ap_auto.float(float %value_M2)
  %value_M1_read = call float @_ssdm_op_Read.ap_auto.float(float %value_M1)
  %value_M0_read = call float @_ssdm_op_Read.ap_auto.float(float %value_M0)
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @filter_str) nounwind
  %tmp_s = fmul float %value_A_a1_read, %value_M0_read
  %tmp_8 = fmul float %value_A_a2_read, %value_M1_read
  %tmp_9 = fadd float %tmp_s, %tmp_8
  %tmp_10 = fmul float %value_A_a3_read, %value_M2_read
  %x_assign = fadd float %tmp_9, %tmp_10
  %tmp_11 = fmul float %value_A_c1_read, %value_M0_read
  %tmp_12 = fmul float %value_A_c2_read, %value_M1_read
  %tmp_13 = fadd float %tmp_11, %tmp_12
  %tmp_14 = fmul float %value_A_c3_read, %value_M2_read
  %value_M2_buf_assign_2 = fadd float %tmp_13, %tmp_14
  %call_ret7 = call fastcc { float, float, float, float, float, float, float, float, float } @"operator*"(float %value_A_a1_read, float %value_A_a2_read, float %value_A_a3_read, float %value_A_b1_read, float %value_A_b2_read, float %value_A_b3_read, float %value_A_c1_read, float %value_A_c2_read, float %value_A_c3_read, float %value_P_a1_read, float %value_P_a2_read, float %value_P_a3_read, float %value_P_b1_read, float %value_P_b2_read, float %value_P_b3_read, float %value_P_c1_read, float %value_P_c2_read, float %value_P_c3_read)
  %p_s = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret7, 0
  %p_1 = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret7, 1
  %p_2 = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret7, 2
  %p_3 = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret7, 3
  %p_4 = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret7, 4
  %p_5 = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret7, 5
  %p_6 = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret7, 6
  %p_7 = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret7, 7
  %p_8 = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret7, 8
  %call_ret6 = call fastcc { float, float, float, float, float, float, float, float, float } @"operator*"(float %p_s, float %p_1, float %p_2, float %p_3, float %p_4, float %p_5, float %p_6, float %p_7, float %p_8, float %value_A_a1_read, float %value_A_b1_read, float %value_A_c1_read, float %value_A_a2_read, float %value_A_b2_read, float %value_A_c2_read, float %value_A_a3_read, float %value_A_b3_read, float %value_A_c3_read)
  %mat3_a1_read_assign = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret6, 0
  %mat3_a2_read_assign = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret6, 1
  %mat3_a3_read_assign = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret6, 2
  %mat3_b1_read_assign = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret6, 3
  %mat3_b2_read_assign = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret6, 4
  %mat3_b3_read_assign = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret6, 5
  %mat3_c1_read_assign = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret6, 6
  %mat3_c2_read_assign = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret6, 7
  %mat3_c3_read_assign = extractvalue { float, float, float, float, float, float, float, float, float } %call_ret6, 8
  %tempAdd_a1 = fadd float %mat3_a1_read_assign, %value_Q_a1_read
  %tempAdd_a2 = fadd float %mat3_a2_read_assign, %value_Q_a2_read
  %tempAdd_a3 = fadd float %mat3_a3_read_assign, %value_Q_a3_read
  %tempAdd_b1 = fadd float %mat3_b1_read_assign, %value_Q_b1_read
  %tempAdd_b2 = fadd float %mat3_b2_read_assign, %value_Q_b2_read
  %tempAdd_b3 = fadd float %mat3_b3_read_assign, %value_Q_b3_read
  %tempAdd_c1 = fadd float %mat3_c1_read_assign, %value_Q_c1_read
  %tempAdd_c2 = fadd float %mat3_c2_read_assign, %value_Q_c2_read
  %tempAdd_c3 = fadd float %mat3_c3_read_assign, %value_Q_c3_read
  %call_ret_i_i = call fastcc { float, float } @cordic_sincos_generi(float %x_assign) nounwind
  %s_out = extractvalue { float, float } %call_ret_i_i, 0
  %value_MU_buf_assign_1 = fmul float %value_M2_buf_assign_2, %s_out
  %c_out = extractvalue { float, float } %call_ret_i_i, 1
  %value_H0_buf_assign_7 = fmul float %value_M2_buf_assign_2, %c_out
  %tmp_15 = fmul float %value_H0_buf_assign_7, %tempAdd_a1
  %tmp_16 = fmul float %tempAdd_b1, 0.000000e+00
  %tmp_17 = fadd float %tmp_15, %tmp_16
  %tmp_18 = fmul float %s_out, %tempAdd_c1
  %temp0 = fadd float %tmp_17, %tmp_18
  %tmp_19 = fmul float %value_H0_buf_assign_7, %tempAdd_a2
  %tmp_20 = fmul float %tempAdd_b2, 0.000000e+00
  %tmp_21 = fadd float %tmp_19, %tmp_20
  %tmp_22 = fmul float %s_out, %tempAdd_c2
  %temp1 = fadd float %tmp_21, %tmp_22
  %tmp_23 = fmul float %value_H0_buf_assign_7, %tempAdd_a3
  %tmp_24 = fmul float %tempAdd_b3, 0.000000e+00
  %tmp_25 = fadd float %tmp_23, %tmp_24
  %tmp_26 = fmul float %s_out, %tempAdd_c3
  %temp2 = fadd float %tmp_25, %tmp_26
  %tmp_27 = fmul float %temp0, %value_H0_buf_assign_7
  %tmp_28 = fmul float %temp1, 0.000000e+00
  %tmp_29 = fadd float %tmp_27, %tmp_28
  %tmp_30 = fmul float %temp2, %s_out
  %tmp_31 = fadd float %tmp_29, %tmp_30
  %value_S_buf_assign_1 = fadd float %tmp_31, 1.000000e+00
  %tmp_32 = fsub float %value_Y_read, %value_MU_buf_assign_1
  %tmp_33 = fmul float %temp0, %tmp_32
  %value_M0_buf_assign_5 = fadd float %x_assign, %tmp_33
  %tmp_34 = fmul float %temp1, %tmp_32
  %value_M1_buf_assign_1 = fadd float %value_M0_buf_assign_5, %tmp_34
  %tmp_35 = fmul float %temp2, %tmp_32
  %value_M2_buf_assign_3 = fadd float %value_M0_buf_assign_5, %tmp_35
  %temp0_1 = fmul float %temp0, %value_S_buf_assign_1
  %temp1_1 = fmul float %temp1, %value_S_buf_assign_1
  %temp2_1 = fmul float %temp2, %value_S_buf_assign_1
  %tempMat_a1 = fmul float %temp0_1, %temp0
  %tempMat_a2 = fmul float %temp0_1, %temp1
  %tempMat_a3 = fmul float %temp0_1, %temp2
  %tempMat_b1 = fmul float %temp1_1, %temp0
  %tempMat_b2 = fmul float %temp1_1, %temp1
  %tempMat_b3 = fmul float %temp1_1, %temp2
  %tempMat_c1 = fmul float %temp2_1, %temp0
  %tempMat_c2 = fmul float %temp2_1, %temp1
  %tempMat_c3 = fmul float %temp2_1, %temp2
  %tempSub_a1 = fsub float %tempAdd_a1, %tempMat_a1
  %tempSub_a2 = fsub float %tempAdd_a2, %tempMat_a2
  %tempSub_a3 = fsub float %tempAdd_a3, %tempMat_a3
  %tempSub_b1 = fsub float %tempAdd_b1, %tempMat_b1
  %tempSub_b2 = fsub float %tempAdd_b2, %tempMat_b2
  %tempSub_b3 = fsub float %tempAdd_b3, %tempMat_b3
  %tempSub_c1 = fsub float %tempAdd_c1, %tempMat_c1
  %tempSub_c2 = fsub float %tempAdd_c2, %tempMat_c2
  %tempSub_c3 = fsub float %tempAdd_c3, %tempMat_c3
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_M0, float %value_M0_buf_assign_5)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_M1, float %value_M1_buf_assign_1)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_M2, float %value_M2_buf_assign_3)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_A_a1, float %value_A_a1_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_A_a2, float %value_A_a2_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_A_a3, float %value_A_a3_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_A_b1, float %value_A_b1_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_A_b2, float %value_A_b2_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_A_b3, float %value_A_b3_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_A_c1, float %value_A_c1_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_A_c2, float %value_A_c2_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_A_c3, float %value_A_c3_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_P_a1, float %tempSub_a1)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_P_a2, float %tempSub_a2)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_P_a3, float %tempSub_a3)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_P_b1, float %tempSub_b1)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_P_b2, float %tempSub_b2)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_P_b3, float %tempSub_b3)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_P_c1, float %tempSub_c1)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_P_c2, float %tempSub_c2)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_P_c3, float %tempSub_c3)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_Q_a1, float %value_Q_a1_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_Q_a2, float %value_Q_a2_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_Q_a3, float %value_Q_a3_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_Q_b1, float %value_Q_b1_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_Q_b2, float %value_Q_b2_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_Q_b3, float %value_Q_b3_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_Q_c1, float %value_Q_c1_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_Q_c2, float %value_Q_c2_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_Q_c3, float %value_Q_c3_read)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_MU, float %value_MU_buf_assign_1)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_H0, float %value_H0_buf_assign_7)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_H1, float 0.000000e+00)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_H2, float %s_out)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_S, float %value_S_buf_assign_1)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_K0, float %temp0)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_K1, float %temp1)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_K2, float %temp2)
  call void @_ssdm_op_Write.ap_auto.floatP(float* %agg_result_Y, float %value_Y_read)
  ret void
}

define internal fastcc { float, float } @cordic_sincos_generi(float %t_in) readonly {
  %t_in_read = call float @_ssdm_op_Read.ap_auto.float(float %t_in)
  %p_Val2_7 = bitcast float %t_in_read to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_7, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_7, i32 23, i32 30)
  %tmp_s = icmp eq i8 %loc_V, -1
  br i1 %tmp_s, label %11, label %1

; <label>:1                                       ; preds = %0
  %tmp_36 = icmp ult i8 %loc_V, 115
  br i1 %tmp_36, label %11, label %_ifconv

_ifconv:                                          ; preds = %1
  %closepath = icmp ult i8 %loc_V, 126
  %tmp = call i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32 %p_Val2_7, i32 23, i32 27)
  %p_i_cast = add i5 3, %tmp
  %storemerge_i = select i1 %closepath, i5 %p_i_cast, i5 0
  %storemerge_i_cast = sext i5 %storemerge_i to i7
  %p_Result_9 = trunc i32 %p_Val2_7 to i23
  %p_Result_10 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %p_Result_9)
  call void (...)* @_ssdm_op_SpecMemCore([13 x i100]* @ref_4oPi_table_100_V, [1 x i8]* @p_str53, [14 x i8]* @p_str57, [1 x i8]* @p_str53, i32 -1, [1 x i8]* @p_str53, [1 x i8]* @p_str53, [1 x i8]* @p_str53, [1 x i8]* @p_str53, [1 x i8]* @p_str53)
  %expv_op = add i8 -62, %loc_V
  %addr_V = select i1 %closepath, i8 63, i8 %expv_op
  %tmp_12 = call i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8 %addr_V, i32 4, i32 7)
  %tmp_5_i_i = zext i4 %tmp_12 to i64
  %ref_4oPi_table_100_V_1 = getelementptr [13 x i100]* @ref_4oPi_table_100_V, i64 0, i64 %tmp_5_i_i
  %table_100_V = load i100* %ref_4oPi_table_100_V_1, align 16
  %tmp_34 = trunc i8 %addr_V to i4
  %tmp_7_i_i = zext i4 %tmp_34 to i100
  %r_V = shl i100 %table_100_V, %tmp_7_i_i
  %Med_V = call i80 @_ssdm_op_PartSelect.i80.i100.i32.i32(i100 %r_V, i32 20, i32 99)
  %lhs_V = zext i80 %Med_V to i104
  %rhs_V = zext i24 %p_Result_10 to i104
  %r_V_1 = mul i104 %lhs_V, %rhs_V
  %p_Val2_13 = call i69 @_ssdm_op_PartSelect.i69.i104.i32.i32(i104 %r_V_1, i32 8, i32 76)
  %tmp_16_i = call i3 @_ssdm_op_PartSelect.i3.i104.i32.i32(i104 %r_V_1, i32 77, i32 79)
  %p_Val2_23 = select i1 %closepath, i3 0, i3 %tmp_16_i
  %tmp_35 = trunc i3 %p_Val2_23 to i1
  %p_Val2_i = sub i69 0, %p_Val2_13
  %p_Val2_15 = select i1 %tmp_35, i69 %p_Val2_i, i69 %p_Val2_13
  %p_Result_i2_i = call i29 @_ssdm_op_PartSelect.i29.i69.i32.i32(i69 %p_Val2_15, i32 40, i32 68)
  %p_Result_11 = call i30 @_ssdm_op_BitConcatenate.i30.i29.i1(i29 %p_Result_i2_i, i1 true)
  %p_Result_12 = call i30 @llvm.part.select.i30(i30 %p_Result_11, i32 29, i32 0) nounwind
  %p_Result_13 = call i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2 -1, i30 %p_Result_12)
  %val_assign = call i32 @llvm.cttz.i32(i32 %p_Result_13, i1 true) nounwind
  %Mx_zeros_V = trunc i32 %val_assign to i5
  %tmp_17_i = zext i5 %Mx_zeros_V to i69
  %p_Val2_17 = shl i69 %p_Val2_15, %tmp_17_i
  %Mx_V = call i40 @_ssdm_op_PartSelect.i40.i69.i32.i32(i69 %p_Val2_17, i32 29, i32 68)
  %tmp_20_i_cast = zext i5 %Mx_zeros_V to i7
  %Ex_V = sub i7 %storemerge_i_cast, %tmp_20_i_cast
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i7.i32(i7 %Ex_V, i32 6)
  %tmp_22_i = sub i7 0, %Ex_V
  %sh_assign_2 = select i1 %isNeg, i7 %tmp_22_i, i7 %Ex_V
  %sh_assign_3_cast = sext i7 %sh_assign_2 to i32
  %tmp_23_i = zext i32 %sh_assign_3_cast to i40
  %tmp_24_i = lshr i40 %Mx_V, %tmp_23_i
  %tmp_25_i = shl i40 %Mx_V, %tmp_23_i
  %fout_V = select i1 %isNeg, i40 %tmp_24_i, i40 %tmp_25_i
  %tmp_37 = icmp slt i7 %Ex_V, -12
  br i1 %tmp_37, label %ap_fixed_base.exit, label %2

ap_fixed_base.exit:                               ; preds = %_ifconv
  %OP1_V = zext i40 %Mx_V to i80
  %p_Val2_9 = mul i80 863554413089, %OP1_V
  %tmp_14 = call i40 @_ssdm_op_PartSelect.i40.i80.i32.i32(i80 %p_Val2_9, i32 40, i32 79)
  %y_V = zext i40 %tmp_14 to i43
  %tmp_39 = trunc i7 %Ex_V to i6
  %yprescale_V_cast = sub i6 0, %tmp_39
  br label %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit"

; <label>:2                                       ; preds = %_ifconv
  %OP1_V_1 = zext i40 %fout_V to i80
  %p_Val2_s = mul i80 %OP1_V_1, 863554413089
  %tmp_15 = call i40 @_ssdm_op_PartSelect.i40.i80.i32.i32(i80 %p_Val2_s, i32 40, i32 79)
  %z_V = zext i40 %tmp_15 to i43
  br label %3

; <label>:3                                       ; preds = %"operator>>.exit100.i", %2
  %p_Val2_18 = phi i43 [ %z_V, %2 ], [ %tz_V, %"operator>>.exit100.i" ]
  %p_Val2_1 = phi i43 [ 0, %2 ], [ %ty_V, %"operator>>.exit100.i" ]
  %p_Val2_2 = phi i43 [ 667681663043, %2 ], [ %tx_V, %"operator>>.exit100.i" ]
  %sh_assign = phi i6 [ 0, %2 ], [ %k, %"operator>>.exit100.i" ]
  %exitcond_i = icmp eq i6 %sh_assign, -21
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 43, i64 43, i64 43)
  %k = add i6 %sh_assign, 1
  br i1 %exitcond_i, label %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit.loopexit", label %"operator>>.exit100.i"

"operator>>.exit100.i":                           ; preds = %3
  %d_V = call i1 @_ssdm_op_BitSelect.i1.i43.i32(i43 %p_Val2_18, i32 42)
  %tmp_38 = zext i6 %sh_assign to i43
  %y_s_V = ashr i43 %p_Val2_1, %tmp_38
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([138 x i8]* @cordic_KD_KD_addsu_1)
  call void (...)* @_ssdm_op_SpecLatency(i32 0, i32 0, [1 x i8]* @p_str52180) nounwind
  %r_V_4_i = sub i43 %p_Val2_2, %y_s_V
  %r_V_i2 = add i43 %p_Val2_2, %y_s_V
  %tx_V = select i1 %d_V, i43 %r_V_i2, i43 %r_V_4_i
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([138 x i8]* @cordic_KD_KD_addsu_1, i32 %rbegin)
  %x_s_V = ashr i43 %p_Val2_2, %tmp_38
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([131 x i8]* @cordic_KD_KD_addsu)
  call void (...)* @_ssdm_op_SpecLatency(i32 0, i32 0, [1 x i8]* @p_str52180) nounwind
  %r_V_1_i = sub i43 %p_Val2_1, %x_s_V
  %r_V_i7 = add i43 %p_Val2_1, %x_s_V
  %ty_V = select i1 %d_V, i43 %r_V_1_i, i43 %r_V_i7
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([131 x i8]* @cordic_KD_KD_addsu, i32 %rbegin3)
  %tmp_40 = zext i6 %sh_assign to i64
  %cordic_ctab_table_12_2 = getelementptr [128 x i126]* @cordic_ctab_table_12_1, i64 0, i64 %tmp_40
  %p_Val2_21 = load i126* %cordic_ctab_table_12_2, align 16
  %p_Val2_27_cast = call i40 @_ssdm_op_PartSelect.i40.i126.i32.i32(i126 %p_Val2_21, i32 86, i32 125)
  %tmp_41 = call i1 @_ssdm_op_BitSelect.i1.i126.i32(i126 %p_Val2_21, i32 85)
  %tmp_46_cast = zext i1 %tmp_41 to i40
  %z_s_V = add i40 %tmp_46_cast, %p_Val2_27_cast
  %z_s_V_cast = zext i40 %z_s_V to i43
  %rbegin8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([138 x i8]* @cordic_KD_KD_addsu_2)
  call void (...)* @_ssdm_op_SpecLatency(i32 0, i32 0, [1 x i8]* @p_str52180) nounwind
  %r_V_5_i = sub i43 %p_Val2_18, %z_s_V_cast
  %r_V_i = add i43 %p_Val2_18, %z_s_V_cast
  %tz_V = select i1 %d_V, i43 %r_V_i, i43 %r_V_5_i
  %rend9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([138 x i8]* @cordic_KD_KD_addsu_2, i32 %rbegin8)
  br label %3

"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit.loopexit": ; preds = %3
  br label %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit"

"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit": ; preds = %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit.loopexit", %ap_fixed_base.exit
  %p_0 = phi i43 [ 1099511627776, %ap_fixed_base.exit ], [ %p_Val2_2, %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit.loopexit" ]
  %p_1 = phi i43 [ %y_V, %ap_fixed_base.exit ], [ %p_Val2_1, %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit.loopexit" ]
  %p_s = phi i6 [ %yprescale_V_cast, %ap_fixed_base.exit ], [ 0, %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit.loopexit" ]
  %tmp_s_out = call fastcc float @scaled_fixed2ieee(i43 %p_1, i6 %p_s)
  %tmp_c_out = call fastcc float @scaled_fixed2ieee(i43 %p_0, i6 0)
  %tmp_42 = xor i3 %p_Val2_23, -1
  %sel = select i1 %p_Result_s, i3 %tmp_42, i3 %p_Val2_23
  switch i3 %sel, label %11 [
    i3 -1, label %10
    i3 1, label %4
    i3 2, label %5
    i3 3, label %6
    i3 -4, label %7
    i3 -3, label %8
    i3 -2, label %9
  ]

; <label>:4                                       ; preds = %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit"
  br label %11

; <label>:5                                       ; preds = %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit"
  %tmp_212_to_int = bitcast float %tmp_s_out to i32
  %tmp_212_neg = xor i32 %tmp_212_to_int, -2147483648
  %tmp_44 = bitcast i32 %tmp_212_neg to float
  br label %11

; <label>:6                                       ; preds = %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit"
  %tmp_213_to_int = bitcast float %tmp_c_out to i32
  %tmp_213_neg = xor i32 %tmp_213_to_int, -2147483648
  %tmp_45 = bitcast i32 %tmp_213_neg to float
  br label %11

; <label>:7                                       ; preds = %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit"
  %tmp_214_to_int = bitcast float %tmp_s_out to i32
  %tmp_214_neg = xor i32 %tmp_214_to_int, -2147483648
  %tmp_46 = bitcast i32 %tmp_214_neg to float
  %tmp_215_to_int = bitcast float %tmp_c_out to i32
  %tmp_215_neg = xor i32 %tmp_215_to_int, -2147483648
  %tmp_47 = bitcast i32 %tmp_215_neg to float
  br label %11

; <label>:8                                       ; preds = %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit"
  %tmp_216_to_int = bitcast float %tmp_c_out to i32
  %tmp_216_neg = xor i32 %tmp_216_to_int, -2147483648
  %tmp_48 = bitcast i32 %tmp_216_neg to float
  %tmp_217_to_int = bitcast float %tmp_s_out to i32
  %tmp_217_neg = xor i32 %tmp_217_to_int, -2147483648
  %tmp_49 = bitcast i32 %tmp_217_neg to float
  br label %11

; <label>:9                                       ; preds = %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit"
  %tmp_218_to_int = bitcast float %tmp_c_out to i32
  %tmp_218_neg = xor i32 %tmp_218_to_int, -2147483648
  %tmp_50 = bitcast i32 %tmp_218_neg to float
  br label %11

; <label>:10                                      ; preds = %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit"
  %tmp_219_to_int = bitcast float %tmp_s_out to i32
  %tmp_219_neg = xor i32 %tmp_219_to_int, -2147483648
  %tmp_43 = bitcast i32 %tmp_219_neg to float
  br label %11

; <label>:11                                      ; preds = %10, %9, %8, %7, %6, %5, %4, %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit", %1, %0
  %s_out_write_assign = phi float [ %tmp_43, %10 ], [ %tmp_50, %9 ], [ %tmp_48, %8 ], [ %tmp_46, %7 ], [ %tmp_s_out, %6 ], [ %tmp_c_out, %5 ], [ %tmp_c_out, %4 ], [ %t_in_read, %1 ], [ %tmp_s_out, %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit" ], [ 0x7FFFFFFFE0000000, %0 ]
  %c_out_write_assign = phi float [ %tmp_c_out, %10 ], [ %tmp_s_out, %9 ], [ %tmp_49, %8 ], [ %tmp_47, %7 ], [ %tmp_45, %6 ], [ %tmp_44, %5 ], [ %tmp_s_out, %4 ], [ 1.000000e+00, %1 ], [ %tmp_c_out, %"cordic_circ_v1<43, 0, 0, 0, 43, 3, 43, 3>.exit" ], [ 0x7FFFFFFFE0000000, %0 ]
  %mrv = insertvalue { float, float } undef, float %s_out_write_assign, 0
  %mrv_1 = insertvalue { float, float } %mrv, float %c_out_write_assign, 1
  ret { float, float } %mrv_1
}

define weak void @_ssdm_op_Write.ap_auto.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

define weak i43 @_ssdm_op_Read.ap_auto.i43(i43) {
entry:
  ret i43 %0
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i17.i32.i32(i32, i17, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i17(i32 %0, i17 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i12.i32.i32(i32, i12, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i12(i32 %0, i12 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i80 @_ssdm_op_PartSelect.i80.i100.i32.i32(i100, i32, i32) nounwind readnone {
entry:
  %empty = call i100 @llvm.part.select.i100(i100 %0, i32 %1, i32 %2)
  %empty_31 = trunc i100 %empty to i80
  ret i80 %empty_31
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_32 = trunc i32 %empty to i8
  ret i8 %empty_32
}

define weak i69 @_ssdm_op_PartSelect.i69.i104.i32.i32(i104, i32, i32) nounwind readnone {
entry:
  %empty = call i104 @llvm.part.select.i104(i104 %0, i32 %1, i32 %2)
  %empty_33 = trunc i104 %empty to i69
  ret i69 %empty_33
}

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

define weak i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_34 = trunc i32 %empty to i5
  ret i5 %empty_34
}

define weak i40 @_ssdm_op_PartSelect.i40.i80.i32.i32(i80, i32, i32) nounwind readnone {
entry:
  %empty = call i80 @llvm.part.select.i80(i80 %0, i32 %1, i32 %2)
  %empty_35 = trunc i80 %empty to i40
  ret i40 %empty_35
}

define weak i40 @_ssdm_op_PartSelect.i40.i69.i32.i32(i69, i32, i32) nounwind readnone {
entry:
  %empty = call i69 @llvm.part.select.i69(i69 %0, i32 %1, i32 %2)
  %empty_36 = trunc i69 %empty to i40
  ret i40 %empty_36
}

define weak i40 @_ssdm_op_PartSelect.i40.i126.i32.i32(i126, i32, i32) nounwind readnone {
entry:
  %empty = call i126 @llvm.part.select.i126(i126 %0, i32 %1, i32 %2)
  %empty_37 = trunc i126 %empty to i40
  ret i40 %empty_37
}

define weak i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_38 = trunc i8 %empty to i4
  ret i4 %empty_38
}

define weak i32 @_ssdm_op_PartSelect.i32.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  ret i32 %empty
}

define weak i3 @_ssdm_op_PartSelect.i3.i104.i32.i32(i104, i32, i32) nounwind readnone {
entry:
  %empty = call i104 @llvm.part.select.i104(i104 %0, i32 %1, i32 %2)
  %empty_39 = trunc i104 %empty to i3
  ret i3 %empty_39
}

define weak i29 @_ssdm_op_PartSelect.i29.i69.i32.i32(i69, i32, i32) nounwind readnone {
entry:
  %empty = call i69 @llvm.part.select.i69(i69 %0, i32 %1, i32 %2)
  %empty_40 = trunc i69 %empty to i29
  ret i29 %empty_40
}

define weak i23 @_ssdm_op_PartSelect.i23.i43.i32.i32(i43, i32, i32) nounwind readnone {
entry:
  %empty = call i43 @llvm.part.select.i43(i43 %0, i32 %1, i32 %2)
  %empty_41 = trunc i43 %empty to i23
  ret i23 %empty_41
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i43.i32.i32(i43, i32, i32) nounwind readnone

declare i11 @_ssdm_op_PartSelect.i11.i43.i32.i32(i43, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32, i32, i32, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
}

define weak i1 @_ssdm_op_BitSelect.i1.i7.i32(i7, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i7
  %empty_42 = shl i7 1, %empty
  %empty_43 = and i7 %0, %empty_42
  %empty_44 = icmp ne i7 %empty_43, 0
  ret i1 %empty_44
}

define weak i1 @_ssdm_op_BitSelect.i1.i43.i32(i43, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i43
  %empty_45 = shl i43 1, %empty
  %empty_46 = and i43 %0, %empty_45
  %empty_47 = icmp ne i43 %empty_46, 0
  ret i1 %empty_47
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_48 = and i32 %0, %empty
  %empty_49 = icmp ne i32 %empty_48, 0
  ret i1 %empty_49
}

define weak i1 @_ssdm_op_BitSelect.i1.i126.i32(i126, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i126
  %empty_50 = shl i126 1, %empty
  %empty_51 = and i126 %0, %empty_50
  %empty_52 = icmp ne i126 %empty_51, 0
  ret i1 %empty_52
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i1.i4(i1, i4) nounwind readnone {
entry:
  %empty = zext i1 %0 to i5
  %empty_53 = zext i4 %1 to i5
  %empty_54 = shl i5 %empty, 4
  %empty_55 = or i5 %empty_54, %empty_53
  ret i5 %empty_55
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i2.i30(i2, i30) nounwind readnone {
entry:
  %empty = zext i2 %0 to i32
  %empty_56 = zext i30 %1 to i32
  %empty_57 = shl i32 %empty, 30
  %empty_58 = or i32 %empty_57, %empty_56
  ret i32 %empty_58
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i1.i8.i23(i1, i8, i23) nounwind readnone {
entry:
  %empty = zext i8 %1 to i31
  %empty_59 = zext i23 %2 to i31
  %empty_60 = shl i31 %empty, 23
  %empty_61 = or i31 %empty_60, %empty_59
  %empty_62 = zext i1 %0 to i32
  %empty_63 = zext i31 %empty_61 to i32
  %empty_64 = shl i32 %empty_62, 31
  %empty_65 = or i32 %empty_64, %empty_63
  ret i32 %empty_65
}

define weak i30 @_ssdm_op_BitConcatenate.i30.i29.i1(i29, i1) nounwind readnone {
entry:
  %empty = zext i29 %0 to i30
  %empty_66 = zext i1 %1 to i30
  %empty_67 = shl i30 %empty, 1
  %empty_68 = or i30 %empty_67, %empty_66
  ret i30 %empty_68
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_69 = zext i23 %1 to i24
  %empty_70 = shl i24 %empty, 23
  %empty_71 = or i24 %empty_70, %empty_69
  ret i24 %empty_71
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16, i1) nounwind readnone {
entry:
  %empty = zext i16 %0 to i17
  %empty_72 = zext i1 %1 to i17
  %empty_73 = shl i17 %empty, 1
  %empty_74 = or i17 %empty_73, %empty_72
  ret i17 %empty_74
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11, i1) nounwind readnone {
entry:
  %empty = zext i11 %0 to i12
  %empty_75 = zext i1 %1 to i12
  %empty_76 = shl i12 %empty, 1
  %empty_77 = or i12 %empty_76, %empty_75
  ret i12 %empty_77
}

declare void @_GLOBAL__I_a517() nounwind section ".text.startup"

declare void @_GLOBAL__I_a204() nounwind section ".text.startup"

declare void @_GLOBAL__I_a14() nounwind section ".text.startup"

declare void @_GLOBAL__I_a120() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !13, !7, !13, !13, !19, !22, !24, !26, !7, !7, !28, !7, !7, !7, !7, !7, !7, !7, !7, !7, !30, !7, !36, !36, !36, !7, !36, !36, !38, !40, !41, !42, !7, !7, !7, !7, !7, !7, !43, !7, !44, !7, !7, !50, !7, !7, !7, !7, !7, !7, !7, !7, !50, !53, !53, !53, !7, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!56, !63, !68, !73}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"a2", metadata !"a3", metadata !"b1", metadata !"b2", metadata !"b3", metadata !"c1", metadata !"c2", metadata !"c3"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const class mat3 &"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"other"}
!19 = metadata !{null, metadata !14, metadata !15, metadata !20, metadata !17, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"class mat3"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"mult"}
!22 = metadata !{null, metadata !14, metadata !15, metadata !20, metadata !17, metadata !23, metadata !6}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"divide"}
!24 = metadata !{null, metadata !14, metadata !15, metadata !20, metadata !17, metadata !25, metadata !6}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"add"}
!26 = metadata !{null, metadata !14, metadata !15, metadata !20, metadata !17, metadata !27, metadata !6}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"sub"}
!28 = metadata !{null, metadata !14, metadata !15, metadata !20, metadata !17, metadata !29, metadata !6}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"setElem"}
!30 = metadata !{null, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !6}
!31 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!32 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float"}
!34 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"a1", metadata !"a2", metadata !"b1", metadata !"b2"}
!36 = metadata !{null, metadata !14, metadata !15, metadata !37, metadata !17, metadata !18, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const class mat2 &"}
!38 = metadata !{null, metadata !14, metadata !15, metadata !39, metadata !17, metadata !21, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"class mat2"}
!40 = metadata !{null, metadata !14, metadata !15, metadata !39, metadata !17, metadata !23, metadata !6}
!41 = metadata !{null, metadata !14, metadata !15, metadata !39, metadata !17, metadata !25, metadata !6}
!42 = metadata !{null, metadata !14, metadata !15, metadata !39, metadata !17, metadata !27, metadata !6}
!43 = metadata !{null, metadata !14, metadata !15, metadata !39, metadata !17, metadata !29, metadata !6}
!44 = metadata !{null, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !6}
!45 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!46 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"class mat3", metadata !"class mat3", metadata !"class mat3", metadata !"float", metadata !"float", metadata !"float"}
!48 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"p", metadata !"a", metadata !"q", metadata !"m0", metadata !"m1", metadata !"m2"}
!50 = metadata !{null, metadata !14, metadata !15, metadata !51, metadata !17, metadata !52, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"measurement"}
!53 = metadata !{null, metadata !14, metadata !15, metadata !54, metadata !17, metadata !55, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"struct kf_values"}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"value"}
!56 = metadata !{metadata !57, float* @m2}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"m2", metadata !61, metadata !"float", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, i32 1}
!63 = metadata !{metadata !64, float* @m1}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 31, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"m1", metadata !61, metadata !"float", i32 0, i32 31}
!68 = metadata !{metadata !69, float* @m0}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 31, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"m0", metadata !61, metadata !"float", i32 0, i32 31}
!73 = metadata !{metadata !74, [5 x i32]* @llvm_global_ctors_0}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 31, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"llvm.global_ctors.0", metadata !78, metadata !"", i32 0, i32 31}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 4, i32 1}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 31, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"agg.result.M0", metadata !61, metadata !"float", i32 0, i32 31}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 31, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"agg.result.M1", metadata !61, metadata !"float", i32 0, i32 31}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 31, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"agg.result.M2", metadata !61, metadata !"float", i32 0, i32 31}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 31, metadata !94}
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !"agg.result.A.a1", metadata !61, metadata !"float", i32 0, i32 31}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 0, i32 31, metadata !98}
!98 = metadata !{metadata !99}
!99 = metadata !{metadata !"agg.result.A.a2", metadata !61, metadata !"float", i32 0, i32 31}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 31, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"agg.result.A.a3", metadata !61, metadata !"float", i32 0, i32 31}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 31, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"agg.result.A.b1", metadata !61, metadata !"float", i32 0, i32 31}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 31, metadata !110}
!110 = metadata !{metadata !111}
!111 = metadata !{metadata !"agg.result.A.b2", metadata !61, metadata !"float", i32 0, i32 31}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 0, i32 31, metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{metadata !"agg.result.A.b3", metadata !61, metadata !"float", i32 0, i32 31}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 31, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"agg.result.A.c1", metadata !61, metadata !"float", i32 0, i32 31}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 31, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"agg.result.A.c2", metadata !61, metadata !"float", i32 0, i32 31}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 0, i32 31, metadata !126}
!126 = metadata !{metadata !127}
!127 = metadata !{metadata !"agg.result.A.c3", metadata !61, metadata !"float", i32 0, i32 31}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 31, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"agg.result.P.a1", metadata !61, metadata !"float", i32 0, i32 31}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 31, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"agg.result.P.a2", metadata !61, metadata !"float", i32 0, i32 31}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 0, i32 31, metadata !138}
!138 = metadata !{metadata !139}
!139 = metadata !{metadata !"agg.result.P.a3", metadata !61, metadata !"float", i32 0, i32 31}
!140 = metadata !{metadata !141}
!141 = metadata !{i32 0, i32 31, metadata !142}
!142 = metadata !{metadata !143}
!143 = metadata !{metadata !"agg.result.P.b1", metadata !61, metadata !"float", i32 0, i32 31}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 31, metadata !146}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !"agg.result.P.b2", metadata !61, metadata !"float", i32 0, i32 31}
!148 = metadata !{metadata !149}
!149 = metadata !{i32 0, i32 31, metadata !150}
!150 = metadata !{metadata !151}
!151 = metadata !{metadata !"agg.result.P.b3", metadata !61, metadata !"float", i32 0, i32 31}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 0, i32 31, metadata !154}
!154 = metadata !{metadata !155}
!155 = metadata !{metadata !"agg.result.P.c1", metadata !61, metadata !"float", i32 0, i32 31}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 0, i32 31, metadata !158}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !"agg.result.P.c2", metadata !61, metadata !"float", i32 0, i32 31}
!160 = metadata !{metadata !161}
!161 = metadata !{i32 0, i32 31, metadata !162}
!162 = metadata !{metadata !163}
!163 = metadata !{metadata !"agg.result.P.c3", metadata !61, metadata !"float", i32 0, i32 31}
!164 = metadata !{metadata !165}
!165 = metadata !{i32 0, i32 31, metadata !166}
!166 = metadata !{metadata !167}
!167 = metadata !{metadata !"agg.result.Q.a1", metadata !61, metadata !"float", i32 0, i32 31}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 0, i32 31, metadata !170}
!170 = metadata !{metadata !171}
!171 = metadata !{metadata !"agg.result.Q.a2", metadata !61, metadata !"float", i32 0, i32 31}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 0, i32 31, metadata !174}
!174 = metadata !{metadata !175}
!175 = metadata !{metadata !"agg.result.Q.a3", metadata !61, metadata !"float", i32 0, i32 31}
!176 = metadata !{metadata !177}
!177 = metadata !{i32 0, i32 31, metadata !178}
!178 = metadata !{metadata !179}
!179 = metadata !{metadata !"agg.result.Q.b1", metadata !61, metadata !"float", i32 0, i32 31}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 0, i32 31, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"agg.result.Q.b2", metadata !61, metadata !"float", i32 0, i32 31}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 0, i32 31, metadata !186}
!186 = metadata !{metadata !187}
!187 = metadata !{metadata !"agg.result.Q.b3", metadata !61, metadata !"float", i32 0, i32 31}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 0, i32 31, metadata !190}
!190 = metadata !{metadata !191}
!191 = metadata !{metadata !"agg.result.Q.c1", metadata !61, metadata !"float", i32 0, i32 31}
!192 = metadata !{metadata !193}
!193 = metadata !{i32 0, i32 31, metadata !194}
!194 = metadata !{metadata !195}
!195 = metadata !{metadata !"agg.result.Q.c2", metadata !61, metadata !"float", i32 0, i32 31}
!196 = metadata !{metadata !197}
!197 = metadata !{i32 0, i32 31, metadata !198}
!198 = metadata !{metadata !199}
!199 = metadata !{metadata !"agg.result.Q.c3", metadata !61, metadata !"float", i32 0, i32 31}
!200 = metadata !{metadata !201}
!201 = metadata !{i32 0, i32 31, metadata !202}
!202 = metadata !{metadata !203}
!203 = metadata !{metadata !"agg.result.MU", metadata !61, metadata !"float", i32 0, i32 31}
!204 = metadata !{metadata !205}
!205 = metadata !{i32 0, i32 31, metadata !206}
!206 = metadata !{metadata !207}
!207 = metadata !{metadata !"agg.result.H0", metadata !61, metadata !"float", i32 0, i32 31}
!208 = metadata !{metadata !209}
!209 = metadata !{i32 0, i32 31, metadata !210}
!210 = metadata !{metadata !211}
!211 = metadata !{metadata !"agg.result.H1", metadata !61, metadata !"float", i32 0, i32 31}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 0, i32 31, metadata !214}
!214 = metadata !{metadata !215}
!215 = metadata !{metadata !"agg.result.H2", metadata !61, metadata !"float", i32 0, i32 31}
!216 = metadata !{metadata !217}
!217 = metadata !{i32 0, i32 31, metadata !218}
!218 = metadata !{metadata !219}
!219 = metadata !{metadata !"agg.result.S", metadata !61, metadata !"float", i32 0, i32 31}
!220 = metadata !{metadata !221}
!221 = metadata !{i32 0, i32 31, metadata !222}
!222 = metadata !{metadata !223}
!223 = metadata !{metadata !"agg.result.K0", metadata !61, metadata !"float", i32 0, i32 31}
!224 = metadata !{metadata !225}
!225 = metadata !{i32 0, i32 31, metadata !226}
!226 = metadata !{metadata !227}
!227 = metadata !{metadata !"agg.result.K1", metadata !61, metadata !"float", i32 0, i32 31}
!228 = metadata !{metadata !229}
!229 = metadata !{i32 0, i32 31, metadata !230}
!230 = metadata !{metadata !231}
!231 = metadata !{metadata !"agg.result.K2", metadata !61, metadata !"float", i32 0, i32 31}
!232 = metadata !{metadata !233}
!233 = metadata !{i32 0, i32 31, metadata !234}
!234 = metadata !{metadata !235}
!235 = metadata !{metadata !"agg.result.Y", metadata !61, metadata !"float", i32 0, i32 31}
!236 = metadata !{metadata !237}
!237 = metadata !{i32 0, i32 31, metadata !238}
!238 = metadata !{metadata !239}
!239 = metadata !{metadata !"value.M0", metadata !240, metadata !"float", i32 0, i32 31}
!240 = metadata !{metadata !241}
!241 = metadata !{i32 0, i32 0, i32 0}
!242 = metadata !{metadata !243}
!243 = metadata !{i32 0, i32 31, metadata !244}
!244 = metadata !{metadata !245}
!245 = metadata !{metadata !"value.M1", metadata !240, metadata !"float", i32 0, i32 31}
!246 = metadata !{metadata !247}
!247 = metadata !{i32 0, i32 31, metadata !248}
!248 = metadata !{metadata !249}
!249 = metadata !{metadata !"value.M2", metadata !240, metadata !"float", i32 0, i32 31}
!250 = metadata !{metadata !251}
!251 = metadata !{i32 0, i32 31, metadata !252}
!252 = metadata !{metadata !253}
!253 = metadata !{metadata !"value.A.a1", metadata !240, metadata !"float", i32 0, i32 31}
!254 = metadata !{metadata !255}
!255 = metadata !{i32 0, i32 31, metadata !256}
!256 = metadata !{metadata !257}
!257 = metadata !{metadata !"value.A.a2", metadata !240, metadata !"float", i32 0, i32 31}
!258 = metadata !{metadata !259}
!259 = metadata !{i32 0, i32 31, metadata !260}
!260 = metadata !{metadata !261}
!261 = metadata !{metadata !"value.A.a3", metadata !240, metadata !"float", i32 0, i32 31}
!262 = metadata !{metadata !263}
!263 = metadata !{i32 0, i32 31, metadata !264}
!264 = metadata !{metadata !265}
!265 = metadata !{metadata !"value.A.b1", metadata !240, metadata !"float", i32 0, i32 31}
!266 = metadata !{metadata !267}
!267 = metadata !{i32 0, i32 31, metadata !268}
!268 = metadata !{metadata !269}
!269 = metadata !{metadata !"value.A.b2", metadata !240, metadata !"float", i32 0, i32 31}
!270 = metadata !{metadata !271}
!271 = metadata !{i32 0, i32 31, metadata !272}
!272 = metadata !{metadata !273}
!273 = metadata !{metadata !"value.A.b3", metadata !240, metadata !"float", i32 0, i32 31}
!274 = metadata !{metadata !275}
!275 = metadata !{i32 0, i32 31, metadata !276}
!276 = metadata !{metadata !277}
!277 = metadata !{metadata !"value.A.c1", metadata !240, metadata !"float", i32 0, i32 31}
!278 = metadata !{metadata !279}
!279 = metadata !{i32 0, i32 31, metadata !280}
!280 = metadata !{metadata !281}
!281 = metadata !{metadata !"value.A.c2", metadata !240, metadata !"float", i32 0, i32 31}
!282 = metadata !{metadata !283}
!283 = metadata !{i32 0, i32 31, metadata !284}
!284 = metadata !{metadata !285}
!285 = metadata !{metadata !"value.A.c3", metadata !240, metadata !"float", i32 0, i32 31}
!286 = metadata !{metadata !287}
!287 = metadata !{i32 0, i32 31, metadata !288}
!288 = metadata !{metadata !289}
!289 = metadata !{metadata !"value.P.a1", metadata !240, metadata !"float", i32 0, i32 31}
!290 = metadata !{metadata !291}
!291 = metadata !{i32 0, i32 31, metadata !292}
!292 = metadata !{metadata !293}
!293 = metadata !{metadata !"value.P.a2", metadata !240, metadata !"float", i32 0, i32 31}
!294 = metadata !{metadata !295}
!295 = metadata !{i32 0, i32 31, metadata !296}
!296 = metadata !{metadata !297}
!297 = metadata !{metadata !"value.P.a3", metadata !240, metadata !"float", i32 0, i32 31}
!298 = metadata !{metadata !299}
!299 = metadata !{i32 0, i32 31, metadata !300}
!300 = metadata !{metadata !301}
!301 = metadata !{metadata !"value.P.b1", metadata !240, metadata !"float", i32 0, i32 31}
!302 = metadata !{metadata !303}
!303 = metadata !{i32 0, i32 31, metadata !304}
!304 = metadata !{metadata !305}
!305 = metadata !{metadata !"value.P.b2", metadata !240, metadata !"float", i32 0, i32 31}
!306 = metadata !{metadata !307}
!307 = metadata !{i32 0, i32 31, metadata !308}
!308 = metadata !{metadata !309}
!309 = metadata !{metadata !"value.P.b3", metadata !240, metadata !"float", i32 0, i32 31}
!310 = metadata !{metadata !311}
!311 = metadata !{i32 0, i32 31, metadata !312}
!312 = metadata !{metadata !313}
!313 = metadata !{metadata !"value.P.c1", metadata !240, metadata !"float", i32 0, i32 31}
!314 = metadata !{metadata !315}
!315 = metadata !{i32 0, i32 31, metadata !316}
!316 = metadata !{metadata !317}
!317 = metadata !{metadata !"value.P.c2", metadata !240, metadata !"float", i32 0, i32 31}
!318 = metadata !{metadata !319}
!319 = metadata !{i32 0, i32 31, metadata !320}
!320 = metadata !{metadata !321}
!321 = metadata !{metadata !"value.P.c3", metadata !240, metadata !"float", i32 0, i32 31}
!322 = metadata !{metadata !323}
!323 = metadata !{i32 0, i32 31, metadata !324}
!324 = metadata !{metadata !325}
!325 = metadata !{metadata !"value.Q.a1", metadata !240, metadata !"float", i32 0, i32 31}
!326 = metadata !{metadata !327}
!327 = metadata !{i32 0, i32 31, metadata !328}
!328 = metadata !{metadata !329}
!329 = metadata !{metadata !"value.Q.a2", metadata !240, metadata !"float", i32 0, i32 31}
!330 = metadata !{metadata !331}
!331 = metadata !{i32 0, i32 31, metadata !332}
!332 = metadata !{metadata !333}
!333 = metadata !{metadata !"value.Q.a3", metadata !240, metadata !"float", i32 0, i32 31}
!334 = metadata !{metadata !335}
!335 = metadata !{i32 0, i32 31, metadata !336}
!336 = metadata !{metadata !337}
!337 = metadata !{metadata !"value.Q.b1", metadata !240, metadata !"float", i32 0, i32 31}
!338 = metadata !{metadata !339}
!339 = metadata !{i32 0, i32 31, metadata !340}
!340 = metadata !{metadata !341}
!341 = metadata !{metadata !"value.Q.b2", metadata !240, metadata !"float", i32 0, i32 31}
!342 = metadata !{metadata !343}
!343 = metadata !{i32 0, i32 31, metadata !344}
!344 = metadata !{metadata !345}
!345 = metadata !{metadata !"value.Q.b3", metadata !240, metadata !"float", i32 0, i32 31}
!346 = metadata !{metadata !347}
!347 = metadata !{i32 0, i32 31, metadata !348}
!348 = metadata !{metadata !349}
!349 = metadata !{metadata !"value.Q.c1", metadata !240, metadata !"float", i32 0, i32 31}
!350 = metadata !{metadata !351}
!351 = metadata !{i32 0, i32 31, metadata !352}
!352 = metadata !{metadata !353}
!353 = metadata !{metadata !"value.Q.c2", metadata !240, metadata !"float", i32 0, i32 31}
!354 = metadata !{metadata !355}
!355 = metadata !{i32 0, i32 31, metadata !356}
!356 = metadata !{metadata !357}
!357 = metadata !{metadata !"value.Q.c3", metadata !240, metadata !"float", i32 0, i32 31}
!358 = metadata !{metadata !359}
!359 = metadata !{i32 0, i32 31, metadata !360}
!360 = metadata !{metadata !361}
!361 = metadata !{metadata !"value.MU", metadata !240, metadata !"float", i32 0, i32 31}
!362 = metadata !{metadata !363}
!363 = metadata !{i32 0, i32 31, metadata !364}
!364 = metadata !{metadata !365}
!365 = metadata !{metadata !"value.H0", metadata !240, metadata !"float", i32 0, i32 31}
!366 = metadata !{metadata !367}
!367 = metadata !{i32 0, i32 31, metadata !368}
!368 = metadata !{metadata !369}
!369 = metadata !{metadata !"value.H1", metadata !240, metadata !"float", i32 0, i32 31}
!370 = metadata !{metadata !371}
!371 = metadata !{i32 0, i32 31, metadata !372}
!372 = metadata !{metadata !373}
!373 = metadata !{metadata !"value.H2", metadata !240, metadata !"float", i32 0, i32 31}
!374 = metadata !{metadata !375}
!375 = metadata !{i32 0, i32 31, metadata !376}
!376 = metadata !{metadata !377}
!377 = metadata !{metadata !"value.S", metadata !240, metadata !"float", i32 0, i32 31}
!378 = metadata !{metadata !379}
!379 = metadata !{i32 0, i32 31, metadata !380}
!380 = metadata !{metadata !381}
!381 = metadata !{metadata !"value.K0", metadata !240, metadata !"float", i32 0, i32 31}
!382 = metadata !{metadata !383}
!383 = metadata !{i32 0, i32 31, metadata !384}
!384 = metadata !{metadata !385}
!385 = metadata !{metadata !"value.K1", metadata !240, metadata !"float", i32 0, i32 31}
!386 = metadata !{metadata !387}
!387 = metadata !{i32 0, i32 31, metadata !388}
!388 = metadata !{metadata !389}
!389 = metadata !{metadata !"value.K2", metadata !240, metadata !"float", i32 0, i32 31}
!390 = metadata !{metadata !391}
!391 = metadata !{i32 0, i32 31, metadata !392}
!392 = metadata !{metadata !393}
!393 = metadata !{metadata !"value.Y", metadata !240, metadata !"float", i32 0, i32 31}
