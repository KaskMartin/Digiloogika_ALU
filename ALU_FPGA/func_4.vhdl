LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Fun4 = A and B
entity func4 is 
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end func4;

architecture design of func4 is 
begin
o <= a and b;

end design;
