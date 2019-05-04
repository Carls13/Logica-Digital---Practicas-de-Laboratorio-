-------------------------------------------------------------------------------
--
-- Title       : MUX21
-- Design      : Componentes
-- Author      : Carls13
-- Company     : Carlos Hernandez
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Admin\Desktop\Logica\Logica-Digital---Practicas-de-Laboratorio-\Práctica #04\Sesión 2\Componentes\Componentes\src\MUX21.vhd
-- Generated   : Wed Mar  6 21:19:25 2019
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
--{entity {MUX21} architecture {arq1}}

library IEEE;
use IEEE.std_logic_1164.all;

entity MUX21 is
	 port(
		 S : in STD_LOGIC;
		 E : in STD_LOGIC_VECTOR(1 downto 0);
		 Y : out STD_LOGIC
	     );
end MUX21;

--}} End of automatically maintained section
						
architecture MUX21 of MUX21 is 
	begin      
		process(E, S)          
			begin     
				case S is 
					when '0' => Y <= E(0); 
					when '1' => Y <= E(1); 
					when others => Y <= '0';              
				end case;          
		end process;     
end MUX21;
