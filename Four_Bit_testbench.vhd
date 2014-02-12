--------------------------------------------------------------------------------
-- Company: 	USAFA
-- Engineer:	C3C Jasper Arneberg
--
-- Create Date:   16:07:34 02/10/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Jasper.Arneberg/Documents/MyGit/Lab2_Arneberg/Four_Bit_testbench.vhd
-- Project Name:  Lab2_Arneberg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Four_Bit_Adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: Documentation: http://www.seas.upenn.edu/~ese171/vhdl/VHDLTestbench.pdf
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;
 
ENTITY Four_Bit_testbench IS
END Four_Bit_testbench;
 
ARCHITECTURE behavior OF Four_Bit_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Four_Bit_Adder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Sub : IN  std_logic;
         V : OUT  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Sub : std_logic := '0';

 	--Outputs
   signal V : std_logic;
   signal Sum : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Four_Bit_Adder PORT MAP (
          A => A,
          B => B,
          Sub => Sub,
          V => V,
          Sum => Sum
        );

   -- Stimulus process
   stim_proc: process
   begin		
		--initialize inputs
		A <= "0000";
		B <= "0000";
		Sub <= '0';
		
		--Loop for A values
		for J in 0 to 15 loop
			--Loop for B values
			for K in 0 to 15 loop
				wait for 1ns;		
					
			--Code modeled from upenn.edu, see documentation
				assert (Sum = A + B) report "Expected sum of " &
					integer'image(to_integer(unsigned((A+B)))) & " when A = " &
					integer'image(to_integer(unsigned((A)))) & " and when B = " &
					integer'image(to_integer(unsigned((B)))) & "; sum was calculated as " &
					integer'image(to_integer(unsigned((Sum)))) severity FAILURE;
			
				--increment B
				B <= B + "0001";
			end loop;
		
			--increment A
			A <= A + "0001";
		end loop;

		Sub <= '1';
		
		--Loop for A values
		for J in 0 to 15 loop
			--Loop for B values
			for K in 0 to 15 loop
				wait for 1ns;		
					
			--Code modeled from upenn.edu, see documentation
				assert (Sum = A - B) report "Expected difference of " &
					integer'image(to_integer(unsigned((A-B)))) & " when A = " &
					integer'image(to_integer(unsigned((A)))) & " and when B = " &
					integer'image(to_integer(unsigned((B)))) & "; difference was calculated as " &
					integer'image(to_integer(unsigned((Sum)))) severity FAILURE;
			
				--increment B
				B <= B + "0001";
			end loop;
		
			--increment A
			A <= A + "0001";
		end loop;
		
		report "Test completed successfully.";
			
   end process;

END;
