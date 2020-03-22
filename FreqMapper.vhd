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
        Freq : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END FreqMapper;

ARCHITECTURE Behavioral OF FreqMapper IS
    TYPE Tones IS ARRAY(0 TO 12) OF INTEGER;
    TYPE Octaves IS ARRAY(0 TO 8) OF Tones;
    SIGNAL Freqs : Octaves := (
    (0, 164, 173, 184, 195, 206, 218, 231, 245, 260, 275, 291, 309),
    (0, 327, 347, 367, 389, 412, 437, 463, 490, 519, 550, 583, 617),
    (0, 625, 639, 734, 778, 824, 873, 925, 980, 1038, 1100, 1165, 1235),
    (0, 1308, 1386, 1468, 1556, 1648, 1746, 1850, 1960, 2077, 2200, 2331, 2469),
    (0, 2616, 2772, 2937, 3111, 3296, 3492, 3700, 3920, 4153, 4400, 4662, 4939),
    (0, 5233, 5544, 5873, 6223, 6593, 6985, 7400, 7840, 8306, 8800, 9323, 9878),
    (0, 10465, 11087, 11747, 12445, 13185, 13969, 14800, 15860, 16612, 17600, 18647, 19755),
    (0, 20930, 22175, 23493, 24890, 26370, 27938, 29600, 31360, 33224, 35200, 37293, 39511),
    (0, 41860, 44349, 46986, 49780, 52740, 55877, 59199, 62719, 66449, 70400, 74586, 79021));
BEGIN

    Freq <= STD_LOGIC_VECTOR(to_unsigned(INTEGER(Freqs(to_integer(unsigned(OctaveNum)))(to_integer(unsigned(Tone)))), 32));

END Behavioral;