<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="Reset" />
        <signal name="PS2_Data" />
        <signal name="PS2_Clk" />
        <signal name="XLXN_114" />
        <signal name="XLXN_115(11:0)" />
        <signal name="XLXN_116(7:0)" />
        <signal name="XLXN_118" />
        <signal name="XLXN_119" />
        <signal name="XLXN_129(7:0)" />
        <signal name="XLXN_130(1:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="PS2_Clk" />
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="DACWrite">
            <timestamp>2009-10-4T15:3:32</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="InnerLogic">
            <timestamp>2020-4-6T15:45:32</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SDC_FileReader">
            <timestamp>2008-9-15T21:33:52</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="416" y1="96" y2="96" x1="352" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="20" height="24" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <rect width="64" x="352" y="148" height="24" />
            <line x2="416" y1="160" y2="160" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <line x2="352" y1="-288" y2="-288" x1="416" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="288" x="64" y="-320" height="512" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="PS2_Kbd" name="XLXI_1">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_119" name="F0" />
            <blockpin signalname="XLXN_118" name="DO_Rdy" />
            <blockpin signalname="XLXN_116(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="DACWrite" name="XLXI_3">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_114" name="Start" />
            <blockpin name="SPI_MISO" />
            <blockpin name="Cmd(3:0)" />
            <blockpin name="Addr(3:0)" />
            <blockpin signalname="XLXN_115(11:0)" name="DATA(11:0)" />
            <blockpin name="DAC_CLR" />
            <blockpin name="DAC_CS" />
            <blockpin name="SPI_MOSI" />
            <blockpin name="SPI_SCK" />
            <blockpin name="SPI_SS_B" />
            <blockpin name="AMP_CS" />
            <blockpin name="AD_CONV" />
            <blockpin name="SF_CE0" />
            <blockpin name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="InnerLogic" name="XLXI_26">
            <blockpin signalname="XLXN_116(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_118" name="DI_Rdy" />
            <blockpin signalname="XLXN_119" name="F0" />
            <blockpin signalname="Reset" name="Clk" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_114" name="DAC_Clock" />
            <blockpin signalname="XLXN_115(11:0)" name="WaveOut(11:0)" />
        </block>
        <block symbolname="SDC_FileReader" name="XLXI_27">
            <blockpin name="SDC_MISO" />
            <blockpin name="Start" />
            <blockpin signalname="XLXN_129(7:0)" name="FName(7:0)" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="DO_Pop" />
            <blockpin name="Abort" />
            <blockpin name="SDC_MOSI" />
            <blockpin name="SDC_SCK" />
            <blockpin name="SDC_SS" />
            <blockpin name="Error(3:0)" />
            <blockpin name="DO(7:0)" />
            <blockpin name="DO_Rdy" />
            <blockpin name="Busy" />
            <blockpin signalname="XLXN_130(1:0)" name="FExt(1:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="constant" name="XLXI_28">
            <attr value="2" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_130(1:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_29">
            <attr value="61" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_129(7:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <attr value="Inch" name="LengthUnitName" />
        <attr value="10" name="GridsPerUnit" />
        <branch name="PS2_Data">
            <wire x2="608" y1="2176" y2="2176" x1="576" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="608" y1="2112" y2="2112" x1="576" />
        </branch>
        <instance x="608" y="2336" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="352" y="2384" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="384" y="2240" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="576" y="2176" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="576" y="2112" name="PS2_Clk" orien="R180" />
        <instance x="2464" y="2640" name="XLXI_3" orien="R0">
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="144" y1="1760" y2="2304" x1="144" />
            <wire x2="576" y1="2304" y2="2304" x1="144" />
            <wire x2="608" y1="2304" y2="2304" x1="576" />
            <wire x2="576" y1="2304" y2="2736" x1="576" />
            <wire x2="2464" y1="2736" y2="2736" x1="576" />
            <wire x2="576" y1="2736" y2="2800" x1="576" />
            <wire x2="2464" y1="2800" y2="2800" x1="576" />
            <wire x2="1376" y1="1760" y2="1760" x1="144" />
            <wire x2="1632" y1="1760" y2="1760" x1="1376" />
            <wire x2="576" y1="2240" y2="2240" x1="384" />
            <wire x2="608" y1="2240" y2="2240" x1="576" />
            <wire x2="576" y1="2240" y2="2304" x1="576" />
            <wire x2="1632" y1="1696" y2="1696" x1="1376" />
            <wire x2="1376" y1="1696" y2="1760" x1="1376" />
        </branch>
        <branch name="XLXN_114">
            <wire x2="2464" y1="2096" y2="2096" x1="2032" />
        </branch>
        <branch name="XLXN_115(11:0)">
            <wire x2="2448" y1="2352" y2="2352" x1="2032" />
            <wire x2="2464" y1="2288" y2="2288" x1="2448" />
            <wire x2="2448" y1="2288" y2="2352" x1="2448" />
        </branch>
        <branch name="XLXN_116(7:0)">
            <wire x2="1008" y1="2112" y2="2112" x1="992" />
            <wire x2="1008" y1="2112" y2="2160" x1="1008" />
            <wire x2="1648" y1="2160" y2="2160" x1="1008" />
        </branch>
        <branch name="XLXN_119">
            <wire x2="992" y1="2240" y2="2256" x1="992" />
            <wire x2="1312" y1="2256" y2="2256" x1="992" />
            <wire x2="1312" y1="2256" y2="2288" x1="1312" />
            <wire x2="1648" y1="2288" y2="2288" x1="1312" />
        </branch>
        <instance x="1648" y="2384" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_118">
            <wire x2="1008" y1="2304" y2="2304" x1="992" />
            <wire x2="1648" y1="2224" y2="2224" x1="1008" />
            <wire x2="1008" y1="2224" y2="2304" x1="1008" />
        </branch>
        <instance x="1632" y="1600" name="XLXI_27" orien="R0">
        </instance>
        <branch name="Reset">
            <wire x2="160" y1="1632" y2="2672" x1="160" />
            <wire x2="368" y1="2672" y2="2672" x1="160" />
            <wire x2="1552" y1="2672" y2="2672" x1="368" />
            <wire x2="1648" y1="2672" y2="2672" x1="1552" />
            <wire x2="2464" y1="2672" y2="2672" x1="1648" />
            <wire x2="1632" y1="1632" y2="1632" x1="160" />
            <wire x2="368" y1="2384" y2="2384" x1="352" />
            <wire x2="368" y1="2384" y2="2672" x1="368" />
            <wire x2="1648" y1="2096" y2="2096" x1="1552" />
            <wire x2="1552" y1="2096" y2="2672" x1="1552" />
            <wire x2="1648" y1="2352" y2="2352" x1="1584" />
            <wire x2="1584" y1="2352" y2="2448" x1="1584" />
            <wire x2="1648" y1="2448" y2="2448" x1="1584" />
            <wire x2="1648" y1="2448" y2="2672" x1="1648" />
        </branch>
        <instance x="1280" y="1408" name="XLXI_28" orien="R0">
        </instance>
        <instance x="1120" y="1344" name="XLXI_29" orien="R0">
        </instance>
        <branch name="XLXN_129(7:0)">
            <wire x2="1632" y1="1376" y2="1376" x1="1264" />
        </branch>
        <branch name="XLXN_130(1:0)">
            <wire x2="1632" y1="1440" y2="1440" x1="1424" />
        </branch>
    </sheet>
</drawing>