-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Codificador_3_2
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #04\Sesión 2\P4_S2\Codificador_3_2\compile\Sistema_Top.vhd
-- Generated   : Sat Mar 23 15:44:57 2019
-- From        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #04\Sesión 2\P4_S2\Codificador_3_2\src\Sistema_Top.bde
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

entity Sistema_Top is
  port(
       btn : in STD_LOGIC_VECTOR(3 downto 0);
       sw : in STD_LOGIC_VECTOR(7 downto 0);
       dp : out STD_LOGIC;
       a_to_g : out STD_LOGIC_VECTOR(6 downto 0);
       an : out STD_LOGIC_VECTOR(3 downto 3);
       ld : out STD_LOGIC_VECTOR(2 downto 0)
  );
end Sistema_Top;

architecture Sistema_Top of Sistema_Top is

---- Component declarations -----

component Sistema
  port (
       B : in STD_LOGIC;
       Disp : in STD_LOGIC_VECTOR(7 downto 0);
       E : in STD_LOGIC_VECTOR(2 downto 0);
       D : out STD_LOGIC_VECTOR(1 downto 0);
       M : out STD_LOGIC;
       a_to_g : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;

----     Constants     -----
constant VCC_CONSTANT   : STD_LOGIC := '1';
constant GND_CONSTANT   : STD_LOGIC := '0';

---- Signal declarations used on the diagram ----

signal GND : STD_LOGIC;
signal M : STD_LOGIC;
signal NET44 : STD_LOGIC;
signal VCC : STD_LOGIC;
signal D : STD_LOGIC_VECTOR(1 downto 0);

begin

----  Component instantiations  ----

U1 : Sistema
  port map(
       B => btn(0),
       D => D,
       Disp => sw,
       E(0) => btn(1),
       E(1) => btn(2),
       E(2) => btn(3),
       M => M,
       a_to_g => a_to_g
  );


---- Power , ground assignment ----

GND <= GND_CONSTANT;
VCC <= VCC_CONSTANT;
NET44 <= VCC;

---- Terminal assignment ----

    -- Output\buffer terminals
	an(3) <= GND;
	dp <= NET44;
	ld(0) <= D(0);
	ld(1) <= D(1);
	ld(2) <= M;


end Sistema_Top;
