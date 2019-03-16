-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Codificador_3_2
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #04\Sesión 2\P4_S2\Codificador_3_2\compile\Codificador32.vhd
-- Generated   : Fri Mar 15 22:10:02 2019
-- From        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #04\Sesión 2\P4_S2\Codificador_3_2\src\Codificador32.bde
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

entity Codificador32 is
  port(
       E : in STD_LOGIC_VECTOR(2 downto 0);
       S : out STD_LOGIC_VECTOR(1 downto 0)
  );
end Codificador32;

architecture Codificador32 of Codificador32 is

---- Component declarations -----

component DEMUX14
  port (
       S : in STD_LOGIC_VECTOR(1 downto 0);
       Y : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal NET111 : STD_LOGIC;
signal NET143 : STD_LOGIC;
signal NET159 : STD_LOGIC;
signal NET180 : STD_LOGIC;
signal Y : STD_LOGIC_VECTOR(3 downto 0);

begin

----  Component instantiations  ----

U1 : DEMUX14
  port map(
       S(0) => E(1),
       S(1) => E(2),
       Y => Y
  );

NET180 <= not(Y(0));

NET143 <= not(Y(1) or E(0));

NET159 <= not(Y(2) or E(0));

S(1) <= NET159 or NET143;

S(0) <= NET159 or NET111;

NET111 <= NET180 and E(0);


end Codificador32;
