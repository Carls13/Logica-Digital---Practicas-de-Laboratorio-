-------------------------------------------------------------------------------
--
-- Title       : UA
-- Design      : Comparador4
-- Author      : Gianfranco
-- Company     : UC
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #03\Comparador4\Comparador4\src\UA.vhd
-- Generated   : Sun Feb 10 20:31:44 2019
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
--{entity {UA} architecture {UA}}

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UA is
	 port(
		 Op : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(3 downto 0);
		 B : in STD_LOGIC_VECTOR(3 downto 0);
		 C : out STD_LOGIC;
		 S : out STD_LOGIC;
		 R : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end UA;

--}} End of automatically maintained section

architecture UA of UA is
signal result: STD_LOGIC_VECTOR(4 downto 0); -- Señal auxiliar
begin
	process (A, B, Op, result)
	begin
		result <= (others => '0'); -- Inicializar result con “00000”
		if (Op = '0') then -- Sumar (+)
			result <= ('0' & A) + ('0' & B);
		elsif(Op = '1') then -- Restar (-)
			result <= ('0' & A) - ('0' & B);
		end if;
		if(Op = '1' and result(4) = '1') then
			R <= not(result(3 downto 0)) + '1';
			C <= '0';
			S <= '1';
		else
			R <= result(3 downto 0);
			C <= result(4);
			S <= '0';
		end if;
	end process;
end UA;
