-------------------------------------------------------------------------------
--
-- Title       : Alarma2
-- Design      : Alarma2
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Alarma2\Alarma2\src\Alarma2.vhd
-- Generated   : Thu Jan 31 22:07:05 2019
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
--{entity {Alarma2} architecture {Alarma2}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Alarma2 is
	 port(
		 M : in STD_LOGIC;
		 P : in STD_LOGIC;
		 L : in STD_LOGIC;
		 C : in STD_LOGIC;
		 A : out STD_LOGIC
	     );
end Alarma2;


architecture Alarma2 of Alarma2 is
begin

	A <= '1' when
		((M='0' and L='1') or
		(M='1' and P='1') or
		(M='1' and C='1'))
	else
		'0';

end Alarma2;
