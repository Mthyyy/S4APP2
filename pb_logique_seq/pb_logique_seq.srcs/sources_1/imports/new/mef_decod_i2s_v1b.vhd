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

    type decod_I2S_etats is (
         sta_init,
         sta_enrGauche,
         sta_enrDroite,
         sta_transGauche,
         sta_transDroite,
         sta_transTout
         );
    signal fsm_EtatCourant, fsm_prochainEtat : decod_I2S_etats;
    signal   d_reclrc_prec  : std_logic ;  --
    
begin

    -- Assignation du prochain état
    process(i_bclk, i_reset)
    begin
       if (i_reset ='1') then
             fsm_EtatCourant <= sta_init;
       else
       if rising_edge(i_bclk) then
             fsm_EtatCourant <= fsm_prochainEtat;
       end if;
       end if;
    end process;
    
    transitions: process(i_lrc , fsm_EtatCourant, i_cpt_bits)
begin
   case fsm_EtatCourant is
        when sta_init =>
            if(i_lrc = '0') then 
                fsm_prochainEtat <= sta_enrGauche;
            else
                fsm_prochainEtat <= sta_init;
            end if;
            
         when sta_enrGauche =>
             if(i_cpt_bits = "0010111") then
                fsm_prochainEtat <= sta_transGauche;
             else
                fsm_prochainEtat <= sta_enrGauche;
             end if;
             
         when sta_transGauche =>
            if(i_lrc = '1') then 
            fsm_prochainEtat <= sta_enrDroite;
            else
            fsm_prochainEtat <= sta_transGauche;
            end if;
            
         when sta_enrDroite =>
             if(i_cpt_bits = "0010111") then
                fsm_prochainEtat <= sta_transDroite;
             else
                fsm_prochainEtat <= sta_enrDroite;
             end if;
             
        when sta_transDroite =>
            fsm_prochainEtat <= sta_transTout;
        when sta_transTout => 
            fsm_prochainEtat <= sta_init;
            
        when others => fsm_prochainEtat <= sta_init;
     end case;
  end process;
  
  sortie: process(fsm_EtatCourant, i_lrc )
  begin
  
   case fsm_EtatCourant is
        when sta_init =>
            o_bit_enable <= '1';
            o_load_left <= '0';
            o_load_right <= '0';
            o_str_dat <= '0';
            o_cpt_bit_reset <= '1';

            
         when sta_enrGauche =>
             o_bit_enable <= '1';
             o_load_left <= '0';
             o_load_right <= '0';
             o_str_dat <= '0';
             o_cpt_bit_reset <= '0';
             
         when sta_transGauche =>
            o_bit_enable <= '0';
            o_load_left <= '1';
            o_load_right <= '0';
            o_str_dat <= '0';
            o_cpt_bit_reset <= '1';
            
         when sta_enrDroite =>
            o_bit_enable <= '1';
            o_load_left <= '0';
            o_load_right <= '0';
            o_str_dat <= '0';
            o_cpt_bit_reset <= '1';
             
        when sta_transDroite =>
            o_bit_enable <= '0';
            o_load_left <= '0';
            o_load_right <= '1';
            o_str_dat <= '0';
            o_cpt_bit_reset <= '1'; 

        when sta_transTout => 
            o_bit_enable <= '0';
            o_load_left <= '0';
            o_load_right <= '0';
            o_str_dat <= '1';
            o_cpt_bit_reset <= '0';
     end case;
 end process;
    
   -- pour detecter transitions d_ac_reclrc
   reglrc_I2S: process ( i_bclk)
   begin
   if i_bclk'event and (i_bclk = '1') then
        d_reclrc_prec <= i_lrc;
   end if;
   end process;

     end Behavioral;