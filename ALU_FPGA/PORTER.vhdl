LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
--use ieee.numeric_std.all; --just in case library
--use ieee.std_logic_arith.all; --just in case library

-- Fun1 = A + B (aritmeetiline liitmine)
entity PORTER is 
    Port (
			JA_P:		in std_logic_vector(7 downto 0); --JA port input
			JB_P:		in std_logic_vector(7 downto 0); --JB port input
			JC_P:		in std_logic_vector(7 downto 0); --JC port input
--			JD_P:		in std_logic_vector(7 downto 0); --JD port input
			LED_P:	out std_logic_vector(7 downto 0); --LEDs
			a : out  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			b : out  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			op : out  STD_LOGIC_VECTOR (1 downto 0);
			o : in  STD_LOGIC_VECTOR (3 downto 0));
end PORTER;

architecture design of PORTER is 
	signal JA_P_sign, JB_P_sign, JC_P_sign, LED_P_sign: signed(7 downto 0);
	signal a_sign, b_sign, o_sign: signed(3 downto 0);
	signal op_sign: signed(1 downto 0);
begin

JA_P_sign <= signed(JA_P);
JB_P_sign <= signed(JB_P);
JC_P_sign <= signed(JC_P);
-- JD_P_sign <= signed(JD_P);
o_sign <= signed(o);


a_sign <= JA_P_sign(3 downto 0);
b_sign <= JB_P_sign(3 downto 0);
op_sign <= JC_P_sign(1 downto 0);
LED_P_sign <= ("0000" & o_sign);

a <= std_logic_vector(a_sign);
b <= std_logic_vector(b_sign);
op <= std_logic_vector(op_sign);
LED_P <= std_logic_vector(LED_P_sign);

end design;