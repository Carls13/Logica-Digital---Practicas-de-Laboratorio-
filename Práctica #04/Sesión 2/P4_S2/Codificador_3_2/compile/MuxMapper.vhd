-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Codificador_3_2
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #04\Sesión 2\P4_S2\Codificador_3_2\compile\MuxMapper.vhd
-- Generated   : Sun Mar 17 16:49:28 2019
-- From        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #04\Sesión 2\P4_S2\Codificador_3_2\src\MuxMapper.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;

entity MuxMapper is
  port(
       Disp0 : in STD_LOGIC;
       Disp1 : in STD_LOGIC;
       Disp2 : in STD_LOGIC;
       Disp3 : in STD_LOGIC;
       Disp4 : in STD_LOGIC;
       Disp5 : in STD_LOGIC;
       Disp6 : in STD_LOGIC;
       Disp7 : in STD_LOGIC;
       De0 : out STD_LOGIC;
       De1 : out STD_LOGIC;
       De2 : out STD_LOGIC;
       De3 : out STD_LOGIC;
       De4 : out STD_LOGIC;
       De5 : out STD_LOGIC;
       De6 : out STD_LOGIC;
       De7 : out STD_LOGIC
  );
end MuxMapper;

architecture MuxMapper of MuxMapper is

---- Signal declarations used on the diagram ----

signal NET158 : STD_LOGIC;
signal NET162 : STD_LOGIC;
signal NET166 : STD_LOGIC;
signal NET170 : STD_LOGIC;
signal NET174 : STD_LOGIC;
signal NET178 : STD_LOGIC;
signal NET182 : STD_LOGIC;
signal NET186 : STD_LOGIC;

begin

---- Terminal assignment ----

    -- Inputs terminals
	NET186 <= Disp0;
	NET158 <= Disp1;
	NET162 <= Disp2;
	NET166 <= Disp3;
	NET170 <= Disp4;
	NET174 <= Disp5;
	NET178 <= Disp6;
	NET182 <= Disp7;

    -- Output\buffer terminals
	De0 <= NET186;
	De1 <= NET162;
	De2 <= NET170;
	De3 <= NET178;
	De4 <= NET158;
	De5 <= NET166;
	De6 <= NET174;
	De7 <= NET182;


end MuxMapper;
