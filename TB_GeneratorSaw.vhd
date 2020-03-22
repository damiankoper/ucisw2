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
--USE ieee.numeric_std.ALL;
 
ENTITY TB_GeneratorSaw IS
END TB_GeneratorSaw;
 
ARCHITECTURE behavior OF TB_GeneratorSaw IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GeneratorSaw
    PORT(
         Clk : IN  std_logic;
         Freq : IN  INTEGER;
         Sample : OUT  std_logic_vector(11 downto 0) := "000000111111"
        );
    END COMPONENT;

   --Inputs
   signal Clk : std_logic := '0';
   signal Freq : INTEGER := 10000; -- 10000 * 0.1Hz = 1000Hz

 	--Outputs
   signal Sample : std_logic_vector(11 downto 0);
	
   -- Clock definitions
   constant Clk_Half_Period : time := 10 ns;
 
BEGIN
	
	-- Instantiate the Unit Under Test (UUT)
   uut: GeneratorSaw PORT MAP (
          Clk => Clk,
          Freq => Freq,
          Sample => Sample
        );
		  
	Clk <= not Clk after Clk_Half_Period;
	
	process begin
		for I in 1 to 7 loop
			Freq <= Freq + 10000;
			wait for 100 ms;
		end loop;
	end process;
	
END;
