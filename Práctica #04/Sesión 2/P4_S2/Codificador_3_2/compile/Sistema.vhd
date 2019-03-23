-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Codificador_3_2
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #04\Sesión 2\P4_S2\Codificador_3_2\compile\Sistema.vhd
-- Generated   : Sat Mar 23 15:44:45 2019
-- From        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #04\Sesión 2\P4_S2\Codificador_3_2\src\Sistema.bde
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity Sistema is
  port(
       B : in STD_LOGIC;
       Disp : in STD_LOGIC_VECTOR(7 downto 0);
       E : in STD_LOGIC_VECTOR(2 downto 0);
       M : out STD_LOGIC;
       D : out STD_LOGIC_VECTOR(1 downto 0);
       a_to_g : out STD_LOGIC_VECTOR(6 downto 0)
  );
end Sistema;

architecture Sistema of Sistema is

---- Component declarations -----

component BCD7Seg
  port (
       NUM : in STD_LOGIC_VECTOR(3 downto 0);
       SEG : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;
component Codificador32
  port (
       E : in STD_LOGIC_VECTOR(2 downto 0);
       S : out STD_LOGIC_VECTOR(1 downto 0)
  );
end component;
component MUX21
  port (
       E : in STD_LOGIC_VECTOR(1 downto 0);
       S : in STD_LOGIC;
       Y : out STD_LOGIC
  );
end component;
component MUX41
  port (
       E : in STD_LOGIC_VECTOR(3 downto 0);
       S0 : in STD_LOGIC;
       S1 : in STD_LOGIC;
       Y : out STD_LOGIC
  );
end component;
component MuxMapper
  port (
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
end component;

----     Constants     -----
constant GND_CONSTANT   : STD_LOGIC := '0';

---- Signal declarations used on the diagram ----

signal A0 : STD_LOGIC;
signal A1 : STD_LOGIC;
signal A2 : STD_LOGIC;
signal A3 : STD_LOGIC;
signal GND : STD_LOGIC;
signal NET1161 : STD_LOGIC;
signal NET1168 : STD_LOGIC;
signal De : STD_LOGIC_VECTOR(7 downto 0);
signal MUL : STD_LOGIC_VECTOR(3 downto 0);
signal S : STD_LOGIC_VECTOR(3 downto 0);

begin

----  Component instantiations  ----

U1 : Codificador32
  port map(
       E => E,
       S(0) => S(0),
       S(1) => S(1)
  );

NET1161 <= not(A0);

NET1168 <= not(A1);

MUL(1) <= A1 and NET1161;

MUL(2) <= NET1168 and A1;

MUL(0) <= A1 and A0;

MUL(3) <= not(A1 xor A0);

U16 : MuxMapper
  port map(
       De0 => De(0),
       De1 => De(1),
       De2 => De(2),
       De3 => De(3),
       De4 => De(4),
       De5 => De(5),
       De6 => De(6),
       De7 => De(7),
       Disp0 => Disp(0),
       Disp1 => Disp(1),
       Disp2 => Disp(2),
       Disp3 => Disp(3),
       Disp4 => Disp(4),
       Disp5 => Disp(5),
       Disp6 => Disp(6),
       Disp7 => Disp(7)
  );

U2 : MUX41
  port map(
       E(0) => De(0),
       E(1) => De(1),
       E(2) => De(2),
       E(3) => De(3),
       S0 => S(0),
       S1 => S(1),
       Y => D(0)
  );

U3 : BCD7Seg
  port map(
       NUM => S,
       SEG => a_to_g
  );

U4 : MUX41
  port map(
       E(0) => De(4),
       E(1) => De(5),
       E(2) => De(6),
       E(3) => De(7),
       S0 => S(0),
       S1 => S(1),
       Y => D(1)
  );

U5 : MUX21
  port map(
       E(0) => Disp(0),
       E(1) => Disp(1),
       S => B,
       Y => A0
  );

U6 : MUX21
  port map(
       E(0) => Disp(4),
       E(1) => Disp(5),
       S => B,
       Y => A2
  );

U7 : MUX21
  port map(
       E(0) => Disp(2),
       E(1) => Disp(3),
       S => B,
       Y => A1
  );

U8 : MUX21
  port map(
       E(0) => Disp(6),
       E(1) => Disp(7),
       S => B,
       Y => A3
  );

U9 : MUX41
  port map(
       E => MUL,
       S0 => A2,
       S1 => A3,
       Y => M
  );


---- Power , ground assignment ----

GND <= GND_CONSTANT;
S(3) <= GND;
S(2) <= GND;

end Sistema;
