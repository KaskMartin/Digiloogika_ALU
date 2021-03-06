------------------------------------------------------------------------------
--  File: mux.vhd
------------------------------------------------------------------------------
--Multiplexer design
--The output is chosen based on 2 bit control signal from 4 signals with length 4 bits
--If control signal is '00' then input F1_in is chosen to the output m_o
--If '01' then input F2_in is chosen to the output m_o
--If '10' then input F3_in is chosen to the output m_o
--If '11' then input F4_in is chosen to the output m_o

library IEEE;
use IEEE.std_logic_1164.all;

--Multiplexer entity
 entity Mux is
  port ( m_op 	: in STD_LOGIC_VECTOR (1 downto 0);
  		  F1_in    : in  STD_LOGIC_VECTOR (3 downto 0);
        F2_in    : in  STD_LOGIC_VECTOR (3 downto 0);
        F3_in    : in  STD_LOGIC_VECTOR (3 downto 0);
        F4_in    : in  STD_LOGIC_VECTOR (3 downto 0);
        m_o 		: out STD_LOGIC_VECTOR (3 downto 0));
  end Mux;

--Architecture of the multiplexer
architecture RTL of Mux is

begin
--Behavioural process DISP_MUX
DISP_MUX: process ( F1_in, F2_in, F3_in, F4_in, m_op ) --sensitivity list
  begin
	case m_op is
		when "00" =>	m_o <= F1_in;
		when "01" =>	m_o <= F2_in;
		when "10" =>	m_o <= F3_in;
		when "11" =>	m_o <= F4_in;
		when others => m_o <= F1_in;
	end case;
end process DISP_MUX;
end RTL;