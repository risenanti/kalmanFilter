set moduleName operator_mul
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {operator*}
set C_modelType { int 288 }
set C_modelArgList {
	{ mat3_a1_read float 32 regular  }
	{ mat3_a2_read float 32 regular  }
	{ mat3_a3_read float 32 regular  }
	{ mat3_b1_read float 32 regular  }
	{ mat3_b2_read float 32 regular  }
	{ mat3_b3_read float 32 regular  }
	{ mat3_c1_read float 32 regular  }
	{ mat3_c2_read float 32 regular  }
	{ mat3_c3_read float 32 regular  }
	{ other_a1_read float 32 regular  }
	{ other_a2_read float 32 regular  }
	{ other_a3_read float 32 regular  }
	{ other_b1_read float 32 regular  }
	{ other_b2_read float 32 regular  }
	{ other_b3_read float 32 regular  }
	{ other_c1_read float 32 regular  }
	{ other_c2_read float 32 regular  }
	{ other_c3_read float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat3_a1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mat3_a2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mat3_a3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mat3_b1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mat3_b2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mat3_b3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mat3_c1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mat3_c2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mat3_c3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "other_a1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "other_a2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "other_a3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "other_b1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "other_b2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "other_b3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "other_c1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "other_c2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "other_c3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 288} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat3_a1_read sc_in sc_lv 32 signal 0 } 
	{ mat3_a2_read sc_in sc_lv 32 signal 1 } 
	{ mat3_a3_read sc_in sc_lv 32 signal 2 } 
	{ mat3_b1_read sc_in sc_lv 32 signal 3 } 
	{ mat3_b2_read sc_in sc_lv 32 signal 4 } 
	{ mat3_b3_read sc_in sc_lv 32 signal 5 } 
	{ mat3_c1_read sc_in sc_lv 32 signal 6 } 
	{ mat3_c2_read sc_in sc_lv 32 signal 7 } 
	{ mat3_c3_read sc_in sc_lv 32 signal 8 } 
	{ other_a1_read sc_in sc_lv 32 signal 9 } 
	{ other_a2_read sc_in sc_lv 32 signal 10 } 
	{ other_a3_read sc_in sc_lv 32 signal 11 } 
	{ other_b1_read sc_in sc_lv 32 signal 12 } 
	{ other_b2_read sc_in sc_lv 32 signal 13 } 
	{ other_b3_read sc_in sc_lv 32 signal 14 } 
	{ other_c1_read sc_in sc_lv 32 signal 15 } 
	{ other_c2_read sc_in sc_lv 32 signal 16 } 
	{ other_c3_read sc_in sc_lv 32 signal 17 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
	{ ap_return_8 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mat3_a1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat3_a1_read", "role": "default" }} , 
 	{ "name": "mat3_a2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat3_a2_read", "role": "default" }} , 
 	{ "name": "mat3_a3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat3_a3_read", "role": "default" }} , 
 	{ "name": "mat3_b1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat3_b1_read", "role": "default" }} , 
 	{ "name": "mat3_b2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat3_b2_read", "role": "default" }} , 
 	{ "name": "mat3_b3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat3_b3_read", "role": "default" }} , 
 	{ "name": "mat3_c1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat3_c1_read", "role": "default" }} , 
 	{ "name": "mat3_c2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat3_c2_read", "role": "default" }} , 
 	{ "name": "mat3_c3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat3_c3_read", "role": "default" }} , 
 	{ "name": "other_a1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "other_a1_read", "role": "default" }} , 
 	{ "name": "other_a2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "other_a2_read", "role": "default" }} , 
 	{ "name": "other_a3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "other_a3_read", "role": "default" }} , 
 	{ "name": "other_b1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "other_b1_read", "role": "default" }} , 
 	{ "name": "other_b2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "other_b2_read", "role": "default" }} , 
 	{ "name": "other_b3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "other_b3_read", "role": "default" }} , 
 	{ "name": "other_c1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "other_c1_read", "role": "default" }} , 
 	{ "name": "other_c2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "other_c2_read", "role": "default" }} , 
 	{ "name": "other_c3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "other_c3_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fadd_32ns_bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fadd_32ns_bkb_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fadd_32ns_bkb_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fadd_32ns_bkb_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fadd_32ns_bkb_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fadd_32ns_bkb_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fadd_32ns_bkb_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fadd_32ns_bkb_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fadd_32ns_bkb_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filter_fmul_32ns_cud_U27", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		other_c3_read {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat3_a1_read { ap_none {  { mat3_a1_read in_data 0 32 } } }
	mat3_a2_read { ap_none {  { mat3_a2_read in_data 0 32 } } }
	mat3_a3_read { ap_none {  { mat3_a3_read in_data 0 32 } } }
	mat3_b1_read { ap_none {  { mat3_b1_read in_data 0 32 } } }
	mat3_b2_read { ap_none {  { mat3_b2_read in_data 0 32 } } }
	mat3_b3_read { ap_none {  { mat3_b3_read in_data 0 32 } } }
	mat3_c1_read { ap_none {  { mat3_c1_read in_data 0 32 } } }
	mat3_c2_read { ap_none {  { mat3_c2_read in_data 0 32 } } }
	mat3_c3_read { ap_none {  { mat3_c3_read in_data 0 32 } } }
	other_a1_read { ap_none {  { other_a1_read in_data 0 32 } } }
	other_a2_read { ap_none {  { other_a2_read in_data 0 32 } } }
	other_a3_read { ap_none {  { other_a3_read in_data 0 32 } } }
	other_b1_read { ap_none {  { other_b1_read in_data 0 32 } } }
	other_b2_read { ap_none {  { other_b2_read in_data 0 32 } } }
	other_b3_read { ap_none {  { other_b3_read in_data 0 32 } } }
	other_c1_read { ap_none {  { other_c1_read in_data 0 32 } } }
	other_c2_read { ap_none {  { other_c2_read in_data 0 32 } } }
	other_c3_read { ap_none {  { other_c3_read in_data 0 32 } } }
}
