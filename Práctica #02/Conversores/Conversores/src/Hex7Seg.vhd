-------------------------------------------------------------------------------
--
-- Title       : Hex7Seg
-- Design      : Conversores
-- Author      : Gianfranco
-- Company     : UC
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Conversores\Conversores\src\Hex7Seg.vhd
-- Generated   : Sun Feb  3 14:50:02 2019
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
--{entity {Hex7Seg} architecture {Hex7Seg}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Hex7Seg is
	 port(
		 NUM : in STD_LOGIC_VECTOR(3 downto 0);
		 SEG : out STD_LOGIC_VECTOR(6 downto 0)
	     );
end Hex7Seg;

--}} End of automatically maintained section

architecture Hex7Seg of Hex7Seg is
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
		"0001000" when "1010",
		"1100000" when "1011",
		"0110001" when "1100",
		"1000010" when "1101",
		"0110000" when "1110",
		"0111000" when "1111",
		"0000001" when others;
		

end Hex7Seg;
