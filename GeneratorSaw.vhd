----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:03:42 03/22/2020 
-- Design Name: 
-- Module Name:    GeneratorSaw - Behavioral 
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY GeneratorSaw IS
	PORT (
		Clk : IN STD_LOGIC;
		Freq : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		Sample : OUT STD_LOGIC_VECTOR (11 DOWNTO 0));
END GeneratorSaw;

ARCHITECTURE Behavioral OF GeneratorSaw IS

	SIGNAL Cycles_Per_Period_Counter_A : INTEGER; -- High freq counter
	SIGNAL Cycles_Per_Period_Counter_B : INTEGER; -- Low freq counter

	SIGNAL Counter_A : INTEGER := 0; -- Low frequency counter, to avoid timing errors caused by high-freq counter.
	SIGNAL Counter_B : INTEGER := 0; -- High frequency counter

	CONSTANT Counter_B_To_A_Resolution_Ratio : INTEGER := 4; -- Exponent of power of two. How many cycles makes counter B per one cycle of counter A (assuming no calc errors).
	CONSTANT Effective_Wave_Resolution : INTEGER := 8; -- Bits. 
	CONSTANT Nanos_Per_Sec : INTEGER := 1_000_000_000;

	SIGNAL Next_8b_Sample_A : UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
	SIGNAL Next_8b_Sample_B : UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
	SIGNAL Next_8b_Sample : UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');

BEGIN
 
	Cycles_Per_Period_Counter_A <= Nanos_Per_Sec / (to_integer(unsigned(Freq)) * 2 ** (Effective_Wave_Resolution - Counter_B_To_A_Resolution_Ratio+1));
	Cycles_Per_Period_Counter_B <= Nanos_Per_Sec / (to_integer(unsigned(Freq)) * 2 ** (Effective_Wave_Resolution+1));

	PROCESS (Clk) BEGIN
		IF(rising_edge(Clk)) THEN
			Counter_A <= Counter_A + 1;
			Counter_B <= Counter_B + 1;
		
			IF (Counter_A > Cycles_Per_Period_Counter_A) THEN
				-- Low frequency counter (A) rolled over. Takes priority over high freq counter (counter B).
				Next_8b_Sample_A <= Next_8b_Sample_A + 2**Counter_B_To_A_Resolution_Ratio;
				Next_8b_Sample_B <= Next_8b_Sample_A;
				Next_8b_Sample <= Next_8b_Sample_A;
				
				Counter_A <= 1; 
				Counter_B <= 1;
			ELSIF (Counter_B > Cycles_Per_Period_Counter_B) THEN
				-- High frequency counter (B) rolled over
				Next_8b_Sample_B <= Next_8b_Sample_B + 1;
				Next_8b_Sample <= Next_8b_Sample_B;

				Counter_B <= 0;
			END IF;
		END IF;
	END PROCESS;

	Sample <= std_logic_vector(Next_8b_Sample) & x"0";
	
END Behavioral;