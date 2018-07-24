set C_TypeInfoList {{ 
"filter" : [[], {"return": [[],"0"] }, [{"ExternC" : 0}], [ {"value": [[],"0"] }],[],""], 
"0": [ "kf_values", {"struct": [[{"pack": 0}],[],[{ "M0": [[],  {"scalar": "float"}]},{ "M1": [[],  {"scalar": "float"}]},{ "M2": [[],  {"scalar": "float"}]},{ "A": [[], "1"]},{ "P": [[], "1"]},{ "Q": [[], "1"]},{ "MU": [[],  {"scalar": "float"}]},{ "H0": [[],  {"scalar": "float"}]},{ "H1": [[],  {"scalar": "float"}]},{ "H2": [[],  {"scalar": "float"}]},{ "S": [[],  {"scalar": "float"}]},{ "K0": [[],  {"scalar": "float"}]},{ "K1": [[],  {"scalar": "float"}]},{ "K2": [[],  {"scalar": "float"}]},{ "Y": [[],  {"scalar": "float"}]}],""]}], 
"1": [ "mat3", {"struct": [[{"pack": 0}],[],[{ "a1": [[],  {"scalar": "float"}]},{ "a2": [[],  {"scalar": "float"}]},{ "a3": [[],  {"scalar": "float"}]},{ "b1": [[],  {"scalar": "float"}]},{ "b2": [[],  {"scalar": "float"}]},{ "b3": [[],  {"scalar": "float"}]},{ "c1": [[],  {"scalar": "float"}]},{ "c2": [[],  {"scalar": "float"}]},{ "c3": [[],  {"scalar": "float"}]}],""]}]
}}
set moduleName filter
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ agg_result_M0 float 32 regular {pointer 1}  }
	{ agg_result_M1 float 32 regular {pointer 1}  }
	{ agg_result_M2 float 32 regular {pointer 1}  }
	{ agg_result_A_a1 float 32 regular {pointer 1}  }
	{ agg_result_A_a2 float 32 regular {pointer 1}  }
	{ agg_result_A_a3 float 32 regular {pointer 1}  }
	{ agg_result_A_b1 float 32 regular {pointer 1}  }
	{ agg_result_A_b2 float 32 regular {pointer 1}  }
	{ agg_result_A_b3 float 32 regular {pointer 1}  }
	{ agg_result_A_c1 float 32 regular {pointer 1}  }
	{ agg_result_A_c2 float 32 regular {pointer 1}  }
	{ agg_result_A_c3 float 32 regular {pointer 1}  }
	{ agg_result_P_a1 float 32 regular {pointer 1}  }
	{ agg_result_P_a2 float 32 regular {pointer 1}  }
	{ agg_result_P_a3 float 32 regular {pointer 1}  }
	{ agg_result_P_b1 float 32 regular {pointer 1}  }
	{ agg_result_P_b2 float 32 regular {pointer 1}  }
	{ agg_result_P_b3 float 32 regular {pointer 1}  }
	{ agg_result_P_c1 float 32 regular {pointer 1}  }
	{ agg_result_P_c2 float 32 regular {pointer 1}  }
	{ agg_result_P_c3 float 32 regular {pointer 1}  }
	{ agg_result_Q_a1 float 32 regular {pointer 1}  }
	{ agg_result_Q_a2 float 32 regular {pointer 1}  }
	{ agg_result_Q_a3 float 32 regular {pointer 1}  }
	{ agg_result_Q_b1 float 32 regular {pointer 1}  }
	{ agg_result_Q_b2 float 32 regular {pointer 1}  }
	{ agg_result_Q_b3 float 32 regular {pointer 1}  }
	{ agg_result_Q_c1 float 32 regular {pointer 1}  }
	{ agg_result_Q_c2 float 32 regular {pointer 1}  }
	{ agg_result_Q_c3 float 32 regular {pointer 1}  }
	{ agg_result_MU float 32 regular {pointer 1}  }
	{ agg_result_H0 float 32 regular {pointer 1}  }
	{ agg_result_H1 float 32 regular {pointer 1}  }
	{ agg_result_H2 float 32 regular {pointer 1}  }
	{ agg_result_S float 32 regular {pointer 1}  }
	{ agg_result_K0 float 32 regular {pointer 1}  }
	{ agg_result_K1 float 32 regular {pointer 1}  }
	{ agg_result_K2 float 32 regular {pointer 1}  }
	{ agg_result_Y float 32 regular {pointer 1}  }
	{ value_M0 float 32 regular  }
	{ value_M1 float 32 regular  }
	{ value_M2 float 32 regular  }
	{ value_A_a1 float 32 regular  }
	{ value_A_a2 float 32 regular  }
	{ value_A_a3 float 32 regular  }
	{ value_A_b1 float 32 regular  }
	{ value_A_b2 float 32 regular  }
	{ value_A_b3 float 32 regular  }
	{ value_A_c1 float 32 regular  }
	{ value_A_c2 float 32 regular  }
	{ value_A_c3 float 32 regular  }
	{ value_P_a1 float 32 regular  }
	{ value_P_a2 float 32 regular  }
	{ value_P_a3 float 32 regular  }
	{ value_P_b1 float 32 regular  }
	{ value_P_b2 float 32 regular  }
	{ value_P_b3 float 32 regular  }
	{ value_P_c1 float 32 regular  }
	{ value_P_c2 float 32 regular  }
	{ value_P_c3 float 32 regular  }
	{ value_Q_a1 float 32 regular  }
	{ value_Q_a2 float 32 regular  }
	{ value_Q_a3 float 32 regular  }
	{ value_Q_b1 float 32 regular  }
	{ value_Q_b2 float 32 regular  }
	{ value_Q_b3 float 32 regular  }
	{ value_Q_c1 float 32 regular  }
	{ value_Q_c2 float 32 regular  }
	{ value_Q_c3 float 32 regular  }
	{ value_MU float 32 unused  }
	{ value_H0 float 32 unused  }
	{ value_H1 float 32 unused  }
	{ value_H2 float 32 unused  }
	{ value_S float 32 unused  }
	{ value_K0 float 32 unused  }
	{ value_K1 float 32 unused  }
	{ value_K2 float 32 unused  }
	{ value_Y float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "agg_result_M0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.M0","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_M1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.M1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_M2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.M2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_A_a1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.A.a1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_A_a2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.A.a2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_A_a3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.A.a3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_A_b1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.A.b1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_A_b2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.A.b2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_A_b3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.A.b3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_A_c1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.A.c1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_A_c2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.A.c2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_A_c3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.A.c3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_P_a1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.P.a1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_P_a2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.P.a2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_P_a3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.P.a3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_P_b1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.P.b1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_P_b2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.P.b2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_P_b3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.P.b3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_P_c1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.P.c1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_P_c2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.P.c2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_P_c3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.P.c3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_Q_a1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.Q.a1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_Q_a2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.Q.a2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_Q_a3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.Q.a3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_Q_b1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.Q.b1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_Q_b2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.Q.b2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_Q_b3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.Q.b3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_Q_c1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.Q.c1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_Q_c2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.Q.c2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_Q_c3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.Q.c3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_MU", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.MU","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_H0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.H0","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_H1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.H1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_H2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.H2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_S", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.S","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_K0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.K0","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_K1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.K1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_K2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.K2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_Y", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.Y","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "value_M0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.M0","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_M1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.M1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_M2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.M2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_A_a1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.A.a1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_A_a2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.A.a2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_A_a3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.A.a3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_A_b1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.A.b1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_A_b2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.A.b2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_A_b3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.A.b3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_A_c1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.A.c1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_A_c2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.A.c2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_A_c3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.A.c3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_P_a1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.P.a1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_P_a2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.P.a2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_P_a3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.P.a3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_P_b1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.P.b1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_P_b2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.P.b2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_P_b3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.P.b3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_P_c1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.P.c1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_P_c2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.P.c2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_P_c3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.P.c3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_Q_a1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.Q.a1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_Q_a2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.Q.a2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_Q_a3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.Q.a3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_Q_b1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.Q.b1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_Q_b2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.Q.b2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_Q_b3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.Q.b3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_Q_c1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.Q.c1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_Q_c2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.Q.c2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_Q_c3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.Q.c3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_MU", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.MU","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_H0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.H0","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_H1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.H1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_H2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.H2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_S", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.S","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_K0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.K0","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_K1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.K1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_K2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.K2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "value_Y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "value.Y","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 123
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ agg_result_M0 sc_out sc_lv 32 signal 0 } 
	{ agg_result_M0_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ agg_result_M1 sc_out sc_lv 32 signal 1 } 
	{ agg_result_M1_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ agg_result_M2 sc_out sc_lv 32 signal 2 } 
	{ agg_result_M2_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ agg_result_A_a1 sc_out sc_lv 32 signal 3 } 
	{ agg_result_A_a1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ agg_result_A_a2 sc_out sc_lv 32 signal 4 } 
	{ agg_result_A_a2_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ agg_result_A_a3 sc_out sc_lv 32 signal 5 } 
	{ agg_result_A_a3_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ agg_result_A_b1 sc_out sc_lv 32 signal 6 } 
	{ agg_result_A_b1_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ agg_result_A_b2 sc_out sc_lv 32 signal 7 } 
	{ agg_result_A_b2_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ agg_result_A_b3 sc_out sc_lv 32 signal 8 } 
	{ agg_result_A_b3_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ agg_result_A_c1 sc_out sc_lv 32 signal 9 } 
	{ agg_result_A_c1_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ agg_result_A_c2 sc_out sc_lv 32 signal 10 } 
	{ agg_result_A_c2_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ agg_result_A_c3 sc_out sc_lv 32 signal 11 } 
	{ agg_result_A_c3_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ agg_result_P_a1 sc_out sc_lv 32 signal 12 } 
	{ agg_result_P_a1_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ agg_result_P_a2 sc_out sc_lv 32 signal 13 } 
	{ agg_result_P_a2_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ agg_result_P_a3 sc_out sc_lv 32 signal 14 } 
	{ agg_result_P_a3_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ agg_result_P_b1 sc_out sc_lv 32 signal 15 } 
	{ agg_result_P_b1_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ agg_result_P_b2 sc_out sc_lv 32 signal 16 } 
	{ agg_result_P_b2_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ agg_result_P_b3 sc_out sc_lv 32 signal 17 } 
	{ agg_result_P_b3_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ agg_result_P_c1 sc_out sc_lv 32 signal 18 } 
	{ agg_result_P_c1_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ agg_result_P_c2 sc_out sc_lv 32 signal 19 } 
	{ agg_result_P_c2_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ agg_result_P_c3 sc_out sc_lv 32 signal 20 } 
	{ agg_result_P_c3_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ agg_result_Q_a1 sc_out sc_lv 32 signal 21 } 
	{ agg_result_Q_a1_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ agg_result_Q_a2 sc_out sc_lv 32 signal 22 } 
	{ agg_result_Q_a2_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ agg_result_Q_a3 sc_out sc_lv 32 signal 23 } 
	{ agg_result_Q_a3_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ agg_result_Q_b1 sc_out sc_lv 32 signal 24 } 
	{ agg_result_Q_b1_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ agg_result_Q_b2 sc_out sc_lv 32 signal 25 } 
	{ agg_result_Q_b2_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ agg_result_Q_b3 sc_out sc_lv 32 signal 26 } 
	{ agg_result_Q_b3_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ agg_result_Q_c1 sc_out sc_lv 32 signal 27 } 
	{ agg_result_Q_c1_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ agg_result_Q_c2 sc_out sc_lv 32 signal 28 } 
	{ agg_result_Q_c2_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ agg_result_Q_c3 sc_out sc_lv 32 signal 29 } 
	{ agg_result_Q_c3_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ agg_result_MU sc_out sc_lv 32 signal 30 } 
	{ agg_result_MU_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ agg_result_H0 sc_out sc_lv 32 signal 31 } 
	{ agg_result_H0_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ agg_result_H1 sc_out sc_lv 32 signal 32 } 
	{ agg_result_H1_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ agg_result_H2 sc_out sc_lv 32 signal 33 } 
	{ agg_result_H2_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ agg_result_S sc_out sc_lv 32 signal 34 } 
	{ agg_result_S_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ agg_result_K0 sc_out sc_lv 32 signal 35 } 
	{ agg_result_K0_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ agg_result_K1 sc_out sc_lv 32 signal 36 } 
	{ agg_result_K1_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ agg_result_K2 sc_out sc_lv 32 signal 37 } 
	{ agg_result_K2_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ agg_result_Y sc_out sc_lv 32 signal 38 } 
	{ agg_result_Y_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ value_M0 sc_in sc_lv 32 signal 39 } 
	{ value_M1 sc_in sc_lv 32 signal 40 } 
	{ value_M2 sc_in sc_lv 32 signal 41 } 
	{ value_A_a1 sc_in sc_lv 32 signal 42 } 
	{ value_A_a2 sc_in sc_lv 32 signal 43 } 
	{ value_A_a3 sc_in sc_lv 32 signal 44 } 
	{ value_A_b1 sc_in sc_lv 32 signal 45 } 
	{ value_A_b2 sc_in sc_lv 32 signal 46 } 
	{ value_A_b3 sc_in sc_lv 32 signal 47 } 
	{ value_A_c1 sc_in sc_lv 32 signal 48 } 
	{ value_A_c2 sc_in sc_lv 32 signal 49 } 
	{ value_A_c3 sc_in sc_lv 32 signal 50 } 
	{ value_P_a1 sc_in sc_lv 32 signal 51 } 
	{ value_P_a2 sc_in sc_lv 32 signal 52 } 
	{ value_P_a3 sc_in sc_lv 32 signal 53 } 
	{ value_P_b1 sc_in sc_lv 32 signal 54 } 
	{ value_P_b2 sc_in sc_lv 32 signal 55 } 
	{ value_P_b3 sc_in sc_lv 32 signal 56 } 
	{ value_P_c1 sc_in sc_lv 32 signal 57 } 
	{ value_P_c2 sc_in sc_lv 32 signal 58 } 
	{ value_P_c3 sc_in sc_lv 32 signal 59 } 
	{ value_Q_a1 sc_in sc_lv 32 signal 60 } 
	{ value_Q_a2 sc_in sc_lv 32 signal 61 } 
	{ value_Q_a3 sc_in sc_lv 32 signal 62 } 
	{ value_Q_b1 sc_in sc_lv 32 signal 63 } 
	{ value_Q_b2 sc_in sc_lv 32 signal 64 } 
	{ value_Q_b3 sc_in sc_lv 32 signal 65 } 
	{ value_Q_c1 sc_in sc_lv 32 signal 66 } 
	{ value_Q_c2 sc_in sc_lv 32 signal 67 } 
	{ value_Q_c3 sc_in sc_lv 32 signal 68 } 
	{ value_MU sc_in sc_lv 32 signal 69 } 
	{ value_H0 sc_in sc_lv 32 signal 70 } 
	{ value_H1 sc_in sc_lv 32 signal 71 } 
	{ value_H2 sc_in sc_lv 32 signal 72 } 
	{ value_S sc_in sc_lv 32 signal 73 } 
	{ value_K0 sc_in sc_lv 32 signal 74 } 
	{ value_K1 sc_in sc_lv 32 signal 75 } 
	{ value_K2 sc_in sc_lv 32 signal 76 } 
	{ value_Y sc_in sc_lv 32 signal 77 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agg_result_M0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_M0", "role": "default" }} , 
 	{ "name": "agg_result_M0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_M0", "role": "ap_vld" }} , 
 	{ "name": "agg_result_M1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_M1", "role": "default" }} , 
 	{ "name": "agg_result_M1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_M1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_M2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_M2", "role": "default" }} , 
 	{ "name": "agg_result_M2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_M2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_A_a1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_A_a1", "role": "default" }} , 
 	{ "name": "agg_result_A_a1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_A_a1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_A_a2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_A_a2", "role": "default" }} , 
 	{ "name": "agg_result_A_a2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_A_a2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_A_a3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_A_a3", "role": "default" }} , 
 	{ "name": "agg_result_A_a3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_A_a3", "role": "ap_vld" }} , 
 	{ "name": "agg_result_A_b1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_A_b1", "role": "default" }} , 
 	{ "name": "agg_result_A_b1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_A_b1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_A_b2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_A_b2", "role": "default" }} , 
 	{ "name": "agg_result_A_b2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_A_b2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_A_b3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_A_b3", "role": "default" }} , 
 	{ "name": "agg_result_A_b3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_A_b3", "role": "ap_vld" }} , 
 	{ "name": "agg_result_A_c1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_A_c1", "role": "default" }} , 
 	{ "name": "agg_result_A_c1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_A_c1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_A_c2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_A_c2", "role": "default" }} , 
 	{ "name": "agg_result_A_c2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_A_c2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_A_c3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_A_c3", "role": "default" }} , 
 	{ "name": "agg_result_A_c3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_A_c3", "role": "ap_vld" }} , 
 	{ "name": "agg_result_P_a1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_P_a1", "role": "default" }} , 
 	{ "name": "agg_result_P_a1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_P_a1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_P_a2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_P_a2", "role": "default" }} , 
 	{ "name": "agg_result_P_a2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_P_a2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_P_a3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_P_a3", "role": "default" }} , 
 	{ "name": "agg_result_P_a3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_P_a3", "role": "ap_vld" }} , 
 	{ "name": "agg_result_P_b1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_P_b1", "role": "default" }} , 
 	{ "name": "agg_result_P_b1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_P_b1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_P_b2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_P_b2", "role": "default" }} , 
 	{ "name": "agg_result_P_b2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_P_b2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_P_b3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_P_b3", "role": "default" }} , 
 	{ "name": "agg_result_P_b3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_P_b3", "role": "ap_vld" }} , 
 	{ "name": "agg_result_P_c1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_P_c1", "role": "default" }} , 
 	{ "name": "agg_result_P_c1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_P_c1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_P_c2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_P_c2", "role": "default" }} , 
 	{ "name": "agg_result_P_c2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_P_c2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_P_c3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_P_c3", "role": "default" }} , 
 	{ "name": "agg_result_P_c3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_P_c3", "role": "ap_vld" }} , 
 	{ "name": "agg_result_Q_a1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_Q_a1", "role": "default" }} , 
 	{ "name": "agg_result_Q_a1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_Q_a1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_Q_a2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_Q_a2", "role": "default" }} , 
 	{ "name": "agg_result_Q_a2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_Q_a2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_Q_a3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_Q_a3", "role": "default" }} , 
 	{ "name": "agg_result_Q_a3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_Q_a3", "role": "ap_vld" }} , 
 	{ "name": "agg_result_Q_b1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_Q_b1", "role": "default" }} , 
 	{ "name": "agg_result_Q_b1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_Q_b1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_Q_b2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_Q_b2", "role": "default" }} , 
 	{ "name": "agg_result_Q_b2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_Q_b2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_Q_b3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_Q_b3", "role": "default" }} , 
 	{ "name": "agg_result_Q_b3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_Q_b3", "role": "ap_vld" }} , 
 	{ "name": "agg_result_Q_c1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_Q_c1", "role": "default" }} , 
 	{ "name": "agg_result_Q_c1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_Q_c1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_Q_c2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_Q_c2", "role": "default" }} , 
 	{ "name": "agg_result_Q_c2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_Q_c2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_Q_c3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_Q_c3", "role": "default" }} , 
 	{ "name": "agg_result_Q_c3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_Q_c3", "role": "ap_vld" }} , 
 	{ "name": "agg_result_MU", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_MU", "role": "default" }} , 
 	{ "name": "agg_result_MU_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_MU", "role": "ap_vld" }} , 
 	{ "name": "agg_result_H0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_H0", "role": "default" }} , 
 	{ "name": "agg_result_H0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_H0", "role": "ap_vld" }} , 
 	{ "name": "agg_result_H1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_H1", "role": "default" }} , 
 	{ "name": "agg_result_H1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_H1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_H2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_H2", "role": "default" }} , 
 	{ "name": "agg_result_H2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_H2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_S", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_S", "role": "default" }} , 
 	{ "name": "agg_result_S_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_S", "role": "ap_vld" }} , 
 	{ "name": "agg_result_K0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_K0", "role": "default" }} , 
 	{ "name": "agg_result_K0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_K0", "role": "ap_vld" }} , 
 	{ "name": "agg_result_K1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_K1", "role": "default" }} , 
 	{ "name": "agg_result_K1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_K1", "role": "ap_vld" }} , 
 	{ "name": "agg_result_K2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_K2", "role": "default" }} , 
 	{ "name": "agg_result_K2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_K2", "role": "ap_vld" }} , 
 	{ "name": "agg_result_Y", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_Y", "role": "default" }} , 
 	{ "name": "agg_result_Y_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_Y", "role": "ap_vld" }} , 
 	{ "name": "value_M0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_M0", "role": "default" }} , 
 	{ "name": "value_M1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_M1", "role": "default" }} , 
 	{ "name": "value_M2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_M2", "role": "default" }} , 
 	{ "name": "value_A_a1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_A_a1", "role": "default" }} , 
 	{ "name": "value_A_a2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_A_a2", "role": "default" }} , 
 	{ "name": "value_A_a3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_A_a3", "role": "default" }} , 
 	{ "name": "value_A_b1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_A_b1", "role": "default" }} , 
 	{ "name": "value_A_b2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_A_b2", "role": "default" }} , 
 	{ "name": "value_A_b3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_A_b3", "role": "default" }} , 
 	{ "name": "value_A_c1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_A_c1", "role": "default" }} , 
 	{ "name": "value_A_c2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_A_c2", "role": "default" }} , 
 	{ "name": "value_A_c3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_A_c3", "role": "default" }} , 
 	{ "name": "value_P_a1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_P_a1", "role": "default" }} , 
 	{ "name": "value_P_a2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_P_a2", "role": "default" }} , 
 	{ "name": "value_P_a3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_P_a3", "role": "default" }} , 
 	{ "name": "value_P_b1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_P_b1", "role": "default" }} , 
 	{ "name": "value_P_b2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_P_b2", "role": "default" }} , 
 	{ "name": "value_P_b3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_P_b3", "role": "default" }} , 
 	{ "name": "value_P_c1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_P_c1", "role": "default" }} , 
 	{ "name": "value_P_c2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_P_c2", "role": "default" }} , 
 	{ "name": "value_P_c3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_P_c3", "role": "default" }} , 
 	{ "name": "value_Q_a1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_Q_a1", "role": "default" }} , 
 	{ "name": "value_Q_a2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_Q_a2", "role": "default" }} , 
 	{ "name": "value_Q_a3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_Q_a3", "role": "default" }} , 
 	{ "name": "value_Q_b1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_Q_b1", "role": "default" }} , 
 	{ "name": "value_Q_b2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_Q_b2", "role": "default" }} , 
 	{ "name": "value_Q_b3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_Q_b3", "role": "default" }} , 
 	{ "name": "value_Q_c1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_Q_c1", "role": "default" }} , 
 	{ "name": "value_Q_c2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_Q_c2", "role": "default" }} , 
 	{ "name": "value_Q_c3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_Q_c3", "role": "default" }} , 
 	{ "name": "value_MU", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_MU", "role": "default" }} , 
 	{ "name": "value_H0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_H0", "role": "default" }} , 
 	{ "name": "value_H1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_H1", "role": "default" }} , 
 	{ "name": "value_H2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_H2", "role": "default" }} , 
 	{ "name": "value_S", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_S", "role": "default" }} , 
 	{ "name": "value_K0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_K0", "role": "default" }} , 
 	{ "name": "value_K1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_K1", "role": "default" }} , 
 	{ "name": "value_K2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_K2", "role": "default" }} , 
 	{ "name": "value_Y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "value_Y", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "29", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "filter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "158",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_operator_mul_fu_648"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_operator_mul_fu_648"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cordic_sincos_generi_fu_682"}],
		"Port" : [
			{"Name" : "agg_result_M0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_M1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_M2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_A_a1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_A_a2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_A_a3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_A_b1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_A_b2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_A_b3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_A_c1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_A_c2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_A_c3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_P_a1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_P_a2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_P_a3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_P_b1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_P_b2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_P_b3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_P_c1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_P_c2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_P_c3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_Q_a1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_Q_a2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_Q_a3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_Q_b1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_Q_b2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_Q_b3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_Q_c1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_Q_c2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_Q_c3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_MU", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_H0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_H1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_H2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_S", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_K0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_K1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_K2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_Y", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "value_M0", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_M1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_M2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_A_a1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_A_a2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_A_a3", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_A_b1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_A_b2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_A_b3", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_A_c1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_A_c2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_A_c3", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_P_a1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_P_a2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_P_a3", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_P_b1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_P_b2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_P_b3", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_P_c1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_P_c2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_P_c3", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_Q_a1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_Q_a2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_Q_a3", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_Q_b1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_Q_b2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_Q_b3", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_Q_c1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_Q_c2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_Q_c3", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_MU", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_H0", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_H1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_H2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_K0", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_K1", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_K2", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_Y", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_100_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_cordic_sincos_generi_fu_682", "Port" : "ref_4oPi_table_100_V"}]},
			{"Name" : "cordic_ctab_table_12_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_cordic_sincos_generi_fu_682", "Port" : "cordic_ctab_table_12_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "operator_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "mat3_a1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat3_a2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat3_a3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat3_b1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat3_b2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat3_b3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat3_c1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat3_c2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat3_c3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "other_a1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "other_a2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "other_a3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "other_b1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "other_b2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "other_b3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "other_c1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "other_c2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "other_c3_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fadd_32ns_bkb_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fadd_32ns_bkb_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fadd_32ns_bkb_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fadd_32ns_bkb_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fadd_32ns_bkb_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fadd_32ns_bkb_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fadd_32ns_bkb_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fadd_32ns_bkb_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fadd_32ns_bkb_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U21", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U22", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U23", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U24", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U25", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U26", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_fu_648.filter_fmul_32ns_cud_U27", "Parent" : "1"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cordic_sincos_generi_fu_682", "Parent" : "0", "Child" : ["30", "31", "32", "35"],
		"CDFG" : "cordic_sincos_generi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_344"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_scaled_fixed2ieee_fu_356"}],
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_100_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cordic_ctab_table_12_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cordic_sincos_generi_fu_682.ref_4oPi_table_100_V_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cordic_sincos_generi_fu_682.cordic_ctab_table_12_1_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cordic_sincos_generi_fu_682.grp_scaled_fixed2ieee_fu_344", "Parent" : "29", "Child" : ["33", "34"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cordic_sincos_generi_fu_682.grp_scaled_fixed2ieee_fu_344.filter_mux_32_32_dEe_U48", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cordic_sincos_generi_fu_682.grp_scaled_fixed2ieee_fu_344.filter_mux_32_32_dEe_U49", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cordic_sincos_generi_fu_682.grp_scaled_fixed2ieee_fu_356", "Parent" : "29", "Child" : ["36", "37"],
		"CDFG" : "scaled_fixed2ieee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "prescale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cordic_sincos_generi_fu_682.grp_scaled_fixed2ieee_fu_356.filter_mux_32_32_dEe_U48", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cordic_sincos_generi_fu_682.grp_scaled_fixed2ieee_fu_356.filter_mux_32_32_dEe_U49", "Parent" : "35"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_faddfsub_3g8j_U56", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_faddfsub_3g8j_U57", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_faddfsub_3g8j_U58", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_faddfsub_3g8j_U59", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fsub_32ns_hbi_U60", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fsub_32ns_hbi_U61", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fsub_32ns_hbi_U62", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fsub_32ns_hbi_U63", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fsub_32ns_hbi_U64", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U65", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U66", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U67", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U68", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U69", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U70", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U71", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U72", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U73", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	filter {
		agg_result_M0 {Type O LastRead -1 FirstWrite 31}
		agg_result_M1 {Type O LastRead -1 FirstWrite 34}
		agg_result_M2 {Type O LastRead -1 FirstWrite 34}
		agg_result_A_a1 {Type O LastRead -1 FirstWrite 9}
		agg_result_A_a2 {Type O LastRead -1 FirstWrite 9}
		agg_result_A_a3 {Type O LastRead -1 FirstWrite 9}
		agg_result_A_b1 {Type O LastRead -1 FirstWrite 9}
		agg_result_A_b2 {Type O LastRead -1 FirstWrite 9}
		agg_result_A_b3 {Type O LastRead -1 FirstWrite 9}
		agg_result_A_c1 {Type O LastRead -1 FirstWrite 9}
		agg_result_A_c2 {Type O LastRead -1 FirstWrite 9}
		agg_result_A_c3 {Type O LastRead -1 FirstWrite 9}
		agg_result_P_a1 {Type O LastRead -1 FirstWrite 46}
		agg_result_P_a2 {Type O LastRead -1 FirstWrite 46}
		agg_result_P_a3 {Type O LastRead -1 FirstWrite 46}
		agg_result_P_b1 {Type O LastRead -1 FirstWrite 46}
		agg_result_P_b2 {Type O LastRead -1 FirstWrite 46}
		agg_result_P_b3 {Type O LastRead -1 FirstWrite 46}
		agg_result_P_c1 {Type O LastRead -1 FirstWrite 46}
		agg_result_P_c2 {Type O LastRead -1 FirstWrite 46}
		agg_result_P_c3 {Type O LastRead -1 FirstWrite 46}
		agg_result_Q_a1 {Type O LastRead -1 FirstWrite 11}
		agg_result_Q_a2 {Type O LastRead -1 FirstWrite 11}
		agg_result_Q_a3 {Type O LastRead -1 FirstWrite 15}
		agg_result_Q_b1 {Type O LastRead -1 FirstWrite 11}
		agg_result_Q_b2 {Type O LastRead -1 FirstWrite 11}
		agg_result_Q_b3 {Type O LastRead -1 FirstWrite 15}
		agg_result_Q_c1 {Type O LastRead -1 FirstWrite 15}
		agg_result_Q_c2 {Type O LastRead -1 FirstWrite 15}
		agg_result_Q_c3 {Type O LastRead -1 FirstWrite 19}
		agg_result_MU {Type O LastRead -1 FirstWrite 21}
		agg_result_H0 {Type O LastRead -1 FirstWrite 25}
		agg_result_H1 {Type O LastRead -1 FirstWrite 46}
		agg_result_H2 {Type O LastRead -1 FirstWrite 29}
		agg_result_S {Type O LastRead -1 FirstWrite 39}
		agg_result_K0 {Type O LastRead -1 FirstWrite 41}
		agg_result_K1 {Type O LastRead -1 FirstWrite 41}
		agg_result_K2 {Type O LastRead -1 FirstWrite 41}
		agg_result_Y {Type O LastRead -1 FirstWrite 21}
		value_M0 {Type I LastRead 0 FirstWrite -1}
		value_M1 {Type I LastRead 0 FirstWrite -1}
		value_M2 {Type I LastRead 4 FirstWrite -1}
		value_A_a1 {Type I LastRead 0 FirstWrite -1}
		value_A_a2 {Type I LastRead 0 FirstWrite -1}
		value_A_a3 {Type I LastRead 4 FirstWrite -1}
		value_A_b1 {Type I LastRead 8 FirstWrite -1}
		value_A_b2 {Type I LastRead 8 FirstWrite -1}
		value_A_b3 {Type I LastRead 8 FirstWrite -1}
		value_A_c1 {Type I LastRead 3 FirstWrite -1}
		value_A_c2 {Type I LastRead 3 FirstWrite -1}
		value_A_c3 {Type I LastRead 7 FirstWrite -1}
		value_P_a1 {Type I LastRead 8 FirstWrite -1}
		value_P_a2 {Type I LastRead 8 FirstWrite -1}
		value_P_a3 {Type I LastRead 8 FirstWrite -1}
		value_P_b1 {Type I LastRead 8 FirstWrite -1}
		value_P_b2 {Type I LastRead 8 FirstWrite -1}
		value_P_b3 {Type I LastRead 8 FirstWrite -1}
		value_P_c1 {Type I LastRead 8 FirstWrite -1}
		value_P_c2 {Type I LastRead 8 FirstWrite -1}
		value_P_c3 {Type I LastRead 8 FirstWrite -1}
		value_Q_a1 {Type I LastRead 11 FirstWrite -1}
		value_Q_a2 {Type I LastRead 11 FirstWrite -1}
		value_Q_a3 {Type I LastRead 15 FirstWrite -1}
		value_Q_b1 {Type I LastRead 11 FirstWrite -1}
		value_Q_b2 {Type I LastRead 11 FirstWrite -1}
		value_Q_b3 {Type I LastRead 15 FirstWrite -1}
		value_Q_c1 {Type I LastRead 15 FirstWrite -1}
		value_Q_c2 {Type I LastRead 15 FirstWrite -1}
		value_Q_c3 {Type I LastRead 19 FirstWrite -1}
		value_MU {Type I LastRead -1 FirstWrite -1}
		value_H0 {Type I LastRead -1 FirstWrite -1}
		value_H1 {Type I LastRead -1 FirstWrite -1}
		value_H2 {Type I LastRead -1 FirstWrite -1}
		value_S {Type I LastRead -1 FirstWrite -1}
		value_K0 {Type I LastRead -1 FirstWrite -1}
		value_K1 {Type I LastRead -1 FirstWrite -1}
		value_K2 {Type I LastRead -1 FirstWrite -1}
		value_Y {Type I LastRead 21 FirstWrite -1}
		ref_4oPi_table_100_V {Type I LastRead -1 FirstWrite -1}
		cordic_ctab_table_12_1 {Type I LastRead -1 FirstWrite -1}}
	operator_mul {
		mat3_a1_read {Type I LastRead 0 FirstWrite -1}
		mat3_a2_read {Type I LastRead 0 FirstWrite -1}
		mat3_a3_read {Type I LastRead 4 FirstWrite -1}
		mat3_b1_read {Type I LastRead 0 FirstWrite -1}
		mat3_b2_read {Type I LastRead 0 FirstWrite -1}
		mat3_b3_read {Type I LastRead 4 FirstWrite -1}
		mat3_c1_read {Type I LastRead 0 FirstWrite -1}
		mat3_c2_read {Type I LastRead 0 FirstWrite -1}
		mat3_c3_read {Type I LastRead 4 FirstWrite -1}
		other_a1_read {Type I LastRead 0 FirstWrite -1}
		other_a2_read {Type I LastRead 0 FirstWrite -1}
		other_a3_read {Type I LastRead 0 FirstWrite -1}
		other_b1_read {Type I LastRead 0 FirstWrite -1}
		other_b2_read {Type I LastRead 0 FirstWrite -1}
		other_b3_read {Type I LastRead 0 FirstWrite -1}
		other_c1_read {Type I LastRead 4 FirstWrite -1}
		other_c2_read {Type I LastRead 4 FirstWrite -1}
		other_c3_read {Type I LastRead 4 FirstWrite -1}}
	cordic_sincos_generi {
		t_in {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_100_V {Type I LastRead -1 FirstWrite -1}
		cordic_ctab_table_12_1 {Type I LastRead -1 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}
	scaled_fixed2ieee {
		in_V {Type I LastRead 0 FirstWrite -1}
		prescale {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "158"}
	, {"Name" : "Interval", "Min" : "67", "Max" : "159"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	agg_result_M0 { ap_vld {  { agg_result_M0 out_data 1 32 }  { agg_result_M0_ap_vld out_vld 1 1 } } }
	agg_result_M1 { ap_vld {  { agg_result_M1 out_data 1 32 }  { agg_result_M1_ap_vld out_vld 1 1 } } }
	agg_result_M2 { ap_vld {  { agg_result_M2 out_data 1 32 }  { agg_result_M2_ap_vld out_vld 1 1 } } }
	agg_result_A_a1 { ap_vld {  { agg_result_A_a1 out_data 1 32 }  { agg_result_A_a1_ap_vld out_vld 1 1 } } }
	agg_result_A_a2 { ap_vld {  { agg_result_A_a2 out_data 1 32 }  { agg_result_A_a2_ap_vld out_vld 1 1 } } }
	agg_result_A_a3 { ap_vld {  { agg_result_A_a3 out_data 1 32 }  { agg_result_A_a3_ap_vld out_vld 1 1 } } }
	agg_result_A_b1 { ap_vld {  { agg_result_A_b1 out_data 1 32 }  { agg_result_A_b1_ap_vld out_vld 1 1 } } }
	agg_result_A_b2 { ap_vld {  { agg_result_A_b2 out_data 1 32 }  { agg_result_A_b2_ap_vld out_vld 1 1 } } }
	agg_result_A_b3 { ap_vld {  { agg_result_A_b3 out_data 1 32 }  { agg_result_A_b3_ap_vld out_vld 1 1 } } }
	agg_result_A_c1 { ap_vld {  { agg_result_A_c1 out_data 1 32 }  { agg_result_A_c1_ap_vld out_vld 1 1 } } }
	agg_result_A_c2 { ap_vld {  { agg_result_A_c2 out_data 1 32 }  { agg_result_A_c2_ap_vld out_vld 1 1 } } }
	agg_result_A_c3 { ap_vld {  { agg_result_A_c3 out_data 1 32 }  { agg_result_A_c3_ap_vld out_vld 1 1 } } }
	agg_result_P_a1 { ap_vld {  { agg_result_P_a1 out_data 1 32 }  { agg_result_P_a1_ap_vld out_vld 1 1 } } }
	agg_result_P_a2 { ap_vld {  { agg_result_P_a2 out_data 1 32 }  { agg_result_P_a2_ap_vld out_vld 1 1 } } }
	agg_result_P_a3 { ap_vld {  { agg_result_P_a3 out_data 1 32 }  { agg_result_P_a3_ap_vld out_vld 1 1 } } }
	agg_result_P_b1 { ap_vld {  { agg_result_P_b1 out_data 1 32 }  { agg_result_P_b1_ap_vld out_vld 1 1 } } }
	agg_result_P_b2 { ap_vld {  { agg_result_P_b2 out_data 1 32 }  { agg_result_P_b2_ap_vld out_vld 1 1 } } }
	agg_result_P_b3 { ap_vld {  { agg_result_P_b3 out_data 1 32 }  { agg_result_P_b3_ap_vld out_vld 1 1 } } }
	agg_result_P_c1 { ap_vld {  { agg_result_P_c1 out_data 1 32 }  { agg_result_P_c1_ap_vld out_vld 1 1 } } }
	agg_result_P_c2 { ap_vld {  { agg_result_P_c2 out_data 1 32 }  { agg_result_P_c2_ap_vld out_vld 1 1 } } }
	agg_result_P_c3 { ap_vld {  { agg_result_P_c3 out_data 1 32 }  { agg_result_P_c3_ap_vld out_vld 1 1 } } }
	agg_result_Q_a1 { ap_vld {  { agg_result_Q_a1 out_data 1 32 }  { agg_result_Q_a1_ap_vld out_vld 1 1 } } }
	agg_result_Q_a2 { ap_vld {  { agg_result_Q_a2 out_data 1 32 }  { agg_result_Q_a2_ap_vld out_vld 1 1 } } }
	agg_result_Q_a3 { ap_vld {  { agg_result_Q_a3 out_data 1 32 }  { agg_result_Q_a3_ap_vld out_vld 1 1 } } }
	agg_result_Q_b1 { ap_vld {  { agg_result_Q_b1 out_data 1 32 }  { agg_result_Q_b1_ap_vld out_vld 1 1 } } }
	agg_result_Q_b2 { ap_vld {  { agg_result_Q_b2 out_data 1 32 }  { agg_result_Q_b2_ap_vld out_vld 1 1 } } }
	agg_result_Q_b3 { ap_vld {  { agg_result_Q_b3 out_data 1 32 }  { agg_result_Q_b3_ap_vld out_vld 1 1 } } }
	agg_result_Q_c1 { ap_vld {  { agg_result_Q_c1 out_data 1 32 }  { agg_result_Q_c1_ap_vld out_vld 1 1 } } }
	agg_result_Q_c2 { ap_vld {  { agg_result_Q_c2 out_data 1 32 }  { agg_result_Q_c2_ap_vld out_vld 1 1 } } }
	agg_result_Q_c3 { ap_vld {  { agg_result_Q_c3 out_data 1 32 }  { agg_result_Q_c3_ap_vld out_vld 1 1 } } }
	agg_result_MU { ap_vld {  { agg_result_MU out_data 1 32 }  { agg_result_MU_ap_vld out_vld 1 1 } } }
	agg_result_H0 { ap_vld {  { agg_result_H0 out_data 1 32 }  { agg_result_H0_ap_vld out_vld 1 1 } } }
	agg_result_H1 { ap_vld {  { agg_result_H1 out_data 1 32 }  { agg_result_H1_ap_vld out_vld 1 1 } } }
	agg_result_H2 { ap_vld {  { agg_result_H2 out_data 1 32 }  { agg_result_H2_ap_vld out_vld 1 1 } } }
	agg_result_S { ap_vld {  { agg_result_S out_data 1 32 }  { agg_result_S_ap_vld out_vld 1 1 } } }
	agg_result_K0 { ap_vld {  { agg_result_K0 out_data 1 32 }  { agg_result_K0_ap_vld out_vld 1 1 } } }
	agg_result_K1 { ap_vld {  { agg_result_K1 out_data 1 32 }  { agg_result_K1_ap_vld out_vld 1 1 } } }
	agg_result_K2 { ap_vld {  { agg_result_K2 out_data 1 32 }  { agg_result_K2_ap_vld out_vld 1 1 } } }
	agg_result_Y { ap_vld {  { agg_result_Y out_data 1 32 }  { agg_result_Y_ap_vld out_vld 1 1 } } }
	value_M0 { ap_none {  { value_M0 in_data 0 32 } } }
	value_M1 { ap_none {  { value_M1 in_data 0 32 } } }
	value_M2 { ap_none {  { value_M2 in_data 0 32 } } }
	value_A_a1 { ap_none {  { value_A_a1 in_data 0 32 } } }
	value_A_a2 { ap_none {  { value_A_a2 in_data 0 32 } } }
	value_A_a3 { ap_none {  { value_A_a3 in_data 0 32 } } }
	value_A_b1 { ap_none {  { value_A_b1 in_data 0 32 } } }
	value_A_b2 { ap_none {  { value_A_b2 in_data 0 32 } } }
	value_A_b3 { ap_none {  { value_A_b3 in_data 0 32 } } }
	value_A_c1 { ap_none {  { value_A_c1 in_data 0 32 } } }
	value_A_c2 { ap_none {  { value_A_c2 in_data 0 32 } } }
	value_A_c3 { ap_none {  { value_A_c3 in_data 0 32 } } }
	value_P_a1 { ap_none {  { value_P_a1 in_data 0 32 } } }
	value_P_a2 { ap_none {  { value_P_a2 in_data 0 32 } } }
	value_P_a3 { ap_none {  { value_P_a3 in_data 0 32 } } }
	value_P_b1 { ap_none {  { value_P_b1 in_data 0 32 } } }
	value_P_b2 { ap_none {  { value_P_b2 in_data 0 32 } } }
	value_P_b3 { ap_none {  { value_P_b3 in_data 0 32 } } }
	value_P_c1 { ap_none {  { value_P_c1 in_data 0 32 } } }
	value_P_c2 { ap_none {  { value_P_c2 in_data 0 32 } } }
	value_P_c3 { ap_none {  { value_P_c3 in_data 0 32 } } }
	value_Q_a1 { ap_none {  { value_Q_a1 in_data 0 32 } } }
	value_Q_a2 { ap_none {  { value_Q_a2 in_data 0 32 } } }
	value_Q_a3 { ap_none {  { value_Q_a3 in_data 0 32 } } }
	value_Q_b1 { ap_none {  { value_Q_b1 in_data 0 32 } } }
	value_Q_b2 { ap_none {  { value_Q_b2 in_data 0 32 } } }
	value_Q_b3 { ap_none {  { value_Q_b3 in_data 0 32 } } }
	value_Q_c1 { ap_none {  { value_Q_c1 in_data 0 32 } } }
	value_Q_c2 { ap_none {  { value_Q_c2 in_data 0 32 } } }
	value_Q_c3 { ap_none {  { value_Q_c3 in_data 0 32 } } }
	value_MU { ap_none {  { value_MU in_data 0 32 } } }
	value_H0 { ap_none {  { value_H0 in_data 0 32 } } }
	value_H1 { ap_none {  { value_H1 in_data 0 32 } } }
	value_H2 { ap_none {  { value_H2 in_data 0 32 } } }
	value_S { ap_none {  { value_S in_data 0 32 } } }
	value_K0 { ap_none {  { value_K0 in_data 0 32 } } }
	value_K1 { ap_none {  { value_K1 in_data 0 32 } } }
	value_K2 { ap_none {  { value_K2 in_data 0 32 } } }
	value_Y { ap_none {  { value_Y in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
