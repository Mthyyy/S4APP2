---------------------------------------------------------------------------------------------
-- circuit mef_decod_i2s_v1b.vhd                   Version mise en oeuvre avec des compteurs
---------------------------------------------------------------------------------------------
-- Université de Sherbrooke - Département de GEGI
-- Version         : 1.0
-- Nomenclature    : 0.8 GRAMS
-- Date            : 7 mai 2019
-- Auteur(s)       : Daniel Dalle
-- Technologies    : FPGA Zynq (carte ZYBO Z7-10 ZYBO Z7-20)
--
-- Outils          : vivado 2019.1
---------------------------------------------------------------------------------------------
-- Description:
-- MEF pour decodeur I2S version 1b
-- La MEF est substituee par un compteur
--
-- notes
-- frequences (peuvent varier un peu selon les contraintes de mise en oeuvre)
-- i_lrc        ~ 48.    KHz    (~ 20.8    us)
-- d_ac_mclk,   ~ 12.288 MHz    (~ 80,715  ns) (non utilisee dans le codeur)
-- i_bclk       ~ 3,10   MHz    (~ 322,857 ns) freq mclk/4
-- La durée d'une période reclrc est de 64,5 périodes de bclk ...
--
-- Revision  
-- Revision 14 mai 2019 (version ..._v1b) composants dans entités et fichiers distincts
---------------------------------------------------------------------------------------------
-- À faire :
--
--
---------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- pour les additions dans les compteurs

entity mef_decod_i2s_v1b is
   Port ( 
   i_bclk      : in std_logic;
   i_reset     : in    std_logic; 
   i_lrc       : in std_logic;
   i_cpt_bits  : in std_logic_vector(6 downto 0);
 --  
   o_bit_enable     : out std_logic ;  --
   o_load_left      : out std_logic ;  --
   o_load_right     : out std_logic ;  --
   o_str_dat        : out std_logic ;  --  
   o_cpt_bit_reset  : out std_logic   -- 
   
);
end mef_decod_i2s_v1b;

architecture Behavioral of mef_decod_i2s_v1b is

type mesEtat is (
init,
gauche,
transmissionG,
droite,
transmissionD,
transmissionFin
);

   signal EtatCourant: mesEtat; 
    signal prochainEtat : mesEtat;
    
begin

process(i_bclk, i_reset)
    begin
       if (i_reset ='1') then
             EtatCourant <= init;
       else
       if rising_edge(i_bclk) then
             EtatCourant <= prochainEtat;
       end if;
       end if;
    end process;

process(EtatCourant,i_lrc,i_cpt_bits)
begin
case(EtatCourant) is
when init => 
if(i_lrc = '0')then
prochainEtat <= gauche;
end if;

when gauche =>
if(i_lrc = '0') then 
if(i_cpt_bits = "0010111")then
prochainEtat <= transmissionG;
else
prochainEtat <= gauche;
end if;
end if;

when transmissionG => 
if(i_lrc = '1')then
prochainEtat <= droite;
end if;

when droite => 
if(i_cpt_bits = "0010111")then
prochainEtat <= transmissionD;
else
prochainEtat <= droite;
end if;

when transmissionD => 
prochainEtat <= transmissionFin;

when transmissionFin => 
prochainEtat <= init;
when others => prochainEtat <= init;
end case;
end process;

sortie: process(EtatCourant, i_lrc)
begin

case(EtatCourant)is
when init =>
o_cpt_bit_reset <= '1';
o_bit_enable <= '0';
o_load_left <= '0';
o_load_right <= '0';
o_str_dat <= '0';

when gauche =>
o_cpt_bit_reset <= '0';
o_bit_enable <= '1';
o_load_left <= '0';
o_load_right <= '0';
o_str_dat <= '0';

when transmissionG =>
o_cpt_bit_reset <= '1';
o_bit_enable <= '0';
o_load_left <= '1';
o_load_right <= '0';
o_str_dat <= '0';

when droite =>
o_cpt_bit_reset <= '0';
o_bit_enable <= '1';
o_load_left <= '0';
o_load_right <= '0';
o_str_dat <= '0';


when transmissionD =>
o_cpt_bit_reset <= '1';
o_bit_enable <= '0';
o_load_left <= '0';
o_load_right <= '1';
o_str_dat <= '0';


when transmissionFin =>
o_cpt_bit_reset <= '0';
o_bit_enable <= '0';
o_load_left <= '0';
o_load_right <= '0';
o_str_dat <= '1';
end case;
end process;
   
    

 end Behavioral;