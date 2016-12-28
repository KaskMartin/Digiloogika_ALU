LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

-- Fun2 = rol A (ringnihe vasakule)
entity func2 is 
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end func2;

architecture design of func2 is 
	signal a_sign, o_sign: signed(3 downto 0);
begin

a_sign <= signed(a);
o_sign <= rotate_left(a_sign, 1);
o <= std_logic_vector(o_sign);
end design;