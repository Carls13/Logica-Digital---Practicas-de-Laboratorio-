-------------------------------------------------------------------------------
--
-- Title       : FF_JK
-- Design      : Control
-- Author      : Carls13
-- Company     : Carlos Hernandez
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\carlos\Desktop\Logica\Logica-Digital---Practicas-de-Laboratorio-\Práctica #05\Sesión 2\Control\Control\src\FF_JK.vhd
-- Generated   : Fri Apr 26 21:55:49 2019
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {FF_JK} architecture {FF_JK}}

library IEEE;
use IEEE.std_logic_1164.all;

entity FF_JK is
	 port(
		 J : in STD_LOGIC;
		 Clk : in STD_LOGIC;
		 K : in STD_LOGIC;
		 Reset : in STD_LOGIC;
		 Q : out STD_LOGIC;
		 NQ : out STD_LOGIC
	     );
end FF_JK;

architecture FF_JK of FF_JK is
	signal estado: STD_LOGIC := '0';
	begin
	process(Clk, Reset)
		 begin
		 if (Reset = '1') then
		 	estado <= '0';
		 elsif (Clk'event and Clk = '1') then
		 	estado <= (J and not estado) or (not K and estado);
		 end if;
	end process;
Q <= estado;
NQ <= not estado; 
end FF_JK;
