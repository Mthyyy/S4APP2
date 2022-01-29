--  module_commande.vhd
--  D. Dalle  30 avril 2019, 16 janv 2020, 23 avril 2020
--  module qui permet de réunir toutes les commandes (problematique circuit sequentiels)
--  recues des boutons, avec conditionnement, et des interrupteurs

-- 23 avril 2020 elimination constante mode_seq_bouton: std_logic := '0'

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity module_commande IS
generic (nbtn : integer := 4;  mode_simulation: std_logic := '0');
    PORT (
          clk              : in  std_logic;
          o_reset          : out  std_logic; 
          i_btn            : in  std_logic_vector (nbtn-1 downto 0); -- signaux directs des boutons
          i_sw             : in  std_logic_vector (3 downto 0);      -- signaux directs des interrupteurs
          o_btn_cd         : out std_logic_vector (nbtn-1 downto 0); -- signaux conditionnés 
          o_selection_fct  :  out std_logic_vector(1 downto 0);
          o_selection_par  :  out std_logic_vector(1 downto 0)
          );
end module_commande;

ARCHITECTURE BEHAVIOR OF module_commande IS

type etat_btn is (
         dist_0,
         dist_0_dec,
         dist_1,
         dist_1_dec,
         dist_2,
         dist_2_dec,
         dist_3,
         dist_3_dec
         );
    signal fsm_EtatCourant, fsm_prochainEtat : etat_btn;

component conditionne_btn_v7 is
generic (nbtn : integer := nbtn;  mode_simul: std_logic := '0');
    port (
         CLK          : in std_logic;         -- devrait etre de l ordre de 50 Mhz
         i_btn        : in    std_logic_vector (nbtn-1 downto 0);
         --
         o_btn_db     : out    std_logic_vector (nbtn-1 downto 0);
         o_strobe_btn : out    std_logic_vector (nbtn-1 downto 0)
         );
end component;


    signal d_strobe_btn :    std_logic_vector (nbtn-1 downto 0);
    signal d_btn_cd     :    std_logic_vector (nbtn-1 downto 0); 
    signal d_reset      :    std_logic;
   
BEGIN 

                  
 inst_cond_btn:  conditionne_btn_v7
    generic map (nbtn => nbtn, mode_simul => mode_simulation)
    port map(
        clk           => clk,
        i_btn         => i_btn,
        o_btn_db      => d_btn_cd,
        o_strobe_btn  => d_strobe_btn  
         );
 
   o_btn_cd        <= d_btn_cd;
   o_selection_par <= i_sw(1 downto 0); -- mode de selection du parametre par sw
   d_reset         <= i_btn(3);         -- pas de contionnement particulier sur reset
   o_reset         <= d_reset;          -- pas de contionnement particulier sur reset
   
   -- Assignation du prochain état
    process(clk)
    begin
       if rising_edge(clk) then
             fsm_EtatCourant <= fsm_prochainEtat;
       end if;
    end process;
   
   transitions: process (clk)
   begin
   case fsm_EtatCourant is
        
        when dist_0 =>
        if(i_btn = "0001") then 
            fsm_prochainEtat <= dist_1_dec;
        elsif(i_btn = "0010") then
            fsm_prochainEtat <= dist_3_dec;
        elsif(i_btn(3) = '1') then
           fsm_prochainEtat <= dist_0_dec; 
        end if;
        
        when dist_1 =>
        if(i_btn = "0001") then 
            fsm_prochainEtat <= dist_2_dec;
        elsif(i_btn = "0010") then
            fsm_prochainEtat <= dist_0_dec;
        elsif(i_btn(3) = '1') then
           fsm_prochainEtat <= dist_0_dec; 
        end if; 
        
        when dist_2 =>
        if(i_btn = "0001") then 
            fsm_prochainEtat <= dist_3_dec;
        elsif(i_btn = "0010") then
            fsm_prochainEtat <= dist_1_dec;
        elsif(i_btn(3) = '1') then
           fsm_prochainEtat <= dist_0_dec; 
        end if; 
        
        when dist_3 =>
        if(i_btn = "0001") then 
            fsm_prochainEtat <= dist_0_dec;
        elsif(i_btn = "0010") then
            fsm_prochainEtat <= dist_2_dec;
        elsif(i_btn(3) = '1') then
           fsm_prochainEtat <= dist_0_dec; 
        end if;
        
        when dist_0_dec =>
        if(i_btn = "0000") then
          fsm_prochainEtat <= dist_0;
        end if;
        
        when dist_1_dec =>
        if(i_btn = "0000") then
          fsm_prochainEtat <= dist_1;
        end if;
        
        when dist_2_dec =>
        if(i_btn = "0000") then
          fsm_prochainEtat <= dist_2;
        end if;
        
        when dist_3_dec =>
        if(i_btn = "0000") then
          fsm_prochainEtat <= dist_3;
        end if;
        
        when others =>
            fsm_prochainEtat <= dist_0;        
        
   end case;
   end process;
   
   outputs: process (fsm_EtatCourant)
   begin
   case fsm_EtatCourant is
        
       when dist_0 | dist_0_dec =>
            o_selection_fct <= "00";
        
       when dist_1 | dist_1_dec =>
            o_selection_fct <= "01";
       
       when dist_2 | dist_2_dec =>
            o_selection_fct <= "10";
       
       when dist_3 | dist_3_dec =>
            o_selection_fct <= "11";
       
       when others =>
            o_selection_fct <= "00";     
        
   end case;
   end process;

END BEHAVIOR;
