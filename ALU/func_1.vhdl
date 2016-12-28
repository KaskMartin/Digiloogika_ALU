LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
--use ieee.numeric_std.all; --just in case library
--use ieee.std_logic_arith.all; --just in case library

-- Fun1 = A + B (aritmeetiline liitmine)
entity func1 is 
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end func1;

architecture design of func1 is 
	signal a_sign, b_sign,o_sign: signed(3 downto 0);
	
begin

a_sign <= signed(a);
b_sign <= signed(b);
o_sign <= a_sign + b_sign;
o <= std_logic_vector(o_sign);

end design;