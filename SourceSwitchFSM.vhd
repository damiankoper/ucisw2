----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:32:30 04/02/2020 
-- Design Name: 
-- Module Name:    SourceSwitchFSM - Behavioral 
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

entity SourceSwitchFSM is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           DI_Rdy : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           DI : in  STD_LOGIC_VECTOR (7 downto 0);
           Tone_Key : in  STD_LOGIC_VECTOR (7 downto 0);
           Tone_File : in  STD_LOGIC_VECTOR (7 downto 0);
           Octave_Key : in  STD_LOGIC_VECTOR (7 downto 0);
           Octave_File : in  STD_LOGIC_VECTOR (7 downto 0);
           Tone : out  STD_LOGIC_VECTOR (7 downto 0);
           Octave : out  STD_LOGIC_VECTOR (7 downto 0));
end SourceSwitchFSM;

architecture Behavioral of SourceSwitchFSM is
	 TYPE state_type IS (Key_Source, File_Source);
    SIGNAL state, next_state : state_type;
    SIGNAL Tone_DUMMY : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	 SIGNAL Octave_DUMMY : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
BEGIN

    SYNC_PROC : PROCESS (clk)
    BEGIN
        IF rising_edge(Clk) THEN
            IF (Reset = '1') THEN
                state <= Key_Source;
            ELSIF DI_Rdy = '1' THEN
                state <= next_state;
            END IF;
        END IF;
    END PROCESS;

    NEXT_STATE_DECODE : PROCESS (state, DI, F0, DI_Rdy)
    BEGIN
        next_state <= state;
        IF F0 = '0' THEN
            CASE DI IS
                WHEN X"31" => next_state <= Key_Source; -- N 
                WHEN X"3A" => next_state <= File_Source; -- M
                WHEN OTHERS => next_state <= state;
            END CASE;
        END IF;
    END PROCESS;

    OUTPUT_ENCODE : PROCESS (state, DI_Rdy)
    BEGIN
        CASE state IS
            WHEN Key_Source => 
					Tone_DUMMY <= Tone_Key;
					Octave_DUMMY <= Octave_Key;
            WHEN File_Source => 
					Tone_DUMMY <= Tone_File;
					Octave_DUMMY <= Octave_File;
        END CASE;
    END PROCESS;

    Tone <= Tone_DUMMY;
	 Octave <= Octave_DUMMY;
END Behavioral;

