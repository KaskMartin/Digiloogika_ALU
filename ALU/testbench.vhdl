LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all; --just in case library
use ieee.std_logic_arith.all; --just in case library
 
ENTITY ALU_TB IS --entity of the testbench is always empty
END ALU_TB;

ARCHITECTURE testbench OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
	component ALU is
	    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0); --4 bit input
				b : in  STD_LOGIC_VECTOR (3 downto 0); -- 4 bit input 
				op : in STD_LOGIC_VECTOR (1 downto 0); --1 downto 0
				o : out  STD_LOGIC_VECTOR (3 downto 0)); --4 bit output 
	end component;
    
   --Inputs from the testbench
   signal a_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal b_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal op_tb : std_logic_vector(1 downto 0) := (others => '0');

 	--Output from the testbench
   signal o_tb : std_logic_vector(3 downto 0);

begin
		--component port map
	   uut: ALU port map (
          a => a_tb,
          b => b_tb,
          op => op_tb,
          o => o_tb
        ); 
	process
	
	begin
		--for debugging
		report "Test case 1";
		a_tb <= "0000";
		b_tb <= "0000";
		
		op_tb <= "00";
		wait for 10 ns;
		op_tb <= "01";
		wait for 10ns;
		op_tb <= "10";
		wait for 10ns;
		op_tb <= "11";
		wait for 10ns;
		
		report "Test case 2";
		a_tb <= "1111";
		b_tb <= "0000";
		
		op_tb <= "00";
		wait for 10 ns;
		op_tb <= "01";
		wait for 10ns;
		op_tb <= "10";
		wait for 10ns;
		op_tb <= "11";
		wait for 10ns;
		
		report "Test case 3";
		a_tb <= "1010";
		b_tb <= "0101";
		
		op_tb <= "00";
		wait for 10 ns;
		op_tb <= "01";
		wait for 10ns;
		op_tb <= "10";
		wait for 10ns;
		op_tb <= "11";
		wait for 10ns;
		
		report "Test case 4";
		a_tb <= "1100";
		b_tb <= "0011";
		
		op_tb <= "00";
		wait for 10 ns;
		op_tb <= "01";
		wait for 10ns;
		op_tb <= "10";
		wait for 10ns;
		op_tb <= "11";
		wait for 10ns;
		
		report "Test case 5";
		a_tb <= "0011";
		b_tb <= "0011";
		
		op_tb <= "00";
		wait for 10 ns;
		op_tb <= "01";
		wait for 10ns;
		op_tb <= "10";
		wait for 10ns;
		op_tb <= "11";
		wait for 10ns;
		
		wait;
	end process;

end testbench;