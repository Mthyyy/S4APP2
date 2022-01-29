-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Jan 29 10:43:15 2022
-- Host        : DESKTOP-00KO0KK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/travail/S4APP2/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_mef_decod_i2s_v1b_0_0/design_1_mef_decod_i2s_v1b_0_0_sim_netlist.vhdl
-- Design      : design_1_mef_decod_i2s_v1b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b is
  port (
    o_bit_enable : out STD_LOGIC;
    o_load_right : out STD_LOGIC;
    o_load_left : out STD_LOGIC;
    o_str_dat : out STD_LOGIC;
    o_cpt_bit_reset : out STD_LOGIC;
    i_bclk : in STD_LOGIC;
    i_cpt_bits : in STD_LOGIC_VECTOR ( 6 downto 0 );
    i_lrc : in STD_LOGIC;
    i_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b : entity is "mef_decod_i2s_v1b";
end design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b;

architecture STRUCTURE of design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b is
  signal EtatCourant : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal prochainEtat : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \prochainEtat[0]_C_n_0\ : STD_LOGIC;
  signal \prochainEtat[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \prochainEtat[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \prochainEtat[0]_LDC_n_0\ : STD_LOGIC;
  signal \prochainEtat[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \prochainEtat[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \prochainEtat[1]_LDC_n_0\ : STD_LOGIC;
  signal \prochainEtat[1]_P_n_0\ : STD_LOGIC;
  signal \prochainEtat[2]_C_n_0\ : STD_LOGIC;
  signal \prochainEtat[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \prochainEtat[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \prochainEtat[2]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \prochainEtat[2]_LDC_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \EtatCourant[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \EtatCourant[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_bit_enable_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_load_left_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_load_right_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_str_dat_INST_0 : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \prochainEtat[0]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \prochainEtat[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \prochainEtat[2]_LDC\ : label is "LDC";
begin
\EtatCourant[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \prochainEtat[0]_LDC_n_0\,
      I1 => \prochainEtat[0]_C_n_0\,
      O => prochainEtat(0)
    );
\EtatCourant[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \prochainEtat[1]_LDC_n_0\,
      I1 => \prochainEtat[1]_P_n_0\,
      O => prochainEtat(1)
    );
\EtatCourant[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \prochainEtat[2]_LDC_n_0\,
      I1 => \prochainEtat[2]_C_n_0\,
      O => prochainEtat(2)
    );
\EtatCourant_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => prochainEtat(0),
      Q => EtatCourant(0)
    );
\EtatCourant_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => prochainEtat(1),
      Q => EtatCourant(1)
    );
\EtatCourant_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => prochainEtat(2),
      Q => EtatCourant(2)
    );
o_bit_enable_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \prochainEtat[0]_C_n_0\,
      I1 => \prochainEtat[0]_LDC_n_0\,
      I2 => \prochainEtat[2]_C_n_0\,
      I3 => \prochainEtat[2]_LDC_n_0\,
      O => o_bit_enable
    );
o_cpt_bit_reset_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \prochainEtat[0]_C_n_0\,
      I1 => \prochainEtat[0]_LDC_n_0\,
      O => o_cpt_bit_reset
    );
o_load_left_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \prochainEtat[1]_P_n_0\,
      I1 => \prochainEtat[1]_LDC_n_0\,
      I2 => \prochainEtat[0]_C_n_0\,
      I3 => \prochainEtat[0]_LDC_n_0\,
      O => o_load_left
    );
o_load_right_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \prochainEtat[2]_C_n_0\,
      I1 => \prochainEtat[2]_LDC_n_0\,
      I2 => \prochainEtat[0]_C_n_0\,
      I3 => \prochainEtat[0]_LDC_n_0\,
      O => o_load_right
    );
o_str_dat_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => \prochainEtat[0]_C_n_0\,
      I1 => \prochainEtat[0]_LDC_n_0\,
      I2 => \prochainEtat[2]_C_n_0\,
      I3 => \prochainEtat[2]_LDC_n_0\,
      O => o_str_dat
    );
\prochainEtat[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => '1',
      CLR => \prochainEtat[0]_LDC_i_2_n_0\,
      D => '1',
      Q => \prochainEtat[0]_C_n_0\
    );
\prochainEtat[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \prochainEtat[0]_LDC_i_2_n_0\,
      D => '1',
      G => \prochainEtat[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \prochainEtat[0]_LDC_n_0\
    );
\prochainEtat[0]_LDC_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0401"
    )
        port map (
      I0 => EtatCourant(0),
      I1 => i_lrc,
      I2 => EtatCourant(2),
      I3 => EtatCourant(1),
      O => \prochainEtat[0]_LDC_i_1_n_0\
    );
\prochainEtat[0]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002AA02"
    )
        port map (
      I0 => EtatCourant(0),
      I1 => i_cpt_bits(5),
      I2 => \prochainEtat[2]_LDC_i_3_n_0\,
      I3 => EtatCourant(2),
      I4 => EtatCourant(1),
      O => \prochainEtat[0]_LDC_i_2_n_0\
    );
\prochainEtat[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \prochainEtat[1]_LDC_i_2_n_0\,
      D => '1',
      G => \prochainEtat[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \prochainEtat[1]_LDC_n_0\
    );
\prochainEtat[1]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055000200000002"
    )
        port map (
      I0 => EtatCourant(0),
      I1 => i_cpt_bits(5),
      I2 => \prochainEtat[2]_LDC_i_3_n_0\,
      I3 => EtatCourant(2),
      I4 => EtatCourant(1),
      I5 => i_lrc,
      O => \prochainEtat[1]_LDC_i_1_n_0\
    );
\prochainEtat[1]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A100A100A150A1"
    )
        port map (
      I0 => EtatCourant(2),
      I1 => i_lrc,
      I2 => EtatCourant(0),
      I3 => EtatCourant(1),
      I4 => i_cpt_bits(5),
      I5 => \prochainEtat[2]_LDC_i_3_n_0\,
      O => \prochainEtat[1]_LDC_i_2_n_0\
    );
\prochainEtat[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => i_bclk,
      CE => '1',
      D => '0',
      PRE => \prochainEtat[1]_LDC_i_1_n_0\,
      Q => \prochainEtat[1]_P_n_0\
    );
\prochainEtat[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => i_bclk,
      CE => '1',
      CLR => \prochainEtat[2]_LDC_i_2_n_0\,
      D => '1',
      Q => \prochainEtat[2]_C_n_0\
    );
\prochainEtat[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \prochainEtat[2]_LDC_i_2_n_0\,
      D => '1',
      G => \prochainEtat[2]_LDC_i_1_n_0\,
      GE => '1',
      Q => \prochainEtat[2]_LDC_n_0\
    );
\prochainEtat[2]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => EtatCourant(1),
      I1 => EtatCourant(0),
      I2 => i_cpt_bits(5),
      I3 => \prochainEtat[2]_LDC_i_3_n_0\,
      I4 => EtatCourant(2),
      O => \prochainEtat[2]_LDC_i_1_n_0\
    );
\prochainEtat[2]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04040404A1A1A1F1"
    )
        port map (
      I0 => EtatCourant(2),
      I1 => i_lrc,
      I2 => EtatCourant(0),
      I3 => \prochainEtat[2]_LDC_i_3_n_0\,
      I4 => i_cpt_bits(5),
      I5 => EtatCourant(1),
      O => \prochainEtat[2]_LDC_i_2_n_0\
    );
\prochainEtat[2]_LDC_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => i_cpt_bits(3),
      I1 => i_cpt_bits(4),
      I2 => i_cpt_bits(1),
      I3 => i_cpt_bits(0),
      I4 => i_cpt_bits(2),
      I5 => i_cpt_bits(6),
      O => \prochainEtat[2]_LDC_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mef_decod_i2s_v1b_0_0 is
  port (
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_lrc : in STD_LOGIC;
    i_cpt_bits : in STD_LOGIC_VECTOR ( 6 downto 0 );
    o_bit_enable : out STD_LOGIC;
    o_load_left : out STD_LOGIC;
    o_load_right : out STD_LOGIC;
    o_str_dat : out STD_LOGIC;
    o_cpt_bit_reset : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_mef_decod_i2s_v1b_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_mef_decod_i2s_v1b_0_0 : entity is "design_1_mef_decod_i2s_v1b_0_0,mef_decod_i2s_v1b,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_mef_decod_i2s_v1b_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_mef_decod_i2s_v1b_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_mef_decod_i2s_v1b_0_0 : entity is "mef_decod_i2s_v1b,Vivado 2020.2";
end design_1_mef_decod_i2s_v1b_0_0;

architecture STRUCTURE of design_1_mef_decod_i2s_v1b_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of i_reset : signal is "xilinx.com:signal:reset:1.0 i_reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_reset : signal is "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of o_cpt_bit_reset : signal is "xilinx.com:signal:reset:1.0 o_cpt_bit_reset RST";
  attribute x_interface_parameter of o_cpt_bit_reset : signal is "XIL_INTERFACENAME o_cpt_bit_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b
     port map (
      i_bclk => i_bclk,
      i_cpt_bits(6 downto 0) => i_cpt_bits(6 downto 0),
      i_lrc => i_lrc,
      i_reset => i_reset,
      o_bit_enable => o_bit_enable,
      o_cpt_bit_reset => o_cpt_bit_reset,
      o_load_left => o_load_left,
      o_load_right => o_load_right,
      o_str_dat => o_str_dat
    );
end STRUCTURE;
