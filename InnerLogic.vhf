--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : InnerLogic.vhf
-- /___/   /\     Timestamp : 03/25/2020 17:52:58
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/mboja/Desktop/ucisw2/InnerLogic.vhf -w C:/Users/mboja/Desktop/ucisw2/InnerLogic.sch
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
   port ( Clk       : in    std_logic; 
          DI        : in    std_logic_vector (7 downto 0); 
          DI_Rdy    : in    std_logic; 
          F0        : in    std_logic; 
          Reset     : in    std_logic; 
          DAC_Clock : out   std_logic; 
          WaveOut   : out   std_logic_vector (11 downto 0));
end InnerLogic;

architecture BEHAVIORAL of InnerLogic is
   signal XLXN_95                    : std_logic_vector (7 downto 0);
   signal XLXN_96                    : std_logic_vector (7 downto 0);
   signal XLXN_104                   : std_logic_vector (11 downto 0);
   signal XLXN_113                   : std_logic_vector (7 downto 0);
   signal XLXN_126                   : std_logic_vector (31 downto 0);
   signal XLXI_24_Input_1_openSignal : std_logic_vector (11 downto 0);
   signal XLXI_24_Input_2_openSignal : std_logic_vector (11 downto 0);
   signal XLXI_24_Input_3_openSignal : std_logic_vector (11 downto 0);
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
   
begin
   XLXN_96(7 downto 0) <= x"04";
   XLXN_113(7 downto 0) <= x"00";
   XLXI_4 : ToneFSM
      port map (Clk=>Clk,
                DI(7 downto 0)=>DI(7 downto 0),
                DI_Rdy=>DI_Rdy,
                F0=>F0,
                Reset=>Reset,
                Tone(7 downto 0)=>XLXN_95(7 downto 0));
   
   XLXI_17 : Clock_32kHz
      port map (CLK_IN=>Clk,
                RESET=>Reset,
                CLK_OUT=>DAC_Clock);
   
   XLXI_22 : FreqMapper
      port map (OctaveNum(7 downto 0)=>XLXN_96(7 downto 0),
                Tone(7 downto 0)=>XLXN_95(7 downto 0),
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
   
end BEHAVIORAL;


