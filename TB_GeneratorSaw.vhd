--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:07:12 03/22/2020
-- Design Name:   
-- Module Name:   C:/Users/mboja/Desktop/ucisw2/TB_GeneratorSaw.vhd
-- Project Name:  ucisw2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GeneratorSaw
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
USE ieee.numeric_std.ALL;

ENTITY TB_GeneratorSaw IS
END TB_GeneratorSaw;

ARCHITECTURE behavior OF TB_GeneratorSaw IS

   -- Component Declaration for the Unit Under Test (UUT)

   COMPONENT GeneratorSaw
      PORT (
         Clk : IN std_logic;
         Period : IN std_logic_vector(31 DOWNTO 0);
         Sample : OUT std_logic_vector(11 DOWNTO 0) := "000000111111";
         Sample_Rdy : OUT std_logic
      );
   END COMPONENT;

   --Inputs
   SIGNAL Clk : std_logic := '0';
   SIGNAL Period : std_logic_vector(31 DOWNTO 0) := std_logic_vector(to_unsigned(0, 32));

   --Outputs
   SIGNAL Sample : std_logic_vector(11 DOWNTO 0);
   SIGNAL Sample_Rdy : std_logic;

   -- Clock definitions
   CONSTANT Clk_Half_Period : TIME := 10 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
   uut : GeneratorSaw PORT MAP(
      Clk => Clk,
      Period => Period,
      Sample => Sample,
      Sample_Rdy => Sample_Rdy
   );

   Clk <= NOT Clk AFTER Clk_Half_Period;

   PROCESS
      TYPE typePeriodArray IS ARRAY (NATURAL RANGE <>) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
		-- Silence, C4, C5, C6, Silence
      VARIABLE periods : typePeriodArray(0 TO 4) := (x"00000000",
																		std_logic_vector(to_unsigned(382263, 32)),
																		std_logic_vector(to_unsigned(191131, 32)),
																		std_logic_vector(to_unsigned(95547, 32)),
																		x"00000000");
   BEGIN
		
		FOR i IN periods'RANGE LOOP
         Period <= periods(i);
         WAIT FOR 20 ms;
			Period <= x"00000000";
			WAIT FOR 1ms;
      END LOOP;
	
   END PROCESS;

END;