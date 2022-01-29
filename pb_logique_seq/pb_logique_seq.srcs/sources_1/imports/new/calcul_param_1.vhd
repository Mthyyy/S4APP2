
---------------------------------------------------------------------------------------------
--    calcul_param_1.vhd
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--    Université de Sherbrooke - Département de GEGI
--
--    Version         : 5.0
--    Nomenclature    : inspiree de la nomenclature 0.2 GRAMS
--    Date            : 16 janvier 2020, 4 mai 2020
--    Auteur(s)       : 
--    Technologie     : ZYNQ 7000 Zybo Z7-10 (xc7z010clg400-1) 
--    Outils          : vivado 2019.1 64 bits
--
---------------------------------------------------------------------------------------------
--    Description (sur une carte Zybo)
---------------------------------------------------------------------------------------------
--
---------------------------------------------------------------------------------------------
-- À FAIRE: 
-- Voir le guide de la problématique
---------------------------------------------------------------------------------------------
--
---------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- pour les additions dans les compteurs
USE ieee.numeric_std.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;

----------------------------------------------------------------------------------
-- 
----------------------------------------------------------------------------------
entity calcul_param_1 is
    Port (
    i_bclk    : in   std_logic; -- bit clock (I2S)
    i_reset   : in   std_logic;
    i_en      : in   std_logic; -- un echantillon present a l'entrée
    i_ech     : in   std_logic_vector (23 downto 0); -- echantillon en entrée
    o_param   : out  std_logic_vector (7 downto 0)   -- paramètre calculé
    );
end calcul_param_1;

----------------------------------------------------------------------------------

architecture Behavioral of calcul_param_1 is

---------------------------------------------------------------------------------
-- Signaux
----------------------------------------------------------------------------------
  type etat_MEF is (
         sta_init,
         sta_1,
         sta_2,
         sta_3,
         sta_cpt,
         sta_4,
         sta_5,
         sta_6
         );
    signal fsm_EtatCourant, fsm_prochainEtat : etat_MEF;
    signal en_cpt: std_logic;
    signal res_cpt: std_logic;   

---------------------------------------------------------------------------------------------
--    Description comportementale
---------------------------------------------------------------------------------------------
begin 
    transition: Process(i_ech)
    begin
        case fsm_EtatCourant is
            when sta_init =>
                if(i_ech(23) = '1') then
                    fsm_prochainEtat <= sta_1;
                end if;
             
             when sta_1 =>
                if(i_ech(23) = '1') then
                    fsm_prochainEtat <= sta_2;
                else
                    fsm_prochainEtat <= sta_init;
                end if;
                
             when sta_2 =>
                if(i_ech(23) = '1') then
                    fsm_prochainEtat <= sta_3;
                else
                    fsm_prochainEtat <= sta_1;
                end if;
                
            when sta_3 =>
                if(i_ech(23) = '0') then
                    fsm_prochainEtat <= sta_cpt;
                end if;
                
            when sta_cpt =>
                if(i_ech(23) = '1') then
                    fsm_prochainEtat <= sta_4;

                end if;
                
             when sta_4 =>
                if(i_ech(23) = '1') then
                    fsm_prochainEtat <= sta_cpt;
                else
                    fsm_prochainEtat <= sta_5;
                end if;
                
            when sta_5 =>
                if(i_ech(23) = '1') then
                    fsm_prochainEtat <= sta_6;
                else
                    fsm_prochainEtat <= sta_4;
                end if;
            
            when sta_6 =>
                 if(i_ech(23) = '0') then
                    fsm_prochainEtat <= sta_cpt;
                end if;
                
            when others =>
                fsm_prochainEtat <= sta_init;
                
        end case;
    end process;
    
    output: Process(fsm_EtatCourant)
    begin
        case fsm_EtatCourant is
            when sta_init =>
            en_cpt <= '0';
            res_cpt <= '0';
            
            when sta_1 =>
            en_cpt <= '0';
            res_cpt <= '0';
            
            when sta_2 =>
            en_cpt <= '0';
            res_cpt <= '0';
            
            when sta_3 =>
            en_cpt <= '0';
            res_cpt <= '0';
            
            when sta_cpt =>
            en_cpt <= '1';
            res_cpt <= '0';
            
            when sta_4 =>
            en_cpt <= '1';
            res_cpt <= '0';
            
            when sta_5 =>
            en_cpt <= '1';
            res_cpt <= '0';
            
            when sta_6 =>
            en_cpt <= '1';
            res_cpt <= '1';
            
            when others =>
            en_cpt <= '0';
            res_cpt <= '0';
            
        end case;
            
    end process;
     o_param <= x"01";    -- temporaire ...
 
end Behavioral;
