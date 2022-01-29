----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/14/2022 06:37:33 PM
-- Design Name: 
-- Module Name: Fct2_3 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_module_commande is
--  Port ( );
end tb_module_commande;

architecture Behavioral of tb_module_commande is


--> Remplacer ce COMPONENT par celui de votre COMPONENT à tester 
    -- Note: vous pouvez copier la partie PORT ( .. ) de l'entity de votre code VHDL 
    -- et l'insérer dans la déclaration COMPONENT.
--> Si vous voulez comparer 2 modules VHDL, vous pouvez déclarer 2 COMPONENTS 
    -- distincts avec leurs PORT MAP respectif. 

   COMPONENT Fct2_3
          Port ( ADCBin : in STD_LOGIC_VECTOR (3 downto 0);
                 A2_3 : out STD_LOGIC_VECTOR (2 downto 0));
   END COMPONENT;
   
--> Générez des signaux internes au test bench avec des noms associés et les même types que dans le port
    -- Note: les noms peuvent être identiques, dans l'exemple on a ajouté un suffixe pour
    -- identifier clairement le signal qui appartient au test bench

   SIGNAL ADCBin_Sim : STD_LOGIC_VECTOR (3 downto 0);
   SIGNAL A2_3_Sim : STD_LOGIC_VECTOR (2 downto 0);


--> S'il y a plusieurs bits en entrée pour lesquels il faut définir des valeurs de test, 
    -- par exemple a, b, c dans l'exemple présent, on recommande de créer un vecteur de test,
    -- ce qui facilitera l'écriture du test et la lisibilité du code,
    -- notamment en faisant apparaître clairement une structure de table de vérité

   SIGNAL vect_testADCBin : STD_LOGIC_VECTOR (3 downto 0);
   
--> Déclarez la constante PERIOD qui est utilisée pour la simulation

   CONSTANT PERIOD    : time := 10 ns;                  --  *** à ajouter avant le premier BEGIN

--> Il faut faire un port map entre vos signaux internes et le component à tester
--> NOTE: Si vous voulez comparer 2 modules VHDL, vous devez génréer 2 port maps 


BEGIN
  -- Par le "port-map" suivant, cela revient à connecter le composant aux signaux internes du tests bench
  -- UUT Unit Under Test: ce nom est habituel mais non imposé.
  -- Si on simule deux composantes, on pourrait avoir UUT1, UUT2 par exemple
  
  UUT: Fct2_3 PORT MAP(
      ADCBin => ADCBin_sim, 
      A2_3 => A2_3_sim
   );
   

 --> on assigne les signaux du vecteur de test vers les signaux connectés au port map. 
ADCBin_sim <= vect_testADCBin; 

 
-- *** Test Bench - User Defined Section ***
-- l'intérêt de cette structure de test bench est que l'on recopie la table de vérité.

   tb : PROCESS
   BEGIN
         wait for  PERIOD; vect_testADCBin <="0000";

         wait for PERIOD; vect_testADCBin <="0001";

         wait for PERIOD; vect_testADCBin <="0010";

         wait for PERIOD; vect_testADCBin <="0011"; 

         wait for PERIOD; vect_testADCBin <="0100";

         wait for PERIOD; vect_testADCBin <="0101";

         wait for PERIOD; vect_testADCBin <="0110";

         wait for PERIOD; vect_testADCBin <="0111";

         wait for PERIOD; vect_testADCBin <="1000";

         wait for PERIOD; vect_testADCBin <="1001";

         wait for PERIOD; vect_testADCBin <="1010";

         wait for PERIOD; vect_testADCBin <="1011";

       --> Cette partie est un exemple pour simuler le thermométrique
--         wait for PERIOD; Thermometrique <="000000000000"; --> Code normal
--         wait for PERIOD; Thermometrique <="000000000001";
--         wait for PERIOD; Thermometrique <="000000000011";
--         wait for PERIOD; Thermometrique <="000000000111";
--         wait for PERIOD; Thermometrique <="000000001111";
--         wait for PERIOD; Thermometrique <="000000011111";
--         wait for PERIOD; Thermometrique <="000000111111";
--         wait for PERIOD; Thermometrique <="000001111111";
--         wait for PERIOD; Thermometrique <="000011111111";
--         wait for PERIOD; Thermometrique <="000111111111";
--         wait for PERIOD; Thermometrique <="001111111111";
--         wait for PERIOD; Thermometrique <="011111111111";
--         wait for PERIOD; Thermometrique <="111111111111";
--         wait for PERIOD; Thermometrique <="000000000010";  --> Code avec erreur
--         wait for PERIOD; Thermometrique <="000000101111";
--         wait for PERIOD; Thermometrique <="111100001111";
                  
         WAIT; -- will wait forever
   END PROCESS;


end Behavioral;
