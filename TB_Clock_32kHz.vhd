--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:13:53 03/22/2020
-- Design Name:   
-- Module Name:   C:/Users/mboja/Desktop/ucisw2/TB_Clock_32kHz.vhd
-- Project Name:  ucisw2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Clock_32kHz
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
 
ENTITY TB_Clock_32kHz IS
END TB_Clock_32kHz;
 
ARCHITECTURE behavior OF TB_Clock_32kHz IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Clock_32kHz
    PORT(
         CLK_IN : IN  std_logic;
         RESET : IN  std_logic;
         CLK_OUT : OUT  std_logic
        );
    END COMPONENT;

   --Inputs
   signal CLK_IN : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal CLK_OUT : std_logic := '0';

BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: Clock_32kHz PORT MAP (
          CLK_IN => CLK_IN,
          RESET => RESET,
          CLK_OUT => CLK_OUT
        );

	RESET <= '1', '0' after 100 ns;
	CLK_IN <= not CLK_IN after 10 ns; -- 50MHz CLK_IN

END;
