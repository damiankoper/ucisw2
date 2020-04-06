--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 04/06/2020 20:21:12
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
   port ( Clk          : in    std_logic; 
          DI           : in    std_logic_vector (7 downto 0); 
          DI_Rdy       : in    std_logic; 
          F0           : in    std_logic; 
          Reset        : in    std_logic; 
          SDC_DI       : in    std_logic_vector (7 downto 0); 
          SDC_DI_Busy  : in    std_logic; 
          SDC_DI_Rdy   : in    std_logic; 
          DAC_Clock    : out   std_logic; 
          SDC_DI_Pop   : out   std_logic; 
          SDC_DI_Start : out   std_logic; 
          WaveOut      : out   std_logic_vector (11 downto 0));
end InnerLogic_MUSER_main;

architecture BEHAVIORAL of InnerLogic_MUSER_main is
   signal XLXN_104                   : std_logic_vector (11 downto 0);
   signal XLXN_113                   : std_logic_vector (7 downto 0);
   signal XLXN_126                   : std_logic_vector (31 downto 0);
   signal XLXN_136                   : std_logic_vector (7 downto 0);
   signal XLXN_137                   : std_logic_vector (7 downto 0);
   signal XLXN_138                   : std_logic_vector (7 downto 0);
   signal XLXN_139                   : std_logic_vector (7 downto 0);
   signal XLXN_157                   : std_logic_vector (7 downto 0);
   signal XLXN_158                   : std_logic_vector (7 downto 0);
   signal XLXI_24_Input_1_openSignal : std_logic_vector (11 downto 0);
   signal XLXI_24_Input_2_openSignal : std_logic_vector (11 downto 0);
   signal XLXI_24_Input_3_openSignal : std_logic_vector (11 downto 0);
   signal XLXI_27_Reset_openSignal   : std_logic;
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
   
   component FileReaderFSM
      port ( DI_Rdy   : in    std_logic; 
             DI_Busy  : in    std_logic; 
             Reset    : in    std_logic; 
             Clk      : in    std_logic; 
             DI       : in    std_logic_vector (7 downto 0); 
             DI_Pop   : out   std_logic; 
             DI_Start : out   std_logic; 
             Tone     : out   std_logic_vector (7 downto 0); 
             Octave   : out   std_logic_vector (7 downto 0));
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
                Octave_File(7 downto 0)=>XLXN_158(7 downto 0),
                Octave_Key(7 downto 0)=>XLXN_138(7 downto 0),
                Reset=>XLXI_27_Reset_openSignal,
                Tone_File(7 downto 0)=>XLXN_157(7 downto 0),
                Tone_Key(7 downto 0)=>XLXN_139(7 downto 0),
                Octave(7 downto 0)=>XLXN_136(7 downto 0),
                Tone(7 downto 0)=>XLXN_137(7 downto 0));
   
   XLXI_29 : FileReaderFSM
      port map (Clk=>Clk,
                DI(7 downto 0)=>SDC_DI(7 downto 0),
                DI_Busy=>SDC_DI_Busy,
                DI_Rdy=>SDC_DI_Rdy,
                Reset=>Reset,
                DI_Pop=>SDC_DI_Pop,
                DI_Start=>SDC_DI_Start,
                Octave(7 downto 0)=>XLXN_158(7 downto 0),
                Tone(7 downto 0)=>XLXN_157(7 downto 0));
   
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
          Reset     : in    std_logic; 
          SDC_MISO  : in    std_logic; 
          SPI_MISO  : in    std_logic; 
          Busy      : out   std_logic; 
          DAC_CLR   : out   std_logic; 
          DAC_CS    : out   std_logic; 
          SDC_MOSI  : out   std_logic; 
          SDC_SCK   : out   std_logic; 
          SDC_SS    : out   std_logic; 
          SPI_MOSI  : out   std_logic; 
          SPI_SCK   : out   std_logic);
end main;

architecture BEHAVIORAL of main is
   signal XLXN_114                 : std_logic;
   signal XLXN_115                 : std_logic_vector (11 downto 0);
   signal XLXN_116                 : std_logic_vector (7 downto 0);
   signal XLXN_118                 : std_logic;
   signal XLXN_119                 : std_logic;
   signal XLXN_129                 : std_logic_vector (7 downto 0);
   signal XLXN_130                 : std_logic_vector (1 downto 0);
   signal XLXN_151                 : std_logic;
   signal XLXN_152                 : std_logic;
   signal XLXN_153                 : std_logic;
   signal XLXN_154                 : std_logic;
   signal XLXN_155                 : std_logic_vector (7 downto 0);
   signal XLXI_3_Addr_openSignal   : std_logic_vector (3 downto 0);
   signal XLXI_3_Cmd_openSignal    : std_logic_vector (3 downto 0);
   signal XLXI_27_Abort_openSignal : std_logic;
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
   
   component InnerLogic_MUSER_main
      port ( Reset        : in    std_logic; 
             DI           : in    std_logic_vector (7 downto 0); 
             DI_Rdy       : in    std_logic; 
             F0           : in    std_logic; 
             Clk          : in    std_logic; 
             SDC_DI_Busy  : in    std_logic; 
             SDC_DI_Rdy   : in    std_logic; 
             SDC_DI_Start : out   std_logic; 
             SDC_DI_Pop   : out   std_logic; 
             WaveOut      : out   std_logic_vector (11 downto 0); 
             DAC_Clock    : out   std_logic; 
             SDC_DI       : in    std_logic_vector (7 downto 0));
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
                SPI_MISO=>SPI_MISO,
                Start=>XLXN_114,
                AD_CONV=>open,
                AMP_CS=>open,
                Busy=>Busy,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>open,
                SF_CE0=>open,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>open);
   
   XLXI_27 : SDC_FileReader
      port map (Abort=>XLXI_27_Abort_openSignal,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                DO_Pop=>XLXN_152,
                FExt(1 downto 0)=>XLXN_130(1 downto 0),
                FName(7 downto 0)=>XLXN_129(7 downto 0),
                Reset=>Reset,
                SDC_MISO=>SDC_MISO,
                Start=>XLXN_151,
                Busy=>XLXN_154,
                DO(7 downto 0)=>XLXN_155(7 downto 0),
                DO_Rdy=>XLXN_153,
                Error=>open,
                SDC_MOSI=>SDC_MOSI,
                SDC_SCK=>SDC_SCK,
                SDC_SS=>SDC_SS);
   
   XLXI_31 : InnerLogic_MUSER_main
      port map (Clk=>Reset,
                DI(7 downto 0)=>XLXN_116(7 downto 0),
                DI_Rdy=>XLXN_118,
                F0=>XLXN_119,
                Reset=>Reset,
                SDC_DI(7 downto 0)=>XLXN_155(7 downto 0),
                SDC_DI_Busy=>XLXN_154,
                SDC_DI_Rdy=>XLXN_153,
                DAC_Clock=>XLXN_114,
                SDC_DI_Pop=>XLXN_152,
                SDC_DI_Start=>XLXN_151,
                WaveOut(11 downto 0)=>XLXN_115(11 downto 0));
   
end BEHAVIORAL;

