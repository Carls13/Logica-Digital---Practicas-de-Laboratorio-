-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Alarma
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\P1S2\Alarma\compile\Alarma.vhd
-- Generated   : Wed Jan 30 21:36:56 2019
-- From        : c:\My_Designs\P1S2\Alarma\src\Alarma.bde
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

-- Input ports: M, P, L and C
-- Output port: A
entity Alarma is
  port(
       C : in STD_LOGIC;
       L : in STD_LOGIC;
       M : in STD_LOGIC;
       P : in STD_LOGIC;
       A : out STD_LOGIC
  );
end Alarma;

architecture Alarma of Alarma is

---- Signal declarations used on the diagram ----

-- These signals are the 3 wires used in the 
-- circuit to connect the inputs to the NOR, 
--OR and AND gates -- 

signal NET47 : STD_LOGIC;
signal NET67 : STD_LOGIC;
signal NET75 : STD_LOGIC;

begin

----  Component instantiations  ----  
	
-- (M+L)--
NET67 <= L or M;

-- (P+C+NET47) --
NET75 <= NET47 or C or P;
-- A = (M+L).(~M+C+P) --
A <= NET75 and NET67;
-- NET47 = ~M --
NET47 <= not(M);


end Alarma;
