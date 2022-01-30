
---------------------------------------------------------------------------------------------
--    calcul_param_1.vhd
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--    Universit� de Sherbrooke - D�partement de GEGI
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
-- � FAIRE: 
-- Voir le guide de la probl�matique
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
    i_en      : in   std_logic; -- un echantillon present a l'entr�e
    i_ech     : in   std_logic_vector (23 downto 0); -- echantillon en entr�e
    o_param   : out  std_logic_vector (7 downto 0)   -- param�tre calcul�
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
         sta_6,
         sta_res
         );
    signal fsm_EtatCourant, fsm_prochainEtat, fsm_EtatPrecedent : etat_MEF;
    signal val_cpt: std_logic_vector(7 downto 0) := "00000000";
    signal frquence: std_logic_vector(7 downto 0) := "00000000";
    signal cpt_res: std_logic;
    signal cpt_en: std_logic;
    signal enableSuivant: std_logic := '0';
    signal enableCourant : std_logic := '0'; 
    signal mySignal_re : std_logic := '0';
    signal chuistanne : std_logic := '0';
     

---------------------------------------------------------------------------------------------
--    Description comportementale
---------------------------------------------------------------------------------------------
begin
    
    process(i_bclk)
    begin
        if rising_edge(i_bclk) then
            enableCourant <= enableSuivant;
            enableSuivant <= i_en;
        end if;
        
        
    end process;
    
    process(enableSuivant)
    begin
        if(enableCourant /= enableSuivant and enableSuivant = '1') then
            mySignal_re <= not(mySignal_re);
        end if;
    end process;

    
       -- Assignation du prochain �tat
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

    o_param(7) <= frquence(7);
    o_param(6) <= frquence(6);
    o_param(5) <= frquence(5);
    o_param(4) <= frquence(4);
    o_param(3) <= frquence(3);
    o_param(2) <= frquence(2);
    o_param(1) <= frquence(1);
    o_param(0)<= frquence(0);              

    transition: Process(mySignal_re)
    begin
        case fsm_EtatCourant is
            when sta_init =>
                if(i_ech(23) = '0') then
                    fsm_prochainEtat <= sta_1;
                end if;
             
             when sta_1 =>
                if(i_ech(23) = '0') then
                    fsm_prochainEtat <= sta_2;
                else
                    fsm_prochainEtat <= sta_init;
                end if;
                
             when sta_2 =>
                if(i_ech(23) = '0') then
                    fsm_prochainEtat <= sta_3;
                else
                    fsm_prochainEtat <= sta_1;
                end if;
                
            when sta_3 =>
                if(i_ech(23) = '1') then
                    fsm_prochainEtat <= sta_cpt;
                else
                    fsm_prochainEtat <= sta_3;
                end if;
                
            when sta_cpt =>
                if(i_ech(23) = '0') then
                    fsm_prochainEtat <= sta_4;
                    
                else
                    fsm_prochainEtat <= sta_cpt;

                end if;
                
             when sta_4 =>
                if(i_ech(23) = '0') then
                    fsm_prochainEtat <= sta_5;
                else
                    fsm_prochainEtat <= sta_cpt;
                end if;
                
            when sta_5 =>
                if(i_ech(23) = '0') then
                    fsm_prochainEtat <= sta_6;
                else
                    fsm_prochainEtat <= sta_4;
                end if;
            
            when sta_6 =>
                 if(i_ech(23) = '1') then
                    fsm_prochainEtat <= sta_res;
                 else
                    fsm_prochainEtat <= sta_6;
                end if;
                
            when sta_res =>
                fsm_prochainEtat <= sta_cpt;
                
            when others =>
                fsm_prochainEtat <= sta_init;
                
        end case;
    end process;
    
    output: Process(fsm_EtatCourant)
    begin
        case fsm_EtatCourant is
            when sta_init =>
            cpt_en <= '0';
            cpt_res <= '0';
            
            when sta_1 =>
            cpt_en <= '0';
            cpt_res <= '0';
            
            when sta_2 =>
            cpt_en <= '0';
            cpt_res <= '0';
            
            when sta_3 =>
            cpt_en <= '0';
            cpt_res <= '0';
            
            when sta_cpt =>
            cpt_en <= '1';
            cpt_res <= '0';
            
            when sta_4 =>
            cpt_en <= '1';
            cpt_res <= '0';
            
            when sta_5 =>
            cpt_en <= '1';
            cpt_res <= '0';
            
            when sta_6 =>
            cpt_en <= '1';
            cpt_res <= '0';
            
            when sta_res =>
            cpt_en <= '1';
            cpt_res <= '1';
            
            when others =>
            cpt_en <= '0';
            cpt_res <= '0';
            
        end case;
      
    end process;

    compteur: process(mySignal_re)
    begin
        if(cpt_en = '1' and cpt_res = '0') then
            val_cpt <= val_cpt + 1;
        end if;
        
        if(fsm_prochainEtat = sta_res) then
            frquence <= val_cpt;
            val_cpt <= "00000001";
            end if;
            
    end process;
end Behavioral;
