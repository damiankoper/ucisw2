----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:34:34 03/22/2020 
-- Design Name: 
-- Module Name:    GeneratorSignalSwitch - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GeneratorSignalSwitch is
    Port ( Wave_Type : in  STD_LOGIC_VECTOR (7 downto 0);
           Input_0 : in  STD_LOGIC_VECTOR (11 downto 0);
           Input_1 : in  STD_LOGIC_VECTOR (11 downto 0);
           Input_2 : in  STD_LOGIC_VECTOR (11 downto 0);
           Input_3 : in  STD_LOGIC_VECTOR (11 downto 0);
			  Input_0_Rdy : in STD_LOGIC;
			  Input_1_Rdy : in STD_LOGIC;
			  Input_2_Rdy : in STD_LOGIC;
			  Input_3_Rdy : in STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (11 downto 0);
			  Output_Rdy : out STD_LOGIC);
			  
end GeneratorSignalSwitch;

architecture Behavioral of GeneratorSignalSwitch is
	signal ERROR_OUTPUT : STD_LOGIC_VECTOR (11 downto 0) := "XXXXXXXXXXXX";
begin

with Wave_Type select
	Output <=	Input_0 when x"00",
					Input_1 when x"01",
					Input_2 when x"02",
					Input_3 when x"03",
					ERROR_OUTPUT when others;
					
with Wave_Type select
	Output_Rdy <= 	Input_0_Rdy when x"00",
						Input_1_Rdy when x"01",
						Input_2_Rdy when x"02",
						Input_3_Rdy when x"03",
						'X' when others;

end Behavioral;

