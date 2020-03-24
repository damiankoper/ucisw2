--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 03/23/2020 09:44:31
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/mboja/Desktop/ucisw2/main.vhf -w C:/Users/mboja/Desktop/ucisw2/main.sch
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

entity main is
   port ( Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          Reset     : in    std_logic);
end main;

architecture BEHAVIORAL of main is
   signal XLXN_8                       : std_logic_vector (7 downto 0);
   signal XLXN_10                      : std_logic;
   signal XLXN_11                      : std_logic;
   signal XLXN_94                      : std_logic;
   signal XLXN_95                      : std_logic_vector (7 downto 0);
   signal XLXN_96                      : std_logic_vector (7 downto 0);
   signal XLXN_102                     : std_logic_vector (11 downto 0);
   signal XLXN_104                     : std_logic_vector (11 downto 0);
   signal XLXI_3_Addr_openSignal       : std_logic_vector (3 downto 0);
   signal XLXI_3_Cmd_openSignal        : std_logic_vector (3 downto 0);
   signal XLXI_3_SPI_MISO_openSignal   : std_logic;
   signal XLXI_24_Input_1_openSignal   : std_logic_vector (11 downto 0);
   signal XLXI_24_Input_2_openSignal   : std_logic_vector (11 downto 0);
   signal XLXI_24_Input_3_openSignal   : std_logic_vector (11 downto 0);
   signal XLXI_24_Wave_Type_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_25_Freq_openSignal      : std_logic;
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
             Freq      : out   std_logic_vector (31 downto 0));
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
             Freq   : in    std_logic; 
             Sample : out   std_logic_vector (11 downto 0));
   end component;
   
begin
   XLXN_96(7 downto 0) <= x"04";
   XLXI_1 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_8(7 downto 0),
                DO_Rdy=>XLXN_11,
                E0=>open,
                F0=>XLXN_10);
   
   XLXI_3 : DACWrite
      port map (Addr(3 downto 0)=>XLXI_3_Addr_openSignal(3 downto 0),
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                Cmd(3 downto 0)=>XLXI_3_Cmd_openSignal(3 downto 0),
                DATA(11 downto 0)=>XLXN_102(11 downto 0),
                Reset=>Reset,
                SPI_MISO=>XLXI_3_SPI_MISO_openSignal,
                Start=>XLXN_94,
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
   
   XLXI_4 : ToneFSM
      port map (Clk=>Clk_50MHz,
                DI(7 downto 0)=>XLXN_8(7 downto 0),
                DI_Rdy=>XLXN_11,
                F0=>XLXN_10,
                Reset=>Reset,
                Tone(7 downto 0)=>XLXN_95(7 downto 0));
   
   XLXI_17 : Clock_32kHz
      port map (CLK_IN=>Clk_50MHz,
                RESET=>Reset,
                CLK_OUT=>XLXN_94);
   
   XLXI_22 : FreqMapper
      port map (OctaveNum(7 downto 0)=>XLXN_96(7 downto 0),
                Tone(7 downto 0)=>XLXN_95(7 downto 0),
                Freq=>open);
   
   XLXI_24 : GeneratorSignalSwitch
      port map (Input_0(11 downto 0)=>XLXN_104(11 downto 0),
                Input_1(11 downto 0)=>XLXI_24_Input_1_openSignal(11 downto 0),
                Input_2(11 downto 0)=>XLXI_24_Input_2_openSignal(11 downto 0),
                Input_3(11 downto 0)=>XLXI_24_Input_3_openSignal(11 downto 0),
                Wave_Type(7 downto 0)=>XLXI_24_Wave_Type_openSignal(7 downto 0),
                Output(11 downto 0)=>XLXN_102(11 downto 0));
   
   XLXI_25 : GeneratorSaw
      port map (Clk=>Clk_50MHz,
                Freq=>XLXI_25_Freq_openSignal,
                Sample(11 downto 0)=>XLXN_104(11 downto 0));
   
end BEHAVIORAL;


