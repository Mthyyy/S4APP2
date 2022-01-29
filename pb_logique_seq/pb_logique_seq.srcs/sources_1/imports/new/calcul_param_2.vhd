
---------------------------------------------------------------------------------------------
--    calcul_param_2.vhd   (temporaire)
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--    Universit? de Sherbrooke - D?partement de GEGI
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
-- ? FAIRE: 
-- Voir le guide de la probl?matique
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
entity calcul_param_2 is
    Port (
    i_bclk    : in   std_logic;   -- bit clock
    i_reset   : in   std_logic;
    i_en      : in   std_logic;   -- un echantillon present
    i_ech     : in   std_logic_vector (23 downto 0);
    o_param   : out  std_logic_vector (7 downto 0)                                     
    );
end calcul_param_2;

----------------------------------------------------------------------------------

architecture Behavioral of calcul_param_2 is

component reg_24b
Port ( 
    i_clk       : in std_logic;
    i_reset     : in std_logic;
    i_en        : in std_logic;
    i_dat       : in std_logic_vector(23 downto 0);
    o_dat       : out  std_logic_vector(23 downto 0)
);
end component;
---------------------------------------------------------------------------------
-- Signaux
----------------------------------------------------------------------------------
    
signal somme : std_logic_vector(23 downto 0);
signal sortieRegistre : std_logic_vector(23 downto 0);
signal multiplication : std_logic_vector(23 downto 0);
signal constante: std_logic_vector(6 downto 1);
---------------------------------------------------------------------------------------------
--    Descriptioin comportementale
---------------------------------------------------------------------------------------------
begin 

inst_reg_24b: reg_24b
port map(

i_clk => i_bclk,
i_reset => i_reset,
i_en => i_en,
i_dat => somme,
o_dat => sortieRegistre
);

--multiplication <= std_logic_vector(unsigned(sortieRegistre) * (31/32));
--somme <= sortieRegistre + i_ech;
somme <= i_ech;


o_param(0) <= somme(0);
o_param(1) <= somme(1);
o_param(2) <= somme(2);
o_param(3) <= somme(3);
o_param(4) <= somme(4);
o_param(5) <= somme(5);
o_param(6) <= somme(6);
o_param(7) <= somme(7);


--o_param <= x"02";
end Behavioral;
