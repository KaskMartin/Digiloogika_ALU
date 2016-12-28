library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is --do not change entity, it must match testbench component
    Port ( 	a , b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			op : in STD_LOGIC_VECTOR (1 downto 0); --2 bit input
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end ALU;

architecture toplevel of ALU is

--declare components and inner signals here if needed

--as example the component for first function is created and port mapped
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
signal F1_out, F2_out, F3_out, F4_out : STD_LOGIC_VECTOR (3 downto 0):="0000";

begin --beginning of the architecture
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
	
end toplevel;