--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:44:19 04/05/2020
-- Design Name:   
-- Module Name:   /home/damian_koper/Documents/GitHub/ucisw2/TB_FileReaderFSM.vhd
-- Project Name:  ucisw2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FileReaderFSM
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
----------- ---------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY TB_FileReaderFSM IS
END TB_FileReaderFSM;
 
ARCHITECTURE behavior OF TB_FileReaderFSM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FileReaderFSM
    PORT(
         DI : IN  std_logic_vector(7 downto 0);
         DI_Rdy : IN  std_logic;
         DI_Busy : IN  std_logic;
         DI_Pop : OUT  std_logic;
			DI_Reset : OUT std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         DI_Start : OUT  std_logic;
         Tone : OUT  std_logic_vector(7 downto 0);
         Octave : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DI : std_logic_vector(7 downto 0) := (others => '0');
   signal DI_Rdy : std_logic := '0';
   signal DI_Busy : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal DI_Pop : std_logic;
	signal DI_Reset : std_logic;
   signal DI_Start : std_logic;
   signal Tone : std_logic_vector(7 downto 0);
   signal Octave : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FileReaderFSM PORT MAP (
          DI => DI,
          DI_Rdy => DI_Rdy,
          DI_Busy => DI_Busy,
			 DI_Reset => DI_Reset,
          DI_Pop => DI_Pop,
          Reset => Reset,
          Clk => Clk,
          DI_Start => DI_Start,
          Tone => Tone,
          Octave => Octave
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
   stim_proc: process
	   type file_int is file of character;
      file WAV : file_int is in "./b.txt";
      variable i : character;
   begin		
		Reset<='1';
		wait for 55 ns;
		Reset<='0';
		
      wait until rising_edge( Clk ) and DI_Start = '1';
      
      DI_Busy <= '1';
      
      while not endfile( WAV ) loop
        wait for 2*Clk_period;
        read( WAV, i );
        DI <= std_logic_vector( to_unsigned( character'pos( i ), 8 ) );
        DI_Rdy <= '1';
        wait until rising_edge( Clk ) and DI_Pop = '1';
        DI_Rdy <= '0';
      end loop;

      DI_Busy <= '0';

      wait; -- forever
   end process;

END;
