--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:56:11 04/02/2020
-- Design Name:   
-- Module Name:   /home/damian_koper/Documents/GitHub/ucisw2/TB_SourceSwitchFSM.vhd
-- Project Name:  ucisw2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SourceSwitchFSM
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
 
ENTITY TB_SourceSwitchFSM IS
END TB_SourceSwitchFSM;
 
ARCHITECTURE behavior OF TB_SourceSwitchFSM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SourceSwitchFSM
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         DI_Rdy : IN  std_logic;
         F0 : IN  std_logic;
         DI : IN  std_logic_vector(7 downto 0);
         Tone_Key : IN  std_logic_vector(7 downto 0);
         Tone_File : IN  std_logic_vector(7 downto 0);
         Octave_Key : IN  std_logic_vector(7 downto 0);
         Octave_File : IN  std_logic_vector(7 downto 0);
         Tone : OUT  std_logic_vector(7 downto 0);
         Octave : OUT  std_logic_vector(7 downto 0);
			 Key_Source_Selected : out STD_LOGIC;
			  File_Source_Selected : out STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal DI_Rdy : std_logic := '0';
   signal F0 : std_logic := '0';
   signal DI : std_logic_vector(7 downto 0) := (others => '0');
   signal Tone_Key : std_logic_vector(7 downto 0) := (others => '0');
   signal Tone_File : std_logic_vector(7 downto 0) := (others => '0');
   signal Octave_Key : std_logic_vector(7 downto 0) := (others => '0');
   signal Octave_File : std_logic_vector(7 downto 0) := (others => '0');
   signal Key_Source_Selected : STD_LOGIC := '0';
	signal File_Source_Selected : STD_LOGIC := '0';
 	--Outputs
   signal Tone : std_logic_vector(7 downto 0) ;
   signal Octave : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SourceSwitchFSM PORT MAP (
          Clk => Clk,
          Reset => Reset,
          DI_Rdy => DI_Rdy,
          F0 => F0,
          DI => DI,
          Tone_Key => Tone_Key,
          Tone_File => Tone_File,
          Octave_Key => Octave_Key,
          Octave_File => Octave_File,
          Tone => Tone,
          Octave => Octave,
			 Key_Source_Selected=>Key_Source_Selected,
			 File_Source_Selected => File_Source_Selected
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc : PROCESS
    TYPE typeByteArray IS ARRAY (NATURAL RANGE <>) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
    VARIABLE arrBytes : typeByteArray(0 TO 3) := (X"44", X"31", X"3A", X"44");
  BEGIN
    -- hold reset state for 100 ns.
	 Tone_Key <= X"11";	 
	 Tone_File <= X"22";
	 Octave_Key <= X"04";	 
	 Octave_File <= X"05";

    FOR i IN arrBytes'RANGE LOOP
      F0 <= '0';
      DI_Rdy <= '1';
      DI <= arrBytes(i);
      WAIT FOR Clk_period * 1;
      DI_Rdy <= '0';
      WAIT FOR Clk_period * 7;
      DI_Rdy <= '1';
      F0 <= '1';
      WAIT FOR Clk_period * 1;
      DI_Rdy <= '0';
      WAIT FOR Clk_period * 7;
    END LOOP;

    WAIT;
  END PROCESS;

END;
