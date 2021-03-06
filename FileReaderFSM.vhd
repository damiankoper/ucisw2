----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:22:19 04/05/2020 
-- Design Name: 
-- Module Name:    FileReaderFSM - Behavioral 
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

ENTITY FileReaderFSM IS
    PORT (
        DI : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        DI_Rdy : IN STD_LOGIC;
        DI_Busy : IN STD_LOGIC;
        DI_Pop : OUT STD_LOGIC;
        DI_Reset : OUT STD_LOGIC;
        Reset : IN STD_LOGIC;
        Clk : IN STD_LOGIC;
        DI_Start : OUT STD_LOGIC;
        Tone : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        Octave : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END FileReaderFSM;

ARCHITECTURE Behavioral OF FileReaderFSM IS
    TYPE State_type IS (Init, Tone_Request, Tone_Reading, Octave_Request, Octave_Reading, Duration_Request_1, Duration_Reading_1, Duration_Request_2, Duration_Reading_2, Load_Counter, Playing);
    SIGNAL State, Next_State : State_type;

    SIGNAL Tone_Char : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
    SIGNAL Octave_Char : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
    SIGNAL Playing_Time : INTEGER := 0;

    SIGNAL DI_NUM : INTEGER := 0;

    SIGNAL Playing_Time_Counter : INTEGER := 0;
    SIGNAL Playing_Stop : STD_LOGIC := '0';
    SIGNAL Playing_Clk_Div_Counter : INTEGER := 0;
BEGIN

    SYNC_PROC : PROCESS (Clk, DI_Rdy)
    BEGIN
        IF rising_edge(Clk) THEN
            IF (Reset = '1') THEN
                State <= Init;
            ELSE
                State <= Next_State;
            END IF;
        END IF;
    END PROCESS;

    Next_State_DECODE : PROCESS (State, DI_Rdy, Playing_Stop)
    BEGIN
        Next_State <= State;
        CASE State IS
            WHEN Init =>
                IF DI_BUSY = '0' THEN
                    Next_State <= Tone_Request;
                END IF;
            WHEN Tone_Request =>
                Next_State <= Tone_Reading;
            WHEN Tone_Reading =>
                IF DI_Rdy = '1' THEN
                    Next_State <= Octave_Request;
                END IF;
            WHEN Octave_Request =>
                Next_State <= Octave_Reading;
            WHEN Octave_Reading =>
                IF DI_Rdy = '1' THEN
                    Next_State <= Duration_Request_1;
                END IF;
            WHEN Duration_Request_1 =>
                Next_State <= Duration_Reading_1;
            WHEN Duration_Reading_1 =>
                IF DI_Rdy = '1' THEN
                    Next_State <= Duration_Request_2;
                END IF;
            WHEN Duration_Request_2 =>
                Next_State <= Duration_Reading_2;
            WHEN Duration_Reading_2 =>
                IF DI_Rdy = '1' THEN
                    Next_State <= Load_Counter;
                END IF;
            WHEN Load_Counter =>
                Next_State <= Playing;
            WHEN Playing =>
                IF Playing_Stop = '1' THEN
                    Next_State <= Tone_Request;
                END IF;
            WHEN OTHERS =>
                Next_State <= Init;
        END CASE;
    END PROCESS;

    INPUT_HANDLER : PROCESS (State, DI_Rdy, Reset)
    BEGIN
        -- Defaults
        DI_Pop <= '0';
        DI_Start <= '0';

        CASE State IS
            WHEN Init =>
                IF Reset = '0' THEN
                    DI_Start <= '1';
                END IF;
            WHEN Tone_Request =>
                DI_Pop <= '1';

            WHEN Octave_Request =>
                DI_Pop <= '1';
            WHEN Duration_Request_1 =>
                DI_Pop <= '1';
            WHEN Duration_Request_2 =>
                DI_Pop <= '1';
            WHEN OTHERS =>
        END CASE;
    END PROCESS;

    Tone_Char_HANDLER : PROCESS (State, DI_Rdy, Reset, Clk)
    BEGIN
        IF rising_edge(Clk) THEN
            CASE State IS
                WHEN Tone_Reading =>
                    IF DI_Rdy = '1' THEN
                        Tone_Char <= DI;
                    END IF;
                WHEN OTHERS =>
                    Tone_Char <= Tone_Char;
            END CASE;
        END IF;
    END PROCESS;

    Octave_Char_HANDLER : PROCESS (State, DI_Rdy, Reset, Clk)
    BEGIN
        IF rising_edge(Clk) THEN
            CASE State IS
                WHEN Octave_Reading =>
                    IF DI_Rdy = '1' THEN
                        Octave_Char <= DI;
                    END IF;
                WHEN OTHERS =>
                    Octave_Char <= Octave_Char;
            END CASE;
        END IF;
    END PROCESS;

    Playing_Time_HANDLER : PROCESS (Clk)
    BEGIN
        IF rising_edge(Clk) THEN
            CASE State IS
                WHEN Init =>
                    IF Reset = '0' THEN
                        Playing_Time <= 0;
                    END IF;
                WHEN Duration_Reading_1 =>
                    IF DI_Rdy = '1' THEN
                        Playing_Time <= to_integer(unsigned(DI)) - 48;
                    END IF;
                WHEN Duration_Reading_2 =>
                    IF DI_Rdy = '1' AND next_State /= Load_Counter THEN
                        Playing_Time <= ((Playing_Time * 10) + to_integer(unsigned(DI)) - 48);
                    END IF;
                WHEN OTHERS =>
                    Playing_Time <= Playing_Time;
            END CASE;
        END IF;
    END PROCESS;

    Playing_Timer : PROCESS (Clk)
    BEGIN
        IF rising_edge(Clk) THEN
            IF State = Load_Counter THEN
                Playing_Time_Counter <= Playing_Time;
                Playing_Clk_Div_Counter <= 50000;
            ELSIF State = Playing THEN
                IF Playing_Clk_Div_Counter = 0 THEN
                    Playing_Time_Counter <= Playing_Time_Counter - 1;
                    Playing_Clk_Div_Counter <= 50000;
                ELSE
                    Playing_Clk_Div_Counter <= Playing_Clk_Div_Counter - 1;
                END IF;

            ELSE
                Playing_Time_Counter <= Playing_Time_Counter;
            END IF;

            IF State = Playing AND Playing_Time_Counter = 0 THEN
                Playing_Stop <= '1';
            ELSE
                Playing_Stop <= '0';
            END IF;
        END IF;
    END PROCESS;

    -- Maps QWERTY keyboard keys to an octave, starting from C
    WITH Tone_Char SELECT Tone <=
        X"01" WHEN X"61", -- a
        X"02" WHEN X"77", -- w
        X"03" WHEN X"73", -- s
        X"04" WHEN X"65", -- e
        X"05" WHEN X"64", -- d
        X"06" WHEN X"66", -- f
        X"07" WHEN X"74", -- t
        X"08" WHEN X"67", -- g
        X"09" WHEN X"79", -- y
        X"0A" WHEN X"68", -- h
        X"0B" WHEN X"75", -- u
        X"0C" WHEN X"6A", -- j
        X"00" WHEN OTHERS;

    WITH Octave_Char SELECT Octave <=
        X"00" WHEN X"30", -- 0
        X"01" WHEN X"31", -- 1
        X"02" WHEN X"32", -- 2
        X"03" WHEN X"33", -- 3
        X"04" WHEN X"34", -- 4
        X"05" WHEN X"35", -- 5
        X"06" WHEN X"36", -- 6
        X"07" WHEN X"37", -- 7
        X"08" WHEN X"38", -- 8
        X"00" WHEN OTHERS;

    DI_Reset <= Reset;

END Behavioral;