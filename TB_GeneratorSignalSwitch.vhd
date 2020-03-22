--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:41:48 03/22/2020
-- Design Name:   
-- Module Name:   C:/Users/mboja/Desktop/ucisw2/TB_GeneratorSignalSwitch.vhd
-- Project Name:  ucisw2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GeneratorSignalSwitch
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
 
ENTITY TB_GeneratorSignalSwitch IS
END TB_GeneratorSignalSwitch;
 
ARCHITECTURE behavior OF TB_GeneratorSignalSwitch IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GeneratorSignalSwitch
    PORT(
         Wave_Type : IN  std_logic_vector(7 downto 0);
         Input_0 : IN  std_logic_vector(11 downto 0);
         Input_1 : IN  std_logic_vector(11 downto 0);
         Input_2 : IN  std_logic_vector(11 downto 0);
         Input_3 : IN  std_logic_vector(11 downto 0);
         Output : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Wave_Type : std_logic_vector(7 downto 0) := (others => '0');
   signal Input_0 : std_logic_vector(11 downto 0) := (others => '0');
   signal Input_1 : std_logic_vector(11 downto 0) := (others => '0');
   signal Input_2 : std_logic_vector(11 downto 0) := (others => '0');
   signal Input_3 : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(11 downto 0);

BEGIN
 
   uut: GeneratorSignalSwitch PORT MAP (
          Wave_Type => Wave_Type,
          Input_0 => Input_0,
          Input_1 => Input_1,
          Input_2 => Input_2,
          Input_3 => Input_3,
          Output => Output
        );

	Input_0 <= x"000";
	Input_1 <= x"111";
	Input_2 <= x"222";
	Input_3 <= x"333";

	process begin
		  while (true) loop
			 wait for 100 ns;
			 Wave_Type <= std_logic_vector(to_unsigned(to_integer(unsigned( Wave_Type )) + 1, 8));
		  end loop;
		  wait;
	end process;

END;
