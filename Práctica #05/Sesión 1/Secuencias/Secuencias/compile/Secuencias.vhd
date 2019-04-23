-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : Secuencias
-- Author      : Gianfranco
-- Company     : UC
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #05\Sesión 1\Secuencias\Secuencias\compile\Secuencias.vhd
-- Generated   : Tue Apr 23 00:28:45 2019
-- From        : c:\Users\gianfranco\Downloads\Logica-Digital---Practicas-de-Laboratorio--master\Práctica #05\Sesión 1\Secuencias\Secuencias\src\Secuencias.asf
-- By          : FSM2VHDL ver. 5.0.7.2
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Secuencias is 
	port (
		clk: in STD_LOGIC;
		P: in STD_LOGIC;
		X: in STD_LOGIC;
		N: out STD_LOGIC_VECTOR (2 downto 0);
		T: out STD_LOGIC);
end Secuencias;

architecture Secuencias_arch of Secuencias is

-- SYMBOLIC ENCODED state machine: Sreg0
type Sreg0_type is (
    S1, S2, S3, S4, S5, S6, S7, S8, S9, S10
);
-- attribute ENUM_ENCODING of Sreg0_type: type is ... -- enum_encoding attribute is not supported for symbolic encoding

signal Sreg0, NextState_Sreg0: Sreg0_type;

-- Declarations of pre-registered internal signals

begin

-- FSM coverage pragmas
-- Aldec enum Machine_Sreg0 CURRENT=Sreg0
-- Aldec enum Machine_Sreg0 NEXT=NextState_Sreg0
-- Aldec enum Machine_Sreg0 STATES=S1,S10,S2,S3,S4,S5,S6,S7,S8,S9
-- Aldec enum Machine_Sreg0 TRANS=S1->S2,S1->S6,S10->S1,S10->S6,S2->S3,S2->S4,S2->S6,S3->S5,S3->S6,S4->S5,S4->S6,S5->S1,S5->S6,S6->S1,S6->S7,S7->S1,S7->S8,S7->S9,S8->S1,S8->S10,S9->S1,S9->S10


----------------------------------------------------------------------
-- Machine: Sreg0
----------------------------------------------------------------------
------------------------------------
-- Next State Logic (combinatorial)
------------------------------------
Sreg0_NextState: process (P, X, Sreg0)
begin
	NextState_Sreg0 <= Sreg0;
	-- Set default values for outputs and signals
	-- ...
	case Sreg0 is
		when S1 =>
			N<="000";
			T<='0';
			if X='0' then
				NextState_Sreg0 <= S2;
			elsif X='1' then
				NextState_Sreg0 <= S6;
			else
				NextState_Sreg0 <= S1;
			end if;
		when S2 =>
			N<="100";
			T<='0';
			if X='0' AND P='0' then
				NextState_Sreg0 <= S3;
			elsif X='0' AND P='1' then
				NextState_Sreg0 <= S4;
			elsif X='1' then
				NextState_Sreg0 <= S6;
			else
				NextState_Sreg0 <= S1;
			end if;
		when S3 =>
			N<="010";
			T<='0';
			if X='0' then
				NextState_Sreg0 <= S5;
			elsif X='1' then
				NextState_Sreg0 <= S6;
			else
				NextState_Sreg0 <= S1;
			end if;
		when S4 =>
			N<="010";
			T<='1';
			if X='0' then
				NextState_Sreg0 <= S5;
			elsif X='1' then
				NextState_Sreg0 <= S6;
			else
				NextState_Sreg0 <= S1;
			end if;
		when S5 =>
			N<="001";
			T<='0';
			if X='0' then
				NextState_Sreg0 <= S1;
			elsif X='1' then
				NextState_Sreg0 <= S6;
			else
				NextState_Sreg0 <= S1;
			end if;
		when S6 =>
			N<="111";
			T<='0';
			if X='1' then
				NextState_Sreg0 <= S7;
			elsif X='0' then
				NextState_Sreg0 <= S1;
			else
				NextState_Sreg0 <= S1;
			end if;
		when S7 =>
			N<="110";
			T<='0';
			if X='1' AND P='0' then
				NextState_Sreg0 <= S8;
			elsif X='1' AND P='1' then
				NextState_Sreg0 <= S9;
			elsif X='0' then
				NextState_Sreg0 <= S1;
			else
				NextState_Sreg0 <= S1;
			end if;
		when S8 =>
			N<="101";
			T<='0';
			if X='0' then
				NextState_Sreg0 <= S1;
			else
				NextState_Sreg0 <= S10;
			end if;
		when S9 =>
			N<="101";
			T<='1';
			if X='1' then
				NextState_Sreg0 <= S10;
			elsif X='0' then
				NextState_Sreg0 <= S1;
			else
				NextState_Sreg0 <= S1;
			end if;
		when S10 =>
			N<="011";
			T<='0';
			if X='1' then
				NextState_Sreg0 <= S6;
			elsif X='0' then
				NextState_Sreg0 <= S1;
			else
				NextState_Sreg0 <= S1;
			end if;
--vhdl_cover_off
		when others =>
			null;
--vhdl_cover_on
	end case;
end process;

------------------------------------
-- Current State Logic (sequential)
------------------------------------
Sreg0_CurrentState: process (clk)
begin
	if clk'event and clk = '1' then
		Sreg0 <= NextState_Sreg0;
	end if;
end process;

end Secuencias_arch;
