----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:50:13 04/06/2020 
-- Design Name: 
-- Module Name:    OctaveFSM - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OctaveFSM is
    Port ( Clk : IN STD_LOGIC;
        DI : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        F0 : IN STD_LOGIC;
        DI_Rdy : IN STD_LOGIC;
        Reset : IN STD_LOGIC;
		  Octave : out STD_LOGIC_VECTOR (7 DOWNTO 0));
end OctaveFSM;

architecture Behavioral of OctaveFSM is
	CONSTANT Default_Oct_Num : INTEGER := 4;
	SIGNAL Next_Oct_Num : INTEGER := 4; -- 4th octave by default
	SIGNAL Current_Oct_Num : INTEGER := 4;
begin

	SYNC_PROC : PROCESS (clk)
	BEGIN
        IF rising_edge(Clk) THEN
            IF (Reset = '1') THEN
                Current_Oct_Num <= Default_Oct_Num;
            ELSIF DI_Rdy = '1' THEN
                Current_Oct_Num <= Next_Oct_Num;
            END IF;
        END IF;
    END PROCESS;
	 
	 -- PS2 scan codes:
	 -- Left arrow: 0x1D
	 -- Right arrow: 0x2D
	 
	 NEXT_MOVE_DECODE : PROCESS (DI, F0)
    BEGIN
        IF F0 = '0' THEN
				-- Left arrow
            IF (DI = X"1D" AND Current_Oct_Num > 0) THEN
					Next_Oct_Num <= Current_Oct_Num - 1;
				-- Right arrow
				ELSIF (DI = X"2D" AND Current_Oct_Num < 8) THEN
					Next_Oct_Num <= Current_Oct_Num + 1;
				ELSE
					Next_Oct_Num <= Current_Oct_Num;
				END IF;
			END IF;
    END PROCESS;
	
	Octave <= std_logic_vector(to_unsigned(Current_Oct_Num, 8));

end Behavioral;

