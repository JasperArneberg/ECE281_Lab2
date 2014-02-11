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

begin

Bit0: component Full_Adder
	port map (A => A(0),
				 B => B(0),
				 Cin => Sub,
				 Sum => Sum(0),
				 Cout => carry(0)
	);
	
Bit1: component Full_Adder
	port map (A => A(1),
				 B => B(1),
				 Cin => carry(0),
				 Sum => Sum(1),
				 Cout => carry(1)
	);

Bit2: component Full_Adder
	port map (A => A(2),
				 B => B(2),
				 Cin => carry(1),
				 Sum => Sum(2),
				 Cout => carry(2)
	);

Bit3: component Full_Adder
	port map (A => A(3),
				 B => B(3),
				 Cin => carry(2),
				 Sum => Sum(3),
				 Cout => carry(3)
	);

end Structural;

