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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY SourceSwitchFSM IS
    PORT (
        Clk : IN STD_LOGIC;
        Reset : IN STD_LOGIC;
        DI_Rdy : IN STD_LOGIC;
        F0 : IN STD_LOGIC;
        DI : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        Tone_Key : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        Tone_File : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        Octave_Key : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        Octave_File : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        Tone : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        Octave : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        Key_Source_Selected : OUT STD_LOGIC;
        File_Source_Selected : OUT STD_LOGIC);
END SourceSwitchFSM;

ARCHITECTURE Behavioral OF SourceSwitchFSM IS
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
            IF state = Key_Source AND next_state = File_Source THEN
                File_Source_Selected <= '1';
            ELSIF state = File_Source AND next_state = Key_Source THEN
                Key_Source_Selected <= '1';
            ELSE
                File_Source_Selected <= '0';
                Key_Source_Selected <= '0';
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
                WHEN OTHERS =>
            END CASE;
        END IF;
    END PROCESS;

    OUTPUT_ENCODE : PROCESS (state, DI_Rdy, Tone_Key, Octave_Key, Tone_File, Octave_File)
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