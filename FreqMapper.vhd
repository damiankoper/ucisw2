----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:01 03/22/2020 
-- Design Name: 
-- Module Name:    FreqMapper - Behavioral 
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
USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY FreqMapper IS
    PORT (
        Tone : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        OctaveNum : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        Period : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END FreqMapper;

ARCHITECTURE Behavioral OF FreqMapper IS
    TYPE Tone_Periods IS ARRAY(0 TO 12) OF INTEGER;
    TYPE Octaves IS ARRAY(0 TO 8) OF Tone_Periods;
    SIGNAL Cycles_Per_Wave_Period_Table : Octaves:= ( -- Each period value is expressed in number of 50MHz clock cycles
    (0, 3048780, 2890173, 2717391, 2564103, 2427184, 2293578, 2164502, 2040816, 1923077, 1818182, 1718213, 1618123),
	 (0, 1529052, 1440922, 1362398, 1285347, 1213592, 1144165, 1079914, 1020408, 963391, 909091, 857633, 810373),
	 (0, 800000, 782473, 681199, 642674, 606796, 572738, 540541, 510204, 481696, 454545, 429185, 404858),
	 (0, 382263, 360750, 340599, 321337, 303398, 286369, 270270, 255102, 240732, 227273, 214500, 202511),
	 (0, 191131, 180375, 170242, 160720, 151699, 143184, 135135, 127551, 120395, 113636, 107250, 101235),
	 (0, 95547, 90188, 85135, 80347, 75838, 71582, 67568, 63776, 60197, 56818, 53631, 50618),
	 (0, 47778, 45098, 42564, 40177, 37922, 35794, 33784, 31526, 30099, 28409, 26814, 25310),
	 (0, 23889, 22548, 21283, 20088, 18961, 17897, 16892, 15944, 15049, 14205, 13407, 12655),
	 (0, 11945, 11274, 10641, 10044, 9480, 8948, 8446, 7972, 7525, 7102, 6704, 6327));

BEGIN

    Period <= STD_LOGIC_VECTOR(
						to_unsigned(
							INTEGER(
								Cycles_Per_Wave_Period_Table(
									to_integer(unsigned(OctaveNum)))(to_integer(unsigned(Tone))
								)
							),
							32
						)
					);

END Behavioral;