-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Control
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\carlos\Desktop\Logica\Logica-Digital---Practicas-de-Laboratorio-\Práctica #05\Sesión 2\Control\Control\compile\UC_Top.vhd
-- Generated   : Sat Jun  1 23:09:04 2019
-- From        : C:\Users\carlos\Desktop\Logica\Logica-Digital---Practicas-de-Laboratorio-\Práctica #05\Sesión 2\Control\Control\src\UC_Top.bde
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

entity UC_Top is
  port(
       clk : in STD_LOGIC;
       btn : in STD_LOGIC_VECTOR(1 downto 0);
       sw : in STD_LOGIC_VECTOR(3 downto 0);
       ld : out STD_LOGIC_VECTOR(4 downto 0)
  );
end UC_Top;

architecture UC_Top of UC_Top is

---- Component declarations -----

component UC
  port (
       Clear : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Inicio : in STD_LOGIC;
       N1 : in STD_LOGIC;
       N2 : in STD_LOGIC;
       N3 : in STD_LOGIC;
       T : in STD_LOGIC;
       A : out STD_LOGIC;
       M : out STD_LOGIC;
       V1 : out STD_LOGIC;
       V2 : out STD_LOGIC;
       V3 : out STD_LOGIC
  );
end component;

begin

----  Component instantiations  ----

U1 : UC
  port map(
       A => ld(4),
       Clear => btn(1),
       Clk => clk,
       Inicio => btn(0),
       M => ld(3),
       N1 => sw(0),
       N2 => sw(1),
       N3 => sw(2),
       T => sw(3),
       V1 => ld(0),
       V2 => ld(1),
       V3 => ld(2)
  );


end UC_Top;
