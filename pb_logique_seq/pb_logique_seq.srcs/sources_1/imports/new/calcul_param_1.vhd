
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

component compteur_nbits is
generic (nbits : integer := 8);
   port ( clk             : in    std_logic; 
          i_en            : in    std_logic; 
          reset           : in    std_logic; 
          o_val_cpt       : out   std_logic_vector (nbits-1 downto 0)
          );
end component;

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
         sta_cpt_en,
         sta_4_en,
         sta_5_en,
         sta_6_en,
         sta_res,
         sta_send
         );
    signal fsm_EtatCourant, fsm_prochainEtat : etat_MEF;
    signal val_cpt: std_logic_vector(7 downto 0) := "00000000";
    signal frquence: std_logic_vector(7 downto 0) := "00000000";
    signal cpt_res: std_logic;
    signal cpt_en: std_logic;
    signal cpt_stb: std_logic;
     

---------------------------------------------------------------------------------------------
--    Description comportementale
---------------------------------------------------------------------------------------------
begin

    inst_compteur: compteur_nbits
        port map(clk =>i_bclk,
         i_en => cpt_en,
          reset => cpt_res,
           o_val_cpt => val_cpt);
    
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

    o_param(7) <= frquence(7);
    o_param(6) <= frquence(6);
    o_param(5) <= frquence(5);
    o_param(4) <= frquence(4);
    o_param(3) <= frquence(3);
    o_param(2) <= frquence(2);
    o_param(1) <= frquence(1);
    o_param(0)<= frquence(0);             

    transition: Process(fsm_etatCourant, i_bclk)
    begin
        case fsm_EtatCourant is
            when sta_init =>
                if(i_ech(23) = '0' and i_en = '1') then
                    fsm_prochainEtat <= sta_1;
                end if;
             
             when sta_1 =>
                if(i_ech(23) = '0' and i_en = '1') then
                    fsm_prochainEtat <= sta_2;
                elsif(i_en = '1') then
                    fsm_prochainEtat <= sta_init;
                end if;
                
             when sta_2 =>
                if(i_ech(23) = '0' and i_en = '1') then
                    fsm_prochainEtat <= sta_3;
                elsif(i_en = '1') then
                    fsm_prochainEtat <= sta_1;
                end if;
                
            when sta_3 =>
                if(i_ech(23) = '1' and i_en = '1') then
                    fsm_prochainEtat <= sta_cpt;
                elsif(i_en = '1') then
                    fsm_prochainEtat <= sta_3;
                end if;
            
            when sta_cpt =>
                fsm_prochainEtat <= sta_cpt_en;
                
            when sta_cpt_en =>
                if(i_ech(23) = '0' and i_en = '1') then
                    fsm_prochainEtat <= sta_4;
                    
                elsif(i_en = '1') then
                    fsm_prochainEtat <= sta_cpt;

                end if;
              
             when sta_4 => fsm_prochainEtat <= sta_4_en;
                
             when sta_4_en =>
                if(i_ech(23) = '0' and i_en = '1') then
                    fsm_prochainEtat <= sta_5;
                elsif(i_en = '1') then
                    fsm_prochainEtat <= sta_cpt;
                end if;
            
            when sta_5 => fsm_prochainEtat <= sta_5_en;
                
            when sta_5_en =>
                if(i_ech(23) = '0' and i_en = '1') then
                    fsm_prochainEtat <= sta_6;
                elsif(i_en = '1') then
                    fsm_prochainEtat <= sta_4;
                end if;
            
            when sta_6 => fsm_prochainEtat <= sta_6_en;
            
            when sta_6_en =>
                 if(i_ech(23) = '1' and i_en = '1') then
                    fsm_prochainEtat <= sta_send;
                 elsif(i_en = '1') then
                    fsm_prochainEtat <= sta_6;
                end if;
                
            when sta_send => fsm_prochainEtat <= sta_res;
               
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
            cpt_stb <= '0';
            
            when sta_1 =>
            cpt_en <= '0';
            cpt_res <= '0';
            cpt_stb <= '0';
            
            when sta_2 =>
            cpt_en <= '0';
            cpt_res <= '0';
            cpt_stb <= '0';
            
            when sta_3 =>
            cpt_en <= '0';
            cpt_res <= '1';
            cpt_stb <= '0';
            
            when sta_cpt =>
            cpt_en <= '1';
            cpt_res <= '0';
            cpt_stb <= '0';
            
            when sta_cpt_en =>
            cpt_en <= '0';
            cpt_res <= '0';
            cpt_stb <= '0';
            
            when sta_4 =>
            cpt_en <= '1';
            cpt_res <= '0';
            cpt_stb <= '0';
            
            when sta_4_en =>
            cpt_en <= '0';
            cpt_res <= '0';
            cpt_stb <= '0';
            
            when sta_5 =>
            cpt_en <= '1';
            cpt_res <= '0';
            cpt_stb <= '0';
            
            when sta_5_en =>
            cpt_en <= '0';
            cpt_res <= '0';
            cpt_stb <= '0';
            
            when sta_6 =>
            cpt_en <= '1';
            cpt_res <= '0';
            cpt_stb <= '0';
            
            when sta_6_en =>
            cpt_en <= '0';
            cpt_res <= '0';
            cpt_stb <= '0';
            
            when sta_res =>
            cpt_en <= '0';
            cpt_res <= '1';
            cpt_stb <= '0';
            
            when sta_send =>
            cpt_en <= '0';
            cpt_res <= '0';
            cpt_stb <= '1';
            
            when others =>
            cpt_en <= '0';
            cpt_res <= '0';
            cpt_stb <= '0';
            
        end case;
      
    end process;
    
    param: Process(i_bclk)
    begin
    if( rising_edge(i_bclk)) then
        if(cpt_stb = '1') then
        frquence <= val_cpt;
        
        else frquence <= frquence;
        end if;
     end if;
    end process;
    
end Behavioral;
