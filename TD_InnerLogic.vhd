-- Vhdl test bench created from schematic /home/damian_koper/Documents/GitHub/ucisw2/InnerLogic.sch - Tue Mar 24 22:37:38 2020
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY InnerLogic_InnerLogic_sch_tb IS
END InnerLogic_InnerLogic_sch_tb;
ARCHITECTURE behavioral OF InnerLogic_InnerLogic_sch_tb IS

   COMPONENT InnerLogic
      PORT (
         Clk : IN STD_LOGIC;
         DAC_Clock : OUT STD_LOGIC;
         WaveOut : OUT STD_LOGIC_VECTOR (11 DOWNTO 0);
         Reset : IN STD_LOGIC;
         DI : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
         DI_Rdy : IN STD_LOGIC;
         F0 : IN STD_LOGIC);
   END COMPONENT;

   SIGNAL Clk : STD_LOGIC;
   SIGNAL DAC_Clock : STD_LOGIC;
   SIGNAL WaveOut : STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL Reset : STD_LOGIC;
   SIGNAL DI : STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL DI_Rdy : STD_LOGIC;
   SIGNAL F0 : STD_LOGIC;

   CONSTANT Clk_period : TIME := 20 ns;
BEGIN

   UUT : InnerLogic PORT MAP(
      Clk => Clk,
      DAC_Clock => DAC_Clock,
      WaveOut => WaveOut,
      Reset => Reset,
      DI => DI,
      DI_Rdy => DI_Rdy,
      F0 => F0
   );
	
	Reset <= '0';

   -- Clock process definitions
   Clk_process : PROCESS
   BEGIN
      Clk <= '0';
      WAIT FOR Clk_period/2;
      Clk <= '1';
      WAIT FOR Clk_period/2;
   END PROCESS;

   -- Stimulus process
   stim_proc : PROCESS
      TYPE typeByteArray IS ARRAY (NATURAL RANGE <>) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
      VARIABLE arrBytes : typeByteArray(0 TO 13) := (X"44", X"1C", X"1D", X"1B", X"24", X"23", X"2B", X"2C", X"34", X"35", X"33", X"3C", X"3B", X"44");
   BEGIN
		
      FOR i IN arrBytes'RANGE LOOP
         F0 <= '0';
         DI_Rdy <= '1';
         DI <= arrBytes(i);
         WAIT FOR Clk_period * 1;
         DI_Rdy <= '0';
         WAIT FOR 10 ms; -- Tone time
         DI_Rdy <= '1';
         F0 <= '1';
         WAIT FOR Clk_period * 1;
         DI_Rdy <= '0';
         WAIT FOR 1 ms; -- Silence time
      END LOOP;

      WAIT;
   END PROCESS;
END;