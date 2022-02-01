// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 31 07:43:03 2022
// Host        : DESKTOP-00KO0KK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_module_commande_0_0_stub.v
// Design      : design_1_module_commande_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "module_commande,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, o_reset, i_btn, i_sw, o_btn_cd, 
  o_selection_fct, o_selection_par)
/* synthesis syn_black_box black_box_pad_pin="clk,o_reset,i_btn[3:0],i_sw[3:0],o_btn_cd[3:0],o_selection_fct[1:0],o_selection_par[1:0]" */;
  input clk;
  output o_reset;
  input [3:0]i_btn;
  input [3:0]i_sw;
  output [3:0]o_btn_cd;
  output [1:0]o_selection_fct;
  output [1:0]o_selection_par;
endmodule
