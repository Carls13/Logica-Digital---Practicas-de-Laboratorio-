-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Codificador_3_2
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Pr�ctica #04\Sesi�n 2\P4_S2\Codificador_3_2\compile\MUX41.vhd
-- Generated   : Fri Mar 15 22:27:07 2019
-- From        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Pr�ctica #04\Sesi�n 2\P4_S2\Codificador_3_2\src\MUX41.bde
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

entity MUX41 is
  port(
       S0 : in STD_LOGIC;
       S1 : in STD_LOGIC;
       E : in STD_LOGIC_VECTOR(3 downto 0);
       Y : out STD_LOGIC
  );
end MUX41;

architecture MUX41 of MUX41 is

---- Component declarations -----

component MUX21
  port (
       E : in STD_LOGIC_VECTOR(1 downto 0);
       S : in STD_LOGIC;
       Y : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal A : STD_LOGIC_VECTOR(1 downto 0);

begin

----  Component instantiations  ----

U1 : MUX21
  port map(
       E(0) => E(0),
       E(1) => E(1),
       S => S0,
       Y => A(0)
  );

U2 : MUX21
  port map(
       E(0) => E(2),
       E(1) => E(3),
       S => S0,
       Y => A(1)
  );

U3 : MUX21
  port map(
       E => A,
       S => S1,
       Y => Y
  );


end MUX41;
