--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:53:58 03/22/2020
-- Design Name:   
-- Module Name:   /home/damian_koper/Documents/GitHub/ucisw2/TB_ToneFSM.vhd
-- Project Name:  ucisw2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ToneFSM
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

ENTITY TB_ToneFSM IS
END TB_ToneFSM;

ARCHITECTURE behavior OF TB_ToneFSM IS

  -- Component Declaration for the Unit Under Test (UUT)

  COMPONENT ToneFSM
    PORT (
      Clk : IN std_logic;
      DI : IN std_logic_vector(7 DOWNTO 0);
      F0 : IN std_logic;
      DI_Rdy : IN std_logic;
      Reset : IN std_logic;
      Tone : OUT std_logic_vector(7 DOWNTO 0)
    );
  END COMPONENT;
  --Inputs
  SIGNAL Clk : std_logic := '0';
  SIGNAL DI : std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');
  SIGNAL F0 : std_logic := '0';
  SIGNAL DI_Rdy : std_logic := '0';
  SIGNAL Reset : std_logic := '0';

  --Outputs
  SIGNAL Tone : std_logic_vector(7 DOWNTO 0);

  -- Clock period definitions
  CONSTANT Clk_period : TIME := 20 ns;

BEGIN

  -- Instantiate the Unit Under Test (UUT)
  uut : ToneFSM PORT MAP(
    Clk => Clk,
    DI => DI,
    F0 => F0,
    DI_Rdy => DI_Rdy,
    Reset => Reset,
    Tone => Tone
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
    VARIABLE arrBytes : typeByteArray(0 TO 13) := (X"44", X"1C", X"1D", X"1B", X"24", X"23", X"2B", X"2C", X"34", X"35", X"33", X"3C", X"3B", X"44");
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