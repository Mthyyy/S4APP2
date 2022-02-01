// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 31 07:52:20 2022
// Host        : DESKTOP-00KO0KK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/travail/S4APP2/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_mef_decod_i2s_v1b_0_0/design_1_mef_decod_i2s_v1b_0_0_sim_netlist.v
// Design      : design_1_mef_decod_i2s_v1b_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mef_decod_i2s_v1b_0_0,mef_decod_i2s_v1b,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mef_decod_i2s_v1b,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_mef_decod_i2s_v1b_0_0
   (i_bclk,
    i_reset,
    i_lrc,
    i_cpt_bits,
    o_bit_enable,
    o_load_left,
    o_load_right,
    o_str_dat,
    o_cpt_bit_reset);
  input i_bclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_reset;
  input i_lrc;
  input [6:0]i_cpt_bits;
  output o_bit_enable;
  output o_load_left;
  output o_load_right;
  output o_str_dat;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 o_cpt_bit_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME o_cpt_bit_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output o_cpt_bit_reset;

  wire i_bclk;
  wire [6:0]i_cpt_bits;
  wire i_lrc;
  wire i_reset;
  wire o_bit_enable;
  wire o_cpt_bit_reset;
  wire o_load_left;
  wire o_load_right;
  wire o_str_dat;

  design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b U0
       (.i_bclk(i_bclk),
        .i_cpt_bits(i_cpt_bits),
        .i_lrc(i_lrc),
        .i_reset(i_reset),
        .o_bit_enable(o_bit_enable),
        .o_cpt_bit_reset(o_cpt_bit_reset),
        .o_load_left(o_load_left),
        .o_load_right(o_load_right),
        .o_str_dat(o_str_dat));
endmodule

(* ORIG_REF_NAME = "mef_decod_i2s_v1b" *) 
module design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b
   (o_load_right,
    o_load_left,
    o_bit_enable,
    o_str_dat,
    o_cpt_bit_reset,
    i_bclk,
    i_reset,
    i_lrc,
    i_cpt_bits);
  output o_load_right;
  output o_load_left;
  output o_bit_enable;
  output o_str_dat;
  output o_cpt_bit_reset;
  input i_bclk;
  input i_reset;
  input i_lrc;
  input [6:0]i_cpt_bits;

  wire [2:0]EtatCourant;
  wire i_bclk;
  wire [6:0]i_cpt_bits;
  wire i_lrc;
  wire i_reset;
  wire o_bit_enable;
  wire o_cpt_bit_reset;
  wire o_load_left;
  wire o_load_right;
  wire o_str_dat;
  wire [2:0]prochainEtat;
  wire [2:0]prochainEtat__0;
  wire \prochainEtat_reg[2]_i_2_n_0 ;
  wire \prochainEtat_reg[2]_i_3_n_0 ;
  wire \prochainEtat_reg[2]_i_4_n_0 ;

  FDCE \EtatCourant_reg[0] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(prochainEtat[0]),
        .Q(EtatCourant[0]));
  FDCE \EtatCourant_reg[1] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(prochainEtat[1]),
        .Q(EtatCourant[1]));
  FDCE \EtatCourant_reg[2] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(prochainEtat[2]),
        .Q(EtatCourant[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_bit_enable_INST_0
       (.I0(EtatCourant[0]),
        .I1(EtatCourant[2]),
        .O(o_bit_enable));
  LUT1 #(
    .INIT(2'h1)) 
    o_cpt_bit_reset_INST_0
       (.I0(EtatCourant[0]),
        .O(o_cpt_bit_reset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_load_left_INST_0
       (.I0(EtatCourant[1]),
        .I1(EtatCourant[0]),
        .O(o_load_left));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_load_right_INST_0
       (.I0(EtatCourant[2]),
        .I1(EtatCourant[0]),
        .O(o_load_right));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_str_dat_INST_0
       (.I0(EtatCourant[0]),
        .I1(EtatCourant[2]),
        .O(o_str_dat));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \prochainEtat_reg[0] 
       (.CLR(1'b0),
        .D(prochainEtat__0[0]),
        .G(\prochainEtat_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(prochainEtat[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0055CFFF)) 
    \prochainEtat_reg[0]_i_1 
       (.I0(EtatCourant[1]),
        .I1(\prochainEtat_reg[2]_i_4_n_0 ),
        .I2(\prochainEtat_reg[2]_i_3_n_0 ),
        .I3(EtatCourant[0]),
        .I4(EtatCourant[2]),
        .O(prochainEtat__0[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \prochainEtat_reg[1] 
       (.CLR(1'b0),
        .D(prochainEtat__0[1]),
        .G(\prochainEtat_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(prochainEtat[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h51550400)) 
    \prochainEtat_reg[1]_i_1 
       (.I0(EtatCourant[2]),
        .I1(EtatCourant[0]),
        .I2(\prochainEtat_reg[2]_i_4_n_0 ),
        .I3(\prochainEtat_reg[2]_i_3_n_0 ),
        .I4(EtatCourant[1]),
        .O(prochainEtat__0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \prochainEtat_reg[2] 
       (.CLR(1'b0),
        .D(prochainEtat__0[2]),
        .G(\prochainEtat_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(prochainEtat[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02024202)) 
    \prochainEtat_reg[2]_i_1 
       (.I0(EtatCourant[2]),
        .I1(EtatCourant[1]),
        .I2(EtatCourant[0]),
        .I3(\prochainEtat_reg[2]_i_3_n_0 ),
        .I4(\prochainEtat_reg[2]_i_4_n_0 ),
        .O(prochainEtat__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFEF5)) 
    \prochainEtat_reg[2]_i_2 
       (.I0(i_lrc),
        .I1(EtatCourant[0]),
        .I2(EtatCourant[2]),
        .I3(EtatCourant[1]),
        .O(\prochainEtat_reg[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \prochainEtat_reg[2]_i_3 
       (.I0(i_cpt_bits[6]),
        .I1(i_cpt_bits[3]),
        .I2(i_cpt_bits[5]),
        .O(\prochainEtat_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \prochainEtat_reg[2]_i_4 
       (.I0(i_cpt_bits[1]),
        .I1(i_cpt_bits[0]),
        .I2(i_cpt_bits[4]),
        .I3(i_cpt_bits[2]),
        .O(\prochainEtat_reg[2]_i_4_n_0 ));
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
