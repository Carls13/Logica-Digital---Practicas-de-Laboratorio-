-------------------------------------------------------------------------------
--
-- Title       : FF_D
-- Design      : Control
-- Author      : Carls13
-- Company     : Carlos Hernandez
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\carlos\Desktop\Logica\Logica-Digital---Practicas-de-Laboratorio-\Práctica #05\Sesión 2\Control\Control\src\FF_D.vhd
-- Generated   : Fri Apr 26 20:40:23 2019
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
--{entity {FF_D} architecture {FF_D}}

library IEEE;
use IEEE.std_logic_1164.all;

entity FF_D is
	 port(
		 D : in STD_LOGIC;
		 Clk : in STD_LOGIC;
		 Reset : in STD_LOGIC;
		 Q : out STD_LOGIC;
		 NQ : out STD_LOGIC
	     );
end FF_D;

--}} End of automatically maintained section


architecture FF_D of FF_D is
	signal estado: STD_LOGIC := '0';
	begin
	 process(Clk, Reset)
	 begin
	 	if (Reset = '1') then
	 		estado <= '0';
	 	elsif (Clk'event and Clk = '1') then
	 		estado <= D;
	 	end if;
	 end process;
	 Q <= estado;
	 NQ <= not estado;
	end FF_D; 

