--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:59:05 03/22/2020
-- Design Name:   
-- Module Name:   /home/damian_koper/Documents/GitHub/ucisw2/TD_FreqMapper.vhd
-- Project Name:  ucisw2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FreqMapper
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
 
ENTITY TD_FreqMapper IS
END TD_FreqMapper;
 
ARCHITECTURE behavior OF TD_FreqMapper IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FreqMapper
    PORT(
         Tone : IN  std_logic_vector(7 downto 0);
         OctaveNum : IN  std_logic_vector(7 downto 0);
         Period : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Tone : std_logic_vector(7 downto 0) := (others => '0');
   signal OctaveNum : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Period : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FreqMapper PORT MAP (
          Tone => Tone,
          OctaveNum => OctaveNum,
          Period => Period 
	);

   -- Stimulus process
    stim_proc : PROCESS
    TYPE typeByteArray IS ARRAY (NATURAL RANGE <>) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
    VARIABLE arrBytes : typeByteArray(0 TO 4) := (X"00", X"01", X"02", X"03", X"04");
  BEGIN
    -- hold reset state for 100 ns.
	 OctaveNum <= X"00";

    FOR i IN arrBytes'RANGE LOOP
      Tone <= arrBytes(i);
      WAIT FOR 20 ns;
    END LOOP;
	 
	 OctaveNum <= X"03";

    FOR i IN arrBytes'RANGE LOOP
      Tone <= arrBytes(i);
      WAIT FOR 20 ns;
    END LOOP;
	 
    WAIT;
  END PROCESS;

END;
