-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Jan 31 16:10:51 2022
-- Host        : DESKTOP-00KO0KK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/travail/S4APP2/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_calcul_param_1_0_0/design_1_calcul_param_1_0_0_sim_netlist.vhdl
-- Design      : design_1_calcul_param_1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_calcul_param_1_0_0_compteur_nbits is
  port (
    \d_val_cpt_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    i_bclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_calcul_param_1_0_0_compteur_nbits : entity is "compteur_nbits";
end design_1_calcul_param_1_0_0_compteur_nbits;

architecture STRUCTURE of design_1_calcul_param_1_0_0_compteur_nbits is
  signal cpt_en : STD_LOGIC;
  signal cpt_res : STD_LOGIC;
  signal \d_val_cpt[7]_i_4_n_0\ : STD_LOGIC;
  signal \^d_val_cpt_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \d_val_cpt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \d_val_cpt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \d_val_cpt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \d_val_cpt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \d_val_cpt[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \d_val_cpt[7]_i_2\ : label is "soft_lutpair1";
begin
  \d_val_cpt_reg[7]_0\(7 downto 0) <= \^d_val_cpt_reg[7]_0\(7 downto 0);
\d_val_cpt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^d_val_cpt_reg[7]_0\(0),
      O => plusOp(0)
    );
\d_val_cpt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^d_val_cpt_reg[7]_0\(0),
      I1 => \^d_val_cpt_reg[7]_0\(1),
      O => plusOp(1)
    );
\d_val_cpt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^d_val_cpt_reg[7]_0\(0),
      I1 => \^d_val_cpt_reg[7]_0\(1),
      I2 => \^d_val_cpt_reg[7]_0\(2),
      O => plusOp(2)
    );
\d_val_cpt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^d_val_cpt_reg[7]_0\(1),
      I1 => \^d_val_cpt_reg[7]_0\(0),
      I2 => \^d_val_cpt_reg[7]_0\(2),
      I3 => \^d_val_cpt_reg[7]_0\(3),
      O => plusOp(3)
    );
\d_val_cpt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^d_val_cpt_reg[7]_0\(2),
      I1 => \^d_val_cpt_reg[7]_0\(0),
      I2 => \^d_val_cpt_reg[7]_0\(1),
      I3 => \^d_val_cpt_reg[7]_0\(3),
      I4 => \^d_val_cpt_reg[7]_0\(4),
      O => plusOp(4)
    );
\d_val_cpt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^d_val_cpt_reg[7]_0\(3),
      I1 => \^d_val_cpt_reg[7]_0\(1),
      I2 => \^d_val_cpt_reg[7]_0\(0),
      I3 => \^d_val_cpt_reg[7]_0\(2),
      I4 => \^d_val_cpt_reg[7]_0\(4),
      I5 => \^d_val_cpt_reg[7]_0\(5),
      O => plusOp(5)
    );
\d_val_cpt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \d_val_cpt[7]_i_4_n_0\,
      I1 => \^d_val_cpt_reg[7]_0\(6),
      O => plusOp(6)
    );
\d_val_cpt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(2),
      O => cpt_en
    );
\d_val_cpt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \d_val_cpt[7]_i_4_n_0\,
      I1 => \^d_val_cpt_reg[7]_0\(6),
      I2 => \^d_val_cpt_reg[7]_0\(7),
      O => plusOp(7)
    );
\d_val_cpt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(5),
      O => cpt_res
    );
\d_val_cpt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^d_val_cpt_reg[7]_0\(5),
      I1 => \^d_val_cpt_reg[7]_0\(3),
      I2 => \^d_val_cpt_reg[7]_0\(1),
      I3 => \^d_val_cpt_reg[7]_0\(0),
      I4 => \^d_val_cpt_reg[7]_0\(2),
      I5 => \^d_val_cpt_reg[7]_0\(4),
      O => \d_val_cpt[7]_i_4_n_0\
    );
\d_val_cpt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => cpt_en,
      CLR => cpt_res,
      D => plusOp(0),
      Q => \^d_val_cpt_reg[7]_0\(0)
    );
\d_val_cpt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => cpt_en,
      CLR => cpt_res,
      D => plusOp(1),
      Q => \^d_val_cpt_reg[7]_0\(1)
    );
\d_val_cpt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => cpt_en,
      CLR => cpt_res,
      D => plusOp(2),
      Q => \^d_val_cpt_reg[7]_0\(2)
    );
\d_val_cpt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => cpt_en,
      CLR => cpt_res,
      D => plusOp(3),
      Q => \^d_val_cpt_reg[7]_0\(3)
    );
\d_val_cpt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => cpt_en,
      CLR => cpt_res,
      D => plusOp(4),
      Q => \^d_val_cpt_reg[7]_0\(4)
    );
\d_val_cpt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => cpt_en,
      CLR => cpt_res,
      D => plusOp(5),
      Q => \^d_val_cpt_reg[7]_0\(5)
    );
\d_val_cpt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => cpt_en,
      CLR => cpt_res,
      D => plusOp(6),
      Q => \^d_val_cpt_reg[7]_0\(6)
    );
\d_val_cpt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => cpt_en,
      CLR => cpt_res,
      D => plusOp(7),
      Q => \^d_val_cpt_reg[7]_0\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_calcul_param_1_0_0_calcul_param_1 is
  port (
    o_param : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_ech : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_en : in STD_LOGIC;
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_calcul_param_1_0_0_calcul_param_1 : entity is "calcul_param_1";
end design_1_calcul_param_1_0_0_calcul_param_1;

architecture STRUCTURE of design_1_calcul_param_1_0_0_calcul_param_1 is
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[13]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_prochainEtat_reg_n_0_[9]\ : STD_LOGIC;
  signal cpt_stb : STD_LOGIC;
  signal \fsm_prochainEtat__0\ : STD_LOGIC;
  signal o_val_cpt : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[0]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[10]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[11]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[12]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[13]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[1]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[2]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[3]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[4]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[5]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[6]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[7]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[8]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[9]\ : label is "sta_3:00000000001000,sta_cpt:00000000010000,sta_send:01000000000000,sta_2:00000000000100,sta_res:10000000000000,sta_6_en:00100000000000,sta_5_en:00001000000000,sta_1:00000000000010,sta_init:00000000000001,sta_4_en:00000010000000,sta_6:00010000000000,sta_cpt_en:00000000100000,sta_5:00000100000000,sta_4:00000001000000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_prochainEtat_reg[0]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_prochainEtat_reg[10]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_prochainEtat_reg[12]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_prochainEtat_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_prochainEtat_reg[2]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_prochainEtat_reg[3]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_prochainEtat_reg[6]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_prochainEtat_reg[8]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_fsm_prochainEtat_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \frquence_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \frquence_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \frquence_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \frquence_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \frquence_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \frquence_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \frquence_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \frquence_reg[7]\ : label is "LD";
begin
\FSM_onehot_fsm_EtatCourant_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_bclk,
      CE => '1',
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[0]\,
      PRE => i_reset,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[0]\
    );
\FSM_onehot_fsm_EtatCourant_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[10]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[10]\
    );
\FSM_onehot_fsm_EtatCourant_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[11]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[11]\
    );
\FSM_onehot_fsm_EtatCourant_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[12]\,
      Q => cpt_stb
    );
\FSM_onehot_fsm_EtatCourant_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[13]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[13]\
    );
\FSM_onehot_fsm_EtatCourant_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[1]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[1]\
    );
\FSM_onehot_fsm_EtatCourant_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[2]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[2]\
    );
\FSM_onehot_fsm_EtatCourant_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[3]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[3]\
    );
\FSM_onehot_fsm_EtatCourant_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[4]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[4]\
    );
\FSM_onehot_fsm_EtatCourant_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[5]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[5]\
    );
\FSM_onehot_fsm_EtatCourant_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[6]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[6]\
    );
\FSM_onehot_fsm_EtatCourant_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[7]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[7]\
    );
\FSM_onehot_fsm_EtatCourant_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[8]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[8]\
    );
\FSM_onehot_fsm_EtatCourant_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_prochainEtat_reg_n_0_[9]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[9]\
    );
\FSM_onehot_fsm_prochainEtat_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_prochainEtat_reg[0]_i_1_n_0\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[0]\
    );
\FSM_onehot_fsm_prochainEtat_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[1]\,
      I1 => i_ech(0),
      I2 => i_en,
      O => \FSM_onehot_fsm_prochainEtat_reg[0]_i_1_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_prochainEtat_reg[10]_i_1_n_0\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[10]\
    );
\FSM_onehot_fsm_prochainEtat_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F20"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[9]\,
      I1 => i_ech(0),
      I2 => i_en,
      I3 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[11]\,
      O => \FSM_onehot_fsm_prochainEtat_reg[10]_i_1_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_EtatCourant_reg_n_0_[10]\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[11]\
    );
\FSM_onehot_fsm_prochainEtat_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_prochainEtat_reg[12]_i_1_n_0\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[12]\
    );
\FSM_onehot_fsm_prochainEtat_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[11]\,
      I1 => i_en,
      I2 => i_ech(0),
      O => \FSM_onehot_fsm_prochainEtat_reg[12]_i_1_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cpt_stb,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[13]\
    );
\FSM_onehot_fsm_prochainEtat_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_fsm_prochainEtat_reg[13]_i_2_n_0\,
      I1 => \FSM_onehot_fsm_prochainEtat_reg[13]_i_3_n_0\,
      I2 => \FSM_onehot_fsm_prochainEtat_reg[13]_i_4_n_0\,
      O => \fsm_prochainEtat__0\
    );
\FSM_onehot_fsm_prochainEtat_reg[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[13]\,
      I1 => cpt_stb,
      I2 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[6]\,
      I3 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[4]\,
      I4 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[10]\,
      I5 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[8]\,
      O => \FSM_onehot_fsm_prochainEtat_reg[13]_i_2_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EEFE0000"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[1]\,
      I1 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[9]\,
      I2 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[0]\,
      I3 => i_ech(0),
      I4 => i_en,
      I5 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[11]\,
      O => \FSM_onehot_fsm_prochainEtat_reg[13]_i_3_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[3]\,
      I1 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[5]\,
      I2 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[2]\,
      I3 => i_en,
      I4 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[7]\,
      O => \FSM_onehot_fsm_prochainEtat_reg[13]_i_4_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_prochainEtat_reg[1]_i_1_n_0\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[1]\
    );
\FSM_onehot_fsm_prochainEtat_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[0]\,
      I1 => i_en,
      I2 => i_ech(0),
      I3 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[2]\,
      O => \FSM_onehot_fsm_prochainEtat_reg[1]_i_1_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_prochainEtat_reg[2]_i_1_n_0\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[2]\
    );
\FSM_onehot_fsm_prochainEtat_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[1]\,
      I1 => i_ech(0),
      I2 => i_en,
      O => \FSM_onehot_fsm_prochainEtat_reg[2]_i_1_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_prochainEtat_reg[3]_i_1_n_0\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[3]\
    );
\FSM_onehot_fsm_prochainEtat_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F20"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[2]\,
      I1 => i_ech(0),
      I2 => i_en,
      I3 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[3]\,
      O => \FSM_onehot_fsm_prochainEtat_reg[3]_i_1_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_prochainEtat_reg[4]_i_1_n_0\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[4]\
    );
\FSM_onehot_fsm_prochainEtat_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCFFFEEECCEE"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[7]\,
      I1 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[13]\,
      I2 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[3]\,
      I3 => i_en,
      I4 => i_ech(0),
      I5 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[5]\,
      O => \FSM_onehot_fsm_prochainEtat_reg[4]_i_1_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_EtatCourant_reg_n_0_[4]\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[5]\
    );
\FSM_onehot_fsm_prochainEtat_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_prochainEtat_reg[6]_i_1_n_0\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[6]\
    );
\FSM_onehot_fsm_prochainEtat_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[5]\,
      I1 => i_en,
      I2 => i_ech(0),
      I3 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[9]\,
      O => \FSM_onehot_fsm_prochainEtat_reg[6]_i_1_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_EtatCourant_reg_n_0_[6]\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[7]\
    );
\FSM_onehot_fsm_prochainEtat_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_prochainEtat_reg[8]_i_1_n_0\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[8]\
    );
\FSM_onehot_fsm_prochainEtat_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[7]\,
      I1 => i_ech(0),
      I2 => i_en,
      O => \FSM_onehot_fsm_prochainEtat_reg[8]_i_1_n_0\
    );
\FSM_onehot_fsm_prochainEtat_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_fsm_EtatCourant_reg_n_0_[8]\,
      G => \fsm_prochainEtat__0\,
      GE => '1',
      Q => \FSM_onehot_fsm_prochainEtat_reg_n_0_[9]\
    );
\frquence_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => o_val_cpt(0),
      G => cpt_stb,
      GE => '1',
      Q => o_param(0)
    );
\frquence_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => o_val_cpt(1),
      G => cpt_stb,
      GE => '1',
      Q => o_param(1)
    );
\frquence_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => o_val_cpt(2),
      G => cpt_stb,
      GE => '1',
      Q => o_param(2)
    );
\frquence_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => o_val_cpt(3),
      G => cpt_stb,
      GE => '1',
      Q => o_param(3)
    );
\frquence_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => o_val_cpt(4),
      G => cpt_stb,
      GE => '1',
      Q => o_param(4)
    );
\frquence_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => o_val_cpt(5),
      G => cpt_stb,
      GE => '1',
      Q => o_param(5)
    );
\frquence_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => o_val_cpt(6),
      G => cpt_stb,
      GE => '1',
      Q => o_param(6)
    );
\frquence_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => o_val_cpt(7),
      G => cpt_stb,
      GE => '1',
      Q => o_param(7)
    );
inst_compteur: entity work.design_1_calcul_param_1_0_0_compteur_nbits
     port map (
      Q(5) => \FSM_onehot_fsm_EtatCourant_reg_n_0_[13]\,
      Q(4) => \FSM_onehot_fsm_EtatCourant_reg_n_0_[10]\,
      Q(3) => \FSM_onehot_fsm_EtatCourant_reg_n_0_[8]\,
      Q(2) => \FSM_onehot_fsm_EtatCourant_reg_n_0_[6]\,
      Q(1) => \FSM_onehot_fsm_EtatCourant_reg_n_0_[4]\,
      Q(0) => \FSM_onehot_fsm_EtatCourant_reg_n_0_[3]\,
      \d_val_cpt_reg[7]_0\(7 downto 0) => o_val_cpt(7 downto 0),
      i_bclk => i_bclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_calcul_param_1_0_0 is
  port (
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_en : in STD_LOGIC;
    i_ech : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_param : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_calcul_param_1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_calcul_param_1_0_0 : entity is "design_1_calcul_param_1_0_0,calcul_param_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_calcul_param_1_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_calcul_param_1_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_calcul_param_1_0_0 : entity is "calcul_param_1,Vivado 2020.2";
end design_1_calcul_param_1_0_0;

architecture STRUCTURE of design_1_calcul_param_1_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of i_reset : signal is "xilinx.com:signal:reset:1.0 i_reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_reset : signal is "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_calcul_param_1_0_0_calcul_param_1
     port map (
      i_bclk => i_bclk,
      i_ech(0) => i_ech(23),
      i_en => i_en,
      i_reset => i_reset,
      o_param(7 downto 0) => o_param(7 downto 0)
    );
end STRUCTURE;
