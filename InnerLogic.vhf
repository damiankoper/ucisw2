--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : InnerLogic.vhf
-- /___/   /\     Timestamp : 04/22/2020 19:39:38
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/damian_koper/Documents/GitHub/ucisw2/InnerLogic.vhf -w /home/damian_koper/Documents/GitHub/ucisw2/InnerLogic.sch
--Design Name: InnerLogic
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity InnerLogic is
   port ( Clk          : in    std_logic; 
          DI           : in    std_logic_vector (7 downto 0); 
          DI_Rdy       : in    std_logic; 
          F0           : in    std_logic; 
          Reset        : in    std_logic; 
          SDC_DI       : in    std_logic_vector (7 downto 0); 
          SDC_DI_Busy  : in    std_logic; 
          SDC_DI_Rdy   : in    std_logic; 
          DAC_Clock    : out   std_logic; 
          DI_Reset     : out   std_logic; 
          SDC_DI_Pop   : out   std_logic; 
          SDC_DI_Start : out   std_logic; 
          WaveOut      : out   std_logic_vector (11 downto 0));
end InnerLogic;

architecture BEHAVIORAL of InnerLogic is
   signal XLXN_138                       : std_logic_vector (7 downto 0);
   signal XLXN_139                       : std_logic_vector (7 downto 0);
   signal XLXN_157                       : std_logic_vector (7 downto 0);
   signal XLXN_224                       : std_logic_vector (7 downto 0);
   signal XLXN_232                       : std_logic_vector (31 downto 0);
   signal XLXN_247                       : std_logic_vector (7 downto 0);
   signal XLXN_265                       : std_logic_vector (11 downto 0);
   signal XLXN_266                       : std_logic;
   signal XLXN_371                       : std_logic_vector (7 downto 0);
   signal XLXN_373                       : std_logic_vector (7 downto 0);
   signal XLXN_382                       : std_logic;
   signal XLXI_24_Input_1_openSignal     : std_logic_vector (11 downto 0);
   signal XLXI_24_Input_1_Rdy_openSignal : std_logic;
   signal XLXI_24_Input_2_openSignal     : std_logic_vector (11 downto 0);
   signal XLXI_24_Input_2_Rdy_openSignal : std_logic;
   signal XLXI_24_Input_3_openSignal     : std_logic_vector (11 downto 0);
   signal XLXI_24_Input_3_Rdy_openSignal : std_logic;
   component FileReaderFSM
      port ( DI_Rdy   : in    std_logic; 
             DI_Busy  : in    std_logic; 
             Reset    : in    std_logic; 
             Clk      : in    std_logic; 
             DI       : in    std_logic_vector (7 downto 0); 
             DI_Pop   : out   std_logic; 
             DI_Reset : out   std_logic; 
             DI_Start : out   std_logic; 
             Tone     : out   std_logic_vector (7 downto 0); 
             Octave   : out   std_logic_vector (7 downto 0));
   end component;
   
   component ToneFSM
      port ( Clk    : in    std_logic; 
             F0     : in    std_logic; 
             DI_Rdy : in    std_logic; 
             Reset  : in    std_logic; 
             DI     : in    std_logic_vector (7 downto 0); 
             Tone   : out   std_logic_vector (7 downto 0));
   end component;
   
   component FreqMapper
      port ( Tone      : in    std_logic_vector (7 downto 0); 
             OctaveNum : in    std_logic_vector (7 downto 0); 
             Period    : out   std_logic_vector (31 downto 0));
   end component;
   
   component GeneratorSignalSwitch
      port ( Input_0_Rdy : in    std_logic; 
             Input_1_Rdy : in    std_logic; 
             Input_2_Rdy : in    std_logic; 
             Input_3_Rdy : in    std_logic; 
             Wave_Type   : in    std_logic_vector (7 downto 0); 
             Input_0     : in    std_logic_vector (11 downto 0); 
             Input_1     : in    std_logic_vector (11 downto 0); 
             Input_2     : in    std_logic_vector (11 downto 0); 
             Input_3     : in    std_logic_vector (11 downto 0); 
             Output_Rdy  : out   std_logic; 
             Output      : out   std_logic_vector (11 downto 0));
   end component;
   
   component GeneratorSaw
      port ( Clk        : in    std_logic; 
             Period     : in    std_logic_vector (31 downto 0); 
             Sample_Rdy : out   std_logic; 
             Sample     : out   std_logic_vector (11 downto 0));
   end component;
   
   component SourceSwitchFSM
      port ( Clk                  : in    std_logic; 
             Reset                : in    std_logic; 
             DI_Rdy               : in    std_logic; 
             F0                   : in    std_logic; 
             DI                   : in    std_logic_vector (7 downto 0); 
             Tone_Key             : in    std_logic_vector (7 downto 0); 
             Tone_File            : in    std_logic_vector (7 downto 0); 
             Octave_Key           : in    std_logic_vector (7 downto 0); 
             Octave_File          : in    std_logic_vector (7 downto 0); 
             Key_Source_Selected  : out   std_logic; 
             File_Source_Selected : out   std_logic; 
             Tone                 : out   std_logic_vector (7 downto 0); 
             Octave               : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXN_138(7 downto 0) <= x"02";
   XLXN_247(7 downto 0) <= x"00";
   FileReader : FileReaderFSM
      port map (Clk=>Clk,
                DI(7 downto 0)=>SDC_DI(7 downto 0),
                DI_Busy=>SDC_DI_Busy,
                DI_Rdy=>SDC_DI_Rdy,
                Reset=>XLXN_382,
                DI_Pop=>SDC_DI_Pop,
                DI_Reset=>DI_Reset,
                DI_Start=>SDC_DI_Start,
                Octave(7 downto 0)=>XLXN_224(7 downto 0),
                Tone(7 downto 0)=>XLXN_157(7 downto 0));
   
   XLXI_4 : ToneFSM
      port map (Clk=>Clk,
                DI(7 downto 0)=>DI(7 downto 0),
                DI_Rdy=>DI_Rdy,
                F0=>F0,
                Reset=>Reset,
                Tone(7 downto 0)=>XLXN_139(7 downto 0));
   
   XLXI_22 : FreqMapper
      port map (OctaveNum(7 downto 0)=>XLXN_373(7 downto 0),
                Tone(7 downto 0)=>XLXN_371(7 downto 0),
                Period(31 downto 0)=>XLXN_232(31 downto 0));
   
   XLXI_24 : GeneratorSignalSwitch
      port map (Input_0(11 downto 0)=>XLXN_265(11 downto 0),
                Input_0_Rdy=>XLXN_266,
                Input_1(11 downto 0)=>XLXI_24_Input_1_openSignal(11 downto 0),
                Input_1_Rdy=>XLXI_24_Input_1_Rdy_openSignal,
                Input_2(11 downto 0)=>XLXI_24_Input_2_openSignal(11 downto 0),
                Input_2_Rdy=>XLXI_24_Input_2_Rdy_openSignal,
                Input_3(11 downto 0)=>XLXI_24_Input_3_openSignal(11 downto 0),
                Input_3_Rdy=>XLXI_24_Input_3_Rdy_openSignal,
                Wave_Type(7 downto 0)=>XLXN_247(7 downto 0),
                Output(11 downto 0)=>WaveOut(11 downto 0),
                Output_Rdy=>DAC_Clock);
   
   XLXI_25 : GeneratorSaw
      port map (Clk=>Clk,
                Period(31 downto 0)=>XLXN_232(31 downto 0),
                Sample(11 downto 0)=>XLXN_265(11 downto 0),
                Sample_Rdy=>XLXN_266);
   
   XLXI_27 : SourceSwitchFSM
      port map (Clk=>Clk,
                DI(7 downto 0)=>DI(7 downto 0),
                DI_Rdy=>DI_Rdy,
                F0=>F0,
                Octave_File(7 downto 0)=>XLXN_224(7 downto 0),
                Octave_Key(7 downto 0)=>XLXN_138(7 downto 0),
                Reset=>Reset,
                Tone_File(7 downto 0)=>XLXN_157(7 downto 0),
                Tone_Key(7 downto 0)=>XLXN_139(7 downto 0),
                File_Source_Selected=>XLXN_382,
                Key_Source_Selected=>open,
                Octave(7 downto 0)=>XLXN_373(7 downto 0),
                Tone(7 downto 0)=>XLXN_371(7 downto 0));
   
end BEHAVIORAL;


