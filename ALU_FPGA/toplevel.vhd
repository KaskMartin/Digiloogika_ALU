----------------------------------------------------------------------------------
-- Tallinn University of Technology
-- Keijo Lass, Priit Ruberg
-- Playground FPGA toplevel module
-- Create Date:    10:52:20 11/17/2016 

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity toplevel is
	port(
	clk: 	in std_logic; --clock in, 100MHz
	JA:		in std_logic_vector(7 downto 0); --JA port input
	JB:		in std_logic_vector(7 downto 0); --JB port input
	JC:		in std_logic_vector(7 downto 0); --JC port input
	JD:		in std_logic_vector(7 downto 0); --JD port input
	LED:	out std_logic_vector(7 downto 0)); --LEDs
end toplevel;

architecture RTL of toplevel is
component PORTER is 
	Port(JA_P:		in std_logic_vector(7 downto 0); --JA port input
			JB_P:		in std_logic_vector(7 downto 0); --JB port input
			JC_P:		in std_logic_vector(7 downto 0); --JC port input
--			JD_P:		in std_logic_vector(7 downto 0); --JD port input
			LED_P:	out std_logic_vector(7 downto 0); --LEDs
			a : out  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			b : out  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			op : out  STD_LOGIC_VECTOR (1 downto 0);
			o : in  STD_LOGIC_VECTOR (3 downto 0));
end component;

component func1 is 
    Port ( 	a, b : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end component;

component func2 is 
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end component;

component func3 is 
    Port ( 	a, b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end component;

component func4 is 
    Port ( 	a, b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end component;

component mux is 
    Port (m_op : in STD_LOGIC_VECTOR (1 downto 0);
    		F1_in : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			F2_in : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			F3_in : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			F4_in : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			m_o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end component;
signal a, b, o : STD_LOGIC_VECTOR (3 downto 0):="0000";
signal op : STD_LOGIC_VECTOR (1 downto 0):="00";
signal F1_out, F2_out, F3_out, F4_out : STD_LOGIC_VECTOR (3 downto 0):="0000";

begin --beginning of the architecture
	PO : PORTER port map (JA_P => JA, 	
								JB_P => JB,	
								JC_P => JC,	
					--			JD_P  => JD,		
								LED_P => LED,	
								a  => a,  
								b  => b,  
								op => op, 
								o  => o);
	F1 : func1 port map (a => a, 
								b => b , 
								o => F1_out);
	F2 : func2 port map (a => a, 
								o => F2_out);
	F3 : func3 port map (a => a, 
								b => b , 
								o => F3_out);
	F4 : func4 port map (a => a, 
								b => b, 
								o => F4_out);
	MUX_tl : mux port map 	(m_op => op, 
									F1_in  => F1_out, 
									F2_in  => F2_out, 
									F3_in  => F3_out, 
									F4_in  => F4_out, 
									m_o => o);

end RTL;