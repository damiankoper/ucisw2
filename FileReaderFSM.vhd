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
		Reset : IN STD_LOGIC;
		Clk : IN STD_LOGIC;
		DI_Start : OUT STD_LOGIC;
		Tone : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		Octave : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END FileReaderFSM;

ARCHITECTURE Behavioral OF FileReaderFSM IS
	TYPE state_type IS (Init, Tone_Request, Tone_Reading, Octave_Request, Octave_Reading, Duration_Request, Duration_Reading, Load_Counter, Playing);
	SIGNAL state, next_state : state_type;

	SIGNAL Tone_CHAR : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";
	SIGNAL Octave_CHAR : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00";

	SIGNAL DURATION_COUNTER : INTEGER := 0;
	SIGNAL PLAYING_TIME : unsigned(15 DOWNTO 0) := X"0000";
	SIGNAL PLAYING_TIME_COUNTER : unsigned(15 DOWNTO 0) := X"0000";
	
	SIGNAL PLAYING_STOP: STD_LOGIC := '0';
BEGIN

	SYNC_PROC : PROCESS (Clk, DI_Rdy)
	BEGIN
		IF rising_edge(Clk) THEN
			state <= next_state;
			IF (Reset = '1') THEN
				state <= Init;
			END IF;
		END IF;
	END PROCESS;

	NEXT_STATE_DECODE : PROCESS (state, DI_Rdy, PLAYING_STOP)
	BEGIN
		next_state <= state;
		CASE state IS
			WHEN Init =>
				next_state <= Tone_Request;
			WHEN Tone_Request =>
				next_state <= Tone_Reading;
			WHEN Tone_Reading =>
				IF DI_Rdy = '1' THEN
					next_state <= Octave_Request;
				END IF;
			WHEN Octave_Request =>
				next_state <= Octave_Reading;
			WHEN Octave_Reading =>
				IF DI_Rdy = '1' THEN
					next_state <= Duration_Request;
				END IF;
			WHEN Duration_Request =>
				next_state <= Duration_Reading;
				IF DURATION_COUNTER = 0 THEN
					next_state <= Load_Counter;
				END IF;
			WHEN Duration_Reading =>
				IF DI_Rdy = '1' THEN
					IF DURATION_COUNTER = 0 THEN
						next_state <= Load_Counter;
					ELSE
						next_state <= Duration_Request;
					END IF;
				END IF;
			WHEN Load_Counter =>
				next_state <= Playing;
			WHEN Playing =>
				IF PLAYING_STOP = '1' THEN
					next_state <= Tone_Request;
				END IF;
			WHEN OTHERS =>
				next_state <= Init;
		END CASE;
	END PROCESS;

	INPUT_HANDLER : PROCESS (state, DI_Rdy)
	BEGIN
		-- Defaults
		DI_Pop <= '0';
		DI_Start <= '0';
		Tone_CHAR <= Tone_CHAR;
		Octave_CHAR <= Octave_CHAR;
		DURATION_COUNTER <= DURATION_COUNTER;
		PLAYING_TIME <= PLAYING_TIME;
		
		CASE state IS
			WHEN Init =>
				PLAYING_TIME <= X"0000";
				DI_Start <= '1';
			WHEN Tone_Request =>
				DI_Pop <= '1';
			WHEN Tone_Reading =>
				IF DI_Rdy = '1' THEN
					Tone_CHAR <= DI;
				END IF;
			WHEN Octave_Request =>
				DI_Pop <= '1';
			WHEN Octave_Reading =>
				IF DI_Rdy = '1' THEN
					Octave_CHAR <= DI;
					DURATION_COUNTER <= 16;
				END IF;
			WHEN Duration_Request =>
				IF DURATION_COUNTER > 0 THEN
					DI_Pop <= '1';
				END IF;
			WHEN Duration_Reading =>
				IF DI_Rdy = '1' THEN
					DURATION_COUNTER <= DURATION_COUNTER - 1;
					IF DI = X"31" THEN
							PLAYING_TIME <= PLAYING_TIME(14 DOWNTO 0) & '1';
						ELSE
							PLAYING_TIME <= PLAYING_TIME(14 DOWNTO 0) & '0';
					END IF;
				END IF;
			WHEN OTHERS =>
		END CASE;
	END PROCESS;

	PLAYING_TIMER : PROCESS (Clk)
	BEGIN
		IF rising_edge(Clk) THEN
			IF state = Load_Counter THEN
				PLAYING_TIME_COUNTER <= PLAYING_TIME;
			ELSIF state = Playing THEN
				PLAYING_TIME_COUNTER <= PLAYING_TIME_COUNTER - 1;
			ELSE
				PLAYING_TIME_COUNTER <= PLAYING_TIME_COUNTER;
			END IF;
			
			IF state = Playing and PLAYING_TIME_COUNTER = X"0000" THEN
				PLAYING_STOP <= '1';
			ELSE
				PLAYING_STOP <= '0';
			END IF;
		END IF;
	END PROCESS;
	
	WITH Tone_CHAR SELECT Tone <=
		X"01" WHEN X"61",
		X"02" WHEN X"77",
		X"03" WHEN X"73",
		X"04" WHEN X"65",
		X"05" WHEN X"64",
		X"06" WHEN X"66",
		X"07" WHEN X"74",
		X"08" WHEN X"67",
		X"09" WHEN X"79",
		X"0A" WHEN X"68",
		X"0B" WHEN X"75",
		X"0C" WHEN X"6A",
		X"00" WHEN OTHERS;

	Octave <= std_logic_vector(unsigned(Octave_CHAR) - 48);

END Behavioral;