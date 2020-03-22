----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:45:46 03/22/2020 
-- Design Name: 
-- Module Name:    Clock_32kHz - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
-- Implements 32010Hz clock.
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

entity Clock_32kHz is
    Port ( 
	 CLK_IN	: in STD_LOGIC;
	 RESET	: in STD_LOGIC;
	 CLK_OUT : out  STD_LOGIC
	 );
	 
end Clock_32kHz;

architecture Behavioral of Clock_32kHz is
	signal COUNTER_INTERNAL : SIGNED(10 downto 0) := (others => '0');
	constant COUNTER_MAX_VALUE : SIGNED(10 downto 0) := b"110_0001_1000";
begin

	-- Handle counting and resetting
	process (CLK_IN) begin
		if (rising_edge(CLK_IN)) then
			if (COUNTER_INTERNAL = COUNTER_MAX_VALUE+1) or (RESET = '1') then
				COUNTER_INTERNAL <= b"000_0000_0000";
			else
				COUNTER_INTERNAL <= COUNTER_INTERNAL+1;
			end if;
		end if;
	end process;

	-- Handle clock output
	process (COUNTER_INTERNAL) begin
		if (COUNTER_INTERNAL = COUNTER_MAX_VALUE) then
			CLK_OUT <= '1';
		else
			CLK_OUT <= '0';
		end if;
	end process;
	
end Behavioral;

