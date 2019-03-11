-------------------------------------------------------------------------------
--
-- Title       : DEMUX14
-- Design      : Componentes
-- Author      : Carls13
-- Company     : Carlos Hernandez
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Admin\Desktop\Logica\Logica-Digital---Practicas-de-Laboratorio-\Práctica #04\Sesión 2\Componentes\Componentes\src\DEMUX14.vhd
-- Generated   : Mon Mar 11 14:40:56 2019
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
--{entity {DEMUX14} architecture {DEMUX14}}

library IEEE;
use IEEE.std_logic_1164.all;

entity DEMUX14 is
	 port(
		 S : in STD_LOGIC_VECTOR(1 downto 0);
		 Y : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end DEMUX14;

--}} End of automatically maintained section

architecture DEMUX14 of DEMUX14 is
begin

	-- enter your statements here --	
	Y(0) <= S(0) OR S(1);
	Y(1) <= (NOT S(0)) OR S(1);
	Y(2) <= S(0) OR (NOT S(1));
	Y(3) <= (NOT S(0)) OR (NOT S(1));

end DEMUX14;
