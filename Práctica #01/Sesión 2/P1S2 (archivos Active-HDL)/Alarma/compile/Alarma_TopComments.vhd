-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Alarma
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\P1S2\Alarma\compile\Alarma_Top.vhd
-- Generated   : Wed Jan 30 22:40:45 2019
-- From        : c:\My_Designs\P1S2\Alarma\src\Alarma_Top.bde
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

-- Input port: SW(3:0)--
-- Output port: LD(0:0)--
entity Alarma_Top is
  port(
       sw : in STD_LOGIC_VECTOR(3 downto 0);
       ld : out STD_LOGIC_VECTOR(0 downto 0)
  );
end Alarma_Top;

architecture Alarma_Top of Alarma_Top is

---- Component declarations -----

-- Reusing of previously created component Alarma --

component Alarma
  port (
       C : in STD_LOGIC;
       L : in STD_LOGIC;
       M : in STD_LOGIC;
       P : in STD_LOGIC;
       A : out STD_LOGIC
  );
end component;

begin

----  Component instantiations  ----

-- SW array children elements assigment to each
-- input of Alarma component --
U1 : Alarma
  port map(
       A => ld(0),
       C => sw(0),
       L => sw(1),
       M => sw(3),
       P => sw(2)
  );
end Alarma_Top;
