LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

-- Fun3 = clr A, B (seada sına A B-nda biti v‰‰rtuseks '0')
entity func3 is 
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
			b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
			o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
end func3;

architecture design of func3 is 
	signal a_sign, b_sign, o_sign: signed(3 downto 0);
	signal pos_sign: signed(1 downto 0);
begin

a_sign <= signed(a);
b_sign <= signed(b);
pos_sign <= b_sign(1 downto 0);

DISP_F3: process ( a_sign , o_sign , pos_sign )
  begin
		case pos_sign is
		  when "00" =>	
					o_sign <= ("1110" and a_sign);
		  when "01" =>	
					o_sign <= ("1101" and a_sign);
		  when "10" =>	
					o_sign <= ("1011" and a_sign);
		  when "11" =>	
					o_sign <= ("0111" and a_sign);
		  when others => 
					o_sign <= a_sign;
		  
		end case;
	end process DISP_F3;


o <= std_logic_vector(o_sign);

end design;