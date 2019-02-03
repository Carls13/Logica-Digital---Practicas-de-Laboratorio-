-------------------------------------------------------------------------------
--
-- Title       : BCD7Seg
-- Design      : Conversores
-- Author      : Gianfranco
-- Company     : UC
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Conversores\Conversores\src\BCD7Seg.vhd
-- Generated   : Sun Feb  3 14:15:52 2019
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
--{entity {BCD7Seg} architecture {BCD7Seg}}

library IEEE;
use IEEE.std_logic_1164.all;

entity BCD7Seg is
	 port(
		 NUM : in STD_LOGIC_VECTOR(3 downto 0);
		 SEG : out STD_LOGIC_VECTOR(6 downto 0)
	     );
end BCD7Seg;

--}} End of automatically maintained section

architecture BCD7Seg of BCD7Seg is
begin
	with NUM select
		SEG <= "0000001" when "0000",
		"1001111" when "0001",
		"0010010" when "0010",
		"0000110" when "0011",
		"1001100" when "0100",
		"0100100" when "0101",
		"0100000" when "0110",
		"0001111" when "0111",
		"0000000" when "1000",
		"0000100" when "1001",
		"1111110" when others;
		
end BCD7Seg;
