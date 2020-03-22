----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:14:12 03/22/2020 
-- Design Name: 
-- Module Name:    ToneFSM - Behavioral 
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

ENTITY ToneFSM IS
    PORT (
        Clk : IN STD_LOGIC;
        DI : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        F0 : IN STD_LOGIC;
        DI_Rdy : IN STD_LOGIC;
        Reset : IN STD_LOGIC;
        Tone : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END ToneFSM;

ARCHITECTURE Behavioral OF ToneFSM IS
    TYPE state_type IS (Silence, C, C_Sharp, D, D_Sharp, E, F, F_Sharp, G, G_Sharp, A, A_Sharp, B);
    SIGNAL state, next_state : state_type;
    SIGNAL Tone_DUMMY : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
BEGIN

    SYNC_PROC : PROCESS (clk)
    BEGIN
        IF rising_edge(Clk) AND DI_Rdy = '1' THEN
            IF (Reset = '1') THEN
                state <= Silence;
            ELSE
                state <= next_state;
            END IF;
        END IF;
    END PROCESS;

    NEXT_STATE_DECODE : PROCESS (state, DI, F0)
    BEGIN
        next_state <= state;
        IF F0 = '0' THEN
            CASE DI IS
                WHEN X"1C" => next_state <= C;
                WHEN X"1D" => next_state <= C_Sharp;
                WHEN X"1B" => next_state <= D;
                WHEN X"24" => next_state <= D_Sharp;
                WHEN X"23" => next_state <= E;
                WHEN X"2B" => next_state <= F;
                WHEN X"2C" => next_state <= F_Sharp;
                WHEN X"34" => next_state <= G;
                WHEN X"35" => next_state <= G_Sharp;
                WHEN X"33" => next_state <= A;
                WHEN X"3C" => next_state <= A_Sharp;
                WHEN X"3B" => next_state <= B;
                WHEN OTHERS => next_state <= Silence;
            END CASE;
        ELSE
            next_state <= Silence;
        END IF;
    END PROCESS;

    OUTPUT_ENCODE : PROCESS (state)
    BEGIN
        CASE state IS
            WHEN Silence => Tone_DUMMY <= X"00";
            WHEN C => Tone_DUMMY <= X"01";
            WHEN C_Sharp => Tone_DUMMY <= X"02";
            WHEN D => Tone_DUMMY <= X"03";
            WHEN D_Sharp => Tone_DUMMY <= X"04";
            WHEN E => Tone_DUMMY <= X"05";
            WHEN F => Tone_DUMMY <= X"06";
            WHEN F_Sharp => Tone_DUMMY <= X"07";
            WHEN G => Tone_DUMMY <= X"08";
            WHEN G_Sharp => Tone_DUMMY <= X"09";
            WHEN A => Tone_DUMMY <= X"0A";
            WHEN A_Sharp => Tone_DUMMY <= X"0B";
            WHEN B => Tone_DUMMY <= X"0C";
        END CASE;
    END PROCESS;

    Tone <= Tone_DUMMY;
END Behavioral;