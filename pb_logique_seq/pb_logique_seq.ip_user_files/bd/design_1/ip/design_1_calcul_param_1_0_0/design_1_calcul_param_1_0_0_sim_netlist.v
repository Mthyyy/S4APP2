// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 31 16:10:51 2022
// Host        : DESKTOP-00KO0KK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/travail/S4APP2/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_calcul_param_1_0_0/design_1_calcul_param_1_0_0_sim_netlist.v
// Design      : design_1_calcul_param_1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_calcul_param_1_0_0,calcul_param_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "calcul_param_1,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_calcul_param_1_0_0
   (i_bclk,
    i_reset,
    i_en,
    i_ech,
    o_param);
  input i_bclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_reset;
  input i_en;
  input [23:0]i_ech;
  output [7:0]o_param;

  wire i_bclk;
  wire [23:0]i_ech;
  wire i_en;
  wire i_reset;
  wire [7:0]o_param;

  design_1_calcul_param_1_0_0_calcul_param_1 U0
       (.i_bclk(i_bclk),
        .i_ech(i_ech[23]),
        .i_en(i_en),
        .i_reset(i_reset),
        .o_param(o_param));
endmodule

(* ORIG_REF_NAME = "calcul_param_1" *) 
module design_1_calcul_param_1_0_0_calcul_param_1
   (o_param,
    i_ech,
    i_en,
    i_bclk,
    i_reset);
  output [7:0]o_param;
  input [0:0]i_ech;
  input i_en;
  input i_bclk;
  input i_reset;

  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[0] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[10] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[11] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[13] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[1] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[2] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[3] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[4] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[5] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[6] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[7] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[8] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[9] ;
  wire \FSM_onehot_fsm_prochainEtat_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg[10]_i_1_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg[12]_i_1_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg[13]_i_2_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg[13]_i_3_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg[13]_i_4_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg[6]_i_1_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg[8]_i_1_n_0 ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[0] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[10] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[11] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[12] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[13] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[1] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[2] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[3] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[4] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[5] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[6] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[7] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[8] ;
  wire \FSM_onehot_fsm_prochainEtat_reg_n_0_[9] ;
  wire cpt_stb;
  wire fsm_prochainEtat__0;
  wire i_bclk;
  wire [0:0]i_ech;
  wire i_en;
  wire i_reset;
  wire [7:0]o_param;
  wire [7:0]o_val_cpt;

  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_fsm_EtatCourant_reg[0] 
       (.C(i_bclk),
        .CE(1'b1),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[0] ),
        .PRE(i_reset),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[10] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[10] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[11] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[11] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[12] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[12] ),
        .Q(cpt_stb));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[13] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[13] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[13] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[1] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[1] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[2] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[2] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[3] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[3] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[4] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[4] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[5] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[5] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[6] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[6] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[7] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[7] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[8] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[8] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[9] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_prochainEtat_reg_n_0_[9] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[9] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_fsm_prochainEtat_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_prochainEtat_reg[0]_i_1_n_0 ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_onehot_fsm_prochainEtat_reg[0]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[1] ),
        .I1(i_ech),
        .I2(i_en),
        .O(\FSM_onehot_fsm_prochainEtat_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[10] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_prochainEtat_reg[10]_i_1_n_0 ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[10] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3F20)) 
    \FSM_onehot_fsm_prochainEtat_reg[10]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[9] ),
        .I1(i_ech),
        .I2(i_en),
        .I3(\FSM_onehot_fsm_EtatCourant_reg_n_0_[11] ),
        .O(\FSM_onehot_fsm_prochainEtat_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[11] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_EtatCourant_reg_n_0_[10] ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[11] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[12] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_prochainEtat_reg[12]_i_1_n_0 ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[12] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_fsm_prochainEtat_reg[12]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[11] ),
        .I1(i_en),
        .I2(i_ech),
        .O(\FSM_onehot_fsm_prochainEtat_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[13] 
       (.CLR(1'b0),
        .D(cpt_stb),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[13] ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_fsm_prochainEtat_reg[13]_i_1 
       (.I0(\FSM_onehot_fsm_prochainEtat_reg[13]_i_2_n_0 ),
        .I1(\FSM_onehot_fsm_prochainEtat_reg[13]_i_3_n_0 ),
        .I2(\FSM_onehot_fsm_prochainEtat_reg[13]_i_4_n_0 ),
        .O(fsm_prochainEtat__0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_fsm_prochainEtat_reg[13]_i_2 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[13] ),
        .I1(cpt_stb),
        .I2(\FSM_onehot_fsm_EtatCourant_reg_n_0_[6] ),
        .I3(\FSM_onehot_fsm_EtatCourant_reg_n_0_[4] ),
        .I4(\FSM_onehot_fsm_EtatCourant_reg_n_0_[10] ),
        .I5(\FSM_onehot_fsm_EtatCourant_reg_n_0_[8] ),
        .O(\FSM_onehot_fsm_prochainEtat_reg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EEFE0000)) 
    \FSM_onehot_fsm_prochainEtat_reg[13]_i_3 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[1] ),
        .I1(\FSM_onehot_fsm_EtatCourant_reg_n_0_[9] ),
        .I2(\FSM_onehot_fsm_EtatCourant_reg_n_0_[0] ),
        .I3(i_ech),
        .I4(i_en),
        .I5(\FSM_onehot_fsm_EtatCourant_reg_n_0_[11] ),
        .O(\FSM_onehot_fsm_prochainEtat_reg[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    \FSM_onehot_fsm_prochainEtat_reg[13]_i_4 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[3] ),
        .I1(\FSM_onehot_fsm_EtatCourant_reg_n_0_[5] ),
        .I2(\FSM_onehot_fsm_EtatCourant_reg_n_0_[2] ),
        .I3(i_en),
        .I4(\FSM_onehot_fsm_EtatCourant_reg_n_0_[7] ),
        .O(\FSM_onehot_fsm_prochainEtat_reg[13]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_prochainEtat_reg[1]_i_1_n_0 ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \FSM_onehot_fsm_prochainEtat_reg[1]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[0] ),
        .I1(i_en),
        .I2(i_ech),
        .I3(\FSM_onehot_fsm_EtatCourant_reg_n_0_[2] ),
        .O(\FSM_onehot_fsm_prochainEtat_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_prochainEtat_reg[2]_i_1_n_0 ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_fsm_prochainEtat_reg[2]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[1] ),
        .I1(i_ech),
        .I2(i_en),
        .O(\FSM_onehot_fsm_prochainEtat_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_prochainEtat_reg[3]_i_1_n_0 ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h3F20)) 
    \FSM_onehot_fsm_prochainEtat_reg[3]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[2] ),
        .I1(i_ech),
        .I2(i_en),
        .I3(\FSM_onehot_fsm_EtatCourant_reg_n_0_[3] ),
        .O(\FSM_onehot_fsm_prochainEtat_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_prochainEtat_reg[4]_i_1_n_0 ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'hFFFFCCFFFEEECCEE)) 
    \FSM_onehot_fsm_prochainEtat_reg[4]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[7] ),
        .I1(\FSM_onehot_fsm_EtatCourant_reg_n_0_[13] ),
        .I2(\FSM_onehot_fsm_EtatCourant_reg_n_0_[3] ),
        .I3(i_en),
        .I4(i_ech),
        .I5(\FSM_onehot_fsm_EtatCourant_reg_n_0_[5] ),
        .O(\FSM_onehot_fsm_prochainEtat_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[5] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_EtatCourant_reg_n_0_[4] ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[6] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_prochainEtat_reg[6]_i_1_n_0 ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \FSM_onehot_fsm_prochainEtat_reg[6]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[5] ),
        .I1(i_en),
        .I2(i_ech),
        .I3(\FSM_onehot_fsm_EtatCourant_reg_n_0_[9] ),
        .O(\FSM_onehot_fsm_prochainEtat_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[7] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_EtatCourant_reg_n_0_[6] ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[8] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_prochainEtat_reg[8]_i_1_n_0 ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[8] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_fsm_prochainEtat_reg[8]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[7] ),
        .I1(i_ech),
        .I2(i_en),
        .O(\FSM_onehot_fsm_prochainEtat_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_prochainEtat_reg[9] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_EtatCourant_reg_n_0_[8] ),
        .G(fsm_prochainEtat__0),
        .GE(1'b1),
        .Q(\FSM_onehot_fsm_prochainEtat_reg_n_0_[9] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \frquence_reg[0] 
       (.CLR(1'b0),
        .D(o_val_cpt[0]),
        .G(cpt_stb),
        .GE(1'b1),
        .Q(o_param[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \frquence_reg[1] 
       (.CLR(1'b0),
        .D(o_val_cpt[1]),
        .G(cpt_stb),
        .GE(1'b1),
        .Q(o_param[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \frquence_reg[2] 
       (.CLR(1'b0),
        .D(o_val_cpt[2]),
        .G(cpt_stb),
        .GE(1'b1),
        .Q(o_param[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \frquence_reg[3] 
       (.CLR(1'b0),
        .D(o_val_cpt[3]),
        .G(cpt_stb),
        .GE(1'b1),
        .Q(o_param[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \frquence_reg[4] 
       (.CLR(1'b0),
        .D(o_val_cpt[4]),
        .G(cpt_stb),
        .GE(1'b1),
        .Q(o_param[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \frquence_reg[5] 
       (.CLR(1'b0),
        .D(o_val_cpt[5]),
        .G(cpt_stb),
        .GE(1'b1),
        .Q(o_param[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \frquence_reg[6] 
       (.CLR(1'b0),
        .D(o_val_cpt[6]),
        .G(cpt_stb),
        .GE(1'b1),
        .Q(o_param[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \frquence_reg[7] 
       (.CLR(1'b0),
        .D(o_val_cpt[7]),
        .G(cpt_stb),
        .GE(1'b1),
        .Q(o_param[7]));
  design_1_calcul_param_1_0_0_compteur_nbits inst_compteur
       (.Q({\FSM_onehot_fsm_EtatCourant_reg_n_0_[13] ,\FSM_onehot_fsm_EtatCourant_reg_n_0_[10] ,\FSM_onehot_fsm_EtatCourant_reg_n_0_[8] ,\FSM_onehot_fsm_EtatCourant_reg_n_0_[6] ,\FSM_onehot_fsm_EtatCourant_reg_n_0_[4] ,\FSM_onehot_fsm_EtatCourant_reg_n_0_[3] }),
        .\d_val_cpt_reg[7]_0 (o_val_cpt),
        .i_bclk(i_bclk));
endmodule

(* ORIG_REF_NAME = "compteur_nbits" *) 
module design_1_calcul_param_1_0_0_compteur_nbits
   (\d_val_cpt_reg[7]_0 ,
    Q,
    i_bclk);
  output [7:0]\d_val_cpt_reg[7]_0 ;
  input [5:0]Q;
  input i_bclk;

  wire [5:0]Q;
  wire cpt_en;
  wire cpt_res;
  wire \d_val_cpt[7]_i_4_n_0 ;
  wire [7:0]\d_val_cpt_reg[7]_0 ;
  wire i_bclk;
  wire [7:0]plusOp;

  LUT1 #(
    .INIT(2'h1)) 
    \d_val_cpt[0]_i_1 
       (.I0(\d_val_cpt_reg[7]_0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \d_val_cpt[1]_i_1 
       (.I0(\d_val_cpt_reg[7]_0 [0]),
        .I1(\d_val_cpt_reg[7]_0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \d_val_cpt[2]_i_1 
       (.I0(\d_val_cpt_reg[7]_0 [0]),
        .I1(\d_val_cpt_reg[7]_0 [1]),
        .I2(\d_val_cpt_reg[7]_0 [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \d_val_cpt[3]_i_1 
       (.I0(\d_val_cpt_reg[7]_0 [1]),
        .I1(\d_val_cpt_reg[7]_0 [0]),
        .I2(\d_val_cpt_reg[7]_0 [2]),
        .I3(\d_val_cpt_reg[7]_0 [3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \d_val_cpt[4]_i_1 
       (.I0(\d_val_cpt_reg[7]_0 [2]),
        .I1(\d_val_cpt_reg[7]_0 [0]),
        .I2(\d_val_cpt_reg[7]_0 [1]),
        .I3(\d_val_cpt_reg[7]_0 [3]),
        .I4(\d_val_cpt_reg[7]_0 [4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \d_val_cpt[5]_i_1 
       (.I0(\d_val_cpt_reg[7]_0 [3]),
        .I1(\d_val_cpt_reg[7]_0 [1]),
        .I2(\d_val_cpt_reg[7]_0 [0]),
        .I3(\d_val_cpt_reg[7]_0 [2]),
        .I4(\d_val_cpt_reg[7]_0 [4]),
        .I5(\d_val_cpt_reg[7]_0 [5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \d_val_cpt[6]_i_1 
       (.I0(\d_val_cpt[7]_i_4_n_0 ),
        .I1(\d_val_cpt_reg[7]_0 [6]),
        .O(plusOp[6]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \d_val_cpt[7]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(cpt_en));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \d_val_cpt[7]_i_2 
       (.I0(\d_val_cpt[7]_i_4_n_0 ),
        .I1(\d_val_cpt_reg[7]_0 [6]),
        .I2(\d_val_cpt_reg[7]_0 [7]),
        .O(plusOp[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \d_val_cpt[7]_i_3 
       (.I0(Q[0]),
        .I1(Q[5]),
        .O(cpt_res));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \d_val_cpt[7]_i_4 
       (.I0(\d_val_cpt_reg[7]_0 [5]),
        .I1(\d_val_cpt_reg[7]_0 [3]),
        .I2(\d_val_cpt_reg[7]_0 [1]),
        .I3(\d_val_cpt_reg[7]_0 [0]),
        .I4(\d_val_cpt_reg[7]_0 [2]),
        .I5(\d_val_cpt_reg[7]_0 [4]),
        .O(\d_val_cpt[7]_i_4_n_0 ));
  FDCE \d_val_cpt_reg[0] 
       (.C(i_bclk),
        .CE(cpt_en),
        .CLR(cpt_res),
        .D(plusOp[0]),
        .Q(\d_val_cpt_reg[7]_0 [0]));
  FDCE \d_val_cpt_reg[1] 
       (.C(i_bclk),
        .CE(cpt_en),
        .CLR(cpt_res),
        .D(plusOp[1]),
        .Q(\d_val_cpt_reg[7]_0 [1]));
  FDCE \d_val_cpt_reg[2] 
       (.C(i_bclk),
        .CE(cpt_en),
        .CLR(cpt_res),
        .D(plusOp[2]),
        .Q(\d_val_cpt_reg[7]_0 [2]));
  FDCE \d_val_cpt_reg[3] 
       (.C(i_bclk),
        .CE(cpt_en),
        .CLR(cpt_res),
        .D(plusOp[3]),
        .Q(\d_val_cpt_reg[7]_0 [3]));
  FDCE \d_val_cpt_reg[4] 
       (.C(i_bclk),
        .CE(cpt_en),
        .CLR(cpt_res),
        .D(plusOp[4]),
        .Q(\d_val_cpt_reg[7]_0 [4]));
  FDCE \d_val_cpt_reg[5] 
       (.C(i_bclk),
        .CE(cpt_en),
        .CLR(cpt_res),
        .D(plusOp[5]),
        .Q(\d_val_cpt_reg[7]_0 [5]));
  FDCE \d_val_cpt_reg[6] 
       (.C(i_bclk),
        .CE(cpt_en),
        .CLR(cpt_res),
        .D(plusOp[6]),
        .Q(\d_val_cpt_reg[7]_0 [6]));
  FDCE \d_val_cpt_reg[7] 
       (.C(i_bclk),
        .CE(cpt_en),
        .CLR(cpt_res),
        .D(plusOp[7]),
        .Q(\d_val_cpt_reg[7]_0 [7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
