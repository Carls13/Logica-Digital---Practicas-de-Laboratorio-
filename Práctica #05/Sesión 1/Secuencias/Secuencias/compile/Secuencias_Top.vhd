-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Secuencias
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #05\Sesión 1\Secuencias\Secuencias\compile\Secuencias_Top.vhd
-- Generated   : Sat Apr 27 17:48:20 2019
-- From        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #05\Sesión 1\Secuencias\Secuencias\src\Secuencias_Top.bde
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

entity Secuencias_Top is
  port(
       clk : in STD_LOGIC;
       btn : in STD_LOGIC_VECTOR(0 downto 0);
       sw : in STD_LOGIC_VECTOR(0 downto 0);
       ld : out STD_LOGIC_VECTOR(3 downto 0)
  );
end Secuencias_Top;

architecture Secuencias_Top of Secuencias_Top is

---- Component declarations -----

component Secuencias
  port (
       P : in STD_LOGIC;
       X : in STD_LOGIC;
       clk : in STD_LOGIC;
       N : out STD_LOGIC_VECTOR(2 downto 0);
       T : out STD_LOGIC
  );
end component;

begin

----  Component instantiations  ----

U1 : Secuencias
  port map(
       N(0) => ld(0),
       N(1) => ld(1),
       N(2) => ld(2),
       P => btn(0),
       T => ld(3),
       X => sw(0),
       clk => clk
  );


end Secuencias_Top;
