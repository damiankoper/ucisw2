--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 04/02/2020 20:56:10
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/damian_koper/Documents/GitHub/ucisw2/main.vhf -w /home/damian_koper/Documents/GitHub/ucisw2/main.sch
--Design Name: main
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

entity InnerLogic_MUSER_main is
   port ( Clk       : in    std_logic; 
          DI        : in    std_logic_vector (7 downto 0); 
          DI_Rdy    : in    std_logic; 
          F0        : in    std_logic; 
          Reset     : in    std_logic; 
          DAC_Clock : out   std_logic; 
          WaveOut   : out   std_logic_vector (11 downto 0));
end InnerLogic_MUSER_main;

architecture BEHAVIORAL of InnerLogic_MUSER_main is
   signal XLXN_104                     : std_logic_vector (11 downto 0);
   signal XLXN_113                     : std_logic_vector (7 downto 0);
   signal XLXN_126                     : std_logic_vector (31 downto 0);
   signal XLXN_136                     : std_logic_vector (7 downto 0);
   signal XLXN_137                     : std_logic_vector (7 downto 0);
   signal XLXN_138                     : std_logic_vector (7 downto 0);
   signal XLXN_139                     : std_logic_vector (7 downto 0);
   signal XLXI_24_Input_1_openSignal   : std_logic_vector (11 downto 0);
   signal XLXI_24_Input_2_openSignal   : std_logic_vector (11 downto 0);
   signal XLXI_24_Input_3_openSignal   : std_logic_vector (11 downto 0);
   signal XLXI_27_Tone_File_openSignal : std_logic_vector (7 downto 0);
   component ToneFSM
      port ( Clk    : in    std_logic; 
             F0     : in    std_logic; 
             DI_Rdy : in    std_logic; 
             Reset  : in    std_logic; 
             DI     : in    std_logic_vector (7 downto 0); 
             Tone   : out   std_logic_vector (7 downto 0));
   end component;
   
   component Clock_32kHz
      port ( CLK_IN  : in    std_logic; 
             RESET   : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
   component FreqMapper
      port ( Tone      : in    std_logic_vector (7 downto 0); 
             OctaveNum : in    std_logic_vector (7 downto 0); 
             Period    : out   std_logic_vector (31 downto 0));
   end component;
   
   component GeneratorSignalSwitch
      port ( Wave_Type : in    std_logic_vector (7 downto 0); 
             Input_0   : in    std_logic_vector (11 downto 0); 
             Input_1   : in    std_logic_vector (11 downto 0); 
             Input_2   : in    std_logic_vector (11 downto 0); 
             Input_3   : in    std_logic_vector (11 downto 0); 
             Output    : out   std_logic_vector (11 downto 0));
   end component;
   
   component GeneratorSaw
      port ( Clk    : in    std_logic; 
             Sample : out   std_logic_vector (11 downto 0); 
             Period : in    std_logic_vector (31 downto 0));
   end component;
   
   component SourceSwitchFSM
      port ( Clk         : in    std_logic; 
             Reset       : in    std_logic; 
             DI_Rdy      : in    std_logic; 
             F0          : in    std_logic; 
             DI          : in    std_logic_vector (7 downto 0); 
             Tone_Key    : in    std_logic_vector (7 downto 0); 
             Tone_File   : in    std_logic_vector (7 downto 0); 
             Octave_Key  : in    std_logic_vector (7 downto 0); 
             Octave_File : in    std_logic_vector (7 downto 0); 
             Tone        : out   std_logic_vector (7 downto 0); 
             Octave      : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXN_113(7 downto 0) <= x"00";
   XLXN_138(7 downto 0) <= x"04";
   XLXI_4 : ToneFSM
      port map (Clk=>Clk,
                DI(7 downto 0)=>DI(7 downto 0),
                DI_Rdy=>DI_Rdy,
                F0=>F0,
                Reset=>Reset,
                Tone(7 downto 0)=>XLXN_139(7 downto 0));
   
   XLXI_17 : Clock_32kHz
      port map (CLK_IN=>Clk,
                RESET=>Reset,
                CLK_OUT=>DAC_Clock);
   
   XLXI_22 : FreqMapper
      port map (OctaveNum(7 downto 0)=>XLXN_136(7 downto 0),
                Tone(7 downto 0)=>XLXN_137(7 downto 0),
                Period(31 downto 0)=>XLXN_126(31 downto 0));
   
   XLXI_24 : GeneratorSignalSwitch
      port map (Input_0(11 downto 0)=>XLXN_104(11 downto 0),
                Input_1(11 downto 0)=>XLXI_24_Input_1_openSignal(11 downto 0),
                Input_2(11 downto 0)=>XLXI_24_Input_2_openSignal(11 downto 0),
                Input_3(11 downto 0)=>XLXI_24_Input_3_openSignal(11 downto 0),
                Wave_Type(7 downto 0)=>XLXN_113(7 downto 0),
                Output(11 downto 0)=>WaveOut(11 downto 0));
   
   XLXI_25 : GeneratorSaw
      port map (Clk=>Clk,
                Period(31 downto 0)=>XLXN_126(31 downto 0),
                Sample(11 downto 0)=>XLXN_104(11 downto 0));
   
   XLXI_27 : SourceSwitchFSM
      port map (Clk=>Clk,
                DI(7 downto 0)=>DI(7 downto 0),
                DI_Rdy=>DI_Rdy,
                F0=>F0,
                Octave_File(7 downto 0)=>XLXN_138(7 downto 0),
                Octave_Key(7 downto 0)=>XLXN_138(7 downto 0),
                Reset=>Reset,
                Tone_File(7 downto 0)=>XLXI_27_Tone_File_openSignal(7 downto 0),
                Tone_Key(7 downto 0)=>XLXN_139(7 downto 0),
                Octave(7 downto 0)=>XLXN_136(7 downto 0),
                Tone(7 downto 0)=>XLXN_137(7 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity main is
   port ( Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          Reset     : in    std_logic);
end main;

architecture BEHAVIORAL of main is
   signal XLXN_114                    : std_logic;
   signal XLXN_115                    : std_logic_vector (11 downto 0);
   signal XLXN_116                    : std_logic_vector (7 downto 0);
   signal XLXN_118                    : std_logic;
   signal XLXN_119                    : std_logic;
   signal XLXN_129                    : std_logic_vector (7 downto 0);
   signal XLXN_130                    : std_logic_vector (1 downto 0);
   signal XLXI_3_Addr_openSignal      : std_logic_vector (3 downto 0);
   signal XLXI_3_Cmd_openSignal       : std_logic_vector (3 downto 0);
   signal XLXI_3_SPI_MISO_openSignal  : std_logic;
   signal XLXI_27_Abort_openSignal    : std_logic;
   signal XLXI_27_DO_Pop_openSignal   : std_logic;
   signal XLXI_27_SDC_MISO_openSignal : std_logic;
   signal XLXI_27_Start_openSignal    : std_logic;
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component DACWrite
      port ( Reset       : in    std_logic; 
             Start       : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             Cmd         : in    std_logic_vector (3 downto 0); 
             Addr        : in    std_logic_vector (3 downto 0); 
             DATA        : in    std_logic_vector (11 downto 0); 
             DAC_CLR     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AD_CONV     : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             Busy        : out   std_logic; 
             Clk_50MHz   : in    std_logic; 
             Clk_Sys     : in    std_logic);
   end component;
   
   component InnerLogic_MUSER_main
      port ( Reset     : in    std_logic; 
             DI        : in    std_logic_vector (7 downto 0); 
             DI_Rdy    : in    std_logic; 
             F0        : in    std_logic; 
             Clk       : in    std_logic; 
             DAC_Clock : out   std_logic; 
             WaveOut   : out   std_logic_vector (11 downto 0));
   end component;
   
   component SDC_FileReader
      port ( SDC_MISO  : in    std_logic; 
             Start     : in    std_logic; 
             FName     : in    std_logic_vector (7 downto 0); 
             Reset     : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             DO_Pop    : in    std_logic; 
             Abort     : in    std_logic; 
             SDC_MOSI  : out   std_logic; 
             SDC_SCK   : out   std_logic; 
             SDC_SS    : out   std_logic; 
             Error     : out   std_logic_vector (3 downto 0); 
             DO        : out   std_logic_vector (7 downto 0); 
             DO_Rdy    : out   std_logic; 
             Busy      : out   std_logic; 
             FExt      : in    std_logic_vector (1 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
begin
   XLXN_129(7 downto 0) <= x"61";
   XLXN_130(1 downto 0) <= b"10";
   XLXI_1 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_116(7 downto 0),
                DO_Rdy=>XLXN_118,
                E0=>open,
                F0=>XLXN_119);
   
   XLXI_3 : DACWrite
      port map (Addr(3 downto 0)=>XLXI_3_Addr_openSignal(3 downto 0),
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                Cmd(3 downto 0)=>XLXI_3_Cmd_openSignal(3 downto 0),
                DATA(11 downto 0)=>XLXN_115(11 downto 0),
                Reset=>Reset,
                SPI_MISO=>XLXI_3_SPI_MISO_openSignal,
                Start=>XLXN_114,
                AD_CONV=>open,
                AMP_CS=>open,
                Busy=>open,
                DAC_CLR=>open,
                DAC_CS=>open,
                FPGA_INIT_B=>open,
                SF_CE0=>open,
                SPI_MOSI=>open,
                SPI_SCK=>open,
                SPI_SS_B=>open);
   
   XLXI_26 : InnerLogic_MUSER_main
      port map (Clk=>Reset,
                DI(7 downto 0)=>XLXN_116(7 downto 0),
                DI_Rdy=>XLXN_118,
                F0=>XLXN_119,
                Reset=>Reset,
                DAC_Clock=>XLXN_114,
                WaveOut(11 downto 0)=>XLXN_115(11 downto 0));
   
   XLXI_27 : SDC_FileReader
      port map (Abort=>XLXI_27_Abort_openSignal,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                DO_Pop=>XLXI_27_DO_Pop_openSignal,
                FExt(1 downto 0)=>XLXN_130(1 downto 0),
                FName(7 downto 0)=>XLXN_129(7 downto 0),
                Reset=>Reset,
                SDC_MISO=>XLXI_27_SDC_MISO_openSignal,
                Start=>XLXI_27_Start_openSignal,
                Busy=>open,
                DO=>open,
                DO_Rdy=>open,
                Error=>open,
                SDC_MOSI=>open,
                SDC_SCK=>open,
                SDC_SS=>open);
   
end BEHAVIORAL;


