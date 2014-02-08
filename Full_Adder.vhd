----------------------------------------------------------------------------------
-- Company: 	USAFA
-- Engineer: 	C3C Jasper Arneberg
-- 
-- Create Date:    18:19:12 02/07/2014 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:  This is an implementation of a full adder. The three inputs are A, B,
-- and Cin. The two outputs are Sum and Cout.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

		signal A_Bnot_Cnot, Anot_B_Cnot, Anot_Bnot_C, ABC : STD_LOGIC;
		signal AC, BC, AB : STD_LOGIC;

begin

	A_Bnot_Cnot <= A and (not B) and (not Cin);
	Anot_B_Cnot <= (not A) and B and (not Cin);
	Anot_Bnot_C <= (not A) and (not B) and Cin;
	ABC <= A and B and Cin;
	AC <= A and Cin;
	BC <= B and Cin;
	AB <= A and B;
	
	Sum <= A_Bnot_Cnot or Anot_B_Cnot or Anot_Bnot_C or ABC;
	Cout <= AC or BC or AB;

end Behavioral;

