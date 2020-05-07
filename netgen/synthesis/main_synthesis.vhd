--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: main_synthesis.vhd
-- /___/   /\     Timestamp: Thu May  7 19:43:06 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm main -w -dir netgen/synthesis -ofmt vhdl -sim main.ngc main_synthesis.vhd 
-- Device	: xc3s500e-5-fg320
-- Input file	: main.ngc
-- Output file	: /home/damian_koper/Documents/GitHub/ucisw2/netgen/synthesis/main_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: main
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity main is
  port (
    SPI_MISO : in STD_LOGIC := 'X'; 
    PS2_Clk : in STD_LOGIC := 'X'; 
    SDC_MOSI : out STD_LOGIC; 
    PS2_Data : in STD_LOGIC := 'X'; 
    Reset : in STD_LOGIC := 'X'; 
    DAC_CLR : out STD_LOGIC; 
    SDC_MISO : in STD_LOGIC := 'X'; 
    DAC_CS : out STD_LOGIC; 
    SDC_SS : out STD_LOGIC; 
    SPI_SCK : out STD_LOGIC; 
    SPI_MOSI : out STD_LOGIC; 
    Clk_50MHz : in STD_LOGIC := 'X'; 
    SDC_SCK : out STD_LOGIC; 
    Tone : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Octave : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end main;

architecture Structure of main is
  component SDC_FileReader
    port (
      Abort : in STD_LOGIC := 'X'; 
      SDC_MOSI : out STD_LOGIC; 
      Start : in STD_LOGIC := 'X'; 
      Reset : in STD_LOGIC := 'X'; 
      DO_Pop : in STD_LOGIC := 'X'; 
      DO_Rdy : out STD_LOGIC; 
      SDC_MISO : in STD_LOGIC := 'X'; 
      Busy : out STD_LOGIC; 
      SDC_SS : out STD_LOGIC; 
      Clk_Sys : in STD_LOGIC := 'X'; 
      Clk_50MHz : in STD_LOGIC := 'X'; 
      SDC_SCK : out STD_LOGIC; 
      DO : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      Error : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
      FName : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      FExt : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
    );
  end component;
  component DACWrite
    port (
      SPI_MISO : in STD_LOGIC := 'X'; 
      AD_CONV : out STD_LOGIC; 
      AMP_CS : out STD_LOGIC; 
      Start : in STD_LOGIC := 'X'; 
      Reset : in STD_LOGIC := 'X'; 
      DAC_CLR : out STD_LOGIC; 
      Busy : out STD_LOGIC; 
      DAC_CS : out STD_LOGIC; 
      SPI_SS_B : out STD_LOGIC; 
      FPGA_INIT_B : out STD_LOGIC; 
      Clk_Sys : in STD_LOGIC := 'X'; 
      SPI_SCK : out STD_LOGIC; 
      SPI_MOSI : out STD_LOGIC; 
      SF_CE0 : out STD_LOGIC; 
      Clk_50MHz : in STD_LOGIC := 'X'; 
      Cmd : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      Addr : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      DATA : in STD_LOGIC_VECTOR ( 11 downto 0 ) 
    );
  end component;
  component PS2_Kbd
    port (
      E0 : out STD_LOGIC; 
      F0 : out STD_LOGIC; 
      PS2_Clk : in STD_LOGIC := 'X'; 
      PS2_Data : in STD_LOGIC := 'X'; 
      DO_Rdy : out STD_LOGIC; 
      Clk_Sys : in STD_LOGIC := 'X'; 
      Clk_50MHz : in STD_LOGIC := 'X'; 
      DO : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal Clk_50MHz_BUFGP_1 : STD_LOGIC; 
  signal DAC_CLR_OBUF_3 : STD_LOGIC; 
  signal DAC_CS_OBUF_5 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N265 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal N282 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N305 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal N319 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal N327 : STD_LOGIC; 
  signal N329 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N339 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N343 : STD_LOGIC; 
  signal N357 : STD_LOGIC; 
  signal N359 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal N385 : STD_LOGIC; 
  signal N387 : STD_LOGIC; 
  signal N389 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal N413 : STD_LOGIC; 
  signal N417 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N426 : STD_LOGIC; 
  signal N430 : STD_LOGIC; 
  signal N434 : STD_LOGIC; 
  signal N436 : STD_LOGIC; 
  signal N438 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N440 : STD_LOGIC; 
  signal N442 : STD_LOGIC; 
  signal N448 : STD_LOGIC; 
  signal N450 : STD_LOGIC; 
  signal N454 : STD_LOGIC; 
  signal N456 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N460 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal N463 : STD_LOGIC; 
  signal N465 : STD_LOGIC; 
  signal N467 : STD_LOGIC; 
  signal N469 : STD_LOGIC; 
  signal N471 : STD_LOGIC; 
  signal N473 : STD_LOGIC; 
  signal N475 : STD_LOGIC; 
  signal N479 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N480 : STD_LOGIC; 
  signal N482 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal N493 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal N495 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal N499 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N500 : STD_LOGIC; 
  signal N501 : STD_LOGIC; 
  signal N502 : STD_LOGIC; 
  signal N503 : STD_LOGIC; 
  signal N504 : STD_LOGIC; 
  signal N505 : STD_LOGIC; 
  signal N506 : STD_LOGIC; 
  signal N507 : STD_LOGIC; 
  signal N508 : STD_LOGIC; 
  signal N509 : STD_LOGIC; 
  signal N510 : STD_LOGIC; 
  signal N511 : STD_LOGIC; 
  signal N512 : STD_LOGIC; 
  signal N513 : STD_LOGIC; 
  signal N514 : STD_LOGIC; 
  signal N515 : STD_LOGIC; 
  signal N516 : STD_LOGIC; 
  signal N517 : STD_LOGIC; 
  signal N518 : STD_LOGIC; 
  signal N519 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N520 : STD_LOGIC; 
  signal N521 : STD_LOGIC; 
  signal N522 : STD_LOGIC; 
  signal N523 : STD_LOGIC; 
  signal N524 : STD_LOGIC; 
  signal N525 : STD_LOGIC; 
  signal N526 : STD_LOGIC; 
  signal N527 : STD_LOGIC; 
  signal N528 : STD_LOGIC; 
  signal N529 : STD_LOGIC; 
  signal N530 : STD_LOGIC; 
  signal N531 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal N533 : STD_LOGIC; 
  signal N534 : STD_LOGIC; 
  signal N535 : STD_LOGIC; 
  signal N536 : STD_LOGIC; 
  signal N538 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N542 : STD_LOGIC; 
  signal N546 : STD_LOGIC; 
  signal N548 : STD_LOGIC; 
  signal N550 : STD_LOGIC; 
  signal N556 : STD_LOGIC; 
  signal N558 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N560 : STD_LOGIC; 
  signal N562 : STD_LOGIC; 
  signal N564 : STD_LOGIC; 
  signal N566 : STD_LOGIC; 
  signal N568 : STD_LOGIC; 
  signal N570 : STD_LOGIC; 
  signal N572 : STD_LOGIC; 
  signal N574 : STD_LOGIC; 
  signal N576 : STD_LOGIC; 
  signal N578 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N580 : STD_LOGIC; 
  signal N582 : STD_LOGIC; 
  signal N584 : STD_LOGIC; 
  signal N586 : STD_LOGIC; 
  signal N588 : STD_LOGIC; 
  signal N590 : STD_LOGIC; 
  signal N592 : STD_LOGIC; 
  signal N594 : STD_LOGIC; 
  signal N596 : STD_LOGIC; 
  signal N598 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N600 : STD_LOGIC; 
  signal N602 : STD_LOGIC; 
  signal N604 : STD_LOGIC; 
  signal N606 : STD_LOGIC; 
  signal N608 : STD_LOGIC; 
  signal N609 : STD_LOGIC; 
  signal N610 : STD_LOGIC; 
  signal N611 : STD_LOGIC; 
  signal N612 : STD_LOGIC; 
  signal N613 : STD_LOGIC; 
  signal N614 : STD_LOGIC; 
  signal N615 : STD_LOGIC; 
  signal N616 : STD_LOGIC; 
  signal N617 : STD_LOGIC; 
  signal N618 : STD_LOGIC; 
  signal N619 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N620 : STD_LOGIC; 
  signal N621 : STD_LOGIC; 
  signal N622 : STD_LOGIC; 
  signal N623 : STD_LOGIC; 
  signal N624 : STD_LOGIC; 
  signal N625 : STD_LOGIC; 
  signal N626 : STD_LOGIC; 
  signal N627 : STD_LOGIC; 
  signal N628 : STD_LOGIC; 
  signal N629 : STD_LOGIC; 
  signal N630 : STD_LOGIC; 
  signal N631 : STD_LOGIC; 
  signal N632 : STD_LOGIC; 
  signal N633 : STD_LOGIC; 
  signal N634 : STD_LOGIC; 
  signal N635 : STD_LOGIC; 
  signal N636 : STD_LOGIC; 
  signal N637 : STD_LOGIC; 
  signal N638 : STD_LOGIC; 
  signal N639 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N640 : STD_LOGIC; 
  signal N641 : STD_LOGIC; 
  signal N642 : STD_LOGIC; 
  signal N643 : STD_LOGIC; 
  signal N644 : STD_LOGIC; 
  signal N645 : STD_LOGIC; 
  signal N646 : STD_LOGIC; 
  signal N647 : STD_LOGIC; 
  signal N648 : STD_LOGIC; 
  signal N649 : STD_LOGIC; 
  signal N650 : STD_LOGIC; 
  signal N651 : STD_LOGIC; 
  signal N652 : STD_LOGIC; 
  signal N653 : STD_LOGIC; 
  signal N654 : STD_LOGIC; 
  signal N655 : STD_LOGIC; 
  signal N656 : STD_LOGIC; 
  signal N657 : STD_LOGIC; 
  signal N658 : STD_LOGIC; 
  signal N659 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N660 : STD_LOGIC; 
  signal N661 : STD_LOGIC; 
  signal N662 : STD_LOGIC; 
  signal N663 : STD_LOGIC; 
  signal N664 : STD_LOGIC; 
  signal N665 : STD_LOGIC; 
  signal N666 : STD_LOGIC; 
  signal N667 : STD_LOGIC; 
  signal N668 : STD_LOGIC; 
  signal N669 : STD_LOGIC; 
  signal N670 : STD_LOGIC; 
  signal N671 : STD_LOGIC; 
  signal N672 : STD_LOGIC; 
  signal N673 : STD_LOGIC; 
  signal N674 : STD_LOGIC; 
  signal N675 : STD_LOGIC; 
  signal N676 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal PS2_Clk_IBUF_309 : STD_LOGIC; 
  signal PS2_Data_IBUF_311 : STD_LOGIC; 
  signal Reset_IBUF_313 : STD_LOGIC; 
  signal SDC_MISO_IBUF_315 : STD_LOGIC; 
  signal SDC_MOSI_OBUF_317 : STD_LOGIC; 
  signal SDC_SCK_OBUF_319 : STD_LOGIC; 
  signal SDC_SS_OBUF_321 : STD_LOGIC; 
  signal SPI_MISO_IBUF_323 : STD_LOGIC; 
  signal SPI_MOSI_OBUF_325 : STD_LOGIC; 
  signal SPI_SCK_OBUF_327 : STD_LOGIC; 
  signal Tone_0_OBUF_336 : STD_LOGIC; 
  signal Tone_1_OBUF_337 : STD_LOGIC; 
  signal Tone_2_OBUF_338 : STD_LOGIC; 
  signal Tone_3_OBUF_339 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_10_rt_342 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_11_rt_344 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_12_rt_346 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_13_rt_348 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_14_rt_350 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_15_rt_352 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_16_rt_354 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_17_rt_356 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_18_rt_358 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_19_rt_360 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_20_rt_363 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_21_rt_365 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_22_rt_367 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_23_rt_369 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_24_rt_371 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_25_rt_373 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_26_rt_375 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_27_rt_377 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_28_rt_379 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_29_rt_381 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_30_rt_384 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_8_rt_391 : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_9_rt_393 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_0 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_1 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_10 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_11 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_12 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_13 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_14 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_2 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_3 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_4 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_5 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_6 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_7 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_8 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_9 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_0 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_1 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_10 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_11 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_12 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_13 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_14 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_15 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_16 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_17 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_2 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_3 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_4 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_5 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_6 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_7 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_8 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_9 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_0 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_1 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_10 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_11 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_12 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_13 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_14 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_15 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_16 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_17 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_18 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_19 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_2 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_20 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_21 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_22 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_23 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_24 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_25 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_26 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_27 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_28 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_29 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_3 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_30 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_31 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_4 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_5 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_6 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_7 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_8 : STD_LOGIC; 
  signal XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_9 : STD_LOGIC; 
  signal XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_0_rt_497 : STD_LOGIC; 
  signal XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_0_rt_560 : STD_LOGIC; 
  signal XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_4_rt_644 : STD_LOGIC; 
  signal XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_5_rt_646 : STD_LOGIC; 
  signal XLXI_31_FileReader_N0 : STD_LOGIC; 
  signal XLXI_31_FileReader_N11 : STD_LOGIC; 
  signal XLXI_31_FileReader_N111 : STD_LOGIC; 
  signal XLXI_31_FileReader_N19 : STD_LOGIC; 
  signal XLXI_31_FileReader_N3 : STD_LOGIC; 
  signal XLXI_31_FileReader_N5 : STD_LOGIC; 
  signal XLXI_31_FileReader_N7 : STD_LOGIC; 
  signal XLXI_31_FileReader_N9 : STD_LOGIC; 
  signal XLXI_31_FileReader_Octave_Char_not0001 : STD_LOGIC; 
  signal XLXI_31_FileReader_Octave_and0000 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_0_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_10_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_11_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_12_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_13_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_14_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_15_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_16_1_767 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_17_1_768 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_18_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_19_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_1_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_20_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_21_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_22_1_774 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_23_1_775 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_24_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_25_1_777 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_26_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_27_1_779 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_28_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_29_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_2_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_30_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_31_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_3_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_4_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_5_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_6_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_7_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_8_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_9_Q : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Stop_792 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Stop_not0001 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_0_1_923 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_10_1_924 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_11_1_925 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_12_1_926 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_13_1_927 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_14_1_928 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_15_1_929 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_16_1_930 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_17_1_931 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_18_1_932 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_19_1_933 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_1_1_934 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_20_1_935 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_21_1_936 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_22_1_937 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_23_1_938 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_24_1_939 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_25_1_940 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_26_1_941 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_27_1_942 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_28_1_943 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_29_1_944 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_2_1_945 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_30_1_946 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_31_1_947 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_3_1_948 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_4_1_949 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_5_1_950 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_6_1_951 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_7_1_952 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_8_1_953 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_Counter_mux0000_9_1_954 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_and0000110_1015 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_0_1_SW2 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_0_1_SW21_1018 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_0_2_1019 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_0_5 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_10_2_1022 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_11_2_1024 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_12_2_1026 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_13_2_1028 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_1_2_1036 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_24_14_1042 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_25_27_1044 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_26_17_1046 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_2_2_1051 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_3_2_1055 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_4_2_1057 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_5_2_1059 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_6_2_1061 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_7_2_1063 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_8_2_1065 : STD_LOGIC; 
  signal XLXI_31_FileReader_Playing_Time_mux0000_9_2_1067 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd1_1068 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd10_1069 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd11_1070 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd2_1071 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd2_In : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd3_1073 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd4_1074 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd5_1075 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd6_1076 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd7_1077 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd8_1078 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_FSM_FFd9_1079 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_cmp_eq0005 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_cmp_eq0006 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_cmp_eq0008 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_cmp_eq0012 : STD_LOGIC; 
  signal XLXI_31_FileReader_State_cmp_eq0014 : STD_LOGIC; 
  signal XLXI_31_FileReader_Tone_and0000 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_0_5_f6_1109 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_0_6_f5_1110 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_0_7_1111 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_0_7_f5_1112 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_0_8_1113 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_0_81_1114 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_0_9_1115 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_10_11_1116 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_10_5_f6_1117 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_10_6_f5_1118 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_10_7_1119 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_10_7_f5_1120 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_10_8_1121 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_10_81_1122 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_10_9_1123 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_11_10_1124 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_11_11_1125 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_11_5_f6_1126 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_11_6_f5_1127 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_11_7_1128 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_11_7_f5_1129 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_11_8_1130 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_11_81_1131 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_11_9_1132 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_12_5_f6_1133 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_12_6_f5_1134 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_12_7_1135 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_12_7_f5_1136 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_12_8_1137 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_12_81_1138 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_12_9_1139 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_12_9_f5_1140 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_13_5_f6_1141 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_13_6_f5_1142 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_13_7_1143 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_13_7_f5_1144 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_13_8_1145 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_13_81_1146 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_13_9_1147 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_13_9_f5_1148 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_14_5_f6_1149 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_14_6_f5_1150 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_14_7_1151 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_14_7_f5_1152 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_14_8_1153 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_14_81_1154 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_14_9 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_14_9_f5_1156 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_15_5_f6_1157 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_15_6_f5_1158 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_15_7_1159 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_15_7_f5_1160 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_15_8_1161 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_15_81_1162 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_15_9_1163 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_15_9_f5_1164 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_16_5_f6_1165 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_16_6_f5_1166 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_16_7_1167 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_16_7_f5_1168 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_16_8_1169 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_16_81_1170 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_16_9_1171 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_16_9_f5_1172 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_17_10_1173 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_17_8_f5_1174 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_17_9_1175 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_18_3_1176 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_18_4_1177 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_18_7_f5_1178 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_18_8_1179 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_18_9_1180 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_19_35_1181 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_1_10_1182 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_1_11_1183 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_1_5_f6_1184 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_1_6_f5_1185 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_1_7_1186 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_1_7_f5_1187 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_1_8_1188 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_1_81_1189 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_1_9_1190 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_2_5_f6_1191 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_2_6_f5_1192 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_2_7_1193 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_2_7_f5_1194 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_2_8_1195 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_2_81_1196 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_2_9_1197 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_2_9_f5_1198 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_3_5_f6_1199 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_3_6_f5_1200 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_3_7_1201 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_3_7_f5_1202 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_3_8_1203 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_3_81_1204 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_3_9_1205 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_4_10_1206 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_4_11_1207 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_4_5_f6_1208 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_4_6_f5_1209 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_4_7_1210 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_4_7_f5_1211 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_4_7_f51_1212 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_4_8_1213 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_4_81_1214 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_5_10_1215 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_5_11_1216 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_5_5_f6_1217 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_5_6_f5_1218 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_5_7_1219 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_5_7_f5_1220 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_5_8_1221 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_5_81_1222 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_5_9_1223 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_6_5_f6_1224 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_6_6_f5_1225 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_6_7_1226 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_6_7_f5_1227 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_6_8_1228 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_6_81_1229 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_6_9_1230 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_6_9_f5_1231 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_7_10_1232 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_7_11_1233 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_7_5_f6_1234 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_7_6_f5_1235 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_7_7_1236 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_7_7_f5_1237 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_7_8_1238 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_7_81_1239 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_7_9_1240 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_8_10_1241 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_8_5_f6_1242 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_8_6_f5_1243 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_8_7_1244 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_8_7_f5_1245 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_8_8_1246 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_8_81_1247 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_8_9_1248 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mmux_Period_9_6_f5_1249 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mrom_rom000010 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mrom_rom00003 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mrom_rom00004 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mrom_rom00007 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mrom_rom00008 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Mrom_rom00009 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N0 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N10 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N13 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N14 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N21 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N23 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N26 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N27 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N29 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N30 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N32 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N35 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N37 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N38 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N39 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N40 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N41 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N42 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N44 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N52 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N58 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N62 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N64 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N66 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N67 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N69 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N7 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N71 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_N72 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_10_mux0000 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_10_mux0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_10_mux0003 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_10_mux0005 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_10_mux0006 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_10_mux0007 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_10_mux0008 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_11_mux0004 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_11_mux0005 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_11_mux0006 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_11_mux0007 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_11_mux0008 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_11_mux0010 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_12_mux0003 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_12_mux0004 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_12_mux0007 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_12_mux0008 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_12_mux0009 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_13_mux0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_13_mux0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_13_mux0003 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_13_mux0004 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_13_mux0008_1307 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_13_mux0010 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_13_mux0011 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_14_cmp_eq0000 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_14_mux0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_14_mux0006 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_14_mux0009 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_14_mux0010 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_15_mux0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_15_mux0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_15_mux0004 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_15_mux0005 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_15_mux0008 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_15_mux0010 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_16_mux0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_16_mux0003 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_16_mux0004 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_16_mux0005 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_16_mux0006 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_16_mux0008 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_16_mux0010 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_17_mux0000 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_17_mux0003 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_17_mux0004 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_17_mux0005 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_17_mux0007 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_18_mux0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_18_mux0003 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_18_mux0006 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_19_mux0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_1_mux0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_1_mux0002_1338 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_20_mux0000 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_21_and0000_1340 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_21_and00001 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_21_mux0000 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_2_mux000111_1343 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_2_mux0003 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_2_mux0005 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_2_mux0007 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_3_mux0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_3_mux0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_3_mux0008 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_4_mux0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_5_mux0004_1351 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_5_mux0006 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_5_mux0009 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_6_mux0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_6_mux0006 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_6_mux0007 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_7_mux0003 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_7_mux0006 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_8_mux0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_8_mux0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_8_mux0003 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_8_mux0004 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_8_mux0007 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_9_mux0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_9_mux0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_9_mux0003_1366 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_9_mux0004 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_9_mux0006 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_9_mux00070_1369 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Period_9_mux0008 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_1_1_1371 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_1_11_1372 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_1_2 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_1019_1374 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_125_1375 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_128_1376 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_130_1377 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_1313_1378 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_1539_1379 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_1540_1380 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_1554_1381 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_40_1382 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_413_1383 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_519_1384 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_719_1385 : STD_LOGIC; 
  signal XLXI_31_XLXI_22_Tone_3_913_1386 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_10_rt_1603 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_11_rt_1605 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_12_rt_1607 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_13_rt_1609 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_14_rt_1611 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_15_rt_1613 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_16_rt_1615 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_17_rt_1617 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_18_rt_1619 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_19_rt_1621 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_1_rt_1623 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_20_rt_1625 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_21_rt_1627 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_22_rt_1629 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_23_rt_1631 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_24_rt_1633 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_25_rt_1635 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_26_rt_1637 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_27_rt_1639 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_28_rt_1641 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_29_rt_1643 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_2_rt_1645 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_30_rt_1647 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_3_rt_1649 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_4_rt_1651 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_5_rt_1653 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_6_rt_1655 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_7_rt_1657 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_8_rt_1659 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_9_rt_1661 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_31_rt_1663 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_10_rt_1666 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_11_rt_1668 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_12_rt_1670 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_13_rt_1672 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_14_rt_1674 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_15_rt_1676 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_16_rt_1678 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_17_rt_1680 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_18_rt_1682 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_19_rt_1684 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_1_rt_1686 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_20_rt_1688 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_21_rt_1690 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_22_rt_1692 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_23_rt_1694 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_24_rt_1696 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_25_rt_1698 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_26_rt_1700 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_27_rt_1702 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_28_rt_1704 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_29_rt_1706 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_2_rt_1708 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_30_rt_1710 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_3_rt_1712 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_4_rt_1714 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_5_rt_1716 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_6_rt_1718 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_7_rt_1720 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_8_rt_1722 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_9_rt_1724 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_31_rt_1726 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_N0 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_N2 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Next_8b_Sample_A_not0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Next_8b_Sample_and0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Next_8b_Sample_and00011 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Next_8b_Sample_and00012 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Sample_Rdy_1929 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Sample_Rdy_mux0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_25_Sample_Rdy_not0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_File_Source_Selected_1932 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_File_Source_Selected_and0000 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_File_Source_Selected_not0001 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_0_2_1936 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_0_37_1937 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_0_48_1938 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_0_56_1939 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_0_64_1940 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_0_84_1941 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_1_15_1942 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_1_56_1943 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_1_6_1944 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_2_14_1945 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_2_39_1946 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_2_45_1947 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_2_5_1948 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_3_22_1949 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_3_52_1950 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_Tone_DUMMY_3_54_1951 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_next_state : STD_LOGIC; 
  signal XLXI_31_XLXI_27_next_state_0_and0000 : STD_LOGIC; 
  signal XLXI_31_XLXI_27_next_state_0_and00001_1954 : STD_LOGIC; 
  signal XLXI_31_XLXI_28_Current_Oct_Num_cmp_ge0000 : STD_LOGIC; 
  signal XLXI_31_XLXI_28_Current_Oct_Num_cmp_le0000 : STD_LOGIC; 
  signal XLXI_31_XLXI_28_Current_Oct_Num_not0002 : STD_LOGIC; 
  signal XLXI_31_XLXI_28_Current_Oct_Num_not000224_1991 : STD_LOGIC; 
  signal XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv : STD_LOGIC; 
  signal XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_0_rt_1994 : STD_LOGIC; 
  signal XLXI_31_XLXI_28_N11 : STD_LOGIC; 
  signal XLXI_31_XLXI_4_next_state_10_bdd4 : STD_LOGIC; 
  signal XLXI_31_XLXI_4_next_state_11_bdd4 : STD_LOGIC; 
  signal XLXI_31_XLXI_4_next_state_2_bdd0 : STD_LOGIC; 
  signal XLXN_118 : STD_LOGIC; 
  signal XLXN_119 : STD_LOGIC; 
  signal XLXN_151 : STD_LOGIC; 
  signal XLXN_152 : STD_LOGIC; 
  signal XLXN_153 : STD_LOGIC; 
  signal XLXN_154 : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_B_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_31_FileReader_Mmult_mult0000_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_27_Error_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_27_Error_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_27_Error_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_27_Error_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_33_AD_CONV_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_33_AMP_CS_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_33_Busy_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_33_SPI_SS_B_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_33_FPGA_INIT_B_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_33_SF_CE0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_34_E0_UNCONNECTED : STD_LOGIC; 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_31_FileReader_Mmult_mult00000_Madd_cy : STD_LOGIC_VECTOR ( 30 downto 17 ); 
  signal XLXI_31_FileReader_Mmult_mult00000_Madd_lut : STD_LOGIC_VECTOR ( 31 downto 17 ); 
  signal XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut : STD_LOGIC_VECTOR ( 31 downto 1 ); 
  signal XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut : STD_LOGIC_VECTOR ( 31 downto 1 ); 
  signal XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy : STD_LOGIC_VECTOR ( 30 downto 4 ); 
  signal XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut : STD_LOGIC_VECTOR ( 31 downto 6 ); 
  signal XLXI_31_FileReader_Msub_Playing_Time_sub0000_cy : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal XLXI_31_FileReader_Octave_Char : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_FileReader_Playing_Stop_not0001_wg_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_31_FileReader_Playing_Stop_not0001_wg_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal XLXI_31_FileReader_Playing_Time : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_FileReader_Playing_Time_Counter : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_FileReader_Playing_Time_Counter_addsub0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_31_FileReader_Playing_Time_addsub0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_FileReader_Playing_Time_addsub0001 : STD_LOGIC_VECTOR ( 31 downto 4 ); 
  signal XLXI_31_FileReader_Playing_Time_mux0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_FileReader_Tone_Char : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_31_FileReader_mult0000 : STD_LOGIC_VECTOR ( 31 downto 17 ); 
  signal XLXI_31_XLXI_25_Counter_A : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_XLXI_25_Counter_A_addsub0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_XLXI_25_Counter_A_mux0001 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_XLXI_25_Counter_B : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_XLXI_25_Counter_B_addsub0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_XLXI_25_Counter_B_mux0002 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_XLXI_25_Last_Period : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 29 downto 0 ); 
  signal XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 29 downto 0 ); 
  signal XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal XLXI_31_XLXI_25_Next_8b_Sample : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_31_XLXI_25_Next_8b_Sample_A : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000 : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal XLXI_31_XLXI_25_Next_8b_Sample_B : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_31_XLXI_25_Next_8b_Sample_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_31_XLXI_27_Octave_DUMMY : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal XLXI_31_XLXI_27_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_31_XLXI_28_Current_Oct_Num : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_XLXI_28_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_31_XLXI_4_next_state : STD_LOGIC_VECTOR ( 12 downto 1 ); 
  signal XLXI_31_XLXI_4_state : STD_LOGIC_VECTOR ( 12 downto 1 ); 
  signal XLXI_31_XLXN_232 : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal XLXI_31_XLXN_371 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_31_XLXN_373 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXN_116 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXN_155 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  XLXI_31_FileReader_State_FSM_FFd11 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_State_cmp_eq0005,
      S => XLXI_31_XLXI_27_File_Source_Selected_1932,
      Q => XLXI_31_FileReader_State_FSM_FFd11_1070
    );
  XLXI_31_FileReader_State_FSM_FFd10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_State_cmp_eq0006,
      R => XLXI_31_XLXI_27_File_Source_Selected_1932,
      Q => XLXI_31_FileReader_State_FSM_FFd10_1069
    );
  XLXI_31_FileReader_State_FSM_FFd8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_State_cmp_eq0008,
      R => XLXI_31_XLXI_27_File_Source_Selected_1932,
      Q => XLXI_31_FileReader_State_FSM_FFd8_1078
    );
  XLXI_31_FileReader_State_FSM_FFd4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_State_cmp_eq0012,
      R => XLXI_31_XLXI_27_File_Source_Selected_1932,
      Q => XLXI_31_FileReader_State_FSM_FFd4_1074
    );
  XLXI_31_FileReader_State_FSM_FFd6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Octave_Char_not0001,
      R => XLXI_31_XLXI_27_File_Source_Selected_1932,
      Q => XLXI_31_FileReader_State_FSM_FFd6_1076
    );
  XLXI_31_FileReader_State_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_State_FSM_FFd2_In,
      R => XLXI_31_XLXI_27_File_Source_Selected_1932,
      Q => XLXI_31_FileReader_State_FSM_FFd2_1071
    );
  XLXI_31_FileReader_State_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_State_cmp_eq0014,
      R => XLXI_31_XLXI_27_File_Source_Selected_1932,
      Q => XLXI_31_FileReader_State_FSM_FFd1_1068
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_31_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(30),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(31),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(31)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_30_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(29),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(30),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(30)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_30_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(29),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(30),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(30)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_29_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(28),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(29),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(29)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_29_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(28),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(29),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(29)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_28_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(27),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(28),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(28)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_28_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(27),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(28),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(28)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_27_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(26),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(27),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(27)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_27_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(26),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(27),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(27)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_26_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(25),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(26),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(26)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_26_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(25),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(26),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(26)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_25_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(24),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(25),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(25)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_25_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(24),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(25),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(25)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_24_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(23),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(24),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(24)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_24_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(23),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(24),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(24)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_23_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(22),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(23),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(23)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_23_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(22),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(23),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(23)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_22_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(21),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(22),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(22)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_22_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(21),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(22),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(22)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_21_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(20),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(21),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(21)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_21_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(20),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(21),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(21)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_20_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(19),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(20),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(20)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_20_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(19),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(20),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(20)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_19_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(18),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(19),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(19)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_19_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(18),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(19),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(19)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_18_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(17),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(18),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(18)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_18_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(17),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(18),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(18)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_17_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(16),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(17),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(17)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_17_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(16),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(17),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(17)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_16_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(15),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(16),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(16)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_16_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(15),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(16),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(16)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_15_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(14),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(15),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(15)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_15_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(14),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(15),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(15)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_14_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(13),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(14),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(14)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_14_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(13),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(14),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(14)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_13_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(12),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(13),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(13)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_13_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(12),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(13),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(13)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_12_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(11),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(12),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(12)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_12_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(11),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(12),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(12)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_11_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(10),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(11),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(11)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_11_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(10),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(11),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(11)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_10_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(9),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(10),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(10)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_10_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(9),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(10),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(10)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_9_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(8),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(9),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(9)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_9_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(8),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(9),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(9)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_8_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(7),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(8),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(8)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(7),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(8),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(8)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_7_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(6),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(7),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(7)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(6),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(7),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(7)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_6_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(5),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(6),
      O => XLXI_31_FileReader_Playing_Time_addsub0001(6)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(5),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(6),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(6)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_5_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(4),
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_5_rt_646,
      O => XLXI_31_FileReader_Playing_Time_addsub0001(5)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(4),
      DI => N0,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_5_rt_646,
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(5)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_xor_4_Q : XORCY
    port map (
      CI => N1,
      LI => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_4_rt_644,
      O => XLXI_31_FileReader_Playing_Time_addsub0001(4)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_4_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_4_rt_644,
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy(4)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_31_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(30),
      LI => XLXI_31_FileReader_mult0000(31),
      O => XLXI_31_FileReader_Playing_Time_addsub0000(31)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_30_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(29),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_30_rt_384,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(30)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_30_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(29),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_30_rt_384,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(30)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_29_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(28),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_29_rt_381,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(29)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_29_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(28),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_29_rt_381,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(29)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_28_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(27),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_28_rt_379,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(28)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_28_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(27),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_28_rt_379,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(28)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_27_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(26),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_27_rt_377,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(27)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_27_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(26),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_27_rt_377,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(27)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_26_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(25),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_26_rt_375,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(26)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_26_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(25),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_26_rt_375,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(26)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_25_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(24),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_25_rt_373,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(25)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_25_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(24),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_25_rt_373,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(25)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_24_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(23),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_24_rt_371,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(24)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_24_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(23),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_24_rt_371,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(24)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_23_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(22),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_23_rt_369,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(23)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(22),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_23_rt_369,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(23)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_22_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(21),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_22_rt_367,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(22)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(21),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_22_rt_367,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(22)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_21_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(20),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_21_rt_365,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(21)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(20),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_21_rt_365,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(21)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_20_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(19),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_20_rt_363,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(20)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(19),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_20_rt_363,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(20)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_19_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(18),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_19_rt_360,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(19)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(18),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_19_rt_360,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(19)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_18_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(17),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_18_rt_358,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(18)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(17),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_18_rt_358,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(18)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_17_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(16),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_17_rt_356,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(17)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(16),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_17_rt_356,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(17)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_16_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(15),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_16_rt_354,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(16)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(15),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_16_rt_354,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(16)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_15_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(14),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_15_rt_352,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(15)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(14),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_15_rt_352,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(15)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_14_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(13),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_14_rt_350,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(14)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(13),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_14_rt_350,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(14)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_13_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(12),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_13_rt_348,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(13)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(12),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_13_rt_348,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(13)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_12_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(11),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_12_rt_346,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(12)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(11),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_12_rt_346,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(12)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_11_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(10),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_11_rt_344,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(11)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(10),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_11_rt_344,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(11)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_10_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(9),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_10_rt_342,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(10)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(9),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_10_rt_342,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(10)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(8),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_9_rt_393,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(9)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(8),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_9_rt_393,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(9)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(7),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_8_rt_391,
      O => XLXI_31_FileReader_Playing_Time_addsub0000(8)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(7),
      DI => N0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_8_rt_391,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(8)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(6),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(7),
      O => XLXI_31_FileReader_Playing_Time_addsub0000(7)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(6),
      DI => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_7,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(7),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(7)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_7,
      I1 => XLXN_155(7),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(7)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(5),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(6),
      O => XLXI_31_FileReader_Playing_Time_addsub0000(6)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(5),
      DI => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_6,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(6),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(6)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_6,
      I1 => XLXN_155(6),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(6)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(4),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(5),
      O => XLXI_31_FileReader_Playing_Time_addsub0000(5)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(4),
      DI => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_5,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(5),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(5)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_5,
      I1 => XLXN_155(5),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(5)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(3),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(4),
      O => XLXI_31_FileReader_Playing_Time_addsub0000(4)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(3),
      DI => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_4,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(4),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(4)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_4,
      I1 => XLXN_155(4),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(4)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(2),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(3),
      O => XLXI_31_FileReader_Playing_Time_addsub0000(3)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(2),
      DI => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_3,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(3),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(3)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_3,
      I1 => XLXN_155(3),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(3)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(1),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(2),
      O => XLXI_31_FileReader_Playing_Time_addsub0000(2)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(1),
      DI => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_2,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(2),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(2)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_2,
      I1 => XLXN_155(2),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(2)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(0),
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(1),
      O => XLXI_31_FileReader_Playing_Time_addsub0000(1)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(0),
      DI => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_1,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(1),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(1)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_1,
      I1 => XLXN_155(1),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(1)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(0),
      O => XLXI_31_FileReader_Playing_Time_addsub0000(0)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_0,
      S => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(0),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy(0)
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_0,
      I1 => XLXN_155(0),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_lut(0)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_31_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(30),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(31),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(31)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_30_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(29),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(30),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(30)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_30_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(29),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(30),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(30)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_29_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(28),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(29),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(29)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_29_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(28),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(29),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(29)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_28_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(27),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(28),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(28)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_28_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(27),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(28),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(28)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_27_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(26),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(27),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(27)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_27_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(26),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(27),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(27)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_26_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(25),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(26),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(26)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_26_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(25),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(26),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(26)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_25_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(24),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(25),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(25)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_25_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(24),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(25),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(25)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_24_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(23),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(24),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(24)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_24_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(23),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(24),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(24)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_23_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(22),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(23),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(23)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(22),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(23),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(23)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_22_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(21),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(22),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(22)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(21),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(22),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(22)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_21_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(20),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(21),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(21)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(20),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(21),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(21)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_20_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(19),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(20),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(20)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(19),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(20),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(20)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_19_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(18),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(19),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(19)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(18),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(19),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(19)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_18_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(17),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(18),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(18)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(17),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(18),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(18)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_17_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(16),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(17),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(17)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(16),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(17),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(17)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_16_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(15),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(16),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(16)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(15),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(16),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(16)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_15_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(14),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(15),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(15)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(14),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(15),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(15)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_14_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(13),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(14),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(14)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(13),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(14),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(14)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_13_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(12),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(13),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(13)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(12),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(13),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(13)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_12_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(11),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(12),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(12)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(11),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(12),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(12)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_11_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(10),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(11),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(11)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(10),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(11),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(11)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_10_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(9),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(10),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(10)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(9),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(10),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(10)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(8),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(9),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(9)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(8),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(9),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(9)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(7),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(8),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(8)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(7),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(8),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(8)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(6),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(7),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(7)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(6),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(7),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(7)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(5),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(6),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(6)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(5),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(6),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(6)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(4),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(5),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(5)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(4),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(5),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(5)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(3),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(4),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(4)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(3),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(4),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(4)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(2),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(3),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(3)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(2),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(3),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(3)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(1),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(2),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(2)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(1),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(2),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(2)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(0),
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(1),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(1)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(0),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(1),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(1)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_0_rt_497,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(0)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_0_rt_497,
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy(0)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_31_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(30),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(31),
      O => XLXI_31_FileReader_mult0000(31)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_31_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_14,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_31,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(31)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_30_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(29),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(30),
      O => XLXI_31_FileReader_mult0000(30)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_30_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(29),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_13,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(30),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(30)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_30_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_13,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_30,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(30)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_29_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(28),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(29),
      O => XLXI_31_FileReader_mult0000(29)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_29_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(28),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_12,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(29),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(29)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_29_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_12,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_29,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(29)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_28_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(27),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(28),
      O => XLXI_31_FileReader_mult0000(28)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_28_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(27),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_11,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(28),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(28)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_28_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_11,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_28,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(28)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_27_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(26),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(27),
      O => XLXI_31_FileReader_mult0000(27)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_27_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(26),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_10,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(27),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(27)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_27_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_10,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_27,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(27)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_26_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(25),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(26),
      O => XLXI_31_FileReader_mult0000(26)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_26_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(25),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_9,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(26),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(26)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_26_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_9,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_26,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(26)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_25_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(24),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(25),
      O => XLXI_31_FileReader_mult0000(25)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_25_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(24),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_8,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(25),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(25)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_25_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_8,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_25,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(25)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_24_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(23),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(24),
      O => XLXI_31_FileReader_mult0000(24)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_24_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(23),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_7,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(24),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(24)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_24_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_7,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_24,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(24)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_23_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(22),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(23),
      O => XLXI_31_FileReader_mult0000(23)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_23_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(22),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_6,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(23),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(23)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_23_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_6,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_23,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(23)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_22_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(21),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(22),
      O => XLXI_31_FileReader_mult0000(22)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_22_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(21),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_5,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(22),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(22)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_22_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_5,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_22,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(22)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_21_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(20),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(21),
      O => XLXI_31_FileReader_mult0000(21)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_21_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(20),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_4,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(21),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(21)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_21_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_4,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_21,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(21)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_20_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(19),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(20),
      O => XLXI_31_FileReader_mult0000(20)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_20_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(19),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_3,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(20),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(20)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_20_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_3,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_20,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(20)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_19_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(18),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(19),
      O => XLXI_31_FileReader_mult0000(19)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_19_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(18),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_2,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(19),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(19)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_19_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_2,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_19,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(19)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_18_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(17),
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(18),
      O => XLXI_31_FileReader_mult0000(18)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_18_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(17),
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_1,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(18),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(18)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_18_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_1,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_18,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(18)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_xor_17_Q : XORCY
    port map (
      CI => N0,
      LI => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(17),
      O => XLXI_31_FileReader_mult0000(17)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_cy_17_Q : MUXCY
    port map (
      CI => N0,
      DI => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_0,
      S => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(17),
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_cy(17)
    );
  XLXI_31_FileReader_Mmult_mult00000_Madd_lut_17_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_0,
      I1 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_17,
      O => XLXI_31_FileReader_Mmult_mult00000_Madd_lut(17)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_31_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(30),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(31),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(31)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_30_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(29),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(30),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(30)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_30_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(29),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(30),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(30)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_29_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(28),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(29),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(29)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_29_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(28),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(29),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(29)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_28_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(27),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(28),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(28)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_28_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(27),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(28),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(28)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_27_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(26),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(27),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(27)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_27_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(26),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(27),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(27)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_26_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(25),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(26),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(26)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_26_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(25),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(26),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(26)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_25_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(24),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(25),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(25)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_25_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(24),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(25),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(25)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_24_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(23),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(24),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(24)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_24_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(23),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(24),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(24)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_23_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(22),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(23),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(23)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(22),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(23),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(23)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_22_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(21),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(22),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(22)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(21),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(22),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(22)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_21_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(20),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(21),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(21)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(20),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(21),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(21)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_20_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(19),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(20),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(20)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(19),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(20),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(20)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_19_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(18),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(19),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(19)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(18),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(19),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(19)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_18_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(17),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(18),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(18)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(17),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(18),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(18)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_17_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(16),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(17),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(17)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(16),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(17),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(17)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_16_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(15),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(16),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(16)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(15),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(16),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(16)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_15_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(14),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(15),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(15)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(14),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(15),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(15)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_14_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(13),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(14),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(14)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(13),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(14),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(14)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_13_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(12),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(13),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(13)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(12),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(13),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(13)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_12_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(11),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(12),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(12)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(11),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(12),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(12)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_11_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(10),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(11),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(11)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(10),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(11),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(11)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_10_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(9),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(10),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(10)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(9),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(10),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(10)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(8),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(9),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(9)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(8),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(9),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(9)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(7),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(8),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(8)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(7),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(8),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(8)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(6),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(7),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(7)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(6),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(7),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(7)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(5),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(6),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(6)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(5),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(6),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(6)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(4),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(5),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(5)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(4),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(5),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(5)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(3),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(4),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(4)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(3),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(4),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(4)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(2),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(3),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(3)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(2),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(3),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(3)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(1),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(2),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(2)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(1),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(2),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(2)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(0),
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(1),
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(1)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(0),
      DI => N1,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(1),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(1)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_0_rt_560,
      O => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(0)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_0_rt_560,
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy(0)
    );
  XLXI_31_FileReader_Mmult_mult00001 : MULT18X18SIO
    generic map(
      B_INPUT => "CASCADE",
      BREG => 0,
      AREG => 1,
      PREG => 0
    )
    port map (
      CEA => N1,
      CEB => N0,
      CEP => N0,
      CLK => Clk_50MHz_BUFGP_1,
      RSTA => N0,
      RSTB => N0,
      RSTP => N0,
      A(17) => XLXI_31_FileReader_Playing_Time_mux0000(0),
      A(16) => XLXI_31_FileReader_Playing_Time_mux0000(0),
      A(15) => XLXI_31_FileReader_Playing_Time_mux0000(0),
      A(14) => XLXI_31_FileReader_Playing_Time_mux0000(0),
      A(13) => XLXI_31_FileReader_Playing_Time_mux0000(1),
      A(12) => XLXI_31_FileReader_Playing_Time_mux0000(2),
      A(11) => XLXI_31_FileReader_Playing_Time_mux0000(3),
      A(10) => XLXI_31_FileReader_Playing_Time_mux0000(4),
      A(9) => XLXI_31_FileReader_Playing_Time_mux0000(5),
      A(8) => XLXI_31_FileReader_Playing_Time_mux0000(6),
      A(7) => XLXI_31_FileReader_Playing_Time_mux0000(7),
      A(6) => XLXI_31_FileReader_Playing_Time_mux0000(8),
      A(5) => XLXI_31_FileReader_Playing_Time_mux0000(9),
      A(4) => XLXI_31_FileReader_Playing_Time_mux0000(10),
      A(3) => XLXI_31_FileReader_Playing_Time_mux0000(11),
      A(2) => XLXI_31_FileReader_Playing_Time_mux0000(12),
      A(1) => XLXI_31_FileReader_Playing_Time_mux0000(13),
      A(0) => XLXI_31_FileReader_Playing_Time_mux0000(14),
      B(17) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_17_UNCONNECTED,
      B(16) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_16_UNCONNECTED,
      B(15) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_15_UNCONNECTED,
      B(14) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_14_UNCONNECTED,
      B(13) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_13_UNCONNECTED,
      B(12) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_12_UNCONNECTED,
      B(11) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_11_UNCONNECTED,
      B(10) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_10_UNCONNECTED,
      B(9) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_9_UNCONNECTED,
      B(8) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_8_UNCONNECTED,
      B(7) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_7_UNCONNECTED,
      B(6) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_6_UNCONNECTED,
      B(5) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_5_UNCONNECTED,
      B(4) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_4_UNCONNECTED,
      B(3) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_3_UNCONNECTED,
      B(2) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_2_UNCONNECTED,
      B(1) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_1_UNCONNECTED,
      B(0) => NLW_XLXI_31_FileReader_Mmult_mult00001_B_0_UNCONNECTED,
      BCIN(17) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_17,
      BCIN(16) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_16,
      BCIN(15) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_15,
      BCIN(14) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_14,
      BCIN(13) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_13,
      BCIN(12) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_12,
      BCIN(11) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_11,
      BCIN(10) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_10,
      BCIN(9) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_9,
      BCIN(8) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_8,
      BCIN(7) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_7,
      BCIN(6) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_6,
      BCIN(5) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_5,
      BCIN(4) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_4,
      BCIN(3) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_3,
      BCIN(2) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_2,
      BCIN(1) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_1,
      BCIN(0) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_0,
      P(35) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_35_UNCONNECTED,
      P(34) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_34_UNCONNECTED,
      P(33) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_33_UNCONNECTED,
      P(32) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_32_UNCONNECTED,
      P(31) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_31_UNCONNECTED,
      P(30) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_30_UNCONNECTED,
      P(29) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_29_UNCONNECTED,
      P(28) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_28_UNCONNECTED,
      P(27) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_27_UNCONNECTED,
      P(26) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_26_UNCONNECTED,
      P(25) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_25_UNCONNECTED,
      P(24) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_24_UNCONNECTED,
      P(23) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_23_UNCONNECTED,
      P(22) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_22_UNCONNECTED,
      P(21) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_21_UNCONNECTED,
      P(20) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_20_UNCONNECTED,
      P(19) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_19_UNCONNECTED,
      P(18) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_18_UNCONNECTED,
      P(17) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_17_UNCONNECTED,
      P(16) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_16_UNCONNECTED,
      P(15) => NLW_XLXI_31_FileReader_Mmult_mult00001_P_15_UNCONNECTED,
      P(14) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_14,
      P(13) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_13,
      P(12) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_12,
      P(11) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_11,
      P(10) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_10,
      P(9) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_9,
      P(8) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_8,
      P(7) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_7,
      P(6) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_6,
      P(5) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_5,
      P(4) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_4,
      P(3) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_3,
      P(2) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_2,
      P(1) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_1,
      P(0) => XLXI_31_FileReader_Mmult_mult00001_P_to_Adder_B_0,
      BCOUT(17) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_XLXI_31_FileReader_Mmult_mult00001_BCOUT_0_UNCONNECTED
    );
  XLXI_31_FileReader_Mmult_mult0000 : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 1,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => N1,
      CEB => N0,
      CEP => N0,
      CLK => Clk_50MHz_BUFGP_1,
      RSTA => N0,
      RSTB => N0,
      RSTP => N0,
      A(17) => N0,
      A(16) => XLXI_31_FileReader_Playing_Time_mux0000(15),
      A(15) => XLXI_31_FileReader_Playing_Time_mux0000(16),
      A(14) => XLXI_31_FileReader_Playing_Time_mux0000(17),
      A(13) => XLXI_31_FileReader_Playing_Time_mux0000(18),
      A(12) => XLXI_31_FileReader_Playing_Time_mux0000(19),
      A(11) => XLXI_31_FileReader_Playing_Time_mux0000(20),
      A(10) => XLXI_31_FileReader_Playing_Time_mux0000(21),
      A(9) => XLXI_31_FileReader_Playing_Time_mux0000(22),
      A(8) => XLXI_31_FileReader_Playing_Time_mux0000(23),
      A(7) => XLXI_31_FileReader_Playing_Time_mux0000(24),
      A(6) => XLXI_31_FileReader_Playing_Time_mux0000(25),
      A(5) => XLXI_31_FileReader_Playing_Time_mux0000(26),
      A(4) => XLXI_31_FileReader_Playing_Time_mux0000(27),
      A(3) => XLXI_31_FileReader_Playing_Time_mux0000(28),
      A(2) => XLXI_31_FileReader_Playing_Time_mux0000(29),
      A(1) => XLXI_31_FileReader_Playing_Time_mux0000(30),
      A(0) => XLXI_31_FileReader_Playing_Time_mux0000(31),
      B(17) => N0,
      B(16) => N0,
      B(15) => N0,
      B(14) => N0,
      B(13) => N0,
      B(12) => N0,
      B(11) => N0,
      B(10) => N0,
      B(9) => N0,
      B(8) => N0,
      B(7) => N0,
      B(6) => N0,
      B(5) => N0,
      B(4) => N0,
      B(3) => N1,
      B(2) => N0,
      B(1) => N1,
      B(0) => N0,
      BCIN(17) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_17_UNCONNECTED,
      BCIN(16) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_16_UNCONNECTED,
      BCIN(15) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_15_UNCONNECTED,
      BCIN(14) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_14_UNCONNECTED,
      BCIN(13) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_13_UNCONNECTED,
      BCIN(12) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_12_UNCONNECTED,
      BCIN(11) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_11_UNCONNECTED,
      BCIN(10) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_10_UNCONNECTED,
      BCIN(9) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_9_UNCONNECTED,
      BCIN(8) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_8_UNCONNECTED,
      BCIN(7) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_7_UNCONNECTED,
      BCIN(6) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_6_UNCONNECTED,
      BCIN(5) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_5_UNCONNECTED,
      BCIN(4) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_4_UNCONNECTED,
      BCIN(3) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_3_UNCONNECTED,
      BCIN(2) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_2_UNCONNECTED,
      BCIN(1) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_1_UNCONNECTED,
      BCIN(0) => NLW_XLXI_31_FileReader_Mmult_mult0000_BCIN_0_UNCONNECTED,
      P(35) => NLW_XLXI_31_FileReader_Mmult_mult0000_P_35_UNCONNECTED,
      P(34) => NLW_XLXI_31_FileReader_Mmult_mult0000_P_34_UNCONNECTED,
      P(33) => NLW_XLXI_31_FileReader_Mmult_mult0000_P_33_UNCONNECTED,
      P(32) => NLW_XLXI_31_FileReader_Mmult_mult0000_P_32_UNCONNECTED,
      P(31) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_31,
      P(30) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_30,
      P(29) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_29,
      P(28) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_28,
      P(27) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_27,
      P(26) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_26,
      P(25) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_25,
      P(24) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_24,
      P(23) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_23,
      P(22) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_22,
      P(21) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_21,
      P(20) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_20,
      P(19) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_19,
      P(18) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_18,
      P(17) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_17,
      P(16) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_16,
      P(15) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_15,
      P(14) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_14,
      P(13) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_13,
      P(12) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_12,
      P(11) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_11,
      P(10) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_10,
      P(9) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_9,
      P(8) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_8,
      P(7) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_7,
      P(6) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_6,
      P(5) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_5,
      P(4) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_4,
      P(3) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_3,
      P(2) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_2,
      P(1) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_1,
      P(0) => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_0,
      BCOUT(17) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_17,
      BCOUT(16) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_16,
      BCOUT(15) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_15,
      BCOUT(14) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_14,
      BCOUT(13) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_13,
      BCOUT(12) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_12,
      BCOUT(11) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_11,
      BCOUT(10) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_10,
      BCOUT(9) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_9,
      BCOUT(8) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_8,
      BCOUT(7) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_7,
      BCOUT(6) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_6,
      BCOUT(5) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_5,
      BCOUT(4) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_4,
      BCOUT(3) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_3,
      BCOUT(2) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_2,
      BCOUT(1) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_1,
      BCOUT(0) => XLXI_31_FileReader_Mmult_mult0000_BCOUT_to_Mmult_mult00001_BCIN_0
    );
  XLXI_31_FileReader_Tone_Char_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_State_cmp_eq0008,
      D => XLXN_155(7),
      Q => XLXI_31_FileReader_Tone_Char(7)
    );
  XLXI_31_FileReader_Tone_Char_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_State_cmp_eq0008,
      D => XLXN_155(6),
      Q => XLXI_31_FileReader_Tone_Char(6)
    );
  XLXI_31_FileReader_Tone_Char_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_State_cmp_eq0008,
      D => XLXN_155(5),
      Q => XLXI_31_FileReader_Tone_Char(5)
    );
  XLXI_31_FileReader_Tone_Char_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_State_cmp_eq0008,
      D => XLXN_155(4),
      Q => XLXI_31_FileReader_Tone_Char(4)
    );
  XLXI_31_FileReader_Tone_Char_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_State_cmp_eq0008,
      D => XLXN_155(3),
      Q => XLXI_31_FileReader_Tone_Char(3)
    );
  XLXI_31_FileReader_Tone_Char_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_State_cmp_eq0008,
      D => XLXN_155(2),
      Q => XLXI_31_FileReader_Tone_Char(2)
    );
  XLXI_31_FileReader_Tone_Char_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_State_cmp_eq0008,
      D => XLXN_155(1),
      Q => XLXI_31_FileReader_Tone_Char(1)
    );
  XLXI_31_FileReader_Tone_Char_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_State_cmp_eq0008,
      D => XLXN_155(0),
      Q => XLXI_31_FileReader_Tone_Char(0)
    );
  XLXI_31_FileReader_Playing_Time_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(0),
      Q => XLXI_31_FileReader_Playing_Time(31)
    );
  XLXI_31_FileReader_Playing_Time_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(1),
      Q => XLXI_31_FileReader_Playing_Time(30)
    );
  XLXI_31_FileReader_Playing_Time_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(2),
      Q => XLXI_31_FileReader_Playing_Time(29)
    );
  XLXI_31_FileReader_Playing_Time_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(3),
      Q => XLXI_31_FileReader_Playing_Time(28)
    );
  XLXI_31_FileReader_Playing_Time_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(4),
      Q => XLXI_31_FileReader_Playing_Time(27)
    );
  XLXI_31_FileReader_Playing_Time_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(5),
      Q => XLXI_31_FileReader_Playing_Time(26)
    );
  XLXI_31_FileReader_Playing_Time_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(6),
      Q => XLXI_31_FileReader_Playing_Time(25)
    );
  XLXI_31_FileReader_Playing_Time_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(7),
      Q => XLXI_31_FileReader_Playing_Time(24)
    );
  XLXI_31_FileReader_Playing_Time_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(8),
      Q => XLXI_31_FileReader_Playing_Time(23)
    );
  XLXI_31_FileReader_Playing_Time_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(9),
      Q => XLXI_31_FileReader_Playing_Time(22)
    );
  XLXI_31_FileReader_Playing_Time_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(10),
      Q => XLXI_31_FileReader_Playing_Time(21)
    );
  XLXI_31_FileReader_Playing_Time_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(11),
      Q => XLXI_31_FileReader_Playing_Time(20)
    );
  XLXI_31_FileReader_Playing_Time_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(12),
      Q => XLXI_31_FileReader_Playing_Time(19)
    );
  XLXI_31_FileReader_Playing_Time_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(13),
      Q => XLXI_31_FileReader_Playing_Time(18)
    );
  XLXI_31_FileReader_Playing_Time_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(14),
      Q => XLXI_31_FileReader_Playing_Time(17)
    );
  XLXI_31_FileReader_Playing_Time_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(15),
      Q => XLXI_31_FileReader_Playing_Time(16)
    );
  XLXI_31_FileReader_Playing_Time_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(16),
      Q => XLXI_31_FileReader_Playing_Time(15)
    );
  XLXI_31_FileReader_Playing_Time_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(17),
      Q => XLXI_31_FileReader_Playing_Time(14)
    );
  XLXI_31_FileReader_Playing_Time_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(18),
      Q => XLXI_31_FileReader_Playing_Time(13)
    );
  XLXI_31_FileReader_Playing_Time_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(19),
      Q => XLXI_31_FileReader_Playing_Time(12)
    );
  XLXI_31_FileReader_Playing_Time_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(20),
      Q => XLXI_31_FileReader_Playing_Time(11)
    );
  XLXI_31_FileReader_Playing_Time_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(21),
      Q => XLXI_31_FileReader_Playing_Time(10)
    );
  XLXI_31_FileReader_Playing_Time_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(22),
      Q => XLXI_31_FileReader_Playing_Time(9)
    );
  XLXI_31_FileReader_Playing_Time_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(23),
      Q => XLXI_31_FileReader_Playing_Time(8)
    );
  XLXI_31_FileReader_Playing_Time_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(24),
      Q => XLXI_31_FileReader_Playing_Time(7)
    );
  XLXI_31_FileReader_Playing_Time_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(25),
      Q => XLXI_31_FileReader_Playing_Time(6)
    );
  XLXI_31_FileReader_Playing_Time_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(26),
      Q => XLXI_31_FileReader_Playing_Time(5)
    );
  XLXI_31_FileReader_Playing_Time_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(27),
      Q => XLXI_31_FileReader_Playing_Time(4)
    );
  XLXI_31_FileReader_Playing_Time_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(28),
      Q => XLXI_31_FileReader_Playing_Time(3)
    );
  XLXI_31_FileReader_Playing_Time_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(29),
      Q => XLXI_31_FileReader_Playing_Time(2)
    );
  XLXI_31_FileReader_Playing_Time_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(30),
      Q => XLXI_31_FileReader_Playing_Time(1)
    );
  XLXI_31_FileReader_Playing_Time_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_mux0000(31),
      Q => XLXI_31_FileReader_Playing_Time(0)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_0_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(31)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_1_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(30)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_2_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(29)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_3_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(28)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_4_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(27)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_5_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(26)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_6_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(25)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_7_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(24)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_8_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(23)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_9_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(22)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_10_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(21)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_11_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(20)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_12_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(19)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_13_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(18)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_14_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(17)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_15_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(16)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_18_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(13)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_19_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(12)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_20_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(11)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_21_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(10)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_24_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(7)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_26_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(5)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_28_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(3)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_29_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(2)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_30_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(1)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_31_Q,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(0)
    );
  XLXI_31_FileReader_Octave_Char_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_Octave_Char_not0001,
      D => XLXN_155(7),
      Q => XLXI_31_FileReader_Octave_Char(7)
    );
  XLXI_31_FileReader_Octave_Char_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_Octave_Char_not0001,
      D => XLXN_155(6),
      Q => XLXI_31_FileReader_Octave_Char(6)
    );
  XLXI_31_FileReader_Octave_Char_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_Octave_Char_not0001,
      D => XLXN_155(5),
      Q => XLXI_31_FileReader_Octave_Char(5)
    );
  XLXI_31_FileReader_Octave_Char_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_Octave_Char_not0001,
      D => XLXN_155(4),
      Q => XLXI_31_FileReader_Octave_Char(4)
    );
  XLXI_31_FileReader_Octave_Char_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_Octave_Char_not0001,
      D => XLXN_155(3),
      Q => XLXI_31_FileReader_Octave_Char(3)
    );
  XLXI_31_FileReader_Octave_Char_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_Octave_Char_not0001,
      D => XLXN_155(2),
      Q => XLXI_31_FileReader_Octave_Char(2)
    );
  XLXI_31_FileReader_Octave_Char_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_Octave_Char_not0001,
      D => XLXN_155(1),
      Q => XLXI_31_FileReader_Octave_Char(1)
    );
  XLXI_31_FileReader_Octave_Char_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_FileReader_Octave_Char_not0001,
      D => XLXN_155(0),
      Q => XLXI_31_FileReader_Octave_Char(0)
    );
  XLXI_31_FileReader_Playing_Stop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => N1,
      R => XLXI_31_FileReader_Playing_Stop_not0001,
      Q => XLXI_31_FileReader_Playing_Stop_792
    );
  XLXI_31_XLXI_4_state_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(12),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(12)
    );
  XLXI_31_XLXI_4_state_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(11),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(11)
    );
  XLXI_31_XLXI_4_state_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(10),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(10)
    );
  XLXI_31_XLXI_4_state_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(9),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(9)
    );
  XLXI_31_XLXI_4_state_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(8),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(8)
    );
  XLXI_31_XLXI_4_state_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(7),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(7)
    );
  XLXI_31_XLXI_4_state_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(6),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(6)
    );
  XLXI_31_XLXI_4_state_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(5),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(5)
    );
  XLXI_31_XLXI_4_state_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(4),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(4)
    );
  XLXI_31_XLXI_4_state_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(3),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(3)
    );
  XLXI_31_XLXI_4_state_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(2),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(2)
    );
  XLXI_31_XLXI_4_state_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_4_next_state(1),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_4_state(1)
    );
  XLXI_31_XLXI_22_Mmux_Period_0_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Mrom_rom00008,
      I2 => XLXI_31_XLXI_22_Mrom_rom00007,
      O => XLXI_31_XLXI_22_Mmux_Period_0_8_1113
    );
  XLXI_31_XLXI_22_Mmux_Period_0_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_0_8_1113,
      I1 => XLXI_31_XLXI_22_Mmux_Period_0_7_1111,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_0_6_f5_1110
    );
  XLXI_31_XLXI_22_Mmux_Period_0_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Mrom_rom000010,
      I2 => XLXI_31_XLXI_22_Mrom_rom00009,
      O => XLXI_31_XLXI_22_Mmux_Period_0_81_1114
    );
  XLXI_31_XLXI_22_Mmux_Period_0_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_0_9_1115,
      I1 => XLXI_31_XLXI_22_Mmux_Period_0_81_1114,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_0_7_f5_1112
    );
  XLXI_31_XLXI_22_Mmux_Period_0_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_0_7_f5_1112,
      I1 => XLXI_31_XLXI_22_Mmux_Period_0_6_f5_1110,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_0_5_f6_1109
    );
  XLXI_31_XLXI_22_Mmux_Period_1_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_1_8_1188,
      I1 => XLXI_31_XLXI_22_Mmux_Period_1_7_1186,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_1_6_f5_1185
    );
  XLXI_31_XLXI_22_Mmux_Period_1_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_1_9_1190,
      I1 => XLXI_31_XLXI_22_Mmux_Period_1_81_1189,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_1_7_f5_1187
    );
  XLXI_31_XLXI_22_Mmux_Period_1_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_1_7_f5_1187,
      I1 => XLXI_31_XLXI_22_Mmux_Period_1_6_f5_1185,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_1_5_f6_1184
    );
  XLXI_31_XLXI_22_Mmux_Period_1_10 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_1_mux0001,
      I2 => N660,
      O => XLXI_31_XLXI_22_Mmux_Period_1_10_1182
    );
  XLXI_31_XLXI_22_Mmux_Period_2_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_2_8_1195,
      I1 => XLXI_31_XLXI_22_Mmux_Period_2_7_1193,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_2_6_f5_1192
    );
  XLXI_31_XLXI_22_Mmux_Period_2_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_2_9_1197,
      I1 => XLXI_31_XLXI_22_Mmux_Period_2_81_1196,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_2_7_f5_1194
    );
  XLXI_31_XLXI_22_Mmux_Period_2_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_2_7_f5_1194,
      I1 => XLXI_31_XLXI_22_Mmux_Period_2_6_f5_1192,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_2_5_f6_1191
    );
  XLXI_31_XLXI_22_Mmux_Period_3_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_3_8_1203,
      I1 => XLXI_31_XLXI_22_Mmux_Period_3_7_1201,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_3_6_f5_1200
    );
  XLXI_31_XLXI_22_Mmux_Period_3_9 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_3_mux0008,
      O => XLXI_31_XLXI_22_Mmux_Period_3_9_1205
    );
  XLXI_31_XLXI_22_Mmux_Period_3_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_3_9_1205,
      I1 => XLXI_31_XLXI_22_Mmux_Period_3_81_1204,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_3_7_f5_1202
    );
  XLXI_31_XLXI_22_Mmux_Period_3_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_3_7_f5_1202,
      I1 => XLXI_31_XLXI_22_Mmux_Period_3_6_f5_1200,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_3_5_f6_1199
    );
  XLXI_31_XLXI_22_Mmux_Period_4_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_4_8_1213,
      I1 => XLXI_31_XLXI_22_Mmux_Period_4_7_1210,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_4_6_f5_1209
    );
  XLXI_31_XLXI_22_Mmux_Period_4_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_4_7_f51_1212,
      I1 => XLXI_31_XLXI_22_Mmux_Period_4_81_1214,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_4_7_f5_1211
    );
  XLXI_31_XLXI_22_Mmux_Period_4_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_4_7_f5_1211,
      I1 => XLXI_31_XLXI_22_Mmux_Period_4_6_f5_1209,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_4_5_f6_1208
    );
  XLXI_31_XLXI_22_Mmux_Period_5_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_5_8_1221,
      I1 => XLXI_31_XLXI_22_Mmux_Period_5_7_1219,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_5_6_f5_1218
    );
  XLXI_31_XLXI_22_Mmux_Period_5_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_5_9_1223,
      I1 => XLXI_31_XLXI_22_Mmux_Period_5_81_1222,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_5_7_f5_1220
    );
  XLXI_31_XLXI_22_Mmux_Period_5_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_5_7_f5_1220,
      I1 => XLXI_31_XLXI_22_Mmux_Period_5_6_f5_1218,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_5_5_f6_1217
    );
  XLXI_31_XLXI_22_Mmux_Period_6_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_6_8_1228,
      I1 => XLXI_31_XLXI_22_Mmux_Period_6_7_1226,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_6_6_f5_1225
    );
  XLXI_31_XLXI_22_Mmux_Period_6_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_6_mux0007,
      I2 => XLXI_31_XLXI_22_Period_6_mux0006,
      O => XLXI_31_XLXI_22_Mmux_Period_6_81_1229
    );
  XLXI_31_XLXI_22_Mmux_Period_6_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_6_9_1230,
      I1 => XLXI_31_XLXI_22_Mmux_Period_6_81_1229,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_6_7_f5_1227
    );
  XLXI_31_XLXI_22_Mmux_Period_6_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_6_7_f5_1227,
      I1 => XLXI_31_XLXI_22_Mmux_Period_6_6_f5_1225,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_6_5_f6_1224
    );
  XLXI_31_XLXI_22_Mmux_Period_7_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_7_8_1238,
      I1 => XLXI_31_XLXI_22_Mmux_Period_7_7_1236,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_7_6_f5_1235
    );
  XLXI_31_XLXI_22_Mmux_Period_7_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_7_9_1240,
      I1 => XLXI_31_XLXI_22_Mmux_Period_7_81_1239,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_7_7_f5_1237
    );
  XLXI_31_XLXI_22_Mmux_Period_7_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_7_7_f5_1237,
      I1 => XLXI_31_XLXI_22_Mmux_Period_7_6_f5_1235,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_7_5_f6_1234
    );
  XLXI_31_XLXI_22_Mmux_Period_8_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_8_mux0004,
      I2 => XLXI_31_XLXI_22_Period_8_mux0003,
      O => XLXI_31_XLXI_22_Mmux_Period_8_7_1244
    );
  XLXI_31_XLXI_22_Mmux_Period_8_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_8_8_1246,
      I1 => XLXI_31_XLXI_22_Mmux_Period_8_7_1244,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_8_6_f5_1243
    );
  XLXI_31_XLXI_22_Mmux_Period_8_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_8_9_1248,
      I1 => XLXI_31_XLXI_22_Mmux_Period_8_81_1247,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_8_7_f5_1245
    );
  XLXI_31_XLXI_22_Mmux_Period_8_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_8_7_f5_1245,
      I1 => XLXI_31_XLXI_22_Mmux_Period_8_6_f5_1243,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_8_5_f6_1242
    );
  XLXI_31_XLXI_22_Mmux_Period_10_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_10_8_1121,
      I1 => XLXI_31_XLXI_22_Mmux_Period_10_7_1119,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_10_6_f5_1118
    );
  XLXI_31_XLXI_22_Mmux_Period_10_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_10_9_1123,
      I1 => XLXI_31_XLXI_22_Mmux_Period_10_81_1122,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_10_7_f5_1120
    );
  XLXI_31_XLXI_22_Mmux_Period_10_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_10_7_f5_1120,
      I1 => XLXI_31_XLXI_22_Mmux_Period_10_6_f5_1118,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_10_5_f6_1117
    );
  XLXI_31_XLXI_22_Mmux_Period_11_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_11_mux0006,
      I2 => XLXI_31_XLXI_22_Period_11_mux0005,
      O => XLXI_31_XLXI_22_Mmux_Period_11_7_1128
    );
  XLXI_31_XLXI_22_Mmux_Period_11_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_11_mux0008,
      I2 => XLXI_31_XLXI_22_Period_11_mux0007,
      O => XLXI_31_XLXI_22_Mmux_Period_11_8_1130
    );
  XLXI_31_XLXI_22_Mmux_Period_11_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_11_8_1130,
      I1 => XLXI_31_XLXI_22_Mmux_Period_11_7_1128,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_11_6_f5_1127
    );
  XLXI_31_XLXI_22_Mmux_Period_11_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_11_9_1132,
      I1 => XLXI_31_XLXI_22_Mmux_Period_11_81_1131,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_11_7_f5_1129
    );
  XLXI_31_XLXI_22_Mmux_Period_11_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_11_7_f5_1129,
      I1 => XLXI_31_XLXI_22_Mmux_Period_11_6_f5_1127,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_11_5_f6_1126
    );
  XLXI_31_XLXI_22_Mmux_Period_12_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_12_8_1137,
      I1 => XLXI_31_XLXI_22_Mmux_Period_12_7_1135,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_12_6_f5_1134
    );
  XLXI_31_XLXI_22_Mmux_Period_12_81 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_12_mux0008,
      I2 => XLXI_31_XLXI_22_Period_12_mux0009,
      O => XLXI_31_XLXI_22_Mmux_Period_12_81_1138
    );
  XLXI_31_XLXI_22_Mmux_Period_12_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_12_9_1139,
      I1 => XLXI_31_XLXI_22_Mmux_Period_12_81_1138,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_12_7_f5_1136
    );
  XLXI_31_XLXI_22_Mmux_Period_12_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_12_7_f5_1136,
      I1 => XLXI_31_XLXI_22_Mmux_Period_12_6_f5_1134,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_12_5_f6_1133
    );
  XLXI_31_XLXI_22_Mmux_Period_13_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_13_8_1145,
      I1 => XLXI_31_XLXI_22_Mmux_Period_13_7_1143,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_13_6_f5_1142
    );
  XLXI_31_XLXI_22_Mmux_Period_13_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_13_9_1147,
      I1 => XLXI_31_XLXI_22_Mmux_Period_13_81_1146,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_13_7_f5_1144
    );
  XLXI_31_XLXI_22_Mmux_Period_13_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_13_7_f5_1144,
      I1 => XLXI_31_XLXI_22_Mmux_Period_13_6_f5_1142,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_13_5_f6_1141
    );
  XLXI_31_XLXI_22_Mmux_Period_14_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_14_8_1153,
      I1 => XLXI_31_XLXI_22_Mmux_Period_14_7_1151,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_14_6_f5_1150
    );
  XLXI_31_XLXI_22_Mmux_Period_14_81 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_14_mux0009,
      I2 => XLXI_31_XLXI_22_Period_14_mux0010,
      O => XLXI_31_XLXI_22_Mmux_Period_14_81_1154
    );
  XLXI_31_XLXI_22_Mmux_Period_14_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_14_9,
      I1 => XLXI_31_XLXI_22_Mmux_Period_14_81_1154,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_14_7_f5_1152
    );
  XLXI_31_XLXI_22_Mmux_Period_14_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_14_7_f5_1152,
      I1 => XLXI_31_XLXI_22_Mmux_Period_14_6_f5_1150,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_14_5_f6_1149
    );
  XLXI_31_XLXI_22_Mmux_Period_15_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_15_8_1161,
      I1 => XLXI_31_XLXI_22_Mmux_Period_15_7_1159,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_15_6_f5_1158
    );
  XLXI_31_XLXI_22_Mmux_Period_15_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_15_9_1163,
      I1 => XLXI_31_XLXI_22_Mmux_Period_15_81_1162,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_15_7_f5_1160
    );
  XLXI_31_XLXI_22_Mmux_Period_15_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_15_7_f5_1160,
      I1 => XLXI_31_XLXI_22_Mmux_Period_15_6_f5_1158,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_15_5_f6_1157
    );
  XLXI_31_XLXI_22_Mmux_Period_16_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_16_mux0006,
      I2 => XLXI_31_XLXI_22_Period_16_mux0005,
      O => XLXI_31_XLXI_22_Mmux_Period_16_7_1167
    );
  XLXI_31_XLXI_22_Mmux_Period_16_6_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_16_8_1169,
      I1 => XLXI_31_XLXI_22_Mmux_Period_16_7_1167,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_16_6_f5_1166
    );
  XLXI_31_XLXI_22_Mmux_Period_16_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_16_9_1171,
      I1 => XLXI_31_XLXI_22_Mmux_Period_16_81_1170,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_16_7_f5_1168
    );
  XLXI_31_XLXI_22_Mmux_Period_16_5_f6 : MUXF6
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_16_7_f5_1168,
      I1 => XLXI_31_XLXI_22_Mmux_Period_16_6_f5_1166,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Mmux_Period_16_5_f6_1165
    );
  XLXI_31_XLXI_22_Mmux_Period_17_8_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_17_10_1173,
      I1 => XLXI_31_XLXI_22_Mmux_Period_17_9_1175,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_17_8_f5_1174
    );
  XLXI_31_XLXI_22_Mmux_Period_18_3 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_18_mux0003,
      I1 => XLXI_31_XLXN_371(2),
      I2 => XLXI_31_XLXN_371(1),
      I3 => XLXI_31_XLXI_22_Period_18_mux0002,
      O => XLXI_31_XLXI_22_Mmux_Period_18_3_1176
    );
  XLXI_31_XLXI_22_Mmux_Period_18_7_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_18_9_1180,
      I1 => XLXI_31_XLXI_22_Mmux_Period_18_8_1179,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_18_7_f5_1178
    );
  XLXI_31_XLXI_22_Mmux_Period_18_4 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Tone_1_1_1371,
      I2 => XLXI_31_XLXI_22_Mmux_Period_18_7_f5_1178,
      O => XLXI_31_XLXI_22_Mmux_Period_18_4_1177
    );
  XLXI_31_XLXI_22_Mmux_Period_18_2_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_18_4_1177,
      I1 => XLXI_31_XLXI_22_Mmux_Period_18_3_1176,
      S => XLXI_31_XLXN_371(3),
      O => XLXI_31_XLXN_232(18)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_26_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(25),
      DI => XLXI_31_XLXI_25_Counter_B(31),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(26),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_25_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(24),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(25),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(25)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_25_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(28),
      I1 => XLXI_31_XLXI_25_Counter_B(29),
      I2 => XLXI_31_XLXI_25_Counter_B(30),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(25)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_24_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(23),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(24),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(24)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_24_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(24),
      I1 => XLXI_31_XLXI_25_Counter_B(25),
      I2 => XLXI_31_XLXI_25_Counter_B(26),
      I3 => XLXI_31_XLXI_25_Counter_B(27),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(24)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_23_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(22),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(23),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(23)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_22_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(21),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(22),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(22)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_21_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(20),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(21),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(21)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_20_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(19),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(20),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(20)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_19_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(18),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(19),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(19)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_18_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(17),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(18),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(18)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_17_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(16),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(17),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(17)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_16_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(15),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(16),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(16)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_15_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(14),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(15),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(15)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_14_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(13),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(14),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(14)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_13_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(12),
      DI => XLXI_31_XLXN_232(21),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(13),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(13)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_13_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXN_232(21),
      I1 => XLXI_31_XLXI_25_Counter_B(13),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(13)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_12_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(11),
      DI => XLXI_31_XLXN_232(20),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(12),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(12)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_12_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(12),
      I1 => XLXI_31_XLXN_232(20),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(12)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(10),
      DI => XLXI_31_XLXN_232(19),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(11),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(11)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_11_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(11),
      I1 => XLXI_31_XLXN_232(19),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(11)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(9),
      DI => XLXI_31_XLXN_232(18),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(10),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(10)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(10),
      I1 => XLXI_31_XLXN_232(18),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(10)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(8),
      DI => XLXI_31_XLXN_232(17),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(9),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(9)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(9),
      I1 => XLXI_31_XLXN_232(17),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(9)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(7),
      DI => XLXI_31_XLXN_232(16),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(8),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(8)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(6),
      DI => XLXI_31_XLXN_232(15),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(7),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(7)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(5),
      DI => XLXI_31_XLXN_232(14),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(6),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(6)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(4),
      DI => XLXI_31_XLXN_232(13),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(5),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(5)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(3),
      DI => XLXI_31_XLXN_232(12),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(4),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(4)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(2),
      DI => XLXI_31_XLXN_232(11),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(3),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(3)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(1),
      DI => XLXI_31_XLXN_232(10),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(2),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(2)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(0),
      DI => XLXI_31_XLXN_232(9),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(1),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(1)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(1),
      I1 => XLXI_31_XLXN_232(9),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(1)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => XLXI_31_XLXN_232(8),
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(0),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_cy(0)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(0),
      I1 => XLXI_31_XLXN_232(8),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(0)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(9),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(10),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(10)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut_10_Q : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(21),
      I1 => XLXI_31_XLXI_25_Last_Period(20),
      I2 => XLXI_31_XLXN_232(21),
      I3 => XLXI_31_XLXN_232(20),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(10)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(8),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(9),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(9)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut_9_Q : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(19),
      I1 => XLXI_31_XLXI_25_Last_Period(18),
      I2 => XLXI_31_XLXN_232(19),
      I3 => XLXI_31_XLXN_232(18),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(9)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(7),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(8),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(8)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut_8_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(17),
      I1 => XLXI_31_XLXI_25_Last_Period(16),
      I2 => XLXI_31_XLXN_232(16),
      I3 => XLXI_31_XLXN_232(17),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(8)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(6),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(7),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(7)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut_7_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(15),
      I1 => XLXI_31_XLXI_25_Last_Period(14),
      I2 => XLXI_31_XLXN_232(14),
      I3 => XLXI_31_XLXN_232(15),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(7)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(5),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(6),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(6)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut_6_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(13),
      I1 => XLXI_31_XLXI_25_Last_Period(12),
      I2 => XLXI_31_XLXN_232(12),
      I3 => XLXI_31_XLXN_232(13),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(6)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(4),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(5),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(5)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut_5_Q : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(11),
      I1 => XLXI_31_XLXI_25_Last_Period(10),
      I2 => XLXI_31_XLXN_232(11),
      I3 => XLXI_31_XLXN_232(10),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(5)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(3),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(4),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(4)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut_4_Q : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(9),
      I1 => XLXI_31_XLXI_25_Last_Period(8),
      I2 => XLXI_31_XLXN_232(9),
      I3 => XLXI_31_XLXN_232(8),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(4)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(2),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(3),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(3)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut_3_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(7),
      I1 => XLXI_31_XLXI_25_Last_Period(6),
      I2 => XLXI_31_XLXN_232(6),
      I3 => XLXI_31_XLXN_232(7),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(3)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(1),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(2),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(2)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut_2_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(5),
      I1 => XLXI_31_XLXI_25_Last_Period(4),
      I2 => XLXI_31_XLXN_232(4),
      I3 => XLXI_31_XLXN_232(5),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(2)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(0),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(1),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(1)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut_1_Q : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(3),
      I1 => XLXI_31_XLXI_25_Last_Period(2),
      I2 => XLXI_31_XLXN_232(3),
      I3 => XLXI_31_XLXN_232(2),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(1)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(0),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(0)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut_0_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(1),
      I1 => XLXI_31_XLXI_25_Last_Period(0),
      I2 => XLXI_31_XLXN_232(0),
      I3 => XLXI_31_XLXN_232(1),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_lut(0)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_29_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(28),
      DI => XLXI_31_XLXI_25_Counter_A(31),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(29),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_28_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(27),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(28),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(28)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_28_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(28),
      I1 => XLXI_31_XLXI_25_Counter_A(29),
      I2 => XLXI_31_XLXI_25_Counter_A(30),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(28)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_27_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(26),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(27),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(27)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_26_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(25),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(26),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(26)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_25_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(24),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(25),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(25)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_24_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(23),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(24),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(24)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_23_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(22),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(23),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(23)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_22_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(21),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(22),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(22)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_21_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(20),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(21),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(21)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_20_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(19),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(20),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(20)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_19_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(18),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(19),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(19)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_18_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(17),
      DI => N0,
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(18),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(18)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_17_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(16),
      DI => XLXI_31_XLXN_232(21),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(17),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(17)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_17_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXN_232(21),
      I1 => XLXI_31_XLXI_25_Counter_A(17),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(17)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_16_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(15),
      DI => XLXI_31_XLXN_232(20),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(16),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(16)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_16_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(16),
      I1 => XLXI_31_XLXN_232(20),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(16)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_15_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(14),
      DI => XLXI_31_XLXN_232(19),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(15),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(15)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_15_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(15),
      I1 => XLXI_31_XLXN_232(19),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(15)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_14_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(13),
      DI => XLXI_31_XLXN_232(18),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(14),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(14)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_14_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(14),
      I1 => XLXI_31_XLXN_232(18),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(14)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_13_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(12),
      DI => XLXI_31_XLXN_232(17),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(13),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(13)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_13_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(13),
      I1 => XLXI_31_XLXN_232(17),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(13)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_12_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(11),
      DI => XLXI_31_XLXN_232(16),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(12),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(12)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_11_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(10),
      DI => XLXI_31_XLXN_232(15),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(11),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(11)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(9),
      DI => XLXI_31_XLXN_232(14),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(10),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(10)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(8),
      DI => XLXI_31_XLXN_232(13),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(9),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(9)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(7),
      DI => XLXI_31_XLXN_232(12),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(8),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(8)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(6),
      DI => XLXI_31_XLXN_232(11),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(7),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(7)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(5),
      DI => XLXI_31_XLXN_232(10),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(6),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(6)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(4),
      DI => XLXI_31_XLXN_232(9),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(5),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(5)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(5),
      I1 => XLXI_31_XLXN_232(9),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(5)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(3),
      DI => XLXI_31_XLXN_232(8),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(4),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(4)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(2),
      DI => XLXI_31_XLXN_232(7),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(3),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(3)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(1),
      DI => XLXI_31_XLXN_232(6),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(2),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(2)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(0),
      DI => XLXI_31_XLXN_232(5),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(1),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(1)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => XLXI_31_XLXN_232(4),
      S => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(0),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(0)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(0),
      I1 => XLXI_31_XLXN_232(4),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(0)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_31_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(30),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_31_rt_1726,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(31)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_30_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(29),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_30_rt_1710,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(30)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_30_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(29),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_30_rt_1710,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(30)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_29_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(28),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_29_rt_1706,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(29)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_29_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(28),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_29_rt_1706,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(29)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_28_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(27),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_28_rt_1704,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(28)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_28_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(27),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_28_rt_1704,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(28)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_27_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(26),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_27_rt_1702,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(27)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_27_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(26),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_27_rt_1702,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(27)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_26_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(25),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_26_rt_1700,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(26)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_26_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(25),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_26_rt_1700,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(26)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_25_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(24),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_25_rt_1698,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(25)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_25_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(24),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_25_rt_1698,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(25)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_24_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(23),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_24_rt_1696,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(24)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_24_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(23),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_24_rt_1696,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(24)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_23_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(22),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_23_rt_1694,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(23)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(22),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_23_rt_1694,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(23)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_22_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(21),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_22_rt_1692,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(22)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(21),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_22_rt_1692,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(22)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_21_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(20),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_21_rt_1690,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(21)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(20),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_21_rt_1690,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(21)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_20_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(19),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_20_rt_1688,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(20)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(19),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_20_rt_1688,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(20)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_19_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(18),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_19_rt_1684,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(19)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(18),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_19_rt_1684,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(19)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_18_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(17),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_18_rt_1682,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(18)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(17),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_18_rt_1682,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(18)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_17_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(16),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_17_rt_1680,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(17)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(16),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_17_rt_1680,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(17)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_16_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(15),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_16_rt_1678,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(16)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(15),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_16_rt_1678,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(16)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_15_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(14),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_15_rt_1676,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(15)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(14),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_15_rt_1676,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(15)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_14_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(13),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_14_rt_1674,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(14)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(13),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_14_rt_1674,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(14)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_13_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(12),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_13_rt_1672,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(13)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(12),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_13_rt_1672,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(13)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_12_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(11),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_12_rt_1670,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(12)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(11),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_12_rt_1670,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(12)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_11_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(10),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_11_rt_1668,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(11)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(10),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_11_rt_1668,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(11)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_10_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(9),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_10_rt_1666,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(10)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(9),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_10_rt_1666,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(10)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(8),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_9_rt_1724,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(9)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(8),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_9_rt_1724,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(9)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(7),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_8_rt_1722,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(8)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(7),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_8_rt_1722,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(8)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(6),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_7_rt_1720,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(7)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(6),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_7_rt_1720,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(7)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(5),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_6_rt_1718,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(6)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(5),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_6_rt_1718,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(6)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(4),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_5_rt_1716,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(5)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(4),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_5_rt_1716,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(5)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(3),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_4_rt_1714,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(4)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(3),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_4_rt_1714,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(4)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(2),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_3_rt_1712,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(3)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(2),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_3_rt_1712,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(3)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(1),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_2_rt_1708,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(2)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(1),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_2_rt_1708,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(2)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(0),
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_1_rt_1686,
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(1)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(0),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_1_rt_1686,
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(1)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_lut(0),
      O => XLXI_31_XLXI_25_Counter_B_addsub0000(0)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_lut(0),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy(0)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_31_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(30),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_31_rt_1663,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(31)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_30_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(29),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_30_rt_1647,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(30)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_30_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(29),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_30_rt_1647,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(30)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_29_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(28),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_29_rt_1643,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(29)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_29_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(28),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_29_rt_1643,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(29)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_28_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(27),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_28_rt_1641,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(28)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_28_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(27),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_28_rt_1641,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(28)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_27_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(26),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_27_rt_1639,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(27)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_27_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(26),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_27_rt_1639,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(27)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_26_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(25),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_26_rt_1637,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(26)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_26_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(25),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_26_rt_1637,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(26)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_25_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(24),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_25_rt_1635,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(25)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_25_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(24),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_25_rt_1635,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(25)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_24_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(23),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_24_rt_1633,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(24)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_24_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(23),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_24_rt_1633,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(24)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_23_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(22),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_23_rt_1631,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(23)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(22),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_23_rt_1631,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(23)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_22_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(21),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_22_rt_1629,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(22)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(21),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_22_rt_1629,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(22)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_21_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(20),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_21_rt_1627,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(21)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(20),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_21_rt_1627,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(21)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_20_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(19),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_20_rt_1625,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(20)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(19),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_20_rt_1625,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(20)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_19_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(18),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_19_rt_1621,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(19)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(18),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_19_rt_1621,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(19)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_18_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(17),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_18_rt_1619,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(18)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(17),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_18_rt_1619,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(18)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_17_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(16),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_17_rt_1617,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(17)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(16),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_17_rt_1617,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(17)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_16_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(15),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_16_rt_1615,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(16)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(15),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_16_rt_1615,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(16)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_15_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(14),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_15_rt_1613,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(15)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(14),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_15_rt_1613,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(15)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_14_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(13),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_14_rt_1611,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(14)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(13),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_14_rt_1611,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(14)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_13_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(12),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_13_rt_1609,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(13)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(12),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_13_rt_1609,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(13)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_12_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(11),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_12_rt_1607,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(12)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(11),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_12_rt_1607,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(12)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_11_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(10),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_11_rt_1605,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(11)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(10),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_11_rt_1605,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(11)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_10_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(9),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_10_rt_1603,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(10)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(9),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_10_rt_1603,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(10)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(8),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_9_rt_1661,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(9)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(8),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_9_rt_1661,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(9)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(7),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_8_rt_1659,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(8)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(7),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_8_rt_1659,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(8)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(6),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_7_rt_1657,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(7)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(6),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_7_rt_1657,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(7)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(5),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_6_rt_1655,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(6)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(5),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_6_rt_1655,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(6)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(4),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_5_rt_1653,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(5)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(4),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_5_rt_1653,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(5)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(3),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_4_rt_1651,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(4)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(3),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_4_rt_1651,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(4)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(2),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_3_rt_1649,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(3)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(2),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_3_rt_1649,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(3)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(1),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_2_rt_1645,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(2)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(1),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_2_rt_1645,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(2)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(0),
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_1_rt_1623,
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(1)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(0),
      DI => N0,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_1_rt_1623,
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(1)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_lut(0),
      O => XLXI_31_XLXI_25_Counter_A_addsub0000(0)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_lut(0),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy(0)
    );
  XLXI_31_XLXI_25_Counter_A_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(0),
      Q => XLXI_31_XLXI_25_Counter_A(31)
    );
  XLXI_31_XLXI_25_Counter_A_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(1),
      Q => XLXI_31_XLXI_25_Counter_A(30)
    );
  XLXI_31_XLXI_25_Counter_A_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(2),
      Q => XLXI_31_XLXI_25_Counter_A(29)
    );
  XLXI_31_XLXI_25_Counter_A_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(3),
      Q => XLXI_31_XLXI_25_Counter_A(28)
    );
  XLXI_31_XLXI_25_Counter_A_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(4),
      Q => XLXI_31_XLXI_25_Counter_A(27)
    );
  XLXI_31_XLXI_25_Counter_A_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(5),
      Q => XLXI_31_XLXI_25_Counter_A(26)
    );
  XLXI_31_XLXI_25_Counter_A_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(6),
      Q => XLXI_31_XLXI_25_Counter_A(25)
    );
  XLXI_31_XLXI_25_Counter_A_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(7),
      Q => XLXI_31_XLXI_25_Counter_A(24)
    );
  XLXI_31_XLXI_25_Counter_A_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(8),
      Q => XLXI_31_XLXI_25_Counter_A(23)
    );
  XLXI_31_XLXI_25_Counter_A_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(9),
      Q => XLXI_31_XLXI_25_Counter_A(22)
    );
  XLXI_31_XLXI_25_Counter_A_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(10),
      Q => XLXI_31_XLXI_25_Counter_A(21)
    );
  XLXI_31_XLXI_25_Counter_A_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(11),
      Q => XLXI_31_XLXI_25_Counter_A(20)
    );
  XLXI_31_XLXI_25_Counter_A_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(12),
      Q => XLXI_31_XLXI_25_Counter_A(19)
    );
  XLXI_31_XLXI_25_Counter_A_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(13),
      Q => XLXI_31_XLXI_25_Counter_A(18)
    );
  XLXI_31_XLXI_25_Counter_A_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(14),
      Q => XLXI_31_XLXI_25_Counter_A(17)
    );
  XLXI_31_XLXI_25_Counter_A_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(15),
      Q => XLXI_31_XLXI_25_Counter_A(16)
    );
  XLXI_31_XLXI_25_Counter_A_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(16),
      Q => XLXI_31_XLXI_25_Counter_A(15)
    );
  XLXI_31_XLXI_25_Counter_A_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(17),
      Q => XLXI_31_XLXI_25_Counter_A(14)
    );
  XLXI_31_XLXI_25_Counter_A_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(18),
      Q => XLXI_31_XLXI_25_Counter_A(13)
    );
  XLXI_31_XLXI_25_Counter_A_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(19),
      Q => XLXI_31_XLXI_25_Counter_A(12)
    );
  XLXI_31_XLXI_25_Counter_A_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(20),
      Q => XLXI_31_XLXI_25_Counter_A(11)
    );
  XLXI_31_XLXI_25_Counter_A_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(21),
      Q => XLXI_31_XLXI_25_Counter_A(10)
    );
  XLXI_31_XLXI_25_Counter_A_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(22),
      Q => XLXI_31_XLXI_25_Counter_A(9)
    );
  XLXI_31_XLXI_25_Counter_A_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(23),
      Q => XLXI_31_XLXI_25_Counter_A(8)
    );
  XLXI_31_XLXI_25_Counter_A_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(24),
      Q => XLXI_31_XLXI_25_Counter_A(7)
    );
  XLXI_31_XLXI_25_Counter_A_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(25),
      Q => XLXI_31_XLXI_25_Counter_A(6)
    );
  XLXI_31_XLXI_25_Counter_A_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(26),
      Q => XLXI_31_XLXI_25_Counter_A(5)
    );
  XLXI_31_XLXI_25_Counter_A_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(27),
      Q => XLXI_31_XLXI_25_Counter_A(4)
    );
  XLXI_31_XLXI_25_Counter_A_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(28),
      Q => XLXI_31_XLXI_25_Counter_A(3)
    );
  XLXI_31_XLXI_25_Counter_A_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(29),
      Q => XLXI_31_XLXI_25_Counter_A(2)
    );
  XLXI_31_XLXI_25_Counter_A_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(30),
      Q => XLXI_31_XLXI_25_Counter_A(1)
    );
  XLXI_31_XLXI_25_Counter_A_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_A_mux0001(31),
      Q => XLXI_31_XLXI_25_Counter_A(0)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(7),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_B(7)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(6),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_B(6)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(5),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_B(5)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(4),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_B(4)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(3),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_B(3)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(2),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_B(2)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(1),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_B(1)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(0),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_B(0)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_A_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_A_not0001,
      D => XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000(7),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_A(7)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_A_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_A_not0001,
      D => XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000(6),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_A(6)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_A_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_A_not0001,
      D => XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000(5),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_A(5)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_A_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_A_not0001,
      D => XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000(4),
      Q => XLXI_31_XLXI_25_Next_8b_Sample_A(4)
    );
  XLXI_31_XLXI_25_Last_Period_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(21),
      Q => XLXI_31_XLXI_25_Last_Period(21)
    );
  XLXI_31_XLXI_25_Last_Period_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(20),
      Q => XLXI_31_XLXI_25_Last_Period(20)
    );
  XLXI_31_XLXI_25_Last_Period_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(19),
      Q => XLXI_31_XLXI_25_Last_Period(19)
    );
  XLXI_31_XLXI_25_Last_Period_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(18),
      Q => XLXI_31_XLXI_25_Last_Period(18)
    );
  XLXI_31_XLXI_25_Last_Period_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(17),
      Q => XLXI_31_XLXI_25_Last_Period(17)
    );
  XLXI_31_XLXI_25_Last_Period_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(16),
      Q => XLXI_31_XLXI_25_Last_Period(16)
    );
  XLXI_31_XLXI_25_Last_Period_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(15),
      Q => XLXI_31_XLXI_25_Last_Period(15)
    );
  XLXI_31_XLXI_25_Last_Period_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(14),
      Q => XLXI_31_XLXI_25_Last_Period(14)
    );
  XLXI_31_XLXI_25_Last_Period_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(13),
      Q => XLXI_31_XLXI_25_Last_Period(13)
    );
  XLXI_31_XLXI_25_Last_Period_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(12),
      Q => XLXI_31_XLXI_25_Last_Period(12)
    );
  XLXI_31_XLXI_25_Last_Period_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(11),
      Q => XLXI_31_XLXI_25_Last_Period(11)
    );
  XLXI_31_XLXI_25_Last_Period_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(10),
      Q => XLXI_31_XLXI_25_Last_Period(10)
    );
  XLXI_31_XLXI_25_Last_Period_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(9),
      Q => XLXI_31_XLXI_25_Last_Period(9)
    );
  XLXI_31_XLXI_25_Last_Period_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(8),
      Q => XLXI_31_XLXI_25_Last_Period(8)
    );
  XLXI_31_XLXI_25_Last_Period_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(7),
      Q => XLXI_31_XLXI_25_Last_Period(7)
    );
  XLXI_31_XLXI_25_Last_Period_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(6),
      Q => XLXI_31_XLXI_25_Last_Period(6)
    );
  XLXI_31_XLXI_25_Last_Period_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(5),
      Q => XLXI_31_XLXI_25_Last_Period(5)
    );
  XLXI_31_XLXI_25_Last_Period_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(4),
      Q => XLXI_31_XLXI_25_Last_Period(4)
    );
  XLXI_31_XLXI_25_Last_Period_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(3),
      Q => XLXI_31_XLXI_25_Last_Period(3)
    );
  XLXI_31_XLXI_25_Last_Period_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(2),
      Q => XLXI_31_XLXI_25_Last_Period(2)
    );
  XLXI_31_XLXI_25_Last_Period_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(1),
      Q => XLXI_31_XLXI_25_Last_Period(1)
    );
  XLXI_31_XLXI_25_Last_Period_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV,
      D => XLXI_31_XLXN_232(0),
      Q => XLXI_31_XLXI_25_Last_Period(0)
    );
  XLXI_31_XLXI_25_Counter_B_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(0),
      Q => XLXI_31_XLXI_25_Counter_B(31)
    );
  XLXI_31_XLXI_25_Counter_B_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(1),
      Q => XLXI_31_XLXI_25_Counter_B(30)
    );
  XLXI_31_XLXI_25_Counter_B_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(2),
      Q => XLXI_31_XLXI_25_Counter_B(29)
    );
  XLXI_31_XLXI_25_Counter_B_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(3),
      Q => XLXI_31_XLXI_25_Counter_B(28)
    );
  XLXI_31_XLXI_25_Counter_B_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(4),
      Q => XLXI_31_XLXI_25_Counter_B(27)
    );
  XLXI_31_XLXI_25_Counter_B_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(5),
      Q => XLXI_31_XLXI_25_Counter_B(26)
    );
  XLXI_31_XLXI_25_Counter_B_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(6),
      Q => XLXI_31_XLXI_25_Counter_B(25)
    );
  XLXI_31_XLXI_25_Counter_B_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(7),
      Q => XLXI_31_XLXI_25_Counter_B(24)
    );
  XLXI_31_XLXI_25_Counter_B_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(8),
      Q => XLXI_31_XLXI_25_Counter_B(23)
    );
  XLXI_31_XLXI_25_Counter_B_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(9),
      Q => XLXI_31_XLXI_25_Counter_B(22)
    );
  XLXI_31_XLXI_25_Counter_B_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(10),
      Q => XLXI_31_XLXI_25_Counter_B(21)
    );
  XLXI_31_XLXI_25_Counter_B_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(11),
      Q => XLXI_31_XLXI_25_Counter_B(20)
    );
  XLXI_31_XLXI_25_Counter_B_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(12),
      Q => XLXI_31_XLXI_25_Counter_B(19)
    );
  XLXI_31_XLXI_25_Counter_B_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(13),
      Q => XLXI_31_XLXI_25_Counter_B(18)
    );
  XLXI_31_XLXI_25_Counter_B_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(14),
      Q => XLXI_31_XLXI_25_Counter_B(17)
    );
  XLXI_31_XLXI_25_Counter_B_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(15),
      Q => XLXI_31_XLXI_25_Counter_B(16)
    );
  XLXI_31_XLXI_25_Counter_B_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(16),
      Q => XLXI_31_XLXI_25_Counter_B(15)
    );
  XLXI_31_XLXI_25_Counter_B_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(17),
      Q => XLXI_31_XLXI_25_Counter_B(14)
    );
  XLXI_31_XLXI_25_Counter_B_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(18),
      Q => XLXI_31_XLXI_25_Counter_B(13)
    );
  XLXI_31_XLXI_25_Counter_B_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(19),
      Q => XLXI_31_XLXI_25_Counter_B(12)
    );
  XLXI_31_XLXI_25_Counter_B_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(20),
      Q => XLXI_31_XLXI_25_Counter_B(11)
    );
  XLXI_31_XLXI_25_Counter_B_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(21),
      Q => XLXI_31_XLXI_25_Counter_B(10)
    );
  XLXI_31_XLXI_25_Counter_B_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(22),
      Q => XLXI_31_XLXI_25_Counter_B(9)
    );
  XLXI_31_XLXI_25_Counter_B_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(23),
      Q => XLXI_31_XLXI_25_Counter_B(8)
    );
  XLXI_31_XLXI_25_Counter_B_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(24),
      Q => XLXI_31_XLXI_25_Counter_B(7)
    );
  XLXI_31_XLXI_25_Counter_B_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(25),
      Q => XLXI_31_XLXI_25_Counter_B(6)
    );
  XLXI_31_XLXI_25_Counter_B_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(26),
      Q => XLXI_31_XLXI_25_Counter_B(5)
    );
  XLXI_31_XLXI_25_Counter_B_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(27),
      Q => XLXI_31_XLXI_25_Counter_B(4)
    );
  XLXI_31_XLXI_25_Counter_B_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(28),
      Q => XLXI_31_XLXI_25_Counter_B(3)
    );
  XLXI_31_XLXI_25_Counter_B_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(29),
      Q => XLXI_31_XLXI_25_Counter_B(2)
    );
  XLXI_31_XLXI_25_Counter_B_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(30),
      Q => XLXI_31_XLXI_25_Counter_B(1)
    );
  XLXI_31_XLXI_25_Counter_B_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Counter_B_mux0002(31),
      Q => XLXI_31_XLXI_25_Counter_B(0)
    );
  XLXI_31_XLXI_25_Sample_Rdy : FDE
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Sample_Rdy_not0001,
      D => XLXI_31_XLXI_25_Sample_Rdy_mux0002,
      Q => XLXI_31_XLXI_25_Sample_Rdy_1929
    );
  XLXI_31_XLXI_25_Next_8b_Sample_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(7),
      Q => XLXI_31_XLXI_25_Next_8b_Sample(7)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(6),
      Q => XLXI_31_XLXI_25_Next_8b_Sample(6)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(5),
      Q => XLXI_31_XLXI_25_Next_8b_Sample(5)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(4),
      Q => XLXI_31_XLXI_25_Next_8b_Sample(4)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(3),
      Q => XLXI_31_XLXI_25_Next_8b_Sample(3)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(2),
      Q => XLXI_31_XLXI_25_Next_8b_Sample(2)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(1),
      Q => XLXI_31_XLXI_25_Next_8b_Sample(1)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928,
      D => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(0),
      Q => XLXI_31_XLXI_25_Next_8b_Sample(0)
    );
  XLXI_31_XLXI_27_File_Source_Selected : FDSE
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_27_File_Source_Selected_not0001,
      D => N0,
      S => XLXI_31_XLXI_27_File_Source_Selected_and0000,
      Q => XLXI_31_XLXI_27_File_Source_Selected_1932
    );
  XLXI_31_XLXI_27_state_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_118,
      D => XLXI_31_XLXI_27_next_state,
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_27_state(0)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(7),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(31),
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(8),
      O => XLXI_31_XLXI_28_Current_Oct_Num_cmp_le0000
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(6),
      DI => N0,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(7),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(7)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut_7_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(28),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(29),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(30),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(7)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(5),
      DI => N0,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(6),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(6)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(24),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(25),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(26),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(27),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(6)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(4),
      DI => N0,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(5),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(5)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(20),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(21),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(22),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(23),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(5)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(3),
      DI => N0,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(4),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(4)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(16),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(17),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(18),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(19),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(4)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(2),
      DI => N0,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(3),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(3)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(12),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(13),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(14),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(15),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(3)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(1),
      DI => N0,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(2),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(2)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(8),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(9),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(10),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(11),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(2)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(0),
      DI => N0,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(1),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(1)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(4),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(5),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(6),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(7),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(1)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(0),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_cy(0)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(0),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(1),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(2),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(3),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(0)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(7),
      DI => N0,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(8),
      O => XLXI_31_XLXI_28_Current_Oct_Num_cmp_ge0000
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(6),
      DI => N1,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(7),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(7)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut_7_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(28),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(29),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(30),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(7)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(5),
      DI => N1,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(6),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(6)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(24),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(25),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(26),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(27),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(6)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(4),
      DI => N1,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(5),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(5)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(20),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(21),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(22),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(23),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(5)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(3),
      DI => N1,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(4),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(4)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(16),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(17),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(18),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(19),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(4)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(2),
      DI => N1,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(3),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(3)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(12),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(13),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(14),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(15),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(3)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(1),
      DI => N1,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(2),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(2)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(8),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(9),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(10),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(11),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(2)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(0),
      DI => N1,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(1),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(1)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(4),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(5),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(6),
      I3 => XLXI_31_XLXI_28_Current_Oct_Num(7),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(1)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_0_rt_1994,
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy(0)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_31_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(30),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(31),
      O => XLXI_31_XLXI_28_Result(31)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_31_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(31),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(31)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_30_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(29),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(30),
      O => XLXI_31_XLXI_28_Result(30)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_30_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(29),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(30),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(30),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(30)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_30_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(30),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(30)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_29_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(28),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(29),
      O => XLXI_31_XLXI_28_Result(29)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_29_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(28),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(29),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(29),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(29)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_29_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(29),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(29)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_28_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(27),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(28),
      O => XLXI_31_XLXI_28_Result(28)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_28_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(27),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(28),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(28),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(28)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_28_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(28),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(28)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_27_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(26),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(27),
      O => XLXI_31_XLXI_28_Result(27)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_27_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(26),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(27),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(27),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(27)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_27_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(27),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(27)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_26_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(25),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(26),
      O => XLXI_31_XLXI_28_Result(26)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_26_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(25),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(26),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(26),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(26)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_26_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(26),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(26)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_25_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(24),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(25),
      O => XLXI_31_XLXI_28_Result(25)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_25_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(24),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(25),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(25),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(25)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_25_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(25),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(25)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_24_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(23),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(24),
      O => XLXI_31_XLXI_28_Result(24)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_24_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(23),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(24),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(24),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(24)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_24_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(24),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(24)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_23_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(22),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(23),
      O => XLXI_31_XLXI_28_Result(23)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_23_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(22),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(23),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(23),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(23)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_23_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(23),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(23)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_22_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(21),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(22),
      O => XLXI_31_XLXI_28_Result(22)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_22_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(21),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(22),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(22),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(22)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_22_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(22),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(22)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_21_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(20),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(21),
      O => XLXI_31_XLXI_28_Result(21)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_21_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(20),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(21),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(21),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(21)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_21_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(21),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(21)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_20_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(19),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(20),
      O => XLXI_31_XLXI_28_Result(20)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_20_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(19),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(20),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(20),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(20)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_20_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(20),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(20)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_19_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(18),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(19),
      O => XLXI_31_XLXI_28_Result(19)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_19_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(18),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(19),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(19),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(19)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_19_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(19),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(19)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_18_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(17),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(18),
      O => XLXI_31_XLXI_28_Result(18)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_18_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(17),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(18),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(18),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(18)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_18_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(18),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(18)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_17_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(16),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(17),
      O => XLXI_31_XLXI_28_Result(17)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_17_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(16),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(17),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(17),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(17)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_17_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(17),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(17)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_16_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(15),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(16),
      O => XLXI_31_XLXI_28_Result(16)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_16_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(15),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(16),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(16),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(16)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_16_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(16),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(16)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_15_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(14),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(15),
      O => XLXI_31_XLXI_28_Result(15)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_15_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(14),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(15),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(15),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(15)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_15_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(15),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(15)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_14_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(13),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(14),
      O => XLXI_31_XLXI_28_Result(14)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_14_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(13),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(14),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(14),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(14)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_14_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(14),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(14)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_13_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(12),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(13),
      O => XLXI_31_XLXI_28_Result(13)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_13_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(12),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(13),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(13),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(13)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_13_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(13),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(13)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_12_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(11),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(12),
      O => XLXI_31_XLXI_28_Result(12)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_12_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(11),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(12),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(12),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(12)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_12_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(12),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(12)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_11_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(10),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(11),
      O => XLXI_31_XLXI_28_Result(11)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_11_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(10),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(11),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(11),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(11)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(11),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(11)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_10_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(9),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(10),
      O => XLXI_31_XLXI_28_Result(10)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_10_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(9),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(10),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(10),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(10)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(10),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(10)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_9_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(8),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(9),
      O => XLXI_31_XLXI_28_Result(9)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_9_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(8),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(9),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(9),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(9)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(9),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(9)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_8_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(7),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(8),
      O => XLXI_31_XLXI_28_Result(8)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(7),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(8),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(8),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(8)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(8),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(8)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_7_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(6),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(7),
      O => XLXI_31_XLXI_28_Result(7)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(6),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(7),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(7),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(7)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(7),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(7)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_6_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(5),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(6),
      O => XLXI_31_XLXI_28_Result(6)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(5),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(6),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(6),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(6)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(6),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(6)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_5_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(4),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(5),
      O => XLXI_31_XLXI_28_Result(5)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(4),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(5),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(5),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(5)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(5),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(5)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_4_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(3),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(4),
      O => XLXI_31_XLXI_28_Result(4)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(3),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(4),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(4),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(4)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(4),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(4)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_3_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(2),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(3),
      O => XLXI_31_XLXI_28_Result(3)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(2),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(3),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(3),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(3)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(3),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(3)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_2_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(1),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(2),
      O => XLXI_31_XLXI_28_Result(2)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(1),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(2),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(2),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(2)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(2),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(2)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_1_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(0),
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(1),
      O => XLXI_31_XLXI_28_Result(1)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(0),
      DI => XLXI_31_XLXI_28_Current_Oct_Num(1),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(1),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(1)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(1),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(1)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_xor_0_Q : XORCY
    port map (
      CI => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      LI => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(0),
      O => XLXI_31_XLXI_28_Result(0)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy_0_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      DI => XLXI_31_XLXI_28_Current_Oct_Num(0),
      S => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(0),
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_cy(0)
    );
  XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(0),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv,
      O => XLXI_31_XLXI_28_Mcount_Current_Oct_Num_lut(0)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_31 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(31),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(31)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_30 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(30),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(30)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_29 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(29),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(29)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_28 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(28),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(28)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(27),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(27)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(26),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(26)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(25),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(25)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(24),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(24)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(23),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(23)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(22),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(22)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(21),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(21)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(20),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(20)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(19),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(19)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(18),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(18)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(16),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(16)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(15),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(15)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(17),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(17)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(14),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(14)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(13),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(13)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(12),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(12)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(11),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(11)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(10),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(10)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(9),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(9)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(7),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(7)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(6),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(6)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(8),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(8)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(5),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(5)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(4),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(4)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(3),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(3)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_2 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(2),
      S => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(2)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(1),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(1)
    );
  XLXI_31_XLXI_28_Current_Oct_Num_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXI_31_XLXI_28_Current_Oct_Num_not0002,
      D => XLXI_31_XLXI_28_Result(0),
      R => Reset_IBUF_313,
      Q => XLXI_31_XLXI_28_Current_Oct_Num(0)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Clk_Div_Counter(8),
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter(9),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(7),
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(10),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(0)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(0),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(0)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Clk_Div_Counter(11),
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter(12),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(6),
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(13),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(1)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(1),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(1)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Clk_Div_Counter(14),
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter(15),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(5),
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(16),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(2)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(2),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(2)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Clk_Div_Counter(17),
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter(18),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(4),
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(19),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(3)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(3),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(3)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Clk_Div_Counter(20),
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter(21),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(3),
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(22),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(4)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(4),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(4)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Clk_Div_Counter(23),
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter(24),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(2),
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(25),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(5)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(5),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(5)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Clk_Div_Counter(26),
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter(27),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(1),
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(28),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(6)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(6),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(6)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Clk_Div_Counter(29),
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter(30),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(0),
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(31),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(7)
    );
  XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000_wg_lut(7),
      O => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(0),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(0)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter(10),
      I1 => XLXI_31_FileReader_Playing_Time_Counter(11),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(8),
      I3 => XLXI_31_FileReader_Playing_Time_Counter(12),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(1)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(0),
      DI => N1,
      S => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(1),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(1)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter(13),
      I1 => XLXI_31_FileReader_Playing_Time_Counter(14),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(7),
      I3 => XLXI_31_FileReader_Playing_Time_Counter(15),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(2)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(1),
      DI => N1,
      S => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(2),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(2)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter(16),
      I1 => XLXI_31_FileReader_Playing_Time_Counter(17),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(6),
      I3 => XLXI_31_FileReader_Playing_Time_Counter(18),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(3)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(2),
      DI => N1,
      S => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(3),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(3)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter(19),
      I1 => XLXI_31_FileReader_Playing_Time_Counter(20),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(5),
      I3 => XLXI_31_FileReader_Playing_Time_Counter(21),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(4)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_cy_4_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(3),
      DI => N1,
      S => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(4),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(4)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter(22),
      I1 => XLXI_31_FileReader_Playing_Time_Counter(23),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(4),
      I3 => XLXI_31_FileReader_Playing_Time_Counter(24),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(5)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_cy_5_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(4),
      DI => N1,
      S => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(5),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(5)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter(25),
      I1 => XLXI_31_FileReader_Playing_Time_Counter(26),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(2),
      I3 => XLXI_31_FileReader_Playing_Time_Counter(27),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(6)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_cy_6_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(5),
      DI => N1,
      S => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(6),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(6)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter(28),
      I1 => XLXI_31_FileReader_Playing_Time_Counter(29),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(1),
      I3 => XLXI_31_FileReader_Playing_Time_Counter(30),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(7)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_cy_7_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(6),
      DI => N1,
      S => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(7),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(7)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_lut_8_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter(31),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter(3),
      I3 => XLXI_31_FileReader_Playing_Time_Counter(0),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(8)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_cy_8_Q : MUXCY
    port map (
      CI => XLXI_31_FileReader_Playing_Stop_not0001_wg_cy(7),
      DI => N1,
      S => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(8),
      O => XLXI_31_FileReader_Playing_Stop_not0001
    );
  XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut_0_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(7),
      I1 => XLXI_31_XLXI_25_Last_Period(3),
      I2 => XLXI_31_XLXI_25_Last_Period(5),
      O => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut(0)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut(0),
      O => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_cy(0)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(6),
      I1 => XLXI_31_XLXI_25_Last_Period(10),
      I2 => XLXI_31_XLXI_25_Last_Period(2),
      I3 => XLXI_31_XLXI_25_Last_Period(8),
      O => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut(1)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_cy(0),
      DI => N0,
      S => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut(1),
      O => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_cy(1)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(9),
      I1 => XLXI_31_XLXI_25_Last_Period(13),
      I2 => XLXI_31_XLXI_25_Last_Period(4),
      I3 => XLXI_31_XLXI_25_Last_Period(11),
      O => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut(2)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_cy(1),
      DI => N0,
      S => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut(2),
      O => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_cy(2)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(12),
      I1 => XLXI_31_XLXI_25_Last_Period(16),
      I2 => XLXI_31_XLXI_25_Last_Period(0),
      I3 => XLXI_31_XLXI_25_Last_Period(14),
      O => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut(3)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_cy(2),
      DI => N0,
      S => XLXI_31_XLXI_25_Next_8b_Sample_and0001_wg_lut(3),
      O => XLXI_31_XLXI_25_Next_8b_Sample_and00011
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(0),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(0)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy_1_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(0),
      DI => N0,
      S => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(1),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(1)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy_2_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(1),
      DI => N0,
      S => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(2),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(2)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXN_232(12),
      I1 => XLXI_31_XLXN_232(13),
      I2 => XLXI_31_XLXN_232(7),
      I3 => XLXI_31_XLXN_232(14),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(3)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy_3_Q : MUXCY
    port map (
      CI => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(2),
      DI => N0,
      S => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(3),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(3)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXN_232(0),
      I1 => XLXI_31_XLXN_232(18),
      I2 => XLXI_31_XLXN_232(6),
      I3 => XLXI_31_XLXN_232(1),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(4)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXN_232(21),
      I1 => XLXI_31_XLXN_232(19),
      I2 => XLXI_31_XLXN_232(20),
      I3 => XLXI_31_XLXN_232(3),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(5)
    );
  XLXI_31_FileReader_DI_Start1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd11_1070,
      I1 => XLXI_31_XLXI_27_File_Source_Selected_1932,
      O => XLXN_151
    );
  XLXI_31_XLXI_4_next_state_9_11 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXN_116(4),
      I1 => XLXN_116(5),
      I2 => XLXN_116(3),
      I3 => XLXI_31_XLXI_4_next_state_2_bdd0,
      O => XLXI_31_XLXI_4_next_state(9)
    );
  XLXI_31_XLXI_4_next_state_8_11 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXN_116(4),
      I1 => XLXN_116(5),
      I2 => XLXN_116(3),
      I3 => XLXI_31_XLXI_4_next_state_11_bdd4,
      O => XLXI_31_XLXI_4_next_state(8)
    );
  XLXI_31_XLXI_4_next_state_7_11 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXN_116(3),
      I1 => XLXN_116(5),
      I2 => XLXN_116(4),
      I3 => XLXI_31_XLXI_4_next_state_11_bdd4,
      O => XLXI_31_XLXI_4_next_state(7)
    );
  XLXI_31_XLXI_4_next_state_6_11 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXN_116(3),
      I1 => XLXN_116(5),
      I2 => XLXN_116(4),
      I3 => XLXI_31_XLXI_4_next_state_10_bdd4,
      O => XLXI_31_XLXI_4_next_state(6)
    );
  XLXI_31_XLXI_4_next_state_5_11 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => XLXN_116(4),
      I1 => XLXN_116(5),
      I2 => XLXN_116(3),
      I3 => XLXI_31_XLXI_4_next_state_10_bdd4,
      O => XLXI_31_XLXI_4_next_state(5)
    );
  XLXI_31_XLXI_4_next_state_4_11 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => XLXN_116(4),
      I1 => XLXN_116(5),
      I2 => XLXN_116(3),
      I3 => XLXI_31_XLXI_4_next_state_11_bdd4,
      O => XLXI_31_XLXI_4_next_state(4)
    );
  XLXI_31_XLXI_4_next_state_3_11 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXN_116(4),
      I1 => XLXN_116(3),
      I2 => XLXI_31_XLXI_4_next_state_10_bdd4,
      I3 => XLXN_116(5),
      O => XLXI_31_XLXI_4_next_state(3)
    );
  XLXI_31_XLXI_4_next_state_2_11 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXN_116(4),
      I1 => XLXN_116(3),
      I2 => XLXI_31_XLXI_4_next_state_2_bdd0,
      I3 => XLXN_116(5),
      O => XLXI_31_XLXI_4_next_state(2)
    );
  XLXI_31_XLXI_4_next_state_1_21 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXN_116(4),
      I1 => XLXN_116(3),
      I2 => XLXI_31_XLXI_4_next_state_11_bdd4,
      I3 => XLXN_116(5),
      O => XLXI_31_XLXI_4_next_state(1)
    );
  XLXI_31_XLXI_4_next_state_12_11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXN_116(5),
      I1 => XLXN_116(3),
      I2 => XLXN_116(4),
      I3 => XLXI_31_XLXI_4_next_state_10_bdd4,
      O => XLXI_31_XLXI_4_next_state(12)
    );
  XLXI_31_XLXI_4_next_state_11_31 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXN_116(5),
      I1 => XLXN_116(3),
      I2 => XLXN_116(4),
      I3 => XLXI_31_XLXI_4_next_state_11_bdd4,
      O => XLXI_31_XLXI_4_next_state(11)
    );
  XLXI_31_XLXI_4_next_state_10_21 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXN_116(4),
      I1 => XLXN_116(5),
      I2 => XLXN_116(3),
      I3 => XLXI_31_XLXI_4_next_state_10_bdd4,
      O => XLXI_31_XLXI_4_next_state(10)
    );
  XLXI_31_XLXI_4_next_state_2_2_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => XLXN_116(2),
      I1 => XLXN_116(0),
      I2 => XLXN_116(1),
      O => N2
    );
  XLXI_31_XLXI_4_next_state_2_2 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXN_119,
      I1 => XLXN_116(7),
      I2 => XLXN_116(6),
      I3 => N2,
      O => XLXI_31_XLXI_4_next_state_2_bdd0
    );
  XLXI_31_XLXI_4_next_state_11_6_SW0 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => XLXN_116(0),
      I1 => XLXN_116(1),
      I2 => XLXN_116(2),
      O => N4
    );
  XLXI_31_XLXI_4_next_state_11_6 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXN_119,
      I1 => XLXN_116(7),
      I2 => XLXN_116(6),
      I3 => N4,
      O => XLXI_31_XLXI_4_next_state_11_bdd4
    );
  XLXI_31_XLXI_4_next_state_10_5_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => XLXN_116(1),
      I1 => XLXN_116(0),
      I2 => XLXN_116(2),
      O => N6
    );
  XLXI_31_XLXI_4_next_state_10_5 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXN_119,
      I1 => XLXN_116(7),
      I2 => XLXN_116(6),
      I3 => N6,
      O => XLXI_31_XLXI_4_next_state_10_bdd4
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_0_21 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      O => XLXI_31_FileReader_N111
    );
  XLXI_31_XLXI_25_Next_8b_Sample_and000121 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(19),
      I1 => XLXI_31_XLXI_25_Last_Period(15),
      I2 => XLXI_31_XLXI_25_Last_Period(17),
      I3 => XLXI_31_XLXI_25_Last_Period(1),
      O => XLXI_31_XLXI_25_Next_8b_Sample_and00012
    );
  XLXI_31_XLXI_28_Current_Oct_Num_not000224 : LUT4
    generic map(
      INIT => X"0426"
    )
    port map (
      I0 => XLXN_116(4),
      I1 => XLXN_116(5),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num_cmp_ge0000,
      I3 => XLXI_31_XLXI_28_Current_Oct_Num_cmp_le0000,
      O => XLXI_31_XLXI_28_Current_Oct_Num_not000224_1991
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_6_11 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(5),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_B(4),
      I2 => XLXI_31_XLXI_25_N2,
      O => XLXI_31_XLXI_25_N0
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_4_11 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(1),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_B(0),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_B(3),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_B(2),
      O => XLXI_31_XLXI_25_N2
    );
  XLXI_31_FileReader_State_FSM_FFd2_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXN_153,
      I1 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      O => XLXI_31_FileReader_State_FSM_FFd2_In
    );
  XLXI_31_XLXI_27_next_state_0_mux0000_SW0 : LUT4
    generic map(
      INIT => X"AE8A"
    )
    port map (
      I0 => XLXI_31_XLXI_27_state(0),
      I1 => XLXN_116(1),
      I2 => XLXN_116(0),
      I3 => XLXN_116(3),
      O => N18
    );
  XLXI_31_XLXI_27_next_state_0_mux0000 : LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => XLXN_119,
      I1 => XLXI_31_XLXI_27_next_state_0_and0000,
      I2 => N18,
      I3 => XLXI_31_XLXI_27_state(0),
      O => XLXI_31_XLXI_27_next_state
    );
  XLXI_31_FileReader_State_cmp_eq00081 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXN_153,
      I1 => XLXI_31_FileReader_State_FSM_FFd9_1079,
      O => XLXI_31_FileReader_State_cmp_eq0008
    );
  XLXI_31_FileReader_Octave_Char_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXN_153,
      I1 => XLXI_31_FileReader_State_FSM_FFd7_1077,
      O => XLXI_31_FileReader_Octave_Char_not0001
    );
  XLXI_31_FileReader_State_FSM_Out171 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd10_1069,
      I1 => XLXI_31_FileReader_State_FSM_FFd4_1074,
      I2 => XLXI_31_FileReader_State_FSM_FFd6_1076,
      I3 => XLXI_31_FileReader_State_FSM_FFd8_1078,
      O => XLXN_152
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(22),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(22),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_9_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(23),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(23),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_8_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(24),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(24),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_7_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(25),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(25),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_6_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_31_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(0),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(0),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_31_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_30_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(1),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(1),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_30_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_29_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(2),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(2),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_29_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_28_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(3),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(3),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_28_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_26_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(5),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(5),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_26_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_24_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(7),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(7),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_24_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_21_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(10),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(10),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_21_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_20_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(11),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(11),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_20_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_19_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(12),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(12),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_19_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_18_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(13),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(13),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_18_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(16),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(16),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_15_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(17),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(17),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_14_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(18),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(18),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_13_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(19),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(19),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_12_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(20),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(20),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_11_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(21),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(21),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_10_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(26),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(26),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_5_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(27),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(27),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_4_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(28),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(28),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_3_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(29),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(29),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_2_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(30),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(30),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_1_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_0_2 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_N9,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(31),
      I2 => XLXI_31_FileReader_Playing_Clk_Div_Counter(31),
      I3 => XLXI_31_FileReader_N111,
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_0_Q
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_16_11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I1 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_N7
    );
  XLXI_31_FileReader_State_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Stop_792,
      I2 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      O => XLXI_31_FileReader_State_cmp_eq0014
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_0_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I1 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_N9
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_9_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(9),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(9),
      I3 => XLXI_31_FileReader_N11,
      O => N24
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_8_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(8),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(8),
      I3 => XLXI_31_FileReader_N11,
      O => N26
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_7_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(7),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(7),
      I3 => XLXI_31_FileReader_N11,
      O => N28
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_6_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(6),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(6),
      I3 => XLXI_31_FileReader_N11,
      O => N30
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_5_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(5),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(5),
      I3 => XLXI_31_FileReader_N11,
      O => N32
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_4_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(4),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(4),
      I3 => XLXI_31_FileReader_N11,
      O => N34
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_3_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(3),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(3),
      I3 => XLXI_31_FileReader_N11,
      O => N36
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_31_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(31),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(31),
      I3 => XLXI_31_FileReader_N11,
      O => N38
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_30_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(30),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(30),
      I3 => XLXI_31_FileReader_N11,
      O => N40
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_2_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(2),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(2),
      I3 => XLXI_31_FileReader_N11,
      O => N42
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_29_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(29),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(29),
      I3 => XLXI_31_FileReader_N11,
      O => N44
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_28_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(28),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(28),
      I3 => XLXI_31_FileReader_N11,
      O => N46
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_27_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(27),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(27),
      I3 => XLXI_31_FileReader_N11,
      O => N48
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_26_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(26),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(26),
      I3 => XLXI_31_FileReader_N11,
      O => N50
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_25_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(25),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(25),
      I3 => XLXI_31_FileReader_N11,
      O => N52
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_24_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(24),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(24),
      I3 => XLXI_31_FileReader_N11,
      O => N54
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_23_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(23),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(23),
      I3 => XLXI_31_FileReader_N11,
      O => N56
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_22_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(22),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(22),
      I3 => XLXI_31_FileReader_N11,
      O => N58
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_21_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(21),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(21),
      I3 => XLXI_31_FileReader_N11,
      O => N60
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_20_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(20),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(20),
      I3 => XLXI_31_FileReader_N11,
      O => N62
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_1_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(1),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(1),
      I3 => XLXI_31_FileReader_N11,
      O => N64
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_19_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(19),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(19),
      I3 => XLXI_31_FileReader_N11,
      O => N66
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_18_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(18),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(18),
      I3 => XLXI_31_FileReader_N11,
      O => N68
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_17_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(17),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(17),
      I3 => XLXI_31_FileReader_N11,
      O => N70
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_16_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(16),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(16),
      I3 => XLXI_31_FileReader_N11,
      O => N72
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_15_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(15),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(15),
      I3 => XLXI_31_FileReader_N11,
      O => N74
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_14_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(14),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(14),
      I3 => XLXI_31_FileReader_N11,
      O => N76
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_13_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(13),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(13),
      I3 => XLXI_31_FileReader_N11,
      O => N78
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_12_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(12),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(12),
      I3 => XLXI_31_FileReader_N11,
      O => N80
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_11_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(11),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(11),
      I3 => XLXI_31_FileReader_N11,
      O => N82
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_10_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(10),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(10),
      I3 => XLXI_31_FileReader_N11,
      O => N84
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_0_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I1 => XLXI_31_FileReader_Playing_Time(0),
      I2 => XLXI_31_FileReader_Playing_Time_Counter(0),
      I3 => XLXI_31_FileReader_N11,
      O => N86
    );
  XLXI_31_FileReader_Msub_Playing_Time_sub0000_cy_6_11 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXN_155(6),
      I1 => XLXN_155(5),
      I2 => XLXN_155(4),
      O => XLXI_31_FileReader_Msub_Playing_Time_sub0000_cy(6)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_24_21 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXN_153,
      I1 => XLXI_31_FileReader_State_FSM_FFd5_1075,
      O => XLXI_31_FileReader_State_cmp_eq0012
    );
  XLXI_31_XLXI_28_Current_Oct_Num_not000211 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => XLXN_116(7),
      I1 => XLXN_116(3),
      I2 => XLXN_116(6),
      I3 => N2,
      O => XLXI_31_XLXI_28_N11
    );
  XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv2 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_XLXI_28_N11,
      I1 => XLXN_116(4),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num_cmp_le0000,
      I3 => XLXN_116(5),
      O => XLXI_31_XLXI_28_Current_Oct_Num_not0003_inv
    );
  XLXI_31_FileReader_Playing_Time_mux0000_24_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXN_153,
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      O => XLXI_31_FileReader_Playing_Time_mux0000_0_5
    );
  XLXI_31_FileReader_State_FSM_FFd10_In1 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => XLXN_154,
      I1 => XLXI_31_FileReader_State_FSM_FFd11_1070,
      I2 => XLXI_31_FileReader_Playing_Stop_792,
      I3 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      O => XLXI_31_FileReader_State_cmp_eq0006
    );
  XLXI_31_FileReader_Playing_Time_mux0000_31_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_cmp_eq0012,
      I1 => XLXN_155(0),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      I3 => XLXI_31_FileReader_Playing_Time_addsub0000(0),
      O => N90
    );
  XLXI_31_FileReader_Playing_Time_mux0000_31_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N90,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(0),
      O => XLXI_31_FileReader_Playing_Time_mux0000(31)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_30_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_cmp_eq0012,
      I1 => XLXN_155(1),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      I3 => XLXI_31_FileReader_Playing_Time_addsub0000(1),
      O => N92
    );
  XLXI_31_FileReader_Playing_Time_mux0000_30_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N92,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(1),
      O => XLXI_31_FileReader_Playing_Time_mux0000(30)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_29_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_cmp_eq0012,
      I1 => XLXN_155(2),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      I3 => XLXI_31_FileReader_Playing_Time_addsub0000(2),
      O => N94
    );
  XLXI_31_FileReader_Playing_Time_mux0000_29_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N94,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(2),
      O => XLXI_31_FileReader_Playing_Time_mux0000(29)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_28_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_FileReader_State_cmp_eq0012,
      I1 => XLXN_155(3),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      I3 => XLXI_31_FileReader_Playing_Time_addsub0000(3),
      O => N96
    );
  XLXI_31_FileReader_Playing_Time_mux0000_28_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N96,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(3),
      O => XLXI_31_FileReader_Playing_Time_mux0000(28)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_27_SW0 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => XLXN_155(4),
      I1 => XLXI_31_FileReader_State_cmp_eq0012,
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      I3 => XLXI_31_FileReader_Playing_Time_addsub0001(4),
      O => N98
    );
  XLXI_31_FileReader_Playing_Time_mux0000_27_Q : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N98,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(4),
      O => XLXI_31_FileReader_Playing_Time_mux0000(27)
    );
  XLXI_31_FileReader_State_FSM_FFd11_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXN_154,
      I1 => XLXI_31_FileReader_State_FSM_FFd11_1070,
      O => XLXI_31_FileReader_State_cmp_eq0005
    );
  XLXI_31_FileReader_Playing_Time_mux0000_0_1_SW0 : LUT4
    generic map(
      INIT => X"F727"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd5_1075,
      I1 => XLXN_153,
      I2 => XLXI_31_FileReader_State_FSM_FFd11_1070,
      I3 => XLXI_31_XLXI_27_File_Source_Selected_1932,
      O => N100
    );
  XLXI_31_FileReader_Playing_Time_mux0000_25_27 : LUT4
    generic map(
      INIT => X"820A"
    )
    port map (
      I0 => XLXI_31_FileReader_State_cmp_eq0012,
      I1 => XLXN_155(5),
      I2 => XLXN_155(6),
      I3 => XLXN_155(4),
      O => XLXI_31_FileReader_Playing_Time_mux0000_25_27_1044
    );
  XLXI_31_FileReader_Playing_Time_and0000110 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd8_1078,
      I1 => XLXI_31_FileReader_State_FSM_FFd7_1077,
      I2 => XLXI_31_FileReader_State_FSM_FFd6_1076,
      I3 => XLXI_31_FileReader_State_FSM_FFd4_1074,
      O => XLXI_31_FileReader_Playing_Time_and0000110_1015
    );
  XLXI_31_FileReader_Playing_Time_mux0000_13_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_13_2_1028,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(18),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(13)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_12_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_12_2_1026,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(19),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(12)
    );
  XLXI_31_XLXI_4_Tone_DUMMY_3_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(12),
      I1 => XLXI_31_XLXI_4_state(8),
      O => N103
    );
  XLXI_31_XLXI_4_Tone_DUMMY_3_Q : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(9),
      I1 => XLXI_31_XLXI_4_state(11),
      I2 => XLXI_31_XLXI_4_state(10),
      I3 => N103,
      O => Tone_3_OBUF_339
    );
  XLXI_31_XLXI_22_Mrom_rom000071 : LUT4
    generic map(
      INIT => X"0900"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXN_373(2),
      O => XLXI_31_XLXI_22_Mrom_rom00007
    );
  XLXI_31_XLXI_22_Mrom_rom0000101 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(2),
      O => XLXI_31_XLXI_22_Mrom_rom000010
    );
  XLXI_31_XLXI_22_Mrom_rom000083 : LUT4
    generic map(
      INIT => X"1445"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(1),
      I3 => XLXI_31_XLXN_373(2),
      O => XLXI_31_XLXI_22_Mrom_rom00008
    );
  XLXI_31_FileReader_Playing_Time_mux0000_11_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_11_2_1024,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(20),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(11)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_10_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_10_2_1022,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(21),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(10)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_9_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_9_2_1067,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(22),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(9)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_8_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_8_2_1065,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(23),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(8)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_7_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_7_2_1063,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(24),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(7)
    );
  XLXI_31_XLXI_4_Tone_DUMMY_2_Q : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(7),
      I1 => XLXI_31_XLXI_4_state(5),
      I2 => XLXI_31_XLXI_4_state(6),
      I3 => N105,
      O => Tone_2_OBUF_338
    );
  XLXI_31_FileReader_Playing_Time_mux0000_6_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_6_2_1061,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(25),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(6)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_5_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_5_2_1059,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(26),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(5)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_4_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_4_2_1057,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(27),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(4)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_3_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_3_2_1055,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(28),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(3)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_2_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_2_2_1051,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(29),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(2)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_1_10 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_1_2_1036,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(30),
      I2 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      O => XLXI_31_FileReader_Playing_Time_mux0000(1)
    );
  XLXI_31_XLXI_22_Mmux_Period_21_3 : LUT4
    generic map(
      INIT => X"2300"
    )
    port map (
      I0 => XLXI_31_XLXN_371(1),
      I1 => XLXI_31_XLXN_371(3),
      I2 => N107,
      I3 => XLXI_31_XLXI_22_Period_21_mux0000,
      O => XLXI_31_XLXN_232(21)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_0_2 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => N675,
      I2 => XLXI_31_FileReader_Playing_Time(31),
      O => XLXI_31_FileReader_Playing_Time_mux0000_0_2_1019
    );
  XLXI_31_FileReader_Playing_Time_mux0000_0_10 : LUT3
    generic map(
      INIT => X"EC"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_0_5,
      I1 => XLXI_31_FileReader_Playing_Time_mux0000_0_2_1019,
      I2 => XLXI_31_FileReader_Playing_Time_addsub0001(31),
      O => XLXI_31_FileReader_Playing_Time_mux0000(0)
    );
  XLXI_31_XLXI_27_Tone_DUMMY_3_22 : LUT4
    generic map(
      INIT => X"0282"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(3),
      I1 => XLXI_31_FileReader_Tone_Char(4),
      I2 => XLXI_31_FileReader_Tone_Char(0),
      I3 => XLXI_31_FileReader_Tone_Char(1),
      O => XLXI_31_XLXI_27_Tone_DUMMY_3_22_1949
    );
  XLXI_31_XLXI_4_Tone_DUMMY_1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(2),
      I1 => XLXI_31_XLXI_4_state(6),
      I2 => XLXI_31_XLXI_4_state(10),
      O => N111
    );
  XLXI_31_XLXI_4_Tone_DUMMY_1_Q : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(7),
      I1 => XLXI_31_XLXI_4_state(11),
      I2 => XLXI_31_XLXI_4_state(3),
      I3 => N111,
      O => Tone_1_OBUF_337
    );
  XLXI_31_XLXI_22_Tone_3_1593 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Tone_3_1540_1380,
      I2 => XLXI_31_XLXI_22_Tone_3_1554_1381,
      I3 => XLXI_31_XLXI_22_Mmux_Period_0_5_f6_1109,
      O => XLXI_31_XLXN_232(0)
    );
  XLXI_31_XLXI_4_Tone_DUMMY_0_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(11),
      I1 => XLXI_31_XLXI_4_state(3),
      I2 => XLXI_31_XLXI_4_state(1),
      O => N119
    );
  XLXI_31_XLXI_4_Tone_DUMMY_0_Q : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(9),
      I1 => XLXI_31_XLXI_4_state(7),
      I2 => XLXI_31_XLXI_4_state(5),
      I3 => N119,
      O => Tone_0_OBUF_336
    );
  XLXI_31_XLXI_27_Tone_DUMMY_2_14 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(4),
      I1 => XLXI_31_FileReader_Tone_Char(3),
      I2 => XLXI_31_FileReader_N19,
      I3 => XLXI_31_XLXI_27_Tone_DUMMY_2_5_1948,
      O => XLXI_31_XLXI_27_Tone_DUMMY_2_14_1945
    );
  XLXI_31_XLXI_27_Tone_DUMMY_2_39 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(2),
      I1 => XLXI_31_FileReader_Tone_Char(3),
      O => XLXI_31_XLXI_27_Tone_DUMMY_2_39_1946
    );
  XLXI_31_XLXI_22_Period_2_mux00071 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_6_mux0007,
      I1 => XLXI_31_XLXI_22_Period_19_mux0001,
      I2 => XLXI_31_XLXI_22_Period_2_mux000111_1343,
      O => XLXI_31_XLXI_22_Period_2_mux0007
    );
  XLXI_31_XLXI_22_Period_2_mux00051 : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXI_22_N69,
      I2 => XLXI_31_XLXI_22_N67,
      I3 => N626,
      O => XLXI_31_XLXI_22_Period_2_mux0005
    );
  XLXI_31_XLXI_22_Period_13_mux000011 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(1),
      O => XLXI_31_XLXI_22_N10
    );
  XLXI_31_XLXI_22_Mmux_Period_19_35 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_19_35_1181
    );
  XLXI_31_XLXI_22_Period_16_mux00101 : LUT4
    generic map(
      INIT => X"7200"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Period_16_mux0010
    );
  XLXI_31_FileReader_Tone_and00001 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(7),
      I1 => XLXI_31_FileReader_Tone_Char(6),
      I2 => XLXI_31_FileReader_Tone_Char(5),
      O => XLXI_31_FileReader_Tone_and0000
    );
  XLXI_31_XLXI_22_Period_13_mux00011 : LUT4
    generic map(
      INIT => X"8D00"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Period_13_mux0001
    );
  XLXI_31_XLXI_27_Tone_DUMMY_1_15 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(4),
      I1 => XLXI_31_FileReader_Tone_Char(3),
      I2 => XLXI_31_FileReader_N19,
      I3 => XLXI_31_XLXI_27_Tone_DUMMY_1_6_1944,
      O => XLXI_31_XLXI_27_Tone_DUMMY_1_15_1942
    );
  XLXI_31_XLXI_27_Tone_DUMMY_1_56 : LUT4
    generic map(
      INIT => X"CA20"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(2),
      I1 => XLXI_31_FileReader_Tone_Char(0),
      I2 => XLXI_31_FileReader_Tone_Char(1),
      I3 => XLXI_31_FileReader_Tone_Char(4),
      O => XLXI_31_XLXI_27_Tone_DUMMY_1_56_1943
    );
  XLXI_31_XLXI_27_Tone_DUMMY_0_48 : LUT4
    generic map(
      INIT => X"2900"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(4),
      I1 => XLXI_31_FileReader_Tone_Char(1),
      I2 => XLXI_31_FileReader_Tone_Char(3),
      I3 => XLXI_31_XLXI_27_Tone_DUMMY_0_37_1937,
      O => XLXI_31_XLXI_27_Tone_DUMMY_0_48_1938
    );
  XLXI_31_XLXI_27_Tone_DUMMY_0_56 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(0),
      I1 => XLXI_31_FileReader_Tone_Char(4),
      O => XLXI_31_XLXI_27_Tone_DUMMY_0_56_1939
    );
  XLXI_31_XLXI_27_Tone_DUMMY_0_101 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => XLXI_31_XLXI_27_Tone_DUMMY_0_84_1941,
      I1 => XLXI_31_XLXI_27_Tone_DUMMY_0_48_1938,
      I2 => XLXI_31_XLXI_27_Tone_DUMMY_0_2_1936,
      I3 => N663,
      O => XLXI_31_XLXN_371(0)
    );
  XLXI_31_XLXI_22_Period_15_mux00101 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N643,
      I2 => XLXI_31_XLXI_22_Period_18_mux0006,
      I3 => XLXI_31_XLXI_22_N7,
      O => XLXI_31_XLXI_22_Period_15_mux0010
    );
  XLXI_31_XLXI_22_Period_12_mux000011 : LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N39,
      O => XLXI_31_XLXI_22_N62
    );
  XLXI_31_XLXI_22_Period_14_mux00061 : LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXI_22_Period_18_mux0006,
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N67,
      O => XLXI_31_XLXI_22_Period_14_mux0006
    );
  XLXI_31_XLXI_22_Period_12_mux000221 : LUT4
    generic map(
      INIT => X"2202"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(3),
      I3 => N629,
      O => XLXI_31_XLXI_22_Period_3_mux0008
    );
  XLXI_31_XLXI_22_Period_8_mux00031 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => XLXI_31_XLXI_22_N64,
      I1 => N658,
      I2 => XLXI_31_XLXI_22_N67,
      O => XLXI_31_XLXI_22_Period_8_mux0003
    );
  XLXI_31_XLXI_22_Tone_3_1328 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Mmux_Period_2_5_f6_1191,
      I2 => XLXI_31_XLXI_22_Tone_3_1313_1378,
      O => XLXI_31_XLXN_232(2)
    );
  XLXI_31_XLXI_22_Tone_3_125 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => N673,
      I2 => XLXI_31_XLXI_22_N67,
      I3 => XLXI_31_XLXI_22_N14,
      O => XLXI_31_XLXI_22_Tone_3_125_1375
    );
  XLXI_31_XLXI_22_Tone_3_1229 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Tone_3_125_1375,
      I2 => XLXI_31_XLXI_22_Tone_3_128_1376,
      I3 => XLXI_31_XLXI_22_Mmux_Period_3_5_f6_1199,
      O => XLXI_31_XLXN_232(3)
    );
  XLXI_31_XLXI_22_Period_15_mux000411 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => N639,
      O => XLXI_31_XLXI_22_N7
    );
  XLXI_31_XLXI_22_Tone_3_14 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Mmux_Period_1_5_f6_1184,
      I2 => N138,
      O => XLXI_31_XLXN_232(1)
    );
  XLXI_31_XLXI_22_Period_10_mux00061 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => XLXI_31_XLXI_22_N26,
      I1 => XLXI_31_XLXI_22_Period_15_mux0005,
      I2 => N634,
      O => XLXI_31_XLXI_22_Period_10_mux0006
    );
  XLXI_31_XLXI_22_Period_6_mux00011 : LUT4
    generic map(
      INIT => X"FCB0"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXI_22_N69,
      I3 => XLXI_31_XLXI_22_N67,
      O => XLXI_31_XLXI_22_Period_6_mux0001
    );
  XLXI_31_XLXI_22_Period_7_mux00031 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXI_22_Period_1_mux0001,
      I2 => XLXI_31_XLXI_22_N67,
      I3 => XLXI_31_XLXI_22_N26,
      O => XLXI_31_XLXI_22_Period_7_mux0003
    );
  XLXI_31_XLXI_22_Period_13_mux00041 : LUT4
    generic map(
      INIT => X"FEDC"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXI_22_Period_1_mux0001,
      I2 => XLXI_31_XLXI_22_N69,
      I3 => N652,
      O => XLXI_31_XLXI_22_Period_13_mux0004
    );
  XLXI_31_XLXI_22_Period_14_mux00101 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_16_mux0006,
      I1 => XLXI_31_XLXI_22_N52,
      I2 => XLXI_31_XLXI_22_Period_19_mux0001,
      I3 => N642,
      O => XLXI_31_XLXI_22_Period_14_mux0010
    );
  XLXI_31_XLXI_22_Period_21_and0000 : LUT4
    generic map(
      INIT => X"F0F1"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(6),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(7),
      I2 => XLXI_31_XLXI_27_state(0),
      I3 => N627,
      O => XLXI_31_XLXI_22_Period_21_and0000_1340
    );
  XLXI_31_XLXI_22_Period_11_mux00101 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => N644,
      I1 => XLXI_31_XLXI_22_N26,
      I2 => XLXI_31_XLXI_22_Period_21_mux0000,
      I3 => XLXI_31_XLXI_22_Period_20_mux0000,
      O => XLXI_31_XLXI_22_Period_11_mux0010
    );
  XLXI_31_XLXI_22_Tone_1_11 : LUT4
    generic map(
      INIT => X"E2C0"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXN_371(1),
      I2 => N148,
      I3 => XLXI_31_XLXI_22_Period_17_mux0000,
      O => XLXI_31_XLXI_22_Tone_1_2
    );
  XLXI_31_XLXI_22_Tone_1_1 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(1),
      I1 => XLXI_31_XLXI_22_Period_21_mux0000,
      I2 => N150,
      I3 => XLXI_31_XLXI_22_Period_17_mux0003,
      O => XLXI_31_XLXI_22_Tone_1_11_1372
    );
  XLXI_31_XLXI_22_Tone_3_2 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => N628,
      I2 => XLXI_31_XLXI_22_Mmux_Period_14_5_f6_1149,
      O => XLXI_31_XLXN_232(14)
    );
  XLXI_31_XLXI_22_Tone_3_3 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => N631,
      I2 => XLXI_31_XLXI_22_Mmux_Period_13_5_f6_1141,
      O => XLXI_31_XLXN_232(13)
    );
  XLXI_31_XLXI_22_Tone_3_428 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => N632,
      I2 => XLXI_31_XLXI_22_Mmux_Period_12_5_f6_1133,
      O => XLXI_31_XLXN_232(12)
    );
  XLXI_31_XLXI_22_Tone_3_928 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Mmux_Period_6_5_f6_1224,
      I2 => N633,
      O => XLXI_31_XLXN_232(6)
    );
  XLXI_31_XLXI_22_Mrom_rom000011121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_27_Octave_DUMMY(1),
      I1 => XLXI_31_XLXN_373(3),
      O => XLXI_31_XLXI_22_N44
    );
  XLXI_31_XLXI_22_Period_6_mux00071 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXI_22_N32,
      O => XLXI_31_XLXI_22_Period_6_mux0007
    );
  XLXI_31_XLXI_22_Tone_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Mmux_Period_15_5_f6_1157,
      I2 => N636,
      O => XLXI_31_XLXN_232(15)
    );
  XLXI_31_XLXI_22_Tone_3_527 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Tone_3_519_1384,
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Mmux_Period_11_5_f6_1126,
      O => XLXI_31_XLXN_232(11)
    );
  XLXI_31_XLXI_22_Tone_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Mmux_Period_16_5_f6_1165,
      I2 => N163,
      O => XLXI_31_XLXN_232(16)
    );
  XLXI_31_XLXI_27_Octave_DUMMY_0_Q : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(0),
      I1 => XLXI_31_XLXI_27_state(0),
      I2 => N165,
      I3 => XLXI_31_FileReader_Octave_and0000,
      O => XLXI_31_XLXN_373(0)
    );
  XLXI_31_XLXI_22_Tone_3_727 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Mmux_Period_8_5_f6_1242,
      I2 => XLXI_31_XLXI_22_Tone_3_719_1385,
      O => XLXI_31_XLXN_232(8)
    );
  XLXI_31_XLXI_27_Octave_DUMMY_2_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => XLXI_31_FileReader_Octave_Char(2),
      I1 => XLXI_31_FileReader_Octave_Char(3),
      O => N169
    );
  XLXI_31_XLXI_27_Octave_DUMMY_2_Q : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(2),
      I1 => XLXI_31_XLXI_27_state(0),
      I2 => N169,
      I3 => N645,
      O => XLXI_31_XLXN_373(2)
    );
  XLXI_31_XLXI_22_Tone_3_1027 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Tone_3_1019_1374,
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Mmux_Period_5_5_f6_1217,
      O => XLXI_31_XLXN_232(5)
    );
  XLXI_31_XLXI_22_Tone_3_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Mmux_Period_10_5_f6_1117,
      I2 => N654,
      O => XLXI_31_XLXN_232(10)
    );
  XLXI_31_XLXI_22_Tone_3_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Mmux_Period_4_5_f6_1208,
      I2 => N175,
      O => XLXI_31_XLXN_232(4)
    );
  XLXI_31_XLXI_22_Tone_3_8 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => N181,
      I2 => XLXI_31_XLXI_22_Mmux_Period_7_5_f6_1234,
      O => XLXI_31_XLXN_232(7)
    );
  SPI_MISO_IBUF : IBUF
    port map (
      I => SPI_MISO,
      O => SPI_MISO_IBUF_323
    );
  PS2_Clk_IBUF : IBUF
    port map (
      I => PS2_Clk,
      O => PS2_Clk_IBUF_309
    );
  PS2_Data_IBUF : IBUF
    port map (
      I => PS2_Data,
      O => PS2_Data_IBUF_311
    );
  Reset_IBUF : IBUF
    port map (
      I => Reset,
      O => Reset_IBUF_313
    );
  SDC_MISO_IBUF : IBUF
    port map (
      I => SDC_MISO,
      O => SDC_MISO_IBUF_315
    );
  SDC_MOSI_OBUF : OBUF
    port map (
      I => SDC_MOSI_OBUF_317,
      O => SDC_MOSI
    );
  DAC_CLR_OBUF : OBUF
    port map (
      I => DAC_CLR_OBUF_3,
      O => DAC_CLR
    );
  DAC_CS_OBUF : OBUF
    port map (
      I => DAC_CS_OBUF_5,
      O => DAC_CS
    );
  SDC_SS_OBUF : OBUF
    port map (
      I => SDC_SS_OBUF_321,
      O => SDC_SS
    );
  SPI_SCK_OBUF : OBUF
    port map (
      I => SPI_SCK_OBUF_327,
      O => SPI_SCK
    );
  SPI_MOSI_OBUF : OBUF
    port map (
      I => SPI_MOSI_OBUF_325,
      O => SPI_MOSI
    );
  SDC_SCK_OBUF : OBUF
    port map (
      I => SDC_SCK_OBUF_319,
      O => SDC_SCK
    );
  Tone_7_OBUF : OBUF
    port map (
      I => N0,
      O => Tone(7)
    );
  Tone_6_OBUF : OBUF
    port map (
      I => N0,
      O => Tone(6)
    );
  Tone_5_OBUF : OBUF
    port map (
      I => N0,
      O => Tone(5)
    );
  Tone_4_OBUF : OBUF
    port map (
      I => N0,
      O => Tone(4)
    );
  Tone_3_OBUF : OBUF
    port map (
      I => Tone_3_OBUF_339,
      O => Tone(3)
    );
  Tone_2_OBUF : OBUF
    port map (
      I => Tone_2_OBUF_338,
      O => Tone(2)
    );
  Tone_1_OBUF : OBUF
    port map (
      I => Tone_1_OBUF_337,
      O => Tone(1)
    );
  Tone_0_OBUF : OBUF
    port map (
      I => Tone_0_OBUF_336,
      O => Tone(0)
    );
  Octave_7_OBUF : OBUF
    port map (
      I => XLXI_31_XLXI_28_Current_Oct_Num(7),
      O => Octave(7)
    );
  Octave_6_OBUF : OBUF
    port map (
      I => XLXI_31_XLXI_28_Current_Oct_Num(6),
      O => Octave(6)
    );
  Octave_5_OBUF : OBUF
    port map (
      I => XLXI_31_XLXI_28_Current_Oct_Num(5),
      O => Octave(5)
    );
  Octave_4_OBUF : OBUF
    port map (
      I => XLXI_31_XLXI_28_Current_Oct_Num(4),
      O => Octave(4)
    );
  Octave_3_OBUF : OBUF
    port map (
      I => XLXI_31_XLXI_28_Current_Oct_Num(3),
      O => Octave(3)
    );
  Octave_2_OBUF : OBUF
    port map (
      I => XLXI_31_XLXI_28_Current_Oct_Num(2),
      O => Octave(2)
    );
  Octave_1_OBUF : OBUF
    port map (
      I => XLXI_31_XLXI_28_Current_Oct_Num(1),
      O => Octave(1)
    );
  Octave_0_OBUF : OBUF
    port map (
      I => XLXI_31_XLXI_28_Current_Oct_Num(0),
      O => Octave(0)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_15 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_16_1_767,
      S => XLXI_31_FileReader_N7,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(15)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_14 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_17_1_768,
      S => XLXI_31_FileReader_N7,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(14)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_9 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_22_1_774,
      S => XLXI_31_FileReader_N7,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(9)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_8 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_23_1_775,
      S => XLXI_31_FileReader_N7,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(8)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_6 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_25_1_777,
      S => XLXI_31_FileReader_N7,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(6)
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_4 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_27_1_779,
      S => XLXI_31_FileReader_N7,
      Q => XLXI_31_FileReader_Playing_Clk_Div_Counter(4)
    );
  XLXI_31_FileReader_Playing_Time_Counter_31 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_31_1_947,
      S => N38,
      Q => XLXI_31_FileReader_Playing_Time_Counter(31)
    );
  XLXI_31_FileReader_Playing_Time_Counter_30 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_30_1_946,
      S => N40,
      Q => XLXI_31_FileReader_Playing_Time_Counter(30)
    );
  XLXI_31_FileReader_Playing_Time_Counter_29 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_29_1_944,
      S => N44,
      Q => XLXI_31_FileReader_Playing_Time_Counter(29)
    );
  XLXI_31_FileReader_Playing_Time_Counter_28 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_28_1_943,
      S => N46,
      Q => XLXI_31_FileReader_Playing_Time_Counter(28)
    );
  XLXI_31_FileReader_Playing_Time_Counter_27 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_27_1_942,
      S => N48,
      Q => XLXI_31_FileReader_Playing_Time_Counter(27)
    );
  XLXI_31_FileReader_Playing_Time_Counter_26 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_26_1_941,
      S => N50,
      Q => XLXI_31_FileReader_Playing_Time_Counter(26)
    );
  XLXI_31_FileReader_Playing_Time_Counter_25 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_25_1_940,
      S => N52,
      Q => XLXI_31_FileReader_Playing_Time_Counter(25)
    );
  XLXI_31_FileReader_Playing_Time_Counter_24 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_24_1_939,
      S => N54,
      Q => XLXI_31_FileReader_Playing_Time_Counter(24)
    );
  XLXI_31_FileReader_Playing_Time_Counter_23 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_23_1_938,
      S => N56,
      Q => XLXI_31_FileReader_Playing_Time_Counter(23)
    );
  XLXI_31_FileReader_Playing_Time_Counter_22 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_22_1_937,
      S => N58,
      Q => XLXI_31_FileReader_Playing_Time_Counter(22)
    );
  XLXI_31_FileReader_Playing_Time_Counter_21 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_21_1_936,
      S => N60,
      Q => XLXI_31_FileReader_Playing_Time_Counter(21)
    );
  XLXI_31_FileReader_Playing_Time_Counter_20 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_20_1_935,
      S => N62,
      Q => XLXI_31_FileReader_Playing_Time_Counter(20)
    );
  XLXI_31_FileReader_Playing_Time_Counter_19 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_19_1_933,
      S => N66,
      Q => XLXI_31_FileReader_Playing_Time_Counter(19)
    );
  XLXI_31_FileReader_Playing_Time_Counter_18 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_18_1_932,
      S => N68,
      Q => XLXI_31_FileReader_Playing_Time_Counter(18)
    );
  XLXI_31_FileReader_Playing_Time_Counter_17 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_17_1_931,
      S => N70,
      Q => XLXI_31_FileReader_Playing_Time_Counter(17)
    );
  XLXI_31_FileReader_Playing_Time_Counter_16 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_16_1_930,
      S => N72,
      Q => XLXI_31_FileReader_Playing_Time_Counter(16)
    );
  XLXI_31_FileReader_Playing_Time_Counter_15 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_15_1_929,
      S => N74,
      Q => XLXI_31_FileReader_Playing_Time_Counter(15)
    );
  XLXI_31_FileReader_Playing_Time_Counter_14 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_14_1_928,
      S => N76,
      Q => XLXI_31_FileReader_Playing_Time_Counter(14)
    );
  XLXI_31_FileReader_Playing_Time_Counter_13 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_13_1_927,
      S => N78,
      Q => XLXI_31_FileReader_Playing_Time_Counter(13)
    );
  XLXI_31_FileReader_Playing_Time_Counter_12 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_12_1_926,
      S => N80,
      Q => XLXI_31_FileReader_Playing_Time_Counter(12)
    );
  XLXI_31_FileReader_Playing_Time_Counter_11 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_11_1_925,
      S => N82,
      Q => XLXI_31_FileReader_Playing_Time_Counter(11)
    );
  XLXI_31_FileReader_Playing_Time_Counter_10 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_10_1_924,
      S => N84,
      Q => XLXI_31_FileReader_Playing_Time_Counter(10)
    );
  XLXI_31_FileReader_Playing_Time_Counter_9 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_9_1_954,
      S => N24,
      Q => XLXI_31_FileReader_Playing_Time_Counter(9)
    );
  XLXI_31_FileReader_Playing_Time_Counter_8 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_8_1_953,
      S => N26,
      Q => XLXI_31_FileReader_Playing_Time_Counter(8)
    );
  XLXI_31_FileReader_Playing_Time_Counter_7 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_7_1_952,
      S => N28,
      Q => XLXI_31_FileReader_Playing_Time_Counter(7)
    );
  XLXI_31_FileReader_Playing_Time_Counter_6 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_6_1_951,
      S => N30,
      Q => XLXI_31_FileReader_Playing_Time_Counter(6)
    );
  XLXI_31_FileReader_Playing_Time_Counter_5 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_5_1_950,
      S => N32,
      Q => XLXI_31_FileReader_Playing_Time_Counter(5)
    );
  XLXI_31_FileReader_Playing_Time_Counter_4 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_4_1_949,
      S => N34,
      Q => XLXI_31_FileReader_Playing_Time_Counter(4)
    );
  XLXI_31_FileReader_Playing_Time_Counter_3 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_3_1_948,
      S => N36,
      Q => XLXI_31_FileReader_Playing_Time_Counter(3)
    );
  XLXI_31_FileReader_Playing_Time_Counter_2 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_2_1_945,
      S => N42,
      Q => XLXI_31_FileReader_Playing_Time_Counter(2)
    );
  XLXI_31_FileReader_Playing_Time_Counter_1 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_1_1_934,
      S => N64,
      Q => XLXI_31_FileReader_Playing_Time_Counter(1)
    );
  XLXI_31_FileReader_Playing_Time_Counter_0 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      D => XLXI_31_FileReader_Playing_Time_Counter_mux0000_0_1_923,
      S => N86,
      Q => XLXI_31_FileReader_Playing_Time_Counter(0)
    );
  XLXI_31_FileReader_State_FSM_FFd7 : FDRSE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_153,
      D => N0,
      R => XLXI_31_XLXI_27_File_Source_Selected_1932,
      S => XLXI_31_FileReader_State_FSM_FFd8_1078,
      Q => XLXI_31_FileReader_State_FSM_FFd7_1077
    );
  XLXI_31_FileReader_State_FSM_FFd9 : FDRSE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_153,
      D => N0,
      R => XLXI_31_XLXI_27_File_Source_Selected_1932,
      S => XLXI_31_FileReader_State_FSM_FFd10_1069,
      Q => XLXI_31_FileReader_State_FSM_FFd9_1079
    );
  XLXI_31_FileReader_State_FSM_FFd5 : FDRSE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_153,
      D => N0,
      R => XLXI_31_XLXI_27_File_Source_Selected_1932,
      S => XLXI_31_FileReader_State_FSM_FFd6_1076,
      Q => XLXI_31_FileReader_State_FSM_FFd5_1075
    );
  XLXI_31_FileReader_State_FSM_FFd3 : FDRSE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_1,
      CE => XLXN_153,
      D => N0,
      R => XLXI_31_XLXI_27_File_Source_Selected_1932,
      S => XLXI_31_FileReader_State_FSM_FFd4_1074,
      Q => XLXI_31_FileReader_State_FSM_FFd3_1073
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_addsub0000(5),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_5_rt_646
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_addsub0000(4),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_cy_4_rt_644
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(30),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_30_rt_384
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(29),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_29_rt_381
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(28),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_28_rt_379
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(27),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_27_rt_377
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(26),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_26_rt_375
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(25),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_25_rt_373
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(24),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_24_rt_371
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(23),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_23_rt_369
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(22),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_22_rt_367
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(21),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_21_rt_365
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(20),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_20_rt_363
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(19),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_19_rt_360
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(18),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_18_rt_358
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_mult0000(17),
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_17_rt_356
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_16,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_16_rt_354
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_15,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_15_rt_352
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_14,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_14_rt_350
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_13,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_13_rt_348
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_12,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_12_rt_346
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_11,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_11_rt_344
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_10,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_10_rt_342
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_9,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_9_rt_393
    );
  XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Mmult_mult0000_P_to_Adder_A_8,
      O => XLXI_31_FileReader_Madd_Playing_Time_addsub0000_cy_8_rt_391
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Clk_Div_Counter(0),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_cy_0_rt_497
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter(0),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_cy_0_rt_560
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(30),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_30_rt_1710
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(29),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_29_rt_1706
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(28),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_28_rt_1704
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(27),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_27_rt_1702
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(26),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_26_rt_1700
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(25),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_25_rt_1698
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(24),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_24_rt_1696
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(23),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_23_rt_1694
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(22),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_22_rt_1692
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(21),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_21_rt_1690
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(20),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_20_rt_1688
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(19),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_19_rt_1684
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(18),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_18_rt_1682
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(17),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_17_rt_1680
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(16),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_16_rt_1678
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(15),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_15_rt_1676
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(14),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_14_rt_1674
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(13),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_13_rt_1672
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(12),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_12_rt_1670
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(11),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_11_rt_1668
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(10),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_10_rt_1666
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(9),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_9_rt_1724
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(8),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_8_rt_1722
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(7),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_7_rt_1720
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(6),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_6_rt_1718
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(5),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_5_rt_1716
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(4),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_4_rt_1714
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(3),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_3_rt_1712
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(2),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_2_rt_1708
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(1),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_cy_1_rt_1686
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(30),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_30_rt_1647
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(29),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_29_rt_1643
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(28),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_28_rt_1641
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(27),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_27_rt_1639
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(26),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_26_rt_1637
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(25),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_25_rt_1635
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(24),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_24_rt_1633
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(23),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_23_rt_1631
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(22),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_22_rt_1629
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(21),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_21_rt_1627
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(20),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_20_rt_1625
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(19),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_19_rt_1621
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(18),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_18_rt_1619
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(17),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_17_rt_1617
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(16),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_16_rt_1615
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(15),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_15_rt_1613
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(14),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_14_rt_1611
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(13),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_13_rt_1609
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(12),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_12_rt_1607
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(11),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_11_rt_1605
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(10),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_10_rt_1603
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(9),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_9_rt_1661
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(8),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_8_rt_1659
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(7),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_7_rt_1657
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(6),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_6_rt_1655
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(5),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_5_rt_1653
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(4),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_4_rt_1651
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(3),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_3_rt_1649
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(2),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_2_rt_1645
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(1),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_cy_1_rt_1623
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(3),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_cy_0_rt_1994
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(31),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_xor_31_rt_1726
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(31),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_xor_31_rt_1663
    );
  XLXI_31_XLXI_22_Mmux_Period_7_9 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_15_mux0005,
      I2 => XLXI_31_XLXI_22_N26,
      I3 => XLXI_31_XLXI_22_Period_17_mux0007,
      O => XLXI_31_XLXI_22_Mmux_Period_7_9_1240
    );
  XLXI_31_XLXI_22_Mmux_Period_6_9 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_21_mux0000,
      I2 => XLXI_31_XLXI_22_N52,
      I3 => XLXI_31_XLXI_22_Period_20_mux0000,
      O => XLXI_31_XLXI_22_Mmux_Period_6_9_1230
    );
  XLXI_31_XLXI_22_Mmux_Period_7_11 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_15_mux0005,
      I2 => XLXI_31_XLXI_22_Period_18_mux0002,
      I3 => N649,
      O => XLXI_31_XLXI_22_Mmux_Period_7_11_1233
    );
  XLXI_31_XLXI_22_Mmux_Period_10_11 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N26,
      I2 => XLXI_31_XLXI_22_Period_10_mux0003,
      I3 => N672,
      O => XLXI_31_XLXI_22_Mmux_Period_10_11_1116
    );
  XLXI_31_XLXI_22_Mmux_Period_11_81 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N42,
      I2 => XLXI_31_XLXI_22_Period_17_mux0007,
      I3 => XLXI_31_XLXI_22_Period_11_mux0010,
      O => XLXI_31_XLXI_22_Mmux_Period_11_81_1131
    );
  XLXI_31_XLXI_22_Mmux_Period_5_81 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_9_mux0008,
      I2 => XLXI_31_XLXI_22_N37,
      I3 => XLXI_31_XLXI_22_Period_5_mux0009,
      O => XLXI_31_XLXI_22_Mmux_Period_5_81_1222
    );
  XLXI_31_XLXI_22_Mmux_Period_15_9 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_21_mux0000,
      I2 => XLXI_31_XLXI_22_Period_9_mux0001,
      O => XLXI_31_XLXI_22_Mmux_Period_15_9_1163
    );
  XLXI_31_XLXI_22_Mmux_Period_16_9 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_16_mux0006,
      I2 => XLXI_31_XLXI_22_N37,
      O => XLXI_31_XLXI_22_Mmux_Period_16_9_1171
    );
  XLXI_31_XLXI_22_Mmux_Period_5_8 : LUT4
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_10_mux0007,
      I2 => XLXI_31_XLXI_22_Period_16_mux0005,
      I3 => XLXI_31_XLXI_22_N41,
      O => XLXI_31_XLXI_22_Mmux_Period_5_8_1221
    );
  XLXI_31_XLXI_22_Mmux_Period_14_7 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N52,
      I2 => XLXI_31_XLXI_22_Period_14_mux0006,
      I3 => XLXI_31_XLXI_22_Period_20_mux0000,
      O => XLXI_31_XLXI_22_Mmux_Period_14_7_1151
    );
  XLXI_31_XLXI_22_Mmux_Period_5_7 : LUT4
    generic map(
      INIT => X"7250"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Mrom_rom00004,
      I2 => XLXI_31_XLXI_22_Period_5_mux0006,
      I3 => XLXI_31_XLXI_22_N29,
      O => XLXI_31_XLXI_22_Mmux_Period_5_7_1219
    );
  XLXI_31_XLXI_22_Mmux_Period_8_81 : LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_8_mux0007,
      I2 => XLXI_31_XLXI_22_Period_21_mux0000,
      I3 => XLXI_31_XLXI_22_N37,
      O => XLXI_31_XLXI_22_Mmux_Period_8_81_1247
    );
  XLXI_31_XLXI_22_Mmux_Period_10_81 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N26,
      I2 => XLXI_31_XLXI_22_Period_10_mux0008,
      I3 => XLXI_31_XLXI_22_Period_20_mux0000,
      O => XLXI_31_XLXI_22_Mmux_Period_10_81_1122
    );
  XLXI_31_XLXI_22_Mmux_Period_4_10 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_1_mux0001,
      I2 => XLXI_31_XLXI_22_Period_11_mux0004,
      I3 => XLXI_31_XLXI_22_N26,
      O => XLXI_31_XLXI_22_Mmux_Period_4_10_1206
    );
  XLXI_31_XLXI_22_Mmux_Period_12_8 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_15_mux0005,
      I2 => XLXI_31_XLXI_22_Period_12_mux0007,
      I3 => XLXI_31_XLXI_22_Period_17_mux0005,
      O => XLXI_31_XLXI_22_Mmux_Period_12_8_1137
    );
  XLXI_31_XLXI_22_Mmux_Period_13_8 : LUT4
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_13_mux0008_1307,
      I2 => XLXI_31_XLXI_22_N42,
      I3 => XLXI_31_XLXI_22_N37,
      O => XLXI_31_XLXI_22_Mmux_Period_13_8_1145
    );
  XLXI_31_XLXI_22_Mmux_Period_7_81 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N23,
      I2 => XLXI_31_XLXI_22_Period_1_mux0002_1338,
      I3 => XLXI_31_XLXI_22_Period_7_mux0006,
      O => XLXI_31_XLXI_22_Mmux_Period_7_81_1239
    );
  XLXI_31_XLXI_22_Mmux_Period_16_8 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_16_mux0005,
      I2 => XLXI_31_XLXI_22_Period_19_mux0001,
      I3 => XLXI_31_XLXI_22_Period_16_mux0008,
      O => XLXI_31_XLXI_22_Mmux_Period_16_8_1169
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_11_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(11),
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Mmux_Period_15_5_f6_1157,
      I3 => N161,
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(11)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"782D"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => N159,
      I2 => XLXI_31_XLXI_25_Counter_A(9),
      I3 => XLXI_31_XLXI_22_Mmux_Period_13_5_f6_1141,
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(9)
    );
  XLXI_31_XLXI_22_Mmux_Period_15_81 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_15_mux0005,
      I2 => XLXI_31_XLXI_22_Period_15_mux0010,
      I3 => XLXI_31_XLXI_22_Period_17_mux0007,
      O => XLXI_31_XLXI_22_Mmux_Period_15_81_1162
    );
  XLXI_31_XLXI_22_Mmux_Period_16_81 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_16_mux0005,
      I2 => XLXI_31_XLXI_22_Period_16_mux0010,
      I3 => XLXI_31_XLXI_22_N37,
      O => XLXI_31_XLXI_22_Mmux_Period_16_81_1170
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => N181,
      I2 => XLXI_31_XLXI_25_Counter_A(3),
      I3 => XLXI_31_XLXI_22_Mmux_Period_7_5_f6_1234,
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(3)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"A6A5"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(1),
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Tone_3_1019_1374,
      I3 => XLXI_31_XLXI_22_Mmux_Period_5_5_f6_1217,
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(1)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"F04B"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Mmux_Period_8_5_f6_1242,
      I2 => XLXI_31_XLXI_25_Counter_A(4),
      I3 => XLXI_31_XLXI_22_Tone_3_719_1385,
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(4)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(6),
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Mmux_Period_10_5_f6_1117,
      I3 => N173,
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(6)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(2),
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Mmux_Period_6_5_f6_1224,
      I3 => XLXI_31_XLXI_22_Tone_3_913_1386,
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(2)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_12_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(12),
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Mmux_Period_16_5_f6_1165,
      I3 => N163,
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(12)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"A6A5"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A(7),
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Tone_3_519_1384,
      I3 => XLXI_31_XLXI_22_Mmux_Period_11_5_f6_1126,
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(7)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Tone_3_413_1383,
      I2 => XLXI_31_XLXI_25_Counter_A(8),
      I3 => XLXI_31_XLXI_22_Mmux_Period_12_5_f6_1133,
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(8)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_10_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => N155,
      I2 => XLXI_31_XLXI_25_Counter_A(10),
      I3 => XLXI_31_XLXI_22_Mmux_Period_14_5_f6_1149,
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(10)
    );
  XLXI_31_XLXI_22_Mmux_Period_5_11 : LUT4
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_5_mux0004_1351,
      I2 => XLXI_31_XLXI_22_Period_18_mux0003,
      I3 => N666,
      O => XLXI_31_XLXI_22_Mmux_Period_5_11_1216
    );
  XLXI_31_XLXI_22_Period_7_mux00061 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_19_mux0001,
      I1 => XLXI_31_XLXI_22_Period_21_mux0000,
      I2 => XLXI_31_XLXI_22_Period_17_mux0005,
      I3 => XLXI_31_XLXI_22_Period_20_mux0000,
      O => XLXI_31_XLXI_22_Period_7_mux0006
    );
  XLXI_31_XLXI_22_Mmux_Period_15_8 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N41,
      I2 => XLXI_31_XLXI_22_Period_15_mux0008,
      I3 => XLXI_31_XLXI_22_Period_20_mux0000,
      O => XLXI_31_XLXI_22_Mmux_Period_15_8_1161
    );
  XLXI_31_XLXI_22_Period_12_mux00071 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXI_22_N30,
      I3 => XLXI_31_XLXI_22_N69,
      O => XLXI_31_XLXI_22_Period_12_mux0007
    );
  XLXI_31_XLXI_22_Period_16_mux00031 : LUT4
    generic map(
      INIT => X"B3A0"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(0),
      I2 => N669,
      I3 => XLXI_31_XLXI_22_N69,
      O => XLXI_31_XLXI_22_Period_16_mux0003
    );
  XLXI_31_XLXI_22_Mmux_Period_4_7_f51 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N27,
      I2 => XLXI_31_XLXI_22_N13,
      O => XLXI_31_XLXI_22_Mmux_Period_4_7_f51_1212
    );
  XLXI_31_XLXI_22_Mmux_Period_4_9 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N27,
      I2 => XLXI_31_XLXI_22_N13,
      O => XLXI_31_XLXI_22_Mmux_Period_14_9
    );
  XLXI_31_XLXI_22_Period_11_mux00071 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_6_mux0007,
      I1 => XLXI_31_XLXI_22_Period_14_cmp_eq0000,
      I2 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I3 => N650,
      O => XLXI_31_XLXI_22_Period_11_mux0007
    );
  XLXI_31_XLXI_22_N261 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(0),
      I3 => N637,
      O => XLXI_31_XLXI_22_N26
    );
  XLXI_31_XLXI_22_Period_11_mux00081 : LUT4
    generic map(
      INIT => X"FBC0"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXI_22_N69,
      I3 => XLXI_31_XLXI_22_N67,
      O => XLXI_31_XLXI_22_Period_11_mux0008
    );
  XLXI_31_XLXI_22_Period_5_mux00091 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_15_mux0005,
      I1 => XLXI_31_XLXI_22_Period_2_mux000111_1343,
      I2 => XLXI_31_XLXI_22_Period_21_mux0000,
      O => XLXI_31_XLXI_22_Period_5_mux0009
    );
  XLXI_31_XLXI_22_Period_15_mux00011 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_Mrom_rom00004,
      I2 => XLXI_31_XLXI_22_Period_6_mux0007,
      I3 => N674,
      O => XLXI_31_XLXI_22_Period_15_mux0001
    );
  XLXI_31_XLXI_22_Period_11_mux000611 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      O => XLXI_31_XLXI_22_N64
    );
  XLXI_31_XLXI_22_Mmux_Period_10_7 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N13,
      I2 => N197,
      I3 => XLXI_31_XLXI_22_Period_10_mux0005,
      O => XLXI_31_XLXI_22_Mmux_Period_10_7_1119
    );
  XLXI_31_XLXI_27_Octave_DUMMY_3_SW0_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => XLXI_31_FileReader_Octave_Char(2),
      I1 => XLXI_31_FileReader_Octave_Char(1),
      I2 => XLXI_31_FileReader_Octave_Char(0),
      I3 => XLXI_31_FileReader_Octave_Char(3),
      O => N201
    );
  XLXI_31_XLXI_27_Octave_DUMMY_3_Q : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(3),
      I1 => XLXI_31_XLXI_27_state(0),
      I2 => N201,
      I3 => XLXI_31_FileReader_Octave_and0000,
      O => XLXI_31_XLXN_373(3)
    );
  XLXI_31_XLXI_22_Mmux_Period_7_8 : LUT4
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_12_mux0007,
      I2 => XLXI_31_XLXI_22_Period_17_mux0005,
      I3 => XLXI_31_XLXI_22_Period_20_mux0000,
      O => XLXI_31_XLXI_22_Mmux_Period_7_8_1238
    );
  XLXI_31_XLXI_22_Period_14_mux00021 : LUT4
    generic map(
      INIT => X"FDEC"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => N668,
      I2 => XLXI_31_XLXI_22_N69,
      I3 => XLXI_31_XLXI_22_N67,
      O => XLXI_31_XLXI_22_Period_14_mux0002
    );
  XLXI_31_XLXI_22_Period_13_mux00031 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXI_22_N67,
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Period_13_mux0003
    );
  XLXI_31_XLXI_22_Period_17_mux00071 : LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXI_22_N35,
      I3 => N648,
      O => XLXI_31_XLXI_22_Period_17_mux0007
    );
  XLXI_31_XLXI_22_Period_6_mux00061 : LUT4
    generic map(
      INIT => X"7530"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXI_22_N67,
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Period_6_mux0006
    );
  XLXI_31_XLXI_22_Mmux_Period_13_7 : LUT4
    generic map(
      INIT => X"FCFD"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_18_mux0003,
      I2 => XLXI_31_XLXI_22_N26,
      I3 => N231,
      O => XLXI_31_XLXI_22_Mmux_Period_13_7_1143
    );
  XLXI_31_XLXI_22_Mmux_Period_5_10 : LUT4
    generic map(
      INIT => X"7250"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => N233,
      I2 => XLXI_31_XLXI_22_Period_12_mux0004,
      I3 => N665,
      O => XLXI_31_XLXI_22_Mmux_Period_5_10_1215
    );
  XLXI_31_XLXI_22_Mmux_Period_6_7 : LUT4
    generic map(
      INIT => X"7250"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => N235,
      I2 => XLXI_31_XLXI_22_Period_12_mux0003,
      I3 => XLXI_31_XLXI_22_N29,
      O => XLXI_31_XLXI_22_Mmux_Period_6_7_1226
    );
  XLXI_31_XLXI_22_Mmux_Period_7_7 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N42,
      I2 => N237,
      I3 => XLXI_31_XLXI_22_Period_7_mux0003,
      O => XLXI_31_XLXI_22_Mmux_Period_7_7_1236
    );
  XLXI_31_XLXI_22_Tone_3_719 : LUT4
    generic map(
      INIT => X"A088"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => N250,
      I2 => N251,
      I3 => XLXI_31_XLXI_22_Mmux_Period_8_10_1241,
      O => XLXI_31_XLXI_22_Tone_3_719_1385
    );
  XLXI_31_XLXI_25_Next_8b_Sample_not0001 : LUT4
    generic map(
      INIT => X"070F"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I2 => N662,
      I3 => N146,
      O => XLXI_31_XLXI_25_Next_8b_Sample_not0001_1928
    );
  XLXI_31_XLXI_25_Next_8b_Sample_A_not00011 : LUT4
    generic map(
      INIT => X"00DF"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(10),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      I2 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_and0001,
      O => XLXI_31_XLXI_25_Next_8b_Sample_A_not0001
    );
  XLXI_31_XLXI_22_Mmux_Period_5_9 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_15_mux0005,
      I2 => XLXI_31_XLXI_22_N42,
      I3 => XLXI_31_XLXI_22_N37,
      O => XLXI_31_XLXI_22_Mmux_Period_5_9_1223
    );
  XLXI_31_XLXI_22_Period_9_mux0003 : LUT4
    generic map(
      INIT => X"08AA"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(3),
      I3 => N121,
      O => XLXI_31_XLXI_22_Period_9_mux0003_1366
    );
  XLXI_31_XLXI_22_Period_10_mux00071 : LUT4
    generic map(
      INIT => X"0034"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(0),
      I3 => N624,
      O => XLXI_31_XLXI_22_N72
    );
  XLXI_31_XLXI_22_Mmux_Period_2_7 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N42,
      I2 => XLXI_31_XLXI_22_Period_20_mux0000,
      I3 => XLXI_31_XLXI_22_Period_2_mux0005,
      O => XLXI_31_XLXI_22_Mmux_Period_2_7_1193
    );
  XLXI_31_XLXI_22_Period_9_mux000717_SW0 : LUT4
    generic map(
      INIT => X"93FF"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N38,
      O => N199
    );
  XLXI_31_XLXI_22_Mmux_Period_1_8 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_6_mux0007,
      I2 => XLXI_31_XLXI_22_Period_16_mux0008,
      I3 => XLXI_31_XLXI_22_Period_9_mux0001,
      O => XLXI_31_XLXI_22_Mmux_Period_1_8_1188
    );
  XLXI_31_XLXI_22_Mmux_Period_1_9 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_6_mux0007,
      I2 => XLXI_31_XLXI_22_Period_9_mux0001,
      O => XLXI_31_XLXI_22_Mmux_Period_1_9_1190
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_31_1 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(0),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(31)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001251 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(0),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(31)
    );
  XLXI_31_XLXI_25_Sample_Rdy_mux00021 : LUT3
    generic map(
      INIT => X"07"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Sample_Rdy_mux0002
    );
  XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000_4_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_A(4),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000(4)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(3),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(3)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_2_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(2),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(2)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_1_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(1),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(1)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_0_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(0),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(0)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_0_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(0),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(0)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001231 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(29),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(2)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001121 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(30),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(1)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux000111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(31),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(0)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001271 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(27),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(4)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001261 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(28),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(3)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001301 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(24),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(7)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001291 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(25),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(6)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001281 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(26),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(5)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001321 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(22),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(9)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001311 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(23),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(8)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux000131 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(20),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(11)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux000121 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(21),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(10)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux000151 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(18),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(13)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux000141 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(19),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(12)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux000171 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(16),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(15)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux000161 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(17),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(14)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux000191 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(14),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(17)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux000181 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(15),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(16)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001111 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(12),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(19)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001101 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(13),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(18)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001141 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(10),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(21)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001131 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(11),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(20)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001161 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(8),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(23)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001151 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(9),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(22)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001171 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(7),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(24)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001201 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(4),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(27)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001191 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(5),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(26)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001181 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(6),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(25)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001241 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(1),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(30)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001221 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(2),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(29)
    );
  XLXI_31_XLXI_25_Mmux_Counter_A_mux0001211 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_A_addsub0000(3),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_A_mux0001(28)
    );
  XLXI_31_XLXI_22_Mmux_Period_11_11 : LUT4
    generic map(
      INIT => X"FEF4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N58,
      I2 => XLXI_31_XLXI_22_N14,
      I3 => XLXI_31_XLXI_22_N71,
      O => XLXI_31_XLXI_22_Mmux_Period_11_11_1125
    );
  XLXI_31_XLXI_22_Period_3_mux00021 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_15_mux0005,
      I1 => XLXI_31_XLXI_22_N52,
      I2 => XLXI_31_XLXI_22_N26,
      I3 => XLXI_31_XLXI_22_N37,
      O => XLXI_31_XLXI_22_Period_3_mux0002
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_1_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(30),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(1)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_0_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(31),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(0)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_3_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(28),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(3)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_2_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(29),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(2)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_5_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(26),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(5)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_4_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(27),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(4)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_9_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(22),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(9)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_8_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(23),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(8)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_7_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(24),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(7)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_6_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(25),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(6)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_10_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(21),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(10)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_12_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(19),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(12)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_11_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(20),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(11)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_14_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(17),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(14)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_13_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(18),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(13)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_21_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(10),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(21)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_20_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(11),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(20)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_19_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(12),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(19)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_18_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(13),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(18)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_17_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(14),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(17)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_16_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(15),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(16)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_15_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(16),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(15)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_23_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(8),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(23)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_22_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(9),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(22)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_25_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(6),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(25)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_24_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(7),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(24)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_27_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(4),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(27)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_26_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(5),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(26)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_30_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(1),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(30)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_29_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(2),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(29)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_28_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B_addsub0000(3),
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Counter_B_mux0002(28)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000_5_1 : LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_A(5),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_A(4),
      I2 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000(5)
    );
  XLXI_31_XLXI_22_Mmux_Period_7_10 : LUT4
    generic map(
      INIT => X"E4A0"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => N259,
      I2 => XLXI_31_XLXI_22_Period_11_mux0006,
      I3 => N630,
      O => XLXI_31_XLXI_22_Mmux_Period_7_10_1232
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"001B"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Mmux_Period_4_5_f6_1208,
      I2 => N175,
      I3 => XLXI_31_XLXN_232(15),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(0)
    );
  XLXI_31_XLXI_22_Period_5_mux000211_SW1 : LUT4
    generic map(
      INIT => X"BFEE"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(2),
      O => N259
    );
  XLXI_31_XLXI_22_Mmux_Period_15_7 : LUT4
    generic map(
      INIT => X"DDDC"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_15_mux0005,
      I2 => XLXI_31_XLXI_22_Period_19_mux0001,
      I3 => XLXI_31_XLXI_22_Period_21_mux0000,
      O => XLXI_31_XLXI_22_Mmux_Period_15_7_1159
    );
  XLXI_31_XLXI_22_Mmux_Period_3_8 : LUT4
    generic map(
      INIT => X"FF8B"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_18_mux0003,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N267,
      I3 => XLXI_31_XLXI_22_N42,
      O => XLXI_31_XLXI_22_Mmux_Period_3_8_1203
    );
  XLXI_31_XLXI_22_Mmux_Period_2_8 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_21_mux0000,
      I2 => XLXI_31_XLXI_22_N26,
      I3 => XLXI_31_XLXI_22_Period_2_mux0007,
      O => XLXI_31_XLXI_22_Mmux_Period_2_8_1195
    );
  XLXI_31_XLXI_22_Mmux_Period_8_8 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N269,
      I1 => XLXI_31_XLXI_22_N26,
      I2 => XLXI_31_XLXI_22_N37,
      O => XLXI_31_XLXI_22_Mmux_Period_8_8_1246
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_3_Q : LUT4
    generic map(
      INIT => X"A6A5"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(3),
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Tone_3_519_1384,
      I3 => XLXI_31_XLXI_22_Mmux_Period_11_5_f6_1126,
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(3)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_5_Q : LUT4
    generic map(
      INIT => X"782D"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => N159,
      I2 => XLXI_31_XLXI_25_Counter_B(5),
      I3 => XLXI_31_XLXI_22_Mmux_Period_13_5_f6_1141,
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(5)
    );
  XLXI_31_XLXI_22_Period_8_mux00021 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(1),
      I2 => N659,
      I3 => XLXI_31_XLXI_22_N30,
      O => XLXI_31_XLXI_22_Period_8_mux0002
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(2),
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Mmux_Period_10_5_f6_1117,
      I3 => N173,
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(2)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Tone_3_413_1383,
      I2 => XLXI_31_XLXI_25_Counter_B(4),
      I3 => XLXI_31_XLXI_22_Mmux_Period_12_5_f6_1133,
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(4)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => N155,
      I2 => XLXI_31_XLXI_25_Counter_B(6),
      I3 => XLXI_31_XLXI_22_Mmux_Period_14_5_f6_1149,
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(6)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(7),
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Mmux_Period_15_5_f6_1157,
      I3 => N161,
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(7)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_8_Q : LUT4
    generic map(
      INIT => X"A965"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Counter_B(8),
      I1 => XLXI_31_XLXN_371(3),
      I2 => XLXI_31_XLXI_22_Mmux_Period_16_5_f6_1165,
      I3 => N163,
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(8)
    );
  XLXI_31_XLXI_22_Period_15_mux00041 : LUT4
    generic map(
      INIT => X"E4A0"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXI_22_N7,
      I2 => N651,
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Period_15_mux0004
    );
  XLXI_31_XLXI_22_Period_12_mux00091 : LUT4
    generic map(
      INIT => X"E4A0"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => N625,
      I2 => XLXI_31_XLXI_22_N67,
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Period_12_mux0009
    );
  XLXI_31_XLXI_22_Period_13_mux000811 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      O => XLXI_31_XLXI_22_N13
    );
  XLXI_31_XLXI_22_Period_16_mux00081 : LUT4
    generic map(
      INIT => X"D1C0"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXI_22_N69,
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Period_16_mux0008
    );
  XLXI_31_XLXI_22_Period_15_mux00021 : LUT4
    generic map(
      INIT => X"F1F0"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXI_22_N69,
      I3 => N635,
      O => XLXI_31_XLXI_22_Period_15_mux0002
    );
  XLXI_31_XLXI_22_Period_15_mux00081 : LUT4
    generic map(
      INIT => X"7430"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXI_22_N67,
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Period_15_mux0008
    );
  XLXI_31_XLXI_22_Period_10_mux00041_SW0 : LUT4
    generic map(
      INIT => X"2300"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N38,
      O => N197
    );
  XLXI_31_XLXI_22_Period_14_mux00091 : LUT4
    generic map(
      INIT => X"F4F0"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXI_22_N0,
      I2 => N647,
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Period_14_mux0009
    );
  XLXI_31_XLXI_22_Mmux_Period_11_9_SW0 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N646,
      I2 => XLXI_31_XLXI_22_Mrom_rom00004,
      O => N271
    );
  XLXI_31_XLXI_22_Mmux_Period_11_9 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_15_mux0005,
      I2 => N271,
      I3 => XLXI_31_XLXI_22_N26,
      O => XLXI_31_XLXI_22_Mmux_Period_11_9_1132
    );
  XLXI_31_XLXI_22_Mmux_Period_3_7 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => N280,
      I2 => XLXI_31_XLXI_22_N29,
      I3 => XLXI_31_XLXI_22_Period_11_mux0007,
      O => XLXI_31_XLXI_22_Mmux_Period_3_7_1201
    );
  XLXI_31_XLXI_22_Mmux_Period_13_81 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => N282,
      I2 => XLXI_31_XLXI_22_Period_13_mux0010,
      I3 => XLXI_31_XLXI_22_N71,
      O => XLXI_31_XLXI_22_Mmux_Period_13_81_1146
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_4_Q : LUT4
    generic map(
      INIT => X"0437"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => N287,
      I3 => N286,
      O => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(4)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_6_Q : LUT4
    generic map(
      INIT => X"0437"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => N290,
      I3 => N289,
      O => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(6)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_and000131_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Last_Period(18),
      I1 => XLXI_31_XLXI_25_Last_Period(21),
      I2 => XLXI_31_XLXI_25_Last_Period(20),
      O => N292
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_7_1 : LUT4
    generic map(
      INIT => X"0437"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => N295,
      I3 => N294,
      O => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(7)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_5_1 : LUT4
    generic map(
      INIT => X"0437"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => N298,
      I3 => N297,
      O => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(5)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000_7_Q : LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_A(7),
      I1 => N300,
      I2 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000(7)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_4_31_SW1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_A(5),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_A(4),
      O => N302
    );
  XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000_6_1 : LUT4
    generic map(
      INIT => X"0009"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_A(6),
      I1 => N302,
      I2 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_A_mux0000(6)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_5_Q : LUT4
    generic map(
      INIT => X"0437"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => N305,
      I3 => N297,
      O => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(5)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_7_Q : LUT4
    generic map(
      INIT => X"0437"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => N308,
      I3 => N294,
      O => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(7)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut_1_SW0 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Mmux_Period_16_5_f6_1165,
      I2 => XLXI_31_XLXI_22_Mmux_Period_8_5_f6_1242,
      I3 => N656,
      O => N319
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Tone_3_719_1385,
      I1 => N319,
      I2 => XLXI_31_XLXN_232(5),
      I3 => XLXI_31_XLXN_232(11),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(1)
    );
  XLXI_31_XLXI_25_Counter_B_mux0002_0_111_SW0 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(1),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_B(0),
      O => N321
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_1_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => N321,
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(1)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_6_1 : LUT4
    generic map(
      INIT => X"0437"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => N324,
      I3 => N289,
      O => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(6)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_4_1 : LUT4
    generic map(
      INIT => X"0437"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => N327,
      I3 => N286,
      O => XLXI_31_XLXI_25_Next_8b_Sample_mux0000(4)
    );
  XLXI_31_XLXI_22_Mmux_Period_10_8 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N67,
      I2 => XLXI_31_XLXI_22_N72,
      I3 => XLXI_31_XLXI_22_Period_10_mux0006,
      O => XLXI_31_XLXI_22_Mmux_Period_10_8_1121
    );
  XLXI_31_XLXI_22_Period_10_mux00052 : LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      I0 => N661,
      I1 => XLXI_31_XLXI_22_N69,
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Period_10_mux0005
    );
  XLXI_31_XLXI_22_Period_13_mux00062_SW0 : LUT3
    generic map(
      INIT => X"07"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_Mrom_rom00004,
      I2 => XLXI_31_XLXI_22_Period_21_mux0000,
      O => N231
    );
  XLXI_31_XLXI_22_Period_7_mux00041_SW0 : LUT4
    generic map(
      INIT => X"0007"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_Period_14_cmp_eq0000,
      I2 => XLXI_31_XLXI_22_Period_15_mux0005,
      I3 => XLXI_31_XLXI_22_Period_2_mux000111_1343,
      O => N237
    );
  XLXI_31_XLXI_22_Period_3_mux00012 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_Period_14_cmp_eq0000,
      I2 => XLXI_31_XLXI_22_Period_15_mux0005,
      I3 => XLXI_31_XLXI_22_Period_6_mux0007,
      O => XLXI_31_XLXI_22_Period_3_mux0001
    );
  XLXI_31_XLXI_22_Mmux_Period_1_81 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N72,
      I2 => N334,
      I3 => XLXI_31_XLXI_22_Period_10_mux0005,
      O => XLXI_31_XLXI_22_Mmux_Period_1_81_1189
    );
  XLXI_31_XLXI_22_Mmux_Period_18_8_SW0 : LUT4
    generic map(
      INIT => X"1115"
    )
    port map (
      I0 => XLXI_31_XLXI_27_Tone_DUMMY_0_2_1936,
      I1 => N667,
      I2 => XLXI_31_XLXI_27_Tone_DUMMY_0_64_1940,
      I3 => XLXI_31_XLXI_27_Tone_DUMMY_0_48_1938,
      O => N339
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXN_232(9),
      I1 => XLXI_31_XLXN_232(17),
      I2 => XLXI_31_XLXN_232(2),
      I3 => XLXI_31_XLXN_232(10),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(2)
    );
  XLXI_31_XLXI_27_Tone_DUMMY_2_90 : LUT4
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => XLXI_31_XLXI_27_state(0),
      I1 => Tone_2_OBUF_338,
      I2 => XLXI_31_XLXI_27_Tone_DUMMY_2_45_1947,
      I3 => XLXI_31_XLXI_27_Tone_DUMMY_2_14_1945,
      O => XLXI_31_XLXN_371(2)
    );
  XLXI_31_XLXI_22_Period_16_mux00051 : LUT4
    generic map(
      INIT => X"0041"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => N664,
      O => XLXI_31_XLXI_22_Period_16_mux0005
    );
  XLXI_31_XLXI_22_Period_5_mux00021_SW0 : LUT4
    generic map(
      INIT => X"0900"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXN_373(1),
      O => N233
    );
  XLXI_31_XLXI_22_Tone_1_11_SW0 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_N66,
      I2 => XLXI_31_XLXI_22_N44,
      I3 => XLXI_31_XLXI_22_Mrom_rom00004,
      O => N148
    );
  XLXI_31_XLXI_22_Mmux_Period_17_10 : LUT4
    generic map(
      INIT => X"FFF4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_21_mux0000,
      I2 => XLXI_31_XLXI_22_Period_17_mux0005,
      I3 => XLXI_31_XLXI_22_Period_20_mux0000,
      O => XLXI_31_XLXI_22_Mmux_Period_17_10_1173
    );
  XLXI_31_FileReader_Tone_0_51 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(5),
      I1 => XLXI_31_FileReader_Tone_Char(6),
      I2 => XLXI_31_FileReader_Tone_Char(7),
      I3 => XLXI_31_FileReader_Tone_Char(2),
      O => XLXI_31_FileReader_N19
    );
  XLXI_31_XLXI_22_Mrom_rom000031 : LUT4
    generic map(
      INIT => X"5153"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXN_373(0),
      O => XLXI_31_XLXI_22_Mrom_rom00003
    );
  XLXI_31_XLXI_25_Sample_Rdy_not00011 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_and00012,
      I1 => N292,
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_and00011,
      I3 => N676,
      O => XLXI_31_XLXI_25_Sample_Rdy_not0001
    );
  XLXI_31_XLXI_22_Mmux_Period_3_81 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => XLXI_31_XLXI_22_N40,
      I1 => XLXI_31_XLXN_371(0),
      I2 => XLXI_31_XLXI_22_Mrom_rom00007,
      I3 => XLXI_31_XLXI_22_Period_16_mux0008,
      O => XLXI_31_XLXI_22_Mmux_Period_3_81_1204
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_3_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => N357,
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(3)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_6_21_SW1 : LUT3
    generic map(
      INIT => X"93"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(1),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_B(2),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_B(0),
      O => N359
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_2_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => N359,
      I1 => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_cy(29),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_le0000,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      O => XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000(2)
    );
  XLXI_31_XLXI_22_Mmux_Period_1_9_f5_SW0 : LUT4
    generic map(
      INIT => X"E4A0"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXN_371(1),
      I2 => XLXI_31_XLXI_22_Period_4_mux0002,
      I3 => XLXI_31_XLXI_22_Mmux_Period_1_10_1182,
      O => N381
    );
  XLXI_31_XLXI_22_Mmux_Period_1_9_f5_SW1 : LUT4
    generic map(
      INIT => X"F5B1"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXN_371(1),
      I2 => N657,
      I3 => XLXI_31_XLXI_22_Mmux_Period_1_10_1182,
      O => N382
    );
  XLXI_31_XLXI_22_Tone_3_14_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N382,
      I1 => N381,
      I2 => XLXI_31_XLXI_22_Mmux_Period_1_11_1183,
      O => N138
    );
  XLXI_31_XLXI_22_Period_13_mux00111 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => N144,
      I1 => N670,
      I2 => N385,
      O => XLXI_31_XLXI_22_Period_13_mux0011
    );
  XLXI_31_XLXI_22_Period_2_mux000121 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXI_22_N35,
      I3 => N653,
      O => XLXI_31_XLXI_22_N41
    );
  XLXI_31_XLXI_22_Period_17_mux00031 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_N66,
      I2 => XLXI_31_XLXI_22_N44,
      I3 => N640,
      O => XLXI_31_XLXI_22_Period_17_mux0003
    );
  XLXI_31_XLXI_22_Period_18_mux00031 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(2),
      I3 => N387,
      O => XLXI_31_XLXI_22_Period_18_mux0003
    );
  XLXI_31_XLXI_22_Period_5_mux0004 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N389,
      O => XLXI_31_XLXI_22_Period_5_mux0004_1351
    );
  XLXI_31_XLXI_22_Period_6_mux00021_SW0 : LUT4
    generic map(
      INIT => X"BEBD"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(1),
      I3 => XLXI_31_XLXN_373(2),
      O => N391
    );
  XLXI_31_XLXI_22_Period_10_mux00001 : LUT4
    generic map(
      INIT => X"2202"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => N409,
      O => XLXI_31_XLXI_22_Period_10_mux0000
    );
  XLXI_31_XLXI_22_Period_10_mux00011 : LUT4
    generic map(
      INIT => X"2202"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXI_22_N7,
      O => XLXI_31_XLXI_22_Period_10_mux0001
    );
  XLXI_31_XLXI_22_Period_11_mux00061 : LUT4
    generic map(
      INIT => X"1030"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I3 => N413,
      O => XLXI_31_XLXI_22_Period_11_mux0006
    );
  XLXI_31_XLXI_22_Period_9_mux00011_SW0 : LUT4
    generic map(
      INIT => X"B8BB"
    )
    port map (
      I0 => N209,
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      O => N417
    );
  XLXI_31_XLXI_22_Mmux_Period_4_11 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => N426,
      I2 => XLXI_31_XLXI_22_Period_15_mux0005,
      I3 => N655,
      O => XLXI_31_XLXI_22_Mmux_Period_4_11_1207
    );
  XLXI_31_XLXI_22_Mmux_Period_2_10_SW1 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => N430,
      I3 => XLXI_31_XLXI_22_Period_2_mux000111_1343,
      O => N278
    );
  XLXI_31_XLXI_27_Tone_DUMMY_3_54 : LUT4
    generic map(
      INIT => X"6000"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(4),
      I1 => XLXI_31_FileReader_Tone_Char(1),
      I2 => XLXI_31_FileReader_Tone_and0000,
      I3 => XLXI_31_XLXI_27_Tone_DUMMY_3_52_1950,
      O => XLXI_31_XLXI_27_Tone_DUMMY_3_54_1951
    );
  XLXI_31_XLXI_27_Tone_DUMMY_2_45_SW0 : LUT4
    generic map(
      INIT => X"FDD5"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(5),
      I1 => XLXI_31_FileReader_Tone_Char(1),
      I2 => XLXI_31_FileReader_Tone_Char(0),
      I3 => XLXI_31_FileReader_Tone_Char(4),
      O => N434
    );
  XLXI_31_XLXI_22_Period_12_mux00041 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(3),
      I3 => N436,
      O => XLXI_31_XLXI_22_Period_12_mux0004
    );
  XLXI_31_XLXI_22_Period_8_mux00011 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(3),
      I3 => N438,
      O => XLXI_31_XLXI_22_Period_8_mux0001
    );
  XLXI_31_XLXI_22_Mmux_Period_2_10_SW0_SW0 : LUT4
    generic map(
      INIT => X"FE6E"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXN_373(3),
      O => N440
    );
  XLXI_31_XLXI_22_Period_12_mux00032 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N442,
      O => XLXI_31_XLXI_22_Period_12_mux0003
    );
  XLXI_31_XLXI_22_Mmux_Period_13_9 : LUT4
    generic map(
      INIT => X"048C"
    )
    port map (
      I0 => N144,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N384,
      I3 => N385,
      O => XLXI_31_XLXI_22_Mmux_Period_13_9_1147
    );
  XLXI_31_XLXI_22_Mrom_rom000091 : LUT4
    generic map(
      INIT => X"5143"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(1),
      O => XLXI_31_XLXI_22_Mrom_rom00009
    );
  XLXI_31_XLXI_22_Mmux_Period_4_11_SW0 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      O => N426
    );
  XLXI_31_XLXI_22_Period_1_mux00041_SW0 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(3),
      O => N334
    );
  XLXI_31_XLXI_22_Period_3_mux00051_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(1),
      O => N280
    );
  XLXI_31_XLXI_22_Period_6_mux00031_SW0 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXN_373(2),
      O => N235
    );
  XLXI_31_XLXI_22_Period_13_mux00091_SW0 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXN_373(0),
      O => N282
    );
  XLXI_31_XLXI_22_Tone_3_130 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(1),
      I3 => XLXI_31_XLXN_373(3),
      O => XLXI_31_XLXI_22_Tone_3_130_1377
    );
  XLXI_31_XLXI_22_Period_13_mux00021 : LUT4
    generic map(
      INIT => X"2300"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      O => XLXI_31_XLXI_22_Period_13_mux0002
    );
  XLXI_31_XLXI_22_Period_9_mux00070 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(1),
      I3 => XLXI_31_XLXN_373(2),
      O => XLXI_31_XLXI_22_Period_9_mux00070_1369
    );
  XLXI_31_XLXI_22_Tone_3_1539 : LUT4
    generic map(
      INIT => X"2315"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXN_373(0),
      O => XLXI_31_XLXI_22_Tone_3_1539_1379
    );
  XLXI_31_XLXI_22_Period_10_mux00081 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(3),
      I2 => N448,
      I3 => XLXI_31_XLXI_22_Period_15_mux0005,
      O => XLXI_31_XLXI_22_Period_10_mux0008
    );
  XLXI_31_XLXI_22_Period_10_mux00072 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(3),
      I3 => N450,
      O => XLXI_31_XLXI_22_Period_10_mux0007
    );
  XLXI_31_XLXI_22_Mmux_Period_8_9_SW0 : LUT3
    generic map(
      INIT => X"D9"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(1),
      O => N454
    );
  XLXI_31_XLXI_22_Mmux_Period_8_9 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_371(0),
      I3 => N454,
      O => XLXI_31_XLXI_22_Mmux_Period_8_9_1248
    );
  XLXI_31_XLXI_22_Mmux_Period_17_9 : LUT4
    generic map(
      INIT => X"B3A0"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => XLXI_31_XLXI_22_Mrom_rom00004,
      I3 => XLXI_31_XLXI_22_Period_21_mux0000,
      O => XLXI_31_XLXI_22_Mmux_Period_17_9_1175
    );
  XLXI_31_XLXI_27_Tone_DUMMY_0_2 : LUT4
    generic map(
      INIT => X"0E0F"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(5),
      I1 => XLXI_31_XLXI_4_state(7),
      I2 => XLXI_31_XLXI_27_state(0),
      I3 => N456,
      O => XLXI_31_XLXI_27_Tone_DUMMY_0_2_1936
    );
  XLXI_31_XLXI_22_Period_9_mux0005_SW1 : LUT4
    generic map(
      INIT => X"FE74"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(3),
      O => N460
    );
  XLXI_31_XLXI_22_Mmux_Period_4_8 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N462,
      I3 => N463,
      O => XLXI_31_XLXI_22_Mmux_Period_4_8_1213
    );
  XLXI_31_XLXI_22_Period_2_mux00041_SW1 : LUT4
    generic map(
      INIT => X"FAB9"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(2),
      O => N465
    );
  XLXI_31_XLXI_22_Period_5_mux00061 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N467,
      O => XLXI_31_XLXI_22_Period_5_mux0006
    );
  XLXI_31_XLXI_22_Period_10_mux00031 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N469,
      O => XLXI_31_XLXI_22_Period_10_mux0003
    );
  XLXI_31_XLXI_22_Period_1_mux0003_SW1 : LUT4
    generic map(
      INIT => X"FBE8"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXN_373(1),
      O => N471
    );
  XLXI_31_XLXI_22_Period_2_mux00031 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N473,
      O => XLXI_31_XLXI_22_Period_2_mux0003
    );
  XLXI_31_XLXI_22_Mmux_Period_1_7 : LUT4
    generic map(
      INIT => X"3B08"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N471,
      I3 => XLXI_31_XLXI_22_Period_10_mux0008,
      O => XLXI_31_XLXI_22_Mmux_Period_1_7_1186
    );
  XLXI_31_XLXI_22_Mmux_Period_4_8_SW0 : LUT4
    generic map(
      INIT => X"ABA9"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXN_373(0),
      O => N462
    );
  XLXI_31_XLXI_22_Mmux_Period_4_7 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_15_mux0005,
      I2 => N475,
      I3 => XLXI_31_XLXI_22_Period_4_mux0002,
      O => XLXI_31_XLXI_22_Mmux_Period_4_7_1210
    );
  XLXI_31_XLXI_22_Period_9_mux00021 : LUT4
    generic map(
      INIT => X"0017"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => N343,
      O => XLXI_31_XLXI_22_Period_9_mux0002
    );
  XLXI_31_XLXI_22_Mmux_Period_4_81_SW1 : LUT4
    generic map(
      INIT => X"FFAD"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => N123,
      O => N480
    );
  XLXI_31_XLXI_22_Mmux_Period_4_81 : LUT4
    generic map(
      INIT => X"02CE"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N479,
      I3 => N480,
      O => XLXI_31_XLXI_22_Mmux_Period_4_81_1214
    );
  XLXI_31_XLXI_22_Mmux_Period_0_9_SW0 : LUT4
    generic map(
      INIT => X"F2E7"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXN_373(2),
      O => N482
    );
  XLXI_31_XLXI_22_Mmux_Period_0_9 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => N482,
      O => XLXI_31_XLXI_22_Mmux_Period_0_9_1115
    );
  XLXI_31_XLXI_22_Mmux_Period_4_81_SW0 : LUT4
    generic map(
      INIT => X"FF6C"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(3),
      O => N479
    );
  XLXI_31_XLXI_22_Mmux_Period_4_7_SW0 : LUT4
    generic map(
      INIT => X"FFAD"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(2),
      I3 => N343,
      O => N475
    );
  XLXI_31_XLXI_22_Mmux_Period_9_6_f5 : MUXF5
    port map (
      I0 => N490,
      I1 => N491,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_9_6_f5_1249
    );
  XLXI_31_XLXI_22_Mmux_Period_9_6_f5_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_9_mux0003_1366,
      I2 => XLXI_31_XLXI_22_Period_9_mux0002,
      O => N491
    );
  XLXI_31_XLXI_22_Mmux_Period_6_9_f5 : MUXF5
    port map (
      I0 => N492,
      I1 => N493,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_6_9_f5_1231
    );
  XLXI_31_XLXI_22_Mmux_Period_6_9_f5_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_13_mux0004,
      I2 => XLXI_31_XLXI_22_Period_6_mux0001,
      O => N493
    );
  XLXI_31_XLXI_22_Mmux_Period_9_4_SW0 : MUXF5
    port map (
      I0 => N494,
      I1 => N495,
      S => XLXI_31_XLXN_371(1),
      O => N229
    );
  XLXI_31_XLXI_22_Mmux_Period_9_4_SW0_G : LUT4
    generic map(
      INIT => X"B8BB"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_9_mux0006,
      I1 => XLXI_31_XLXN_371(0),
      I2 => XLXI_31_XLXI_22_Period_9_mux00070_1369,
      I3 => N199,
      O => N495
    );
  XLXI_31_XLXI_22_Period_11_mux00042_SW0 : MUXF5
    port map (
      I0 => N496,
      I1 => N497,
      S => XLXI_31_XLXI_27_state(0),
      O => N144
    );
  XLXI_31_XLXI_22_Period_11_mux00042_SW0_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(0),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(6),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(7),
      I3 => N142,
      O => N496
    );
  XLXI_31_XLXI_22_Period_11_mux00042_SW0_G : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => XLXI_31_FileReader_Octave_Char(3),
      I1 => XLXI_31_FileReader_Octave_Char(0),
      I2 => XLXI_31_FileReader_Octave_and0000,
      O => N497
    );
  XLXI_31_XLXI_22_Tone_3_128 : MUXF5
    port map (
      I0 => N498,
      I1 => N499,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Tone_3_128_1376
    );
  XLXI_31_XLXI_22_Tone_3_128_G : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_3_mux0001,
      I2 => XLXI_31_XLXN_371(2),
      I3 => XLXI_31_XLXI_22_Period_3_mux0002,
      O => N499
    );
  XLXI_31_XLXI_22_Mmux_Period_8_9_f5_SW0 : MUXF5
    port map (
      I0 => N500,
      I1 => N501,
      S => XLXI_31_XLXN_371(2),
      O => N250
    );
  XLXI_31_XLXI_22_Mmux_Period_8_9_f5_SW0_F : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_13_mux0010,
      I2 => XLXI_31_XLXN_371(1),
      I3 => XLXI_31_XLXI_22_Period_8_mux0002,
      O => N500
    );
  XLXI_31_XLXI_22_Mmux_Period_8_9_f5_SW0_G : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXI_22_N21,
      I2 => XLXI_31_XLXI_22_N13,
      I3 => XLXI_31_XLXI_22_N38,
      O => N501
    );
  XLXI_31_XLXI_22_Mmux_Period_8_9_f5_SW1 : MUXF5
    port map (
      I0 => N502,
      I1 => N503,
      S => XLXI_31_XLXN_371(2),
      O => N251
    );
  XLXI_31_XLXI_22_Mmux_Period_8_9_f5_SW1_F : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_13_mux0010,
      I2 => XLXI_31_XLXN_371(1),
      I3 => XLXI_31_XLXI_22_Period_8_mux0002,
      O => N502
    );
  XLXI_31_XLXI_22_Mmux_Period_8_9_f5_SW1_G : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXI_22_N21,
      I2 => XLXI_31_XLXI_22_N13,
      I3 => XLXI_31_XLXI_22_N38,
      O => N503
    );
  XLXI_31_XLXI_22_Period_13_mux00101 : MUXF5
    port map (
      I0 => N504,
      I1 => N505,
      S => XLXI_31_XLXN_373(3),
      O => XLXI_31_XLXI_22_Period_13_mux0010
    );
  XLXI_31_XLXI_22_Period_13_mux00101_F : LUT4
    generic map(
      INIT => X"7444"
    )
    port map (
      I0 => N144,
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      O => N504
    );
  XLXI_31_XLXI_22_Period_13_mux00101_G : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => N144,
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(2),
      O => N505
    );
  XLXI_31_XLXI_22_Tone_3_519 : MUXF5
    port map (
      I0 => N506,
      I1 => N507,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Tone_3_519_1384
    );
  XLXI_31_XLXI_22_Tone_3_519_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXN_371(1),
      I2 => XLXI_31_XLXI_22_Mmux_Period_11_11_1125,
      I3 => XLXI_31_XLXI_22_Mmux_Period_11_10_1124,
      O => N506
    );
  XLXI_31_XLXI_22_Tone_3_519_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Period_18_mux0003,
      I2 => XLXI_31_XLXI_22_N26,
      I3 => XLXI_31_XLXI_22_Period_17_mux0005,
      O => N507
    );
  XLXI_31_XLXI_22_Mmux_Period_15_9_f5 : MUXF5
    port map (
      I0 => N508,
      I1 => N509,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_15_9_f5_1164
    );
  XLXI_31_XLXI_22_Mmux_Period_15_9_f5_F : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_N10,
      I2 => XLXI_31_XLXI_22_N38,
      I3 => XLXI_31_XLXI_22_Period_15_mux0004,
      O => N508
    );
  XLXI_31_XLXI_22_Mmux_Period_15_9_f5_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_15_mux0002,
      I2 => XLXI_31_XLXI_22_Period_15_mux0001,
      O => N509
    );
  XLXI_31_XLXI_22_Mmux_Period_14_9_f5 : MUXF5
    port map (
      I0 => N510,
      I1 => N511,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_14_9_f5_1156
    );
  XLXI_31_XLXI_22_Mmux_Period_14_9_f5_G : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_6_mux0007,
      I2 => XLXI_31_XLXI_22_Period_14_mux0002,
      I3 => XLXI_31_XLXI_22_N41,
      O => N511
    );
  XLXI_31_XLXI_22_Period_11_mux00042_SW2 : MUXF5
    port map (
      I0 => N512,
      I1 => N513,
      S => XLXI_31_XLXI_27_state(0),
      O => N329
    );
  XLXI_31_XLXI_22_Period_11_mux00042_SW2_F : LUT3
    generic map(
      INIT => X"D9"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(1),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(3),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(2),
      O => N512
    );
  XLXI_31_XLXI_22_Period_11_mux00042_SW2_G : LUT4
    generic map(
      INIT => X"B5FF"
    )
    port map (
      I0 => N201,
      I1 => N169,
      I2 => N171,
      I3 => XLXI_31_FileReader_Octave_and0000,
      O => N513
    );
  XLXI_31_XLXI_22_Mmux_Period_10_9_f5_SW0 : MUXF5
    port map (
      I0 => N514,
      I1 => N515,
      S => XLXI_31_XLXN_371(2),
      O => N211
    );
  XLXI_31_XLXI_22_Mmux_Period_10_9_f5_SW0_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => XLXI_31_XLXN_371(1),
      I1 => XLXI_31_XLXN_371(0),
      I2 => XLXI_31_XLXI_22_Period_10_mux0000,
      I3 => XLXI_31_XLXI_22_Period_10_mux0001,
      O => N514
    );
  XLXI_31_XLXI_22_Mmux_Period_10_9_f5_SW0_G : LUT4
    generic map(
      INIT => X"7200"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N38,
      O => N515
    );
  XLXI_31_XLXI_22_Mmux_Period_10_9_f5_SW1 : MUXF5
    port map (
      I0 => N516,
      I1 => N517,
      S => XLXI_31_XLXN_371(2),
      O => N212
    );
  XLXI_31_XLXI_22_Mmux_Period_10_9_f5_SW1_F : LUT4
    generic map(
      INIT => X"F7B3"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXN_371(1),
      I2 => XLXI_31_XLXI_22_Period_10_mux0000,
      I3 => XLXI_31_XLXI_22_Period_10_mux0001,
      O => N516
    );
  XLXI_31_XLXI_22_Mmux_Period_10_9_f5_SW1_G : LUT4
    generic map(
      INIT => X"7200"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N38,
      O => N517
    );
  XLXI_31_XLXI_22_Mmux_Period_17_2_f5 : MUXF5
    port map (
      I0 => N518,
      I1 => N519,
      S => XLXI_31_XLXN_371(3),
      O => XLXI_31_XLXN_232(17)
    );
  XLXI_31_XLXI_22_Mmux_Period_17_2_f5_F : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Mmux_Period_17_8_f5_1174,
      I2 => XLXI_31_XLXI_22_Tone_1_2,
      O => N518
    );
  XLXI_31_XLXI_22_Mmux_Period_17_2_f5_G : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Period_19_mux0001,
      I2 => XLXI_31_XLXI_22_N37,
      I3 => XLXI_31_XLXI_22_Tone_1_11_1372,
      O => N519
    );
  XLXI_31_XLXI_22_Mmux_Period_9_2_f5 : MUXF5
    port map (
      I0 => N520,
      I1 => N521,
      S => XLXI_31_XLXN_371(3),
      O => XLXI_31_XLXN_232(9)
    );
  XLXI_31_XLXI_22_Mmux_Period_9_2_f5_F : LUT4
    generic map(
      INIT => X"C0E2"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXN_371(2),
      I2 => N229,
      I3 => N263,
      O => N520
    );
  XLXI_31_XLXI_22_Mmux_Period_9_2_f5_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Mmux_Period_9_6_f5_1249,
      I2 => XLXI_31_XLXI_22_Period_9_mux0001,
      O => N521
    );
  XLXI_31_XLXI_22_Mmux_Period_2_9_f5 : MUXF5
    port map (
      I0 => N522,
      I1 => N523,
      S => XLXI_31_XLXN_371(0),
      O => XLXI_31_XLXI_22_Mmux_Period_2_9_f5_1198
    );
  XLXI_31_XLXI_22_Mmux_Period_2_9_f5_G : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(1),
      I1 => XLXI_31_XLXI_22_Period_16_mux0005,
      I2 => XLXI_31_XLXI_22_Period_2_mux0003,
      I3 => N278,
      O => N523
    );
  XLXI_31_XLXI_22_Mrom_rom0000811_SW0 : MUXF5
    port map (
      I0 => N524,
      I1 => N525,
      S => XLXI_31_XLXI_27_state(0),
      O => N209
    );
  XLXI_31_XLXI_22_Mrom_rom0000811_SW0_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(0),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(6),
      I2 => XLXI_31_XLXI_28_Current_Oct_Num(7),
      I3 => N142,
      O => N524
    );
  XLXI_31_XLXI_22_Mrom_rom0000811_SW0_G : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => XLXI_31_FileReader_Octave_Char(3),
      I1 => XLXI_31_FileReader_Octave_Char(0),
      I2 => XLXI_31_FileReader_Octave_and0000,
      O => N525
    );
  XLXI_31_XLXI_22_Mmux_Period_12_9_f5 : MUXF5
    port map (
      I0 => N526,
      I1 => N527,
      S => XLXI_31_XLXN_371(0),
      O => XLXI_31_XLXI_22_Mmux_Period_12_9_f5_1140
    );
  XLXI_31_XLXI_22_Mmux_Period_12_9_f5_F : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(1),
      I1 => XLXI_31_XLXI_22_N27,
      I2 => XLXI_31_XLXI_22_Period_12_mux0004,
      I3 => XLXI_31_XLXI_22_Period_3_mux0008,
      O => N526
    );
  XLXI_31_XLXI_22_Mmux_Period_12_9_f5_G : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(1),
      I1 => XLXI_31_XLXI_22_N14,
      I2 => XLXI_31_XLXI_22_Period_12_mux0003,
      I3 => XLXI_31_XLXI_22_N62,
      O => N527
    );
  XLXI_31_XLXI_22_Mmux_Period_11_10 : MUXF5
    port map (
      I0 => N528,
      I1 => N529,
      S => XLXI_31_XLXN_371(0),
      O => XLXI_31_XLXI_22_Mmux_Period_11_10_1124
    );
  XLXI_31_XLXI_22_Mmux_Period_11_10_G : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_15_mux0005,
      I1 => XLXI_31_XLXI_22_Period_19_mux0001,
      I2 => XLXI_31_XLXI_22_N26,
      O => N529
    );
  XLXI_31_XLXI_22_Mmux_Period_13_9_f5 : MUXF5
    port map (
      I0 => N530,
      I1 => N531,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_13_9_f5_1148
    );
  XLXI_31_XLXI_22_Mmux_Period_13_9_f5_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_13_mux0004,
      I2 => XLXI_31_XLXI_22_Period_13_mux0003,
      O => N530
    );
  XLXI_31_XLXI_22_Mmux_Period_13_9_f5_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_13_mux0002,
      I2 => XLXI_31_XLXI_22_Period_13_mux0001,
      O => N531
    );
  XLXI_31_XLXI_22_Mmux_Period_16_9_f5 : MUXF5
    port map (
      I0 => N532,
      I1 => N533,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Mmux_Period_16_9_f5_1172
    );
  XLXI_31_XLXI_22_Mmux_Period_16_9_f5_F : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_16_mux0003,
      I2 => XLXI_31_XLXI_22_Period_16_mux0004,
      O => N532
    );
  XLXI_31_XLXI_22_Mmux_Period_16_9_f5_G : LUT4
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_16_mux0002,
      I2 => XLXI_31_XLXI_22_Period_17_mux0007,
      I3 => XLXI_31_XLXI_22_N37,
      O => N533
    );
  XLXI_31_XLXI_22_Tone_1_223_SW0 : MUXF5
    port map (
      I0 => N534,
      I1 => N535,
      S => XLXI_31_XLXN_371(1),
      O => N263
    );
  XLXI_31_XLXI_22_Tone_1_223_SW0_F : LUT4
    generic map(
      INIT => X"0007"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_Mrom_rom00004,
      I2 => XLXI_31_XLXI_22_Period_15_mux0005,
      I3 => XLXI_31_XLXI_22_N26,
      O => N534
    );
  XLXI_31_XLXI_22_Tone_1_223_SW0_G : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_15_mux0005,
      I1 => XLXI_31_XLXI_22_N52,
      I2 => XLXI_31_XLXI_22_Period_21_mux0000,
      I3 => XLXI_31_XLXI_22_N37,
      O => N535
    );
  XLXI_31_XLXI_22_Mmux_Period_2_9_f5_F : LUT4
    generic map(
      INIT => X"220A"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N440,
      I2 => N465,
      I3 => XLXI_31_XLXN_371(1),
      O => N522
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_16_1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(15),
      I2 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(15),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_16_1_767
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_17_1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(14),
      I2 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(14),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_17_1_768
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_22_1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(9),
      I2 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(9),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_22_1_774
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_23_1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(8),
      I2 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(8),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_23_1_775
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_25_1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(6),
      I2 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(6),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_25_1_777
    );
  XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_27_1 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I1 => XLXI_31_FileReader_Playing_Clk_Div_Counter_addsub0000(4),
      I2 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I3 => XLXI_31_FileReader_Playing_Clk_Div_Counter(4),
      O => XLXI_31_FileReader_Playing_Clk_Div_Counter_mux0001_27_1_779
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_4_31_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_A(6),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_A(5),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_A(4),
      O => N300
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_6_21_SW0 : LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(2),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_B(3),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_B(0),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_B(1),
      O => N357
    );
  XLXI_31_XLXI_22_Mmux_Period_9_6_f5_F : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N460,
      I3 => XLXI_31_XLXI_22_Period_9_mux0004,
      O => N490
    );
  XLXI_31_XLXI_28_Current_Oct_Num_not000231 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXI_28_N11,
      I1 => XLXI_31_XLXI_28_Current_Oct_Num_not000224_1991,
      I2 => XLXN_118,
      I3 => XLXN_119,
      O => XLXI_31_XLXI_28_Current_Oct_Num_not0002
    );
  XLXI_31_XLXI_22_Tone_3_128_F_SW0 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_14_cmp_eq0000,
      I2 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I3 => XLXI_31_XLXI_22_Period_9_mux0008,
      O => N536
    );
  XLXI_31_XLXI_22_Tone_3_128_F : LUT4
    generic map(
      INIT => X"5455"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Period_17_mux0007,
      I2 => XLXI_31_XLXI_22_N37,
      I3 => N536,
      O => N498
    );
  XLXI_31_XLXI_22_Mmux_Period_14_8_SW2 : LUT4
    generic map(
      INIT => X"86A6"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_371(0),
      O => N538
    );
  XLXI_31_XLXI_22_Mmux_Period_14_8 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => N538,
      O => XLXI_31_XLXI_22_Mmux_Period_14_8_1153
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_1_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(1),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_1_1_934
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_0_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(0),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_0_1_923
    );
  XLXI_31_XLXI_27_File_Source_Selected_not00011 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => XLXN_119,
      I1 => XLXI_31_XLXI_27_state(0),
      I2 => XLXI_31_XLXI_27_next_state_0_and0000,
      I3 => N18,
      O => XLXI_31_XLXI_27_File_Source_Selected_not0001
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_2_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(2),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_2_1_945
    );
  XLXI_31_XLXI_27_File_Source_Selected_and00001 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => N18,
      I1 => XLXI_31_XLXI_27_next_state_0_and0000,
      I2 => XLXN_119,
      I3 => XLXI_31_XLXI_27_state(0),
      O => XLXI_31_XLXI_27_File_Source_Selected_and0000
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_3_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(3),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_3_1_948
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_4_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(4),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_4_1_949
    );
  XLXI_31_XLXI_22_Mmux_Period_3_8_SW0 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(1),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      O => N267
    );
  XLXI_31_XLXI_22_Tone_3_SW0_SW0 : LUT4
    generic map(
      INIT => X"0042"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(1),
      I3 => XLXI_31_XLXN_373(3),
      O => N227
    );
  XLXI_31_XLXI_22_Period_12_mux00081 : LUT4
    generic map(
      INIT => X"0900"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      O => XLXI_31_XLXI_22_Period_12_mux0008
    );
  XLXI_31_XLXI_22_Period_16_mux00061 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      O => XLXI_31_XLXI_22_Period_16_mux0006
    );
  XLXI_31_XLXI_22_Tone_3_40 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(1),
      I3 => XLXI_31_XLXN_373(3),
      O => XLXI_31_XLXI_22_Tone_3_40_1382
    );
  XLXI_31_FileReader_Playing_Time_mux0000_0_21 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXN_153,
      I1 => XLXI_31_FileReader_State_FSM_FFd5_1075,
      I2 => XLXI_31_FileReader_Msub_Playing_Time_sub0000_cy(6),
      I3 => XLXN_155(7),
      O => XLXI_31_FileReader_N5
    );
  XLXI_31_FileReader_Playing_Time_mux0000_24_14 : LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      I0 => XLXN_153,
      I1 => XLXI_31_FileReader_State_FSM_FFd5_1075,
      I2 => XLXN_155(7),
      I3 => XLXI_31_FileReader_Msub_Playing_Time_sub0000_cy(6),
      O => XLXI_31_FileReader_Playing_Time_mux0000_24_14_1042
    );
  XLXI_31_FileReader_Playing_Time_mux0000_26_17 : LUT4
    generic map(
      INIT => X"2800"
    )
    port map (
      I0 => XLXN_153,
      I1 => XLXN_155(4),
      I2 => XLXN_155(5),
      I3 => XLXI_31_FileReader_State_FSM_FFd5_1075,
      O => XLXI_31_FileReader_Playing_Time_mux0000_26_17_1046
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_5_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(5),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_5_1_950
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_6_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(6),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_6_1_951
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_7_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(7),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_7_1_952
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_8_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(8),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_8_1_953
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_9_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(9),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_9_1_954
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_10_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(10),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_10_1_924
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_11_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(11),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_11_1_925
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_12_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(12),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_12_1_926
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_13_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(13),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_13_1_927
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_14_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(14),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_14_1_928
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_15_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(15),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_15_1_929
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_16_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(16),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_16_1_930
    );
  XLXI_31_XLXI_22_Mmux_Period_6_9_f5_F : LUT4
    generic map(
      INIT => X"3B08"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N391,
      I3 => XLXI_31_XLXI_22_Period_10_mux0000,
      O => N492
    );
  XLXI_31_XLXI_22_Period_11_mux00051 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_N35,
      I2 => XLXI_31_XLXI_22_Mrom_rom00004,
      I3 => XLXI_31_XLXI_22_Period_19_mux0001,
      O => XLXI_31_XLXI_22_Period_11_mux0005
    );
  XLXI_31_XLXI_22_Mmux_Period_18_8 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N339,
      I2 => XLXI_31_XLXI_22_N35,
      I3 => XLXI_31_XLXI_22_Period_21_mux0000,
      O => XLXI_31_XLXI_22_Mmux_Period_18_8_1179
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_17_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(17),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_17_1_931
    );
  XLXI_31_XLXI_22_Mmux_Period_2_9 : LUT4
    generic map(
      INIT => X"CC80"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => XLXI_31_XLXI_22_N35,
      I3 => XLXI_31_XLXI_22_Period_21_mux0000,
      O => XLXI_31_XLXI_22_Mmux_Period_2_9_1197
    );
  XLXI_31_XLXI_22_Period_16_mux00021 : LUT4
    generic map(
      INIT => X"3500"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Period_16_mux0002
    );
  XLXI_31_XLXI_22_Period_9_mux00061 : LUT4
    generic map(
      INIT => X"2202"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXI_22_N0,
      O => XLXI_31_XLXI_22_Period_9_mux0006
    );
  XLXI_31_XLXI_22_Mmux_Period_18_9 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXN_373(2),
      O => XLXI_31_XLXI_22_Mmux_Period_18_9_1180
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_18_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(18),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_18_1_932
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_19_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(19),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_19_1_933
    );
  XLXI_31_XLXI_22_Period_8_mux00041 : LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXI_22_N0,
      O => XLXI_31_XLXI_22_Period_8_mux0004
    );
  XLXI_31_XLXI_22_Period_17_mux00041 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_N35,
      I2 => XLXI_31_XLXI_22_Period_19_mux0001,
      O => XLXI_31_XLXI_22_Period_17_mux0004
    );
  XLXI_31_XLXI_22_Period_18_mux00021 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(3),
      I2 => N542,
      O => XLXI_31_XLXI_22_Period_18_mux0002
    );
  XLXI_31_XLXI_22_Mmux_Period_14_9_f5_F_SW0 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXN_373(3),
      O => N546
    );
  XLXI_31_XLXI_22_Mmux_Period_14_9_f5_F : LUT4
    generic map(
      INIT => X"3B08"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N546,
      I3 => N247,
      O => N510
    );
  XLXI_31_XLXI_22_Mmux_Period_2_81_SW0 : LUT4
    generic map(
      INIT => X"EBAA"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(1),
      I3 => XLXI_31_XLXN_373(2),
      O => N548
    );
  XLXI_31_XLXI_22_Mmux_Period_2_81 : LUT4
    generic map(
      INIT => X"3B08"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N548,
      I3 => XLXI_31_XLXI_22_Period_6_mux0001,
      O => XLXI_31_XLXI_22_Mmux_Period_2_81_1196
    );
  XLXI_31_XLXI_22_Mmux_Period_10_9_SW0 : LUT4
    generic map(
      INIT => X"AFA8"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(2),
      O => N550
    );
  XLXI_31_XLXI_22_Mmux_Period_10_9 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N550,
      O => XLXI_31_XLXI_22_Mmux_Period_10_9_1123
    );
  XLXI_31_XLXI_22_Mmux_Period_14_11_SW0 : LUT4
    generic map(
      INIT => X"6E00"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N38,
      O => N247
    );
  XLXI_31_XLXI_22_Mmux_Period_12_9 : LUT4
    generic map(
      INIT => X"E000"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_371(0),
      I3 => XLXI_31_XLXI_22_N38,
      O => XLXI_31_XLXI_22_Mmux_Period_12_9_1139
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_31_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(31),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_31_1_947
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_30_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(30),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_30_1_946
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_29_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(29),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_29_1_944
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_28_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(28),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_28_1_943
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_27_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(27),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_27_1_942
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_26_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(26),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_26_1_941
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_25_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(25),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_25_1_940
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_24_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(24),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_24_1_939
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_23_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(23),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_23_1_938
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_22_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(22),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_22_1_937
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_21_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(21),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_21_1_936
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_20_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_Counter_addsub0000(20),
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      O => XLXI_31_FileReader_Playing_Time_Counter_mux0000_20_1_935
    );
  XLXI_31_FileReader_Playing_Time_mux0000_24_24 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_24_14_1042,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(7),
      I3 => N556,
      O => XLXI_31_FileReader_Playing_Time_mux0000(24)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_23_10 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(8),
      I3 => N558,
      O => XLXI_31_FileReader_Playing_Time_mux0000(23)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_22_10 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(9),
      I3 => N560,
      O => XLXI_31_FileReader_Playing_Time_mux0000(22)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_21_10 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(10),
      I3 => N562,
      O => XLXI_31_FileReader_Playing_Time_mux0000(21)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_20_10 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(11),
      I3 => N564,
      O => XLXI_31_FileReader_Playing_Time_mux0000(20)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_19_10 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(12),
      I3 => N566,
      O => XLXI_31_FileReader_Playing_Time_mux0000(19)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_18_10 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(13),
      I3 => N568,
      O => XLXI_31_FileReader_Playing_Time_mux0000(18)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_17_10 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(14),
      I3 => N570,
      O => XLXI_31_FileReader_Playing_Time_mux0000(17)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_16_10 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(15),
      I3 => N572,
      O => XLXI_31_FileReader_Playing_Time_mux0000(16)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_15_10 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(16),
      I3 => N574,
      O => XLXI_31_FileReader_Playing_Time_mux0000(15)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_14_10 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(17),
      I3 => N576,
      O => XLXI_31_FileReader_Playing_Time_mux0000(14)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_26_29 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_26_17_1046,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(5),
      I3 => N578,
      O => XLXI_31_FileReader_Playing_Time_mux0000(26)
    );
  XLXI_31_FileReader_Playing_Time_mux0000_25_41 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_25_27_1044,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(6),
      I3 => N580,
      O => XLXI_31_FileReader_Playing_Time_mux0000(25)
    );
  XLXI_31_XLXI_22_Mmux_Period_0_10_SW0 : LUT4
    generic map(
      INIT => X"2C45"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_371(0),
      O => N582
    );
  XLXI_31_XLXI_22_Mmux_Period_0_7_SW0 : LUT4
    generic map(
      INIT => X"EB75"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXN_371(0),
      O => N584
    );
  XLXI_31_XLXI_22_Mmux_Period_0_7 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => N584,
      O => XLXI_31_XLXI_22_Mmux_Period_0_7_1111
    );
  XLXI_31_FileReader_Playing_Time_Counter_mux0000_0_11 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I1 => XLXI_31_FileReader_Playing_Time_Counter_cmp_eq0000,
      I2 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      O => XLXI_31_FileReader_N11
    );
  XLXI_31_FileReader_Playing_Time_and0000127_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd10_1069,
      I1 => XLXI_31_FileReader_State_FSM_FFd2_1071,
      I2 => XLXI_31_FileReader_State_FSM_FFd5_1075,
      I3 => XLXI_31_FileReader_State_FSM_FFd9_1079,
      O => N586
    );
  XLXI_31_XLXI_22_Mmux_Period_8_8_SW0_SW2 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXN_373(3),
      O => N588
    );
  XLXI_31_XLXI_22_Mmux_Period_8_8_SW0 : LUT4
    generic map(
      INIT => X"202F"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N588,
      I2 => XLXI_31_XLXN_371(0),
      I3 => N671,
      O => N269
    );
  XLXI_31_XLXI_22_Period_9_mux00041 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(3),
      I2 => N590,
      O => XLXI_31_XLXI_22_Period_9_mux0004
    );
  XLXI_31_XLXI_22_Mmux_Period_6_8_SW0 : LUT4
    generic map(
      INIT => X"4554"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(1),
      O => N592
    );
  XLXI_31_XLXI_22_Mmux_Period_6_8 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => N592,
      I2 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I3 => XLXI_31_XLXI_22_Period_19_mux0001,
      O => XLXI_31_XLXI_22_Mmux_Period_6_8_1228
    );
  XLXI_31_XLXI_22_Mmux_Period_9_4_SW0_F : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N594,
      I3 => XLXI_31_XLXI_22_Period_9_mux0008,
      O => N494
    );
  XLXI_31_XLXI_22_Mmux_Period_12_7_SW0 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(3),
      O => N596
    );
  XLXI_31_XLXI_22_Mmux_Period_12_7 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(0),
      I2 => N596,
      I3 => XLXI_31_XLXI_22_Period_17_mux0004,
      O => XLXI_31_XLXI_22_Mmux_Period_12_7_1135
    );
  XLXI_31_XLXI_22_Tone_1_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(3),
      I3 => N598,
      O => XLXI_31_XLXI_22_Tone_1_1_1371
    );
  XLXI_31_XLXI_22_Mmux_Period_11_10_F_SW0 : LUT4
    generic map(
      INIT => X"FAA8"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(1),
      I3 => XLXI_31_XLXN_373(0),
      O => N602
    );
  XLXI_31_XLXI_22_Mmux_Period_11_10_F : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N602,
      O => N528
    );
  XLXI_31_FileReader_Playing_Time_and0000127 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd11_1070,
      I1 => XLXI_31_FileReader_Playing_Time_and0000110_1015,
      I2 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I3 => N586,
      O => XLXI_31_FileReader_N3
    );
  XLXI_31_XLXI_22_Mmux_Period_9_4_SW0_F_SW0 : LUT4
    generic map(
      INIT => X"F6E3"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXN_373(2),
      O => N594
    );
  XLXI_31_XLXI_22_Period_13_mux0008 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N604,
      O => XLXI_31_XLXI_22_Period_13_mux0008_1307
    );
  XLXI_31_XLXI_22_Period_8_mux00071 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => N606,
      O => XLXI_31_XLXI_22_Period_8_mux0007
    );
  XLXI_31_XLXI_22_Mmux_Period_4_8_SW1 : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I3 => XLXI_31_XLXI_22_N14,
      O => N463
    );
  XLXI_31_XLXI_22_Period_2_mux000111_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(1),
      I2 => N641,
      O => XLXI_31_XLXI_22_Period_2_mux000111_1343
    );
  XLXI_31_XLXI_27_Octave_DUMMY_1_1 : LUT4
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(1),
      I1 => XLXI_31_XLXI_27_state(0),
      I2 => N638,
      I3 => XLXI_31_FileReader_Octave_and0000,
      O => XLXI_31_XLXI_27_Octave_DUMMY(1)
    );
  XLXI_31_XLXI_22_Period_21_and0000_1 : LUT4
    generic map(
      INIT => X"F0F1"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(6),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(7),
      I2 => XLXI_31_XLXI_27_state(0),
      I3 => N142,
      O => XLXI_31_XLXI_22_Period_21_and00001
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_4_SW1 : LUT4
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_A(4),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(5),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(4),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(3),
      O => N286
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_6_SW1 : LUT4
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_A(6),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(5),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(4),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(3),
      O => N289
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_7_1_SW0 : LUT4
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_A(7),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(5),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(4),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(3),
      O => N294
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_5_1_SW0 : LUT4
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_A(5),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(5),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(4),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(3),
      O => N297
    );
  XLXI_31_XLXI_25_Next_8b_Sample_not0001_SW0 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(10),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(5),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(4),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(3),
      O => N146
    );
  Clk_50MHz_BUFGP : BUFGP
    port map (
      I => Clk_50MHz,
      O => Clk_50MHz_BUFGP_1
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_31_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(31),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(31)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_30_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(30),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(30)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_29_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(29),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(29)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_28_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(28),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(28)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_27_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(27),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(27)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_26_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(26),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(26)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_25_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(25),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(25)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_24_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(24),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(24)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_23_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(23),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(23)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_22_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(22),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(22)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_21_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(21),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(21)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_20_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(20),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(20)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_19_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(19),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(19)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_18_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(18),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(18)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_17_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(17),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(17)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_16_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(16),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(16)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_15_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(15),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(15)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_14_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(14),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(14)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_13_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(13),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(13)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_12_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(12),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(12)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_11_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(11),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(11)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_10_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(10),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(10)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_9_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(9),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(9)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_8_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(8),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(8)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_7_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(7),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(7)
    );
  XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut_6_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_addsub0000(6),
      O => XLXI_31_FileReader_Msub_Playing_Time_addsub0001_lut(6)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_31_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(31),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(31)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_30_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(30),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(30)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_29_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(29),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(29)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_28_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(28),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(28)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_27_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(27),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(27)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_26_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(26),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(26)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_25_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(25),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(25)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_24_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(24),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(24)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_23_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(23),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(23)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_22_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(22),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(22)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_21_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(21),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(21)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_20_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(20),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(20)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_19_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(19),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(19)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_18_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(18),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(18)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_17_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(17),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(17)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_16_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(16),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(16)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_15_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(15),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(15)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_14_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(14),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(14)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_13_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(13),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(13)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_12_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(12),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(12)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_11_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(11),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(11)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_10_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(10),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(10)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_9_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(9),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(9)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_8_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(8),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(8)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_7_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(7),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(7)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_6_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(6),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(6)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_5_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(5),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(5)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_4_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(4),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(4)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_3_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(3),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(3)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_2_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(2),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(2)
    );
  XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut_1_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Clk_Div_Counter(1),
      O => XLXI_31_FileReader_Msub_Playing_Clk_Div_Counter_addsub0000_lut(1)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_31_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(31),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(31)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_30_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(30),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(30)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_29_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(29),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(29)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_28_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(28),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(28)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_27_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(27),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(27)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_26_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(26),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(26)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_25_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(25),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(25)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_24_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(24),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(24)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_23_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(23),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(23)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_22_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(22),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(22)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_21_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(21),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(21)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_20_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(20),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(20)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_19_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(19),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(19)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_18_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(18),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(18)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_17_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(17),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(17)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_16_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(16),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(16)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_15_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(15),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(15)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_14_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(14),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(14)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_13_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(13),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(13)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_12_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(12),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(12)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_11_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(11),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(11)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_10_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(10),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(10)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_9_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(9),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(9)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_8_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(8),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(8)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_7_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(7),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(7)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_6_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(6),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(6)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_5_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(5),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(5)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_4_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(4),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(4)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_3_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(3),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(3)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_2_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(2),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(2)
    );
  XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut_1_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(1),
      O => XLXI_31_FileReader_Msub_Playing_Time_Counter_addsub0000_lut(1)
    );
  XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_lut_0_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(0),
      O => XLXI_31_XLXI_25_Madd_Counter_B_addsub0000_lut(0)
    );
  XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_lut_0_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(0),
      O => XLXI_31_XLXI_25_Madd_Counter_A_addsub0000_lut(0)
    );
  XLXI_31_FileReader_Playing_Stop_not0001_wg_lut_0_INV_0 : INV
    port map (
      I => XLXI_31_FileReader_Playing_Time_Counter(9),
      O => XLXI_31_FileReader_Playing_Stop_not0001_wg_lut(0)
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_eq0000_cy(10),
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0000_INV
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_18_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(18),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(18)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_19_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(19),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(19)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_20_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(20),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(20)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_21_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(21),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(21)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_22_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(22),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(22)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_23_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(23),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(23)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_24_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(24),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(24)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_25_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(25),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(25)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_26_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(26),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(26)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_27_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(27),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(27)
    );
  XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut_29_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_A(31),
      O => XLXI_31_XLXI_25_Mcompar_Counter_A_cmp_gt0000_lut(29)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_14_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(14),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(14)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_15_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(15),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(15)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_16_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(16),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(16)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_17_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(17),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(17)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_18_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(18),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(18)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_19_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(19),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(19)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_20_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(20),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(20)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_21_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(21),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(21)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_22_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(22),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(22)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_23_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(23),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(23)
    );
  XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut_26_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_25_Counter_B(31),
      O => XLXI_31_XLXI_25_Mcompar_Next_8b_Sample_cmp_le0000_lut(26)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut_8_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_28_Current_Oct_Num(31),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_ge0000_lut(8)
    );
  XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut_8_1_INV_0 : INV
    port map (
      I => XLXI_31_XLXI_28_Current_Oct_Num(31),
      O => XLXI_31_XLXI_28_Mcompar_Current_Oct_Num_cmp_le0000_lut(8)
    );
  XLXI_31_XLXI_27_Tone_DUMMY_1_106 : MUXF5
    port map (
      I0 => N608,
      I1 => N609,
      S => XLXI_31_XLXI_27_state(0),
      O => XLXI_31_XLXN_371(1)
    );
  XLXI_31_XLXI_27_Tone_DUMMY_1_106_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(7),
      I1 => XLXI_31_XLXI_4_state(11),
      I2 => XLXI_31_XLXI_4_state(3),
      I3 => N111,
      O => N608
    );
  XLXI_31_XLXI_27_Tone_DUMMY_1_106_G : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => XLXI_31_XLXI_27_Tone_DUMMY_1_15_1942,
      I1 => XLXI_31_XLXI_27_Tone_DUMMY_1_56_1943,
      I2 => XLXI_31_FileReader_Tone_and0000,
      I3 => XLXI_31_FileReader_Tone_Char(3),
      O => N609
    );
  XLXI_31_XLXI_22_Mmux_Period_20_3 : MUXF5
    port map (
      I0 => N610,
      I1 => N611,
      S => XLXI_31_XLXN_371(3),
      O => XLXI_31_XLXN_232(20)
    );
  XLXI_31_XLXI_22_Mmux_Period_20_3_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_20_mux0000,
      I1 => XLXI_31_XLXN_371(1),
      I2 => XLXI_31_XLXN_371(0),
      I3 => XLXI_31_XLXN_371(2),
      O => N610
    );
  XLXI_31_XLXI_22_Mmux_Period_20_3_G : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N39,
      O => N611
    );
  XLXI_31_XLXI_27_Tone_DUMMY_3_94 : MUXF5
    port map (
      I0 => N612,
      I1 => N613,
      S => XLXI_31_XLXI_27_state(0),
      O => XLXI_31_XLXN_371(3)
    );
  XLXI_31_XLXI_27_Tone_DUMMY_3_94_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(9),
      I1 => XLXI_31_XLXI_4_state(11),
      I2 => XLXI_31_XLXI_4_state(10),
      I3 => N103,
      O => N612
    );
  XLXI_31_XLXI_27_Tone_DUMMY_3_94_G : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_XLXI_27_Tone_DUMMY_3_54_1951,
      I1 => XLXI_31_FileReader_N19,
      I2 => XLXI_31_XLXI_27_Tone_DUMMY_3_22_1949,
      O => N613
    );
  XLXI_31_XLXI_22_Tone_3_1554 : MUXF5
    port map (
      I0 => N614,
      I1 => N615,
      S => XLXI_31_XLXN_371(1),
      O => XLXI_31_XLXI_22_Tone_3_1554_1381
    );
  XLXI_31_XLXI_22_Tone_3_1554_F : LUT4
    generic map(
      INIT => X"0D08"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Mrom_rom00003,
      I2 => XLXI_31_XLXN_371(2),
      I3 => XLXI_31_XLXI_22_Mrom_rom00004,
      O => N614
    );
  XLXI_31_XLXI_22_Tone_3_1554_G : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => N582,
      I2 => XLXI_31_XLXN_371(2),
      O => N615
    );
  XLXI_31_XLXI_22_Mmux_Period_19_334 : MUXF5
    port map (
      I0 => N616,
      I1 => N617,
      S => XLXI_31_XLXN_371(3),
      O => XLXI_31_XLXN_232(19)
    );
  XLXI_31_XLXI_22_Mmux_Period_19_334_F : LUT4
    generic map(
      INIT => X"FA40"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Period_21_mux0000,
      I2 => XLXI_31_XLXI_22_Mmux_Period_19_35_1181,
      I3 => XLXI_31_XLXI_22_Period_19_mux0001,
      O => N616
    );
  XLXI_31_XLXI_22_Mmux_Period_19_334_G : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_mux0000,
      I1 => XLXI_31_XLXI_22_N35,
      I2 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I3 => XLXI_31_XLXN_373(1),
      O => N617
    );
  XLXI_31_XLXI_22_Tone_3_8_SW0 : MUXF5
    port map (
      I0 => N618,
      I1 => N619,
      S => XLXI_31_XLXI_22_Mmux_Period_7_11_1233,
      O => N181
    );
  XLXI_31_XLXI_22_Tone_3_8_SW0_F : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXN_371(1),
      I2 => XLXI_31_XLXI_22_Mmux_Period_7_10_1232,
      I3 => XLXI_31_XLXI_22_Period_8_mux0002,
      O => N618
    );
  XLXI_31_XLXI_22_Tone_3_8_SW0_G : LUT4
    generic map(
      INIT => X"B8BB"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_8_mux0002,
      I1 => XLXI_31_XLXN_371(2),
      I2 => XLXI_31_XLXI_22_Mmux_Period_7_10_1232,
      I3 => XLXI_31_XLXN_371(1),
      O => N619
    );
  XLXI_31_XLXI_22_Tone_3_11_SW0 : MUXF5
    port map (
      I0 => N620,
      I1 => N621,
      S => XLXI_31_XLXI_22_Mmux_Period_4_10_1206,
      O => N175
    );
  XLXI_31_XLXI_22_Tone_3_11_SW0_F : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Mmux_Period_4_11_1207,
      I1 => XLXI_31_XLXN_371(2),
      I2 => XLXI_31_XLXN_371(1),
      I3 => XLXI_31_XLXI_22_Period_13_mux0011,
      O => N620
    );
  XLXI_31_XLXI_22_Tone_3_11_SW0_G : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Mmux_Period_4_11_1207,
      I2 => XLXI_31_XLXN_371(1),
      I3 => XLXI_31_XLXI_22_Period_13_mux0011,
      O => N621
    );
  XLXI_31_XLXI_22_Tone_3_1019 : MUXF5
    port map (
      I0 => N622,
      I1 => N623,
      S => XLXI_31_XLXN_371(2),
      O => XLXI_31_XLXI_22_Tone_3_1019_1374
    );
  XLXI_31_XLXI_22_Tone_3_1019_F : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXN_371(1),
      I2 => XLXI_31_XLXI_22_Mmux_Period_5_10_1215,
      I3 => XLXI_31_XLXI_22_Mmux_Period_5_11_1216,
      O => N622
    );
  XLXI_31_XLXI_22_Tone_3_1019_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(3),
      I1 => XLXI_31_XLXI_22_Period_9_mux0008,
      I2 => XLXI_31_XLXI_22_N42,
      I3 => XLXI_31_XLXI_22_Period_17_mux0005,
      O => N623
    );
  XLXI_31_XLXI_27_next_state_0_and00001 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXN_116(4),
      I1 => XLXN_116(5),
      I2 => XLXN_116(6),
      I3 => XLXN_116(2),
      O => XLXI_31_XLXI_27_next_state_0_and00001_1954
    );
  XLXI_31_XLXI_27_next_state_0_and0000_f5 : MUXF5
    port map (
      I0 => XLXI_31_XLXI_27_next_state_0_and00001_1954,
      I1 => N0,
      S => XLXN_116(7),
      O => XLXI_31_XLXI_27_next_state_0_and0000
    );
  XLXI_31_FileReader_Playing_Time_mux0000_0_1_SW21 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I1 => N586,
      I2 => XLXI_31_FileReader_Playing_Time_and0000110_1015,
      I3 => XLXI_31_FileReader_State_FSM_FFd11_1070,
      O => XLXI_31_FileReader_Playing_Time_mux0000_0_1_SW2
    );
  XLXI_31_FileReader_Playing_Time_mux0000_0_1_SW22 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd11_1070,
      I1 => XLXI_31_FileReader_State_FSM_FFd1_1068,
      I2 => N586,
      I3 => XLXI_31_FileReader_Playing_Time_and0000110_1015,
      O => XLXI_31_FileReader_Playing_Time_mux0000_0_1_SW21_1018
    );
  XLXI_31_FileReader_Playing_Time_mux0000_0_1_SW2_f5 : MUXF5
    port map (
      I0 => XLXI_31_FileReader_Playing_Time_mux0000_0_1_SW21_1018,
      I1 => XLXI_31_FileReader_Playing_Time_mux0000_0_1_SW2,
      S => XLXI_31_XLXI_27_File_Source_Selected_1932,
      O => N600
    );
  XLXI_31_FileReader_Playing_Time_mux0000_13_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(18),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_13_2_1028
    );
  XLXI_31_FileReader_Playing_Time_mux0000_12_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(19),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_12_2_1026
    );
  XLXI_31_FileReader_Playing_Time_mux0000_11_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(20),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_11_2_1024
    );
  XLXI_31_FileReader_Playing_Time_mux0000_10_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(21),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_10_2_1022
    );
  XLXI_31_FileReader_Playing_Time_mux0000_9_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(22),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_9_2_1067
    );
  XLXI_31_FileReader_Playing_Time_mux0000_8_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(23),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_8_2_1065
    );
  XLXI_31_FileReader_Playing_Time_mux0000_7_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(24),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_7_2_1063
    );
  XLXI_31_XLXI_4_Tone_DUMMY_2_SW0 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(4),
      I1 => XLXI_31_XLXI_4_state(12),
      LO => N105
    );
  XLXI_31_FileReader_Playing_Time_mux0000_6_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(25),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_6_2_1061
    );
  XLXI_31_FileReader_Playing_Time_mux0000_5_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(26),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_5_2_1059
    );
  XLXI_31_FileReader_Playing_Time_mux0000_4_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(27),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_4_2_1057
    );
  XLXI_31_FileReader_Playing_Time_mux0000_3_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(28),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_3_2_1055
    );
  XLXI_31_FileReader_Playing_Time_mux0000_2_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(29),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_2_2_1051
    );
  XLXI_31_FileReader_Playing_Time_mux0000_1_2 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_FileReader_N5,
      I1 => XLXI_31_FileReader_N0,
      I2 => XLXI_31_FileReader_Playing_Time(30),
      LO => XLXI_31_FileReader_Playing_Time_mux0000_1_2_1036
    );
  XLXI_31_XLXI_22_Mmux_Period_21_3_SW0 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXN_371(2),
      LO => N107
    );
  XLXI_31_XLXI_27_Tone_DUMMY_3_52 : LUT3_L
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(2),
      I1 => XLXI_31_FileReader_Tone_Char(0),
      I2 => XLXI_31_FileReader_Tone_Char(3),
      LO => XLXI_31_XLXI_27_Tone_DUMMY_3_52_1950
    );
  XLXI_31_XLXI_22_Tone_3_1540 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Tone_3_1539_1379,
      LO => XLXI_31_XLXI_22_Tone_3_1540_1380
    );
  XLXI_31_XLXI_27_Tone_DUMMY_2_5 : LUT2_L
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(1),
      I1 => XLXI_31_FileReader_Tone_Char(0),
      LO => XLXI_31_XLXI_27_Tone_DUMMY_2_5_1948
    );
  XLXI_31_XLXI_27_Tone_DUMMY_1_6 : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(1),
      I1 => XLXI_31_FileReader_Tone_Char(0),
      LO => XLXI_31_XLXI_27_Tone_DUMMY_1_6_1944
    );
  XLXI_31_XLXI_27_Tone_DUMMY_0_37 : LUT2_L
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(2),
      I1 => XLXI_31_FileReader_Tone_Char(0),
      LO => XLXI_31_XLXI_27_Tone_DUMMY_0_37_1937
    );
  XLXI_31_XLXI_22_Period_10_mux0010_SW0 : LUT2_D
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      LO => N624,
      O => N123
    );
  XLXI_31_XLXI_22_Period_9_mux000711 : LUT2_D
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(1),
      LO => N625,
      O => XLXI_31_XLXI_22_N0
    );
  XLXI_31_XLXI_22_Tone_3_1313 : LUT4_L
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Tone_3_130_1377,
      I2 => XLXI_31_XLXI_22_N72,
      I3 => XLXI_31_XLXI_22_Mmux_Period_2_9_f5_1198,
      LO => XLXI_31_XLXI_22_Tone_3_1313_1378
    );
  XLXI_31_XLXI_22_Period_2_mux000541 : LUT4_D
    generic map(
      INIT => X"2022"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXI_22_N44,
      I3 => XLXI_31_XLXI_22_N7,
      LO => N626,
      O => XLXI_31_XLXI_22_N71
    );
  XLXI_31_XLXI_22_Period_21_and0000_SW0 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(5),
      I1 => XLXI_31_XLXI_28_Current_Oct_Num(4),
      LO => N627,
      O => N142
    );
  XLXI_31_XLXI_22_Tone_3_2_SW0 : LUT4_D
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Period_16_mux0006,
      I2 => XLXI_31_XLXI_22_Period_15_mux0005,
      I3 => XLXI_31_XLXI_22_Mmux_Period_14_9_f5_1156,
      LO => N628,
      O => N155
    );
  XLXI_31_XLXI_22_Period_8_mux0002111 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(2),
      LO => N629,
      O => XLXI_31_XLXI_22_N66
    );
  XLXI_31_XLXI_22_Period_12_mux00031 : LUT4_D
    generic map(
      INIT => X"222A"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXI_22_N7,
      LO => N630,
      O => XLXI_31_XLXI_22_N40
    );
  XLXI_31_XLXI_22_Tone_3_3_SW0 : LUT4_D
    generic map(
      INIT => X"8ADF"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_N10,
      I2 => XLXI_31_XLXI_22_N38,
      I3 => XLXI_31_XLXI_22_Mmux_Period_13_9_f5_1148,
      LO => N631,
      O => N159
    );
  XLXI_31_XLXI_22_Tone_3_413 : LUT4_D
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Tone_3_40_1382,
      I2 => XLXI_31_XLXI_22_N62,
      I3 => XLXI_31_XLXI_22_Mmux_Period_12_9_f5_1140,
      LO => N632,
      O => XLXI_31_XLXI_22_Tone_3_413_1383
    );
  XLXI_31_XLXI_22_Tone_3_913 : LUT4_D
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_N64,
      I2 => XLXI_31_XLXI_22_Tone_3_130_1377,
      I3 => XLXI_31_XLXI_22_Mmux_Period_6_9_f5_1231,
      LO => N633,
      O => XLXI_31_XLXI_22_Tone_3_913_1386
    );
  XLXI_31_XLXI_22_Period_20_mux00001 : LUT3_D
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXI_22_N35,
      LO => N634,
      O => XLXI_31_XLXI_22_Period_20_mux0000
    );
  XLXI_31_XLXI_22_Period_9_mux000741 : LUT2_D
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and00001,
      I1 => XLXI_31_XLXN_373(3),
      LO => N635,
      O => XLXI_31_XLXI_22_N38
    );
  XLXI_31_XLXI_22_Tone_3_1_SW0 : LUT4_D
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(2),
      I1 => XLXI_31_XLXI_22_Period_16_mux0005,
      I2 => XLXI_31_XLXI_22_Period_17_mux0005,
      I3 => XLXI_31_XLXI_22_Mmux_Period_15_9_f5_1164,
      LO => N636,
      O => N161
    );
  XLXI_31_XLXI_27_Octave_DUMMY_0_SW0 : LUT2_L
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => XLXI_31_FileReader_Octave_Char(0),
      I1 => XLXI_31_FileReader_Octave_Char(3),
      LO => N165
    );
  XLXI_31_XLXI_22_Mrom_rom0000821 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => XLXI_31_XLXI_27_Octave_DUMMY(1),
      I1 => XLXI_31_XLXN_373(2),
      LO => N637,
      O => XLXI_31_XLXI_22_N39
    );
  XLXI_31_XLXI_27_Octave_DUMMY_1_SW0 : LUT2_D
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => XLXI_31_FileReader_Octave_Char(1),
      I1 => XLXI_31_FileReader_Octave_Char(3),
      LO => N638,
      O => N171
    );
  XLXI_31_XLXI_27_Octave_DUMMY_1_Q : LUT4_D
    generic map(
      INIT => X"2E22"
    )
    port map (
      I0 => XLXI_31_XLXI_28_Current_Oct_Num(1),
      I1 => XLXI_31_XLXI_27_state(0),
      I2 => N171,
      I3 => XLXI_31_FileReader_Octave_and0000,
      LO => N639,
      O => XLXI_31_XLXN_373(1)
    );
  XLXI_31_XLXI_22_Period_2_mux000111 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXI_22_N35,
      LO => N640,
      O => XLXI_31_XLXI_22_N37
    );
  XLXI_31_XLXI_22_Mrom_rom0000611 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      LO => N641,
      O => XLXI_31_XLXI_22_N35
    );
  XLXI_31_XLXI_22_Period_17_mux00051 : LUT2_D
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_Mrom_rom00004,
      LO => N642,
      O => XLXI_31_XLXI_22_Period_17_mux0005
    );
  XLXI_31_XLXI_22_Mrom_rom0000811 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      LO => N643,
      O => XLXI_31_XLXI_22_N30
    );
  XLXI_31_XLXI_22_Period_3_mux000111 : LUT2_D
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_Period_14_cmp_eq0000,
      LO => N644,
      O => XLXI_31_XLXI_22_N52
    );
  XLXI_31_XLXI_22_Mrom_rom00001121 : LUT3_L
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      LO => XLXI_31_XLXI_22_N32
    );
  XLXI_31_FileReader_Octave_and00001 : LUT4_D
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => XLXI_31_FileReader_Octave_Char(5),
      I1 => XLXI_31_FileReader_Octave_Char(4),
      I2 => XLXI_31_FileReader_Octave_Char(7),
      I3 => XLXI_31_FileReader_Octave_Char(6),
      LO => N645,
      O => XLXI_31_FileReader_Octave_and0000
    );
  XLXI_31_XLXI_22_Period_14_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => XLXI_31_XLXI_27_Octave_DUMMY(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXN_373(0),
      LO => N646,
      O => XLXI_31_XLXI_22_Period_14_cmp_eq0000
    );
  XLXI_31_XLXI_22_Period_3_mux000011 : LUT4_D
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      LO => N647,
      O => XLXI_31_XLXI_22_N14
    );
  XLXI_31_XLXI_22_Tone_1_1_SW0 : LUT4_L
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_18_mux0006,
      I2 => XLXI_31_XLXI_22_Period_18_mux0003,
      I3 => XLXI_31_XLXI_22_N37,
      LO => N150
    );
  XLXI_31_XLXI_22_Mrom_rom000041 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => XLXI_31_XLXI_27_Octave_DUMMY(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXN_373(0),
      LO => N648,
      O => XLXI_31_XLXI_22_Mrom_rom00004
    );
  XLXI_31_XLXI_22_Mmux_Period_8_10 : LUT4_L
    generic map(
      INIT => X"EEE4"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_8_mux0001,
      I2 => XLXI_31_XLXI_22_Period_16_mux0005,
      I3 => XLXI_31_XLXI_22_N37,
      LO => XLXI_31_XLXI_22_Mmux_Period_8_10_1241
    );
  XLXI_31_XLXI_22_Period_9_mux00081 : LUT4_D
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_N66,
      I2 => XLXI_31_XLXI_22_N44,
      I3 => XLXI_31_XLXI_22_Period_14_cmp_eq0000,
      LO => N649,
      O => XLXI_31_XLXI_22_Period_9_mux0008
    );
  XLXI_31_XLXI_22_Period_13_mux000611 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N39,
      LO => N650,
      O => XLXI_31_XLXI_22_Period_21_mux0000
    );
  XLXI_31_XLXI_22_Period_10_mux000511 : LUT3_D
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_31_XLXI_27_Octave_DUMMY(1),
      I1 => XLXI_31_XLXI_22_Period_21_and00001,
      I2 => XLXI_31_XLXN_373(3),
      LO => N651,
      O => XLXI_31_XLXI_22_N69
    );
  XLXI_31_XLXI_22_Period_10_mux000011 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and00001,
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(3),
      LO => N652,
      O => XLXI_31_XLXI_22_N67
    );
  XLXI_31_XLXI_22_Period_15_mux00051 : LUT4_D
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => N209,
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXN_373(2),
      LO => N653,
      O => XLXI_31_XLXI_22_Period_15_mux0005
    );
  XLXI_31_XLXI_22_Tone_3_6_SW0 : LUT3_D
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => N211,
      I1 => N212,
      I2 => XLXI_31_XLXI_22_Mmux_Period_10_11_1116,
      LO => N654,
      O => N173
    );
  XLXI_31_XLXI_22_Period_16_mux00041 : LUT4_D
    generic map(
      INIT => X"7530"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXI_22_N69,
      I3 => XLXI_31_XLXI_22_N38,
      LO => N655,
      O => XLXI_31_XLXI_22_Period_16_mux0004
    );
  XLXI_31_XLXI_22_Tone_3_SW0 : LUT4_D
    generic map(
      INIT => X"B380"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_371(2),
      I2 => N227,
      I3 => XLXI_31_XLXI_22_Mmux_Period_16_9_f5_1172,
      LO => N656,
      O => N163
    );
  XLXI_31_XLXI_22_Period_9_mux0003_SW0 : LUT4_L
    generic map(
      INIT => X"FAA8"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(2),
      LO => N121
    );
  XLXI_31_XLXI_22_Period_4_mux00021 : LUT4_D
    generic map(
      INIT => X"220A"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N39,
      LO => N657,
      O => XLXI_31_XLXI_22_Period_4_mux0002
    );
  XLXI_31_XLXI_22_Period_9_mux000761 : LUT3_D
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      LO => N658,
      O => XLXI_31_XLXI_22_Period_1_mux0001
    );
  XLXI_31_XLXI_22_Period_11_mux00042 : LUT4_L
    generic map(
      INIT => X"0414"
    )
    port map (
      I0 => N144,
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXN_373(2),
      LO => XLXI_31_XLXI_22_N58
    );
  XLXI_31_XLXI_22_Period_1_mux0002_SW1 : LUT3_D
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(3),
      LO => N659,
      O => N265
    );
  XLXI_31_XLXI_22_Period_1_mux0002 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXN_373(1),
      I2 => N265,
      LO => N660,
      O => XLXI_31_XLXI_22_Period_1_mux0002_1338
    );
  XLXI_31_XLXI_22_Mmux_Period_1_11 : LUT4_L
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_31_XLXN_371(0),
      I1 => XLXI_31_XLXI_22_Period_15_mux0005,
      I2 => XLXI_31_XLXI_22_Period_17_mux0007,
      I3 => XLXI_31_XLXI_22_Period_9_mux0001,
      LO => XLXI_31_XLXI_22_Mmux_Period_1_11_1183
    );
  XLXI_31_XLXI_22_Period_10_mux001021 : LUT3_D
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      LO => N661,
      O => XLXI_31_XLXI_22_N27
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_4_SW2 : LUT3_L
    generic map(
      INIT => X"F6"
    )
    port map (
      I0 => XLXI_31_XLXI_25_N2,
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_B(4),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      LO => N287
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_6_SW2 : LUT3_L
    generic map(
      INIT => X"F6"
    )
    port map (
      I0 => XLXI_31_XLXI_25_N0,
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_B(6),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      LO => N290
    );
  XLXI_31_XLXI_25_Next_8b_Sample_and000141 : LUT4_D
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => N292,
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_and00012,
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_and00011,
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      LO => N662,
      O => XLXI_31_XLXI_25_Next_8b_Sample_and0001
    );
  XLXI_31_XLXI_22_Period_11_mux00041 : LUT3_L
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => N144,
      I1 => N329,
      I2 => XLXI_31_XLXI_22_N14,
      LO => XLXI_31_XLXI_22_Period_11_mux0004
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_7_SW2 : LUT4_L
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(7),
      I1 => XLXI_31_XLXI_25_N0,
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_B(6),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      LO => N308
    );
  XLXI_31_XLXI_25_Next_8b_Sample_B_mux0000_5_SW2 : LUT4_L
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(5),
      I1 => XLXI_31_XLXI_25_N2,
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_B(4),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002,
      LO => N305
    );
  XLXI_31_XLXI_27_Tone_DUMMY_0_64 : LUT4_D
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(2),
      I1 => XLXI_31_FileReader_Tone_Char(1),
      I2 => XLXI_31_FileReader_Tone_Char(3),
      I3 => XLXI_31_XLXI_27_Tone_DUMMY_0_56_1939,
      LO => N663,
      O => XLXI_31_XLXI_27_Tone_DUMMY_0_64_1940
    );
  XLXI_31_XLXI_22_Period_16_mux00051_SW2 : LUT2_D
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and00001,
      I1 => XLXI_31_XLXN_373(1),
      LO => N664,
      O => N343
    );
  XLXI_31_XLXI_22_Period_5_mux000211 : LUT4_D
    generic map(
      INIT => X"5060"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I3 => XLXI_31_XLXI_22_N7,
      LO => N665,
      O => XLXI_31_XLXI_22_N29
    );
  XLXI_31_XLXI_22_Period_5_mux000111 : LUT4_D
    generic map(
      INIT => X"0042"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => N343,
      LO => N666,
      O => XLXI_31_XLXI_22_N42
    );
  XLXI_31_XLXI_27_Tone_DUMMY_0_84 : LUT4_D
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(7),
      I1 => XLXI_31_FileReader_Tone_Char(5),
      I2 => XLXI_31_FileReader_Tone_Char(6),
      I3 => XLXI_31_XLXI_27_state(0),
      LO => N667,
      O => XLXI_31_XLXI_27_Tone_DUMMY_0_84_1941
    );
  XLXI_31_XLXI_22_Period_2_mux000421 : LUT4_D
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      LO => N668,
      O => XLXI_31_XLXI_22_N21
    );
  XLXI_31_XLXI_22_Period_9_mux000731 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      LO => N669,
      O => XLXI_31_XLXI_22_Period_18_mux0006
    );
  XLXI_31_XLXI_22_Period_13_mux00111_SW0 : LUT4_D
    generic map(
      INIT => X"C9D9"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      LO => N670,
      O => N384
    );
  XLXI_31_XLXI_22_Period_13_mux00111_SW1 : LUT4_D
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      LO => N671,
      O => N385
    );
  XLXI_31_XLXI_22_Period_18_mux00031_SW1 : LUT2_L
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(0),
      LO => N387
    );
  XLXI_31_XLXI_22_Period_5_mux0004_SW1 : LUT4_L
    generic map(
      INIT => X"EAA8"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(1),
      I3 => XLXI_31_XLXN_373(0),
      LO => N389
    );
  XLXI_31_XLXI_22_Period_10_mux00001_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(0),
      LO => N409
    );
  XLXI_31_XLXI_22_Period_11_mux00061_SW0 : LUT2_L
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      LO => N413
    );
  XLXI_31_XLXI_22_Period_9_mux00011 : LUT4_D
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => N417,
      I3 => XLXI_31_XLXI_22_Period_2_mux000111_1343,
      LO => N672,
      O => XLXI_31_XLXI_22_Period_9_mux0001
    );
  XLXI_31_XLXI_22_Mmux_Period_2_10_SW1_SW0 : LUT4_L
    generic map(
      INIT => X"CEEE"
    )
    port map (
      I0 => N209,
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      LO => N430
    );
  XLXI_31_XLXI_27_Tone_DUMMY_2_45 : LUT4_L
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => XLXI_31_FileReader_Tone_Char(7),
      I1 => XLXI_31_FileReader_Tone_Char(6),
      I2 => N434,
      I3 => XLXI_31_XLXI_27_Tone_DUMMY_2_39_1946,
      LO => XLXI_31_XLXI_27_Tone_DUMMY_2_45_1947
    );
  XLXI_31_XLXI_22_Period_12_mux00041_SW2 : LUT3_L
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(1),
      LO => N436
    );
  XLXI_31_XLXI_22_Period_8_mux00011_SW2 : LUT3_L
    generic map(
      INIT => X"E9"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(1),
      LO => N438
    );
  XLXI_31_XLXI_22_Period_12_mux00032_SW2 : LUT4_L
    generic map(
      INIT => X"BAE8"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(1),
      LO => N442
    );
  XLXI_31_XLXI_22_Period_3_mux000021 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(3),
      LO => N673,
      O => XLXI_31_XLXI_22_N23
    );
  XLXI_31_XLXI_22_Period_10_mux00072_SW0 : LUT3_L
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(2),
      LO => N450
    );
  XLXI_31_XLXI_22_Period_17_mux00001 : LUT4_L
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and0000_1340,
      I1 => XLXI_31_XLXI_22_Mrom_rom00004,
      I2 => XLXI_31_XLXI_22_Period_21_mux0000,
      I3 => XLXI_31_XLXI_22_Period_20_mux0000,
      LO => XLXI_31_XLXI_22_Period_17_mux0000
    );
  XLXI_31_XLXI_27_Tone_DUMMY_0_2_SW0 : LUT4_L
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_31_XLXI_4_state(1),
      I1 => XLXI_31_XLXI_4_state(9),
      I2 => XLXI_31_XLXI_4_state(3),
      I3 => XLXI_31_XLXI_4_state(11),
      LO => N456
    );
  XLXI_31_XLXI_22_Period_5_mux00061_SW1 : LUT4_L
    generic map(
      INIT => X"BFAD"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(2),
      LO => N467
    );
  XLXI_31_XLXI_22_Period_10_mux00031_SW1 : LUT4_L
    generic map(
      INIT => X"BFBD"
    )
    port map (
      I0 => XLXI_31_XLXN_373(3),
      I1 => XLXI_31_XLXN_373(1),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXN_373(2),
      LO => N469
    );
  XLXI_31_XLXI_22_Period_2_mux00031_SW1 : LUT4_L
    generic map(
      INIT => X"FBE2"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXN_373(1),
      LO => N473
    );
  XLXI_31_XLXI_22_Period_10_mux00081_SW1 : LUT3_L
    generic map(
      INIT => X"E6"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(1),
      LO => N448
    );
  XLXI_31_XLXI_22_Period_19_mux00011 : LUT4_D
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => XLXI_31_XLXI_22_Period_21_and00001,
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(0),
      I3 => XLXI_31_XLXI_22_N44,
      LO => N674,
      O => XLXI_31_XLXI_22_Period_19_mux0001
    );
  XLXI_31_FileReader_Playing_Time_mux0000_24_24_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(7),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N556
    );
  XLXI_31_FileReader_Playing_Time_mux0000_23_10_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(8),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N558
    );
  XLXI_31_FileReader_Playing_Time_mux0000_22_10_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(9),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N560
    );
  XLXI_31_FileReader_Playing_Time_mux0000_21_10_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(10),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N562
    );
  XLXI_31_FileReader_Playing_Time_mux0000_20_10_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(11),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N564
    );
  XLXI_31_FileReader_Playing_Time_mux0000_19_10_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(12),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N566
    );
  XLXI_31_FileReader_Playing_Time_mux0000_18_10_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(13),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N568
    );
  XLXI_31_FileReader_Playing_Time_mux0000_17_10_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(14),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N570
    );
  XLXI_31_FileReader_Playing_Time_mux0000_16_10_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(15),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N572
    );
  XLXI_31_FileReader_Playing_Time_mux0000_15_10_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(16),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N574
    );
  XLXI_31_FileReader_Playing_Time_mux0000_14_10_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(17),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N576
    );
  XLXI_31_FileReader_Playing_Time_mux0000_26_29_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(5),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N578
    );
  XLXI_31_FileReader_Playing_Time_mux0000_25_41_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_31_FileReader_N3,
      I1 => XLXI_31_FileReader_Playing_Time_addsub0001(6),
      I2 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I3 => XLXN_153,
      LO => N580
    );
  XLXI_31_XLXI_22_Period_18_mux00021_SW1 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => XLXI_31_XLXN_373(2),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_373(1),
      LO => N542
    );
  XLXI_31_XLXI_22_Period_9_mux00041_SW1 : LUT3_L
    generic map(
      INIT => X"71"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(1),
      LO => N590
    );
  XLXI_31_XLXI_22_Tone_1_SW0 : LUT3_L
    generic map(
      INIT => X"76"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(0),
      I2 => XLXI_31_XLXN_371(1),
      LO => N598
    );
  XLXI_31_FileReader_Playing_Time_mux0000_0_1 : LUT4_D
    generic map(
      INIT => X"EE4E"
    )
    port map (
      I0 => XLXI_31_FileReader_State_FSM_FFd3_1073,
      I1 => N100,
      I2 => XLXN_153,
      I3 => N600,
      LO => N675,
      O => XLXI_31_FileReader_N0
    );
  XLXI_31_XLXI_22_Period_13_mux0008_SW0 : LUT4_L
    generic map(
      INIT => X"F9EA"
    )
    port map (
      I0 => XLXI_31_XLXN_373(1),
      I1 => XLXI_31_XLXN_373(2),
      I2 => XLXI_31_XLXN_373(3),
      I3 => XLXI_31_XLXN_373(0),
      LO => N604
    );
  XLXI_31_XLXI_22_Period_8_mux00071_SW0 : LUT4_L
    generic map(
      INIT => X"DFE9"
    )
    port map (
      I0 => XLXI_31_XLXN_373(0),
      I1 => XLXI_31_XLXN_373(3),
      I2 => XLXI_31_XLXN_373(2),
      I3 => XLXI_31_XLXN_373(1),
      LO => N606
    );
  XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy_5_1 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(5),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(4),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(3),
      LO => N676,
      O => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_7_1_SW1 : LUT4_L
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(7),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(5),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(4),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(3),
      LO => N295
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_5_1_SW1 : LUT4_L
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(5),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(5),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(4),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(3),
      LO => N298
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_6_1_SW2 : LUT4_L
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(6),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(5),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(4),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(3),
      LO => N324
    );
  XLXI_31_XLXI_25_Next_8b_Sample_mux0000_4_1_SW2 : LUT4_L
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => XLXI_31_XLXI_25_Next_8b_Sample_B(4),
      I1 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(5),
      I2 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_lut(4),
      I3 => XLXI_31_XLXI_25_Next_8b_Sample_cmp_eq0002_wg_cy(3),
      LO => N327
    );
  XLXI_27 : SDC_FileReader
    port map (
      Abort => N0,
      SDC_MOSI => SDC_MOSI_OBUF_317,
      Start => XLXN_151,
      Reset => XLXI_31_XLXI_27_File_Source_Selected_1932,
      DO_Pop => XLXN_152,
      DO_Rdy => XLXN_153,
      SDC_MISO => SDC_MISO_IBUF_315,
      Busy => XLXN_154,
      SDC_SS => SDC_SS_OBUF_321,
      Clk_Sys => Clk_50MHz_BUFGP_1,
      Clk_50MHz => Clk_50MHz_BUFGP_1,
      SDC_SCK => SDC_SCK_OBUF_319,
      DO(7) => XLXN_155(7),
      DO(6) => XLXN_155(6),
      DO(5) => XLXN_155(5),
      DO(4) => XLXN_155(4),
      DO(3) => XLXN_155(3),
      DO(2) => XLXN_155(2),
      DO(1) => XLXN_155(1),
      DO(0) => XLXN_155(0),
      Error(3) => NLW_XLXI_27_Error_3_UNCONNECTED,
      Error(2) => NLW_XLXI_27_Error_2_UNCONNECTED,
      Error(1) => NLW_XLXI_27_Error_1_UNCONNECTED,
      Error(0) => NLW_XLXI_27_Error_0_UNCONNECTED,
      FName(7) => N0,
      FName(6) => N0,
      FName(5) => N1,
      FName(4) => N1,
      FName(3) => N0,
      FName(2) => N0,
      FName(1) => N0,
      FName(0) => N0,
      FExt(1) => N1,
      FExt(0) => N0
    );
  XLXI_33 : DACWrite
    port map (
      SPI_MISO => SPI_MISO_IBUF_323,
      AD_CONV => NLW_XLXI_33_AD_CONV_UNCONNECTED,
      AMP_CS => NLW_XLXI_33_AMP_CS_UNCONNECTED,
      Start => XLXI_31_XLXI_25_Sample_Rdy_1929,
      Reset => Reset_IBUF_313,
      DAC_CLR => DAC_CLR_OBUF_3,
      Busy => NLW_XLXI_33_Busy_UNCONNECTED,
      DAC_CS => DAC_CS_OBUF_5,
      SPI_SS_B => NLW_XLXI_33_SPI_SS_B_UNCONNECTED,
      FPGA_INIT_B => NLW_XLXI_33_FPGA_INIT_B_UNCONNECTED,
      Clk_Sys => Clk_50MHz_BUFGP_1,
      SPI_SCK => SPI_SCK_OBUF_327,
      SPI_MOSI => SPI_MOSI_OBUF_325,
      SF_CE0 => NLW_XLXI_33_SF_CE0_UNCONNECTED,
      Clk_50MHz => Clk_50MHz_BUFGP_1,
      Cmd(3) => N0,
      Cmd(2) => N0,
      Cmd(1) => N0,
      Cmd(0) => N0,
      Addr(3) => N0,
      Addr(2) => N0,
      Addr(1) => N0,
      Addr(0) => N0,
      DATA(11) => XLXI_31_XLXI_25_Next_8b_Sample(7),
      DATA(10) => XLXI_31_XLXI_25_Next_8b_Sample(6),
      DATA(9) => XLXI_31_XLXI_25_Next_8b_Sample(5),
      DATA(8) => XLXI_31_XLXI_25_Next_8b_Sample(4),
      DATA(7) => XLXI_31_XLXI_25_Next_8b_Sample(3),
      DATA(6) => XLXI_31_XLXI_25_Next_8b_Sample(2),
      DATA(5) => XLXI_31_XLXI_25_Next_8b_Sample(1),
      DATA(4) => XLXI_31_XLXI_25_Next_8b_Sample(0),
      DATA(3) => N0,
      DATA(2) => N0,
      DATA(1) => N0,
      DATA(0) => N0
    );
  XLXI_34 : PS2_Kbd
    port map (
      E0 => NLW_XLXI_34_E0_UNCONNECTED,
      F0 => XLXN_119,
      PS2_Clk => PS2_Clk_IBUF_309,
      PS2_Data => PS2_Data_IBUF_311,
      DO_Rdy => XLXN_118,
      Clk_Sys => Clk_50MHz_BUFGP_1,
      Clk_50MHz => Clk_50MHz_BUFGP_1,
      DO(7) => XLXN_116(7),
      DO(6) => XLXN_116(6),
      DO(5) => XLXN_116(5),
      DO(4) => XLXN_116(4),
      DO(3) => XLXN_116(3),
      DO(2) => XLXN_116(2),
      DO(1) => XLXN_116(1),
      DO(0) => XLXN_116(0)
    );

end Structure;

