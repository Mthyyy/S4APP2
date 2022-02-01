-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Jan 31 07:52:20 2022
-- Host        : DESKTOP-00KO0KK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mef_decod_i2s_v1b_0_0_sim_netlist.vhdl
-- Design      : design_1_mef_decod_i2s_v1b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_decod_i2s_v1b is
  port (
    o_load_right : out STD_LOGIC;
    o_load_left : out STD_LOGIC;
    o_bit_enable : out STD_LOGIC;
    o_str_dat : out STD_LOGIC;
    o_cpt_bit_reset : out STD_LOGIC;
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_lrc : in STD_LOGIC;
    i_cpt_bits : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_decod_i2s_v1b;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_decod_i2s_v1b is
  signal EtatCourant : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal prochainEtat : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \prochainEtat__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \prochainEtat_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \prochainEtat_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \prochainEtat_reg[2]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of o_bit_enable_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of o_load_left_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_load_right_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_str_dat_INST_0 : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \prochainEtat_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \prochainEtat_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \prochainEtat_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \prochainEtat_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \prochainEtat_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \prochainEtat_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \prochainEtat_reg[2]_i_2\ : label is "soft_lutpair2";
begin
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
o_bit_enable_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EtatCourant(0),
      I1 => EtatCourant(2),
      O => o_bit_enable
    );
o_cpt_bit_reset_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => EtatCourant(0),
      O => o_cpt_bit_reset
    );
o_load_left_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EtatCourant(1),
      I1 => EtatCourant(0),
      O => o_load_left
    );
o_load_right_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EtatCourant(2),
      I1 => EtatCourant(0),
      O => o_load_right
    );
o_str_dat_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EtatCourant(0),
      I1 => EtatCourant(2),
      O => o_str_dat
    );
\prochainEtat_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \prochainEtat__0\(0),
      G => \prochainEtat_reg[2]_i_2_n_0\,
      GE => '1',
      Q => prochainEtat(0)
    );
\prochainEtat_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0055CFFF"
    )
        port map (
      I0 => EtatCourant(1),
      I1 => \prochainEtat_reg[2]_i_4_n_0\,
      I2 => \prochainEtat_reg[2]_i_3_n_0\,
      I3 => EtatCourant(0),
      I4 => EtatCourant(2),
      O => \prochainEtat__0\(0)
    );
\prochainEtat_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \prochainEtat__0\(1),
      G => \prochainEtat_reg[2]_i_2_n_0\,
      GE => '1',
      Q => prochainEtat(1)
    );
\prochainEtat_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550400"
    )
        port map (
      I0 => EtatCourant(2),
      I1 => EtatCourant(0),
      I2 => \prochainEtat_reg[2]_i_4_n_0\,
      I3 => \prochainEtat_reg[2]_i_3_n_0\,
      I4 => EtatCourant(1),
      O => \prochainEtat__0\(1)
    );
\prochainEtat_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \prochainEtat__0\(2),
      G => \prochainEtat_reg[2]_i_2_n_0\,
      GE => '1',
      Q => prochainEtat(2)
    );
\prochainEtat_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02024202"
    )
        port map (
      I0 => EtatCourant(2),
      I1 => EtatCourant(1),
      I2 => EtatCourant(0),
      I3 => \prochainEtat_reg[2]_i_3_n_0\,
      I4 => \prochainEtat_reg[2]_i_4_n_0\,
      O => \prochainEtat__0\(2)
    );
\prochainEtat_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEF5"
    )
        port map (
      I0 => i_lrc,
      I1 => EtatCourant(0),
      I2 => EtatCourant(2),
      I3 => EtatCourant(1),
      O => \prochainEtat_reg[2]_i_2_n_0\
    );
\prochainEtat_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => i_cpt_bits(6),
      I1 => i_cpt_bits(3),
      I2 => i_cpt_bits(5),
      O => \prochainEtat_reg[2]_i_3_n_0\
    );
\prochainEtat_reg[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => i_cpt_bits(1),
      I1 => i_cpt_bits(0),
      I2 => i_cpt_bits(4),
      I3 => i_cpt_bits(2),
      O => \prochainEtat_reg[2]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_mef_decod_i2s_v1b_0_0,mef_decod_i2s_v1b,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mef_decod_i2s_v1b,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of i_reset : signal is "xilinx.com:signal:reset:1.0 i_reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_reset : signal is "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of o_cpt_bit_reset : signal is "xilinx.com:signal:reset:1.0 o_cpt_bit_reset RST";
  attribute x_interface_parameter of o_cpt_bit_reset : signal is "XIL_INTERFACENAME o_cpt_bit_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_decod_i2s_v1b
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
