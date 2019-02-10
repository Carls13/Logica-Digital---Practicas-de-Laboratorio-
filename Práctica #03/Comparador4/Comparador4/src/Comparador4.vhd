-------------------------------------------------------------------------------
--
-- Title       : Comparador4
-- Design      : Comparador4
-- Author      : Carls13
-- Company     : Carlos Hernandez
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Admin\Desktop\Logica\Prácticas de Laboratorio\Práctica #03\Comparador4\Comparador4\src\Comparador4.vhd
-- Generated   : Sun Feb 10 12:30:19 2019
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
--{entity {Comparador4} architecture {Comparador4}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Comparador4 is
	 port(
		 A : in STD_LOGIC_VECTOR(3 downto 0);
		 B : in STD_LOGIC_VECTOR(3 downto 0);
		 mayor : out STD_LOGIC;
		 igual : out STD_LOGIC;
		 menor : out STD_LOGIC
	     );
end Comparador4;

--}} End of automatically maintained section

architecture arq of Comparador4 is
begin		
	
	mayor <= '1' when ( A > B ) else '0';
	igual <= '1' when ( A = B ) else '0';
	menor <= '1' when ( A < B ) else '0';


end arq;
