-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Control
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\carlos\Desktop\Logica\Logica-Digital---Practicas-de-Laboratorio-\Práctica #05\Sesión 2\Control\Control\compile\UC.vhd
-- Generated   : Mon May 13 19:34:35 2019
-- From        : C:\Users\carlos\Desktop\Logica\Logica-Digital---Practicas-de-Laboratorio-\Práctica #05\Sesión 2\Control\Control\src\UC.bde
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

entity UC is
  port(
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
end UC;

architecture UC of UC is

---- Component declarations -----

component ClkDiv
  port (
       Clk : in STD_LOGIC;
       Reset : in STD_LOGIC;
       Clk3 : out STD_LOGIC
  );
end component;
component FF_D
  port (
       Clk : in STD_LOGIC;
       D : in STD_LOGIC;
       Reset : in STD_LOGIC;
       NQ : out STD_LOGIC;
       Q : out STD_LOGIC
  );
end component;
component FF_JK
  port (
       Clk : in STD_LOGIC;
       J : in STD_LOGIC;
       K : in STD_LOGIC;
       Reset : in STD_LOGIC;
       NQ : out STD_LOGIC;
       Q : out STD_LOGIC
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

----     Constants     -----
constant GND_CONSTANT   : STD_LOGIC := '0';

---- Signal declarations used on the diagram ----

signal D1 : STD_LOGIC;
signal E1 : STD_LOGIC;
signal GND : STD_LOGIC;
signal J0 : STD_LOGIC;
signal K0 : STD_LOGIC;
signal NET449 : STD_LOGIC;
signal NET457 : STD_LOGIC;
signal NET564 : STD_LOGIC;
signal NET572 : STD_LOGIC;
signal NET64 : STD_LOGIC;
signal NET975 : STD_LOGIC;
signal NET983 : STD_LOGIC;
signal NN3 : STD_LOGIC;
signal NQ0 : STD_LOGIC;
signal NQ1 : STD_LOGIC;
signal NT : STD_LOGIC;
signal Q0 : STD_LOGIC;
signal Q1 : STD_LOGIC;
signal X : STD_LOGIC;
signal Y : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : ClkDiv
  port map(
       Clk => Clk,
       Clk3 => NET64,
       Reset => Clear
  );

NET457 <= N3 and Q1;

K0 <= NET457 or NET449;

V1 <= Q0 and NQ1;

Y <= NQ0 and Q1;

X <= Q0 and Q1;

NET564 <= T and NQ0 and Q1;

NET572 <= N3 and NQ0 and Q1;

A <= NET572 or NET564;

NET975 <= NQ1 and Inicio;

U2 : FF_D
  port map(
       Clk => NET64,
       D => D1,
       NQ => NQ1,
       Q => Q1,
       Reset => Clear
  );

J0 <= NET983 or NET975;

U3 : FF_JK
  port map(
       Clk => NET64,
       J => J0,
       K => K0,
       NQ => NQ0,
       Q => Q0,
       Reset => Clear
  );

U4 : MUX41
  port map(
       E(0) => NN3,
       E(1) => NT,
       E(2) => N1,
       E(3) => GND,
       S0 => Q0,
       S1 => Q1,
       Y => D1
  );

NET983 <= Q1 and E1;

NT <= not(T);

E1 <= N2 and NT;

NN3 <= not(N3);

NET449 <= N1 and NQ1;


---- Power , ground assignment ----

GND <= GND_CONSTANT;

---- Terminal assignment ----

    -- Output\buffer terminals
	M <= Y;
	V2 <= Y;
	V3 <= X;


end UC;
