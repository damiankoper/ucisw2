----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:03:42 03/22/2020 
-- Design Name: 
-- Module Name:    GeneratorSaw - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GeneratorSaw is
    Port ( Clk : in  STD_LOGIC;
           Freq : in  INTEGER;
           Sample : out  STD_LOGIC_VECTOR (11 downto 0));
end GeneratorSaw;

architecture Behavioral of GeneratorSaw is
	signal Half_Cycles_Per_Step : INTEGER;
	constant Cycles_Per_Step_Conversion_Factor: INTEGER := 1_000_000_000/(2 * 2**8);
	signal Cycles_Since_Sample_Change : INTEGER := 0;
	
	signal Next_Sample_Unsigned : UNSIGNED(11 downto 0) := (others => '0');
begin
	-- Calculate step duration
	process (Freq) begin
		Half_Cycles_Per_Step <= 2* Cycles_Per_Step_Conversion_Factor / (Freq);
	end process;
	
	-- Handle next sample calculation
	process (Clk) begin
		if (Cycles_Since_Sample_Change = Half_Cycles_Per_Step) then
			Cycles_Since_Sample_Change <= 0;
			Next_Sample_Unsigned <= Next_Sample_Unsigned + 2**4;
		else
			Cycles_Since_Sample_Change <= Cycles_Since_Sample_Change + 1;
	end if;
	end process;
	
	-- Update output sample
	process (Next_Sample_Unsigned) begin
		Sample <= std_logic_vector(Next_Sample_Unsigned);
	end process;

end Behavioral;

