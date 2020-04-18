--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:03:10 04/06/2020
-- Design Name:   
-- Module Name:   /home/maja/Git/ucisw2/TB_OctaveFSM.vhd
-- Project Name:  ucisw2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: OctaveFSM
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_OctaveFSM IS
END TB_OctaveFSM;
 
ARCHITECTURE behavior OF TB_OctaveFSM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OctaveFSM
    PORT(
         Clk : IN  std_logic;
         DI : IN  std_logic_vector(7 downto 0);
         F0 : IN  std_logic;
         DI_Rdy : IN  std_logic;
         Reset : IN  std_logic;
         Octave : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal DI : std_logic_vector(7 downto 0) := (others => '0');
   signal F0 : std_logic := '0';
   signal DI_Rdy : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Octave : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OctaveFSM PORT MAP (
          Clk => Clk,
          DI => DI,
          F0 => F0,
          DI_Rdy => DI_Rdy,
          Reset => Reset,
          Octave => Octave
        );

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
    VARIABLE arrBytes : typeByteArray(0 TO 17) := (X"1D", X"1D", X"1D", X"1D", X"1D", X"1D", X"2D",X"2D", X"2D", X"2D", X"2D", X"2D", X"2D", X"2D", X"2D", X"2D", X"1D", X"1A");
  BEGIN
    -- hold reset state for 100 ns.
    FOR i IN arrBytes'RANGE LOOP
      F0 <= '0';
      DI_Rdy <= '1';
      DI <= arrBytes(i);
      WAIT FOR Clk_period * 1;
      DI_Rdy <= '0';
      WAIT FOR 10ms;
      DI_Rdy <= '1';
      F0 <= '1';
      WAIT FOR Clk_period * 1;
      DI_Rdy <= '0';
      WAIT FOR 1ms;
    END LOOP;

    WAIT;
  END PROCESS;

END;
