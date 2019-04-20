-------------------------------------------------------------------------------
--
-- Title       : ClkDiv
-- Design      : Ejemplo_8
-- Author      : Ricardo Villegas
-- Company     : CPI - UC
--
-------------------------------------------------------------------------------
--
-- File        : ClkDiv.vhd
-- Generated   : Fri Feb  1 18:21:25 2013
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
--{entity {ClkDiv} architecture {ClkDiv}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity ClkDiv is
	 port(
		 Clk : in STD_LOGIC;
		 Reset : in STD_LOGIC;
		 Clk3 : out STD_LOGIC
	     );
end ClkDiv;

architecture ClkDiv of ClkDiv is
signal q : STD_LOGIC_VECTOR(23 downto 0);
begin
	-- Clock Divider
	process(Clk, Reset)
	begin
		if Reset = '1' then
			q <= (others => '0'); --X"000000";
		elsif Clk'event and Clk = '1' then
			q <= q + 1;
		end if;
	end process;
	Clk3 <= q(23);
end ClkDiv;
