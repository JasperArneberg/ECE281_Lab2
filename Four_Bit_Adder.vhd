----------------------------------------------------------------------------------
-- Company: 	USAFA
-- Engineer: 	C3C Jasper Arneberg
-- 
-- Create Date:    13:25:59 02/10/2014 
-- Design Name: 
-- Module Name:    Four_Bit_Adder - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
-- Documentation: The following tutorial helpd me understand how to calculate overflow:
-- http://www.cs.umd.edu/class/sum2003/cmsc311/Notes/Comb/overflow.html
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

entity Four_Bit_Adder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Sub : in  STD_LOGIC;
           V : out  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0));
end Four_Bit_Adder;

architecture Structural of Four_Bit_Adder is

--component statement
	component Full_Adder is
		port (A : in STD_LOGIC;
				B : in STD_LOGIC;
				Cin : in STD_LOGIC;
				Cout : out STD_LOGIC;
				Sum : out STD_LOGIC);
	end component Full_Adder;

	signal carry : STD_LOGIC_VECTOR(3 downto 0);
	signal B_add_or_sub : STD_LOGIC_VECTOR(3 downto 0);

begin

Bit0: component Full_Adder
	port map (A => A(0),
				 B => B_add_or_sub(0),
				 Cin => Sub,
				 Sum => Sum(0),
				 Cout => carry(0)
	);
	
Bit1: component Full_Adder
	port map (A => A(1),
				 B => B_add_or_sub(1),
				 Cin => carry(0),
				 Sum => Sum(1),
				 Cout => carry(1)
	);

Bit2: component Full_Adder
	port map (A => A(2),
				 B => B_add_or_sub(2),
				 Cin => carry(1),
				 Sum => Sum(2),
				 Cout => carry(2)
	);

Bit3: component Full_Adder
	port map (A => A(3),
				 B => B_add_or_sub(3),
				 Cin => carry(2),
				 Sum => Sum(3),
				 Cout => carry(3)
	);
	
	--overflow flag
	V <= carry(3) xor carry(2);
	
	--handle subtraction (multiplexer behavioral code)
	B_add_or_sub(0) <= (B(0) and (not Sub)) or ((not B(0)) and Sub);
	B_add_or_sub(1) <= (B(1) and (not Sub)) or ((not B(1)) and Sub);
	B_add_or_sub(2) <= (B(2) and (not Sub)) or ((not B(2)) and Sub);
	B_add_or_sub(3) <= (B(3) and (not Sub)) or ((not B(3)) and Sub);
	
end Structural;

