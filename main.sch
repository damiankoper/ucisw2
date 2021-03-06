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
        <signal name="XLXN_130(1:0)" />
        <signal name="XLXN_129(7:0)" />
        <signal name="XLXN_151" />
        <signal name="XLXN_152" />
        <signal name="XLXN_153" />
        <signal name="XLXN_154" />
        <signal name="XLXN_155(7:0)" />
        <signal name="SDC_SS" />
        <signal name="SDC_MOSI" />
        <signal name="SDC_MISO" />
        <signal name="SDC_SCK" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="XLXN_165" />
        <signal name="SPI_SCK" />
        <signal name="Tone(7:0)" />
        <signal name="Octave(7:0)" />
        <signal name="Is_File" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Output" name="SDC_SS" />
        <port polarity="Output" name="SDC_MOSI" />
        <port polarity="Input" name="SDC_MISO" />
        <port polarity="Output" name="SDC_SCK" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="Tone(7:0)" />
        <port polarity="Output" name="Octave(7:0)" />
        <port polarity="Output" name="Is_File" />
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
        <blockdef name="InnerLogic">
            <timestamp>2020-5-9T13:39:25</timestamp>
            <line x2="464" y1="480" y2="480" x1="400" />
            <rect width="64" x="400" y="340" height="24" />
            <line x2="464" y1="352" y2="352" x1="400" />
            <rect width="64" x="400" y="404" height="24" />
            <line x2="464" y1="416" y2="416" x1="400" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="288" y2="288" x1="400" />
            <line x2="464" y1="32" y2="32" x1="400" />
            <line x2="464" y1="96" y2="96" x1="400" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <rect width="336" x="64" y="-320" height="832" />
        </blockdef>
        <blockdef name="DACWrite">
            <timestamp>2020-4-2T18:3:41</timestamp>
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
        <block symbolname="InnerLogic" name="InnerLogic_1">
            <blockpin signalname="XLXN_154" name="SDC_DI_Busy" />
            <blockpin signalname="XLXN_155(7:0)" name="SDC_DI(7:0)" />
            <blockpin signalname="XLXN_153" name="SDC_DI_Rdy" />
            <blockpin signalname="XLXN_116(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_119" name="F0" />
            <blockpin signalname="XLXN_118" name="DI_Rdy" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_152" name="SDC_DI_Pop" />
            <blockpin signalname="XLXN_151" name="SDC_DI_Start" />
            <blockpin signalname="XLXN_165" name="DI_Reset" />
            <blockpin signalname="Octave(7:0)" name="Octave(7:0)" />
            <blockpin signalname="Tone(7:0)" name="Tone(7:0)" />
            <blockpin signalname="XLXN_115(11:0)" name="WaveOut(11:0)" />
            <blockpin signalname="XLXN_114" name="DAC_Clock" />
            <blockpin signalname="Is_File" name="Is_File" />
        </block>
        <block symbolname="SDC_FileReader" name="XLXI_27">
            <blockpin signalname="SDC_MISO" name="SDC_MISO" />
            <blockpin signalname="XLXN_151" name="Start" />
            <blockpin signalname="XLXN_129(7:0)" name="FName(7:0)" />
            <blockpin signalname="XLXN_165" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_152" name="DO_Pop" />
            <blockpin name="Abort" />
            <blockpin signalname="SDC_MOSI" name="SDC_MOSI" />
            <blockpin signalname="SDC_SCK" name="SDC_SCK" />
            <blockpin signalname="SDC_SS" name="SDC_SS" />
            <blockpin name="Error(3:0)" />
            <blockpin signalname="XLXN_155(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_153" name="DO_Rdy" />
            <blockpin signalname="XLXN_154" name="Busy" />
            <blockpin signalname="XLXN_130(1:0)" name="FExt(1:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="constant" name="XLXI_29">
            <attr value="30" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_129(7:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_28">
            <attr value="2" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_130(1:0)" name="O" />
        </block>
        <block symbolname="DACWrite" name="XLXI_33">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_114" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin name="Cmd(3:0)" />
            <blockpin name="Addr(3:0)" />
            <blockpin signalname="XLXN_115(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin name="SPI_SS_B" />
            <blockpin name="AMP_CS" />
            <blockpin name="AD_CONV" />
            <blockpin name="SF_CE0" />
            <blockpin name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_34">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_119" name="F0" />
            <blockpin signalname="XLXN_118" name="DO_Rdy" />
            <blockpin signalname="XLXN_116(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <attr value="Inch" name="LengthUnitName" />
        <attr value="10" name="GridsPerUnit" />
        <branch name="PS2_Data">
            <wire x2="624" y1="2176" y2="2176" x1="368" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="624" y1="2112" y2="2112" x1="352" />
        </branch>
        <iomarker fontsize="28" x="384" y="2240" name="Clk_50MHz" orien="R180" />
        <branch name="XLXN_115(11:0)">
            <wire x2="2448" y1="2304" y2="2304" x1="2160" />
            <wire x2="2464" y1="2272" y2="2272" x1="2448" />
            <wire x2="2448" y1="2272" y2="2304" x1="2448" />
        </branch>
        <branch name="XLXN_116(7:0)">
            <wire x2="1696" y1="2112" y2="2112" x1="1008" />
        </branch>
        <branch name="XLXN_129(7:0)">
            <wire x2="752" y1="1344" y2="1376" x1="752" />
            <wire x2="944" y1="1376" y2="1376" x1="752" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="576" y1="2240" y2="2240" x1="384" />
            <wire x2="576" y1="2240" y2="2304" x1="576" />
            <wire x2="624" y1="2304" y2="2304" x1="576" />
            <wire x2="576" y1="2304" y2="2720" x1="576" />
            <wire x2="1632" y1="2720" y2="2720" x1="576" />
            <wire x2="2464" y1="2720" y2="2720" x1="1632" />
            <wire x2="1632" y1="2720" y2="2784" x1="1632" />
            <wire x2="2464" y1="2784" y2="2784" x1="1632" />
            <wire x2="624" y1="2240" y2="2240" x1="576" />
            <wire x2="944" y1="1696" y2="1696" x1="576" />
            <wire x2="576" y1="1696" y2="1760" x1="576" />
            <wire x2="944" y1="1760" y2="1760" x1="576" />
            <wire x2="576" y1="1760" y2="2304" x1="576" />
            <wire x2="1696" y1="2304" y2="2304" x1="1632" />
            <wire x2="1632" y1="2304" y2="2720" x1="1632" />
        </branch>
        <branch name="XLXN_130(1:0)">
            <wire x2="944" y1="1440" y2="1440" x1="752" />
        </branch>
        <instance x="944" y="1600" name="XLXI_27" orien="R0">
        </instance>
        <branch name="XLXN_151">
            <wire x2="880" y1="1200" y2="1312" x1="880" />
            <wire x2="944" y1="1312" y2="1312" x1="880" />
            <wire x2="2192" y1="1200" y2="1200" x1="880" />
            <wire x2="2192" y1="1200" y2="2368" x1="2192" />
            <wire x2="2192" y1="2368" y2="2368" x1="2160" />
        </branch>
        <branch name="XLXN_152">
            <wire x2="864" y1="1184" y2="1504" x1="864" />
            <wire x2="944" y1="1504" y2="1504" x1="864" />
            <wire x2="2208" y1="1184" y2="1184" x1="864" />
            <wire x2="2208" y1="1184" y2="2432" x1="2208" />
            <wire x2="2208" y1="2432" y2="2432" x1="2160" />
        </branch>
        <branch name="XLXN_153">
            <wire x2="1536" y1="1568" y2="1568" x1="1360" />
            <wire x2="1536" y1="1568" y2="2496" x1="1536" />
            <wire x2="1696" y1="2496" y2="2496" x1="1536" />
        </branch>
        <branch name="XLXN_155(7:0)">
            <wire x2="1520" y1="1632" y2="1632" x1="1360" />
            <wire x2="1520" y1="1632" y2="2560" x1="1520" />
            <wire x2="1696" y1="2560" y2="2560" x1="1520" />
        </branch>
        <branch name="SDC_SS">
            <wire x2="1392" y1="1504" y2="1504" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1504" name="SDC_SS" orien="R0" />
        <branch name="SDC_MOSI">
            <wire x2="1392" y1="1376" y2="1376" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1376" name="SDC_MOSI" orien="R0" />
        <branch name="SDC_MISO">
            <wire x2="1392" y1="1312" y2="1312" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1312" name="SDC_MISO" orien="R0" />
        <branch name="SDC_SCK">
            <wire x2="1392" y1="1440" y2="1440" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1440" name="SDC_SCK" orien="R0" />
        <branch name="XLXN_118">
            <wire x2="1360" y1="2304" y2="2304" x1="1008" />
            <wire x2="1360" y1="2176" y2="2304" x1="1360" />
            <wire x2="1696" y1="2176" y2="2176" x1="1360" />
        </branch>
        <branch name="XLXN_119">
            <wire x2="1696" y1="2240" y2="2240" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="368" y="2176" name="PS2_Data" orien="R180" />
        <branch name="Reset">
            <wire x2="1552" y1="2672" y2="2672" x1="320" />
            <wire x2="2464" y1="2672" y2="2672" x1="1552" />
            <wire x2="1696" y1="2048" y2="2048" x1="1552" />
            <wire x2="1552" y1="2048" y2="2672" x1="1552" />
            <wire x2="2464" y1="2656" y2="2672" x1="2464" />
        </branch>
        <branch name="XLXN_165">
            <wire x2="944" y1="1632" y2="1632" x1="928" />
            <wire x2="928" y1="1632" y2="1840" x1="928" />
            <wire x2="2224" y1="1840" y2="1840" x1="928" />
            <wire x2="2224" y1="1840" y2="2624" x1="2224" />
            <wire x2="2224" y1="2624" y2="2624" x1="2160" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2992" y1="2080" y2="2080" x1="2912" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="2992" y1="2144" y2="2144" x1="2912" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="2992" y1="2272" y2="2272" x1="2912" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="2992" y1="2208" y2="2208" x1="2912" />
        </branch>
        <instance x="2464" y="2624" name="XLXI_33" orien="R0">
        </instance>
        <branch name="XLXN_114">
            <wire x2="2448" y1="2048" y2="2048" x1="2160" />
            <wire x2="2448" y1="2048" y2="2080" x1="2448" />
            <wire x2="2464" y1="2080" y2="2080" x1="2448" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="2992" y1="2336" y2="2336" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2992" y="2272" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="2992" y="2336" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="2992" y="2208" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="2992" y="2144" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="2992" y="2080" name="SPI_MOSI" orien="R0" />
        <instance x="624" y="2336" name="XLXI_34" orien="R0">
        </instance>
        <instance x="1696" y="2336" name="InnerLogic_1" orien="R0">
        </instance>
        <branch name="XLXN_154">
            <wire x2="1376" y1="1696" y2="1696" x1="1360" />
            <wire x2="1376" y1="1696" y2="2432" x1="1376" />
            <wire x2="1696" y1="2432" y2="2432" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="320" y="2672" name="Reset" orien="R180" />
        <instance x="608" y="1408" name="XLXI_28" orien="R0">
        </instance>
        <instance x="608" y="1312" name="XLXI_29" orien="R0">
        </instance>
        <iomarker fontsize="28" x="352" y="2112" name="PS2_Clk" orien="R180" />
        <branch name="Tone(7:0)">
            <wire x2="2320" y1="2752" y2="2752" x1="2160" />
            <wire x2="2320" y1="2752" y2="3072" x1="2320" />
            <wire x2="2480" y1="3072" y2="3072" x1="2320" />
        </branch>
        <branch name="Octave(7:0)">
            <wire x2="2176" y1="2688" y2="2688" x1="2160" />
            <wire x2="2176" y1="2688" y2="3120" x1="2176" />
            <wire x2="2480" y1="3120" y2="3120" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2480" y="3120" name="Octave(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2480" y="3072" name="Tone(7:0)" orien="R0" />
        <branch name="Is_File">
            <wire x2="2400" y1="2816" y2="2816" x1="2160" />
            <wire x2="2400" y1="2816" y2="3008" x1="2400" />
            <wire x2="2480" y1="3008" y2="3008" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2480" y="3008" name="Is_File" orien="R0" />
    </sheet>
</drawing>