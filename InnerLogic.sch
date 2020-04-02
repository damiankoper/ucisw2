<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_104(11:0)" />
        <signal name="XLXN_113(7:0)" />
        <signal name="DAC_Clock" />
        <signal name="WaveOut(11:0)" />
        <signal name="Reset" />
        <signal name="DI(7:0)" />
        <signal name="DI_Rdy" />
        <signal name="F0" />
        <signal name="Clk" />
        <signal name="XLXN_126(31:0)" />
        <signal name="XLXN_136(7:0)" />
        <signal name="XLXN_137(7:0)" />
        <signal name="XLXN_138(7:0)" />
        <signal name="XLXN_139(7:0)" />
        <signal name="XLXN_140" />
        <signal name="XLXN_141(7:0)" />
        <signal name="XLXN_142" />
        <signal name="XLXN_143" />
        <signal name="XLXN_144" />
        <signal name="XLXN_145" />
        <signal name="XLXN_146" />
        <signal name="XLXN_147" />
        <signal name="XLXN_148" />
        <signal name="XLXN_149" />
        <signal name="XLXN_150(7:0)" />
        <signal name="XLXN_151(7:0)" />
        <signal name="XLXN_152(7:0)" />
        <signal name="XLXN_154(7:0)" />
        <signal name="XLXN_155" />
        <port polarity="Output" name="DAC_Clock" />
        <port polarity="Output" name="WaveOut(11:0)" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="DI(7:0)" />
        <port polarity="Input" name="DI_Rdy" />
        <port polarity="Input" name="F0" />
        <port polarity="Input" name="Clk" />
        <blockdef name="ToneFSM">
            <timestamp>2020-3-22T15:24:12</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="FreqMapper">
            <timestamp>2020-3-25T16:49:53</timestamp>
            <rect width="64" x="368" y="20" height="24" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="304" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="Clock_32kHz">
            <timestamp>2020-3-22T15:33:56</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="GeneratorSaw">
            <timestamp>2020-3-25T16:51:58</timestamp>
            <rect width="64" x="0" y="404" height="24" />
            <line x2="0" y1="416" y2="416" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="576" />
        </blockdef>
        <blockdef name="GeneratorSignalSwitch">
            <timestamp>2020-3-24T20:0:2</timestamp>
            <rect width="320" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-300" height="24" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
        </blockdef>
        <blockdef name="SourceSwitchFSM">
            <timestamp>2020-4-2T18:38:2</timestamp>
            <rect width="320" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-556" height="24" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <block symbolname="ToneFSM" name="XLXI_4">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="DI_Rdy" name="DI_Rdy" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="DI(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_139(7:0)" name="Tone(7:0)" />
        </block>
        <block symbolname="FreqMapper" name="XLXI_22">
            <blockpin signalname="XLXN_137(7:0)" name="Tone(7:0)" />
            <blockpin signalname="XLXN_136(7:0)" name="OctaveNum(7:0)" />
            <blockpin signalname="XLXN_126(31:0)" name="Period(31:0)" />
        </block>
        <block symbolname="constant" name="XLXI_23">
            <attr value="04" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_138(7:0)" name="O" />
        </block>
        <block symbolname="GeneratorSaw" name="XLXI_25">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_104(11:0)" name="Sample(11:0)" />
            <blockpin signalname="XLXN_126(31:0)" name="Period(31:0)" />
        </block>
        <block symbolname="GeneratorSignalSwitch" name="XLXI_24">
            <blockpin signalname="XLXN_113(7:0)" name="Wave_Type(7:0)" />
            <blockpin signalname="XLXN_104(11:0)" name="Input_0(11:0)" />
            <blockpin name="Input_1(11:0)" />
            <blockpin name="Input_2(11:0)" />
            <blockpin name="Input_3(11:0)" />
            <blockpin signalname="WaveOut(11:0)" name="Output(11:0)" />
        </block>
        <block symbolname="constant" name="XLXI_26">
            <attr value="00" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_113(7:0)" name="O" />
        </block>
        <block symbolname="Clock_32kHz" name="XLXI_17">
            <blockpin signalname="Clk" name="CLK_IN" />
            <blockpin signalname="Reset" name="RESET" />
            <blockpin signalname="DAC_Clock" name="CLK_OUT" />
        </block>
        <block symbolname="SourceSwitchFSM" name="XLXI_27">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="DI_Rdy" name="DI_Rdy" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="DI(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_139(7:0)" name="Tone_Key(7:0)" />
            <blockpin name="Tone_File(7:0)" />
            <blockpin signalname="XLXN_138(7:0)" name="Octave_Key(7:0)" />
            <blockpin signalname="XLXN_138(7:0)" name="Octave_File(7:0)" />
            <blockpin signalname="XLXN_137(7:0)" name="Tone(7:0)" />
            <blockpin signalname="XLXN_136(7:0)" name="Octave(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="304" y="1664" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1920" y="1344" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_104(11:0)">
            <wire x2="2320" y1="1248" y2="1248" x1="2304" />
            <wire x2="2320" y1="1248" y2="2256" x1="2320" />
            <wire x2="2736" y1="2256" y2="2256" x1="2320" />
        </branch>
        <instance x="2736" y="2480" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_113(7:0)">
            <wire x2="2736" y1="2192" y2="2192" x1="2528" />
        </branch>
        <instance x="2384" y="2160" name="XLXI_26" orien="R0">
        </instance>
        <branch name="DAC_Clock">
            <wire x2="3216" y1="1824" y2="1824" x1="3024" />
        </branch>
        <branch name="WaveOut(11:0)">
            <wire x2="3216" y1="2192" y2="2192" x1="3184" />
        </branch>
        <branch name="DI(7:0)">
            <wire x2="208" y1="1632" y2="1632" x1="128" />
            <wire x2="304" y1="1632" y2="1632" x1="208" />
            <wire x2="816" y1="944" y2="944" x1="208" />
            <wire x2="208" y1="944" y2="1632" x1="208" />
        </branch>
        <branch name="DI_Rdy">
            <wire x2="176" y1="1488" y2="1488" x1="144" />
            <wire x2="288" y1="1488" y2="1488" x1="176" />
            <wire x2="288" y1="1488" y2="1504" x1="288" />
            <wire x2="304" y1="1504" y2="1504" x1="288" />
            <wire x2="816" y1="816" y2="816" x1="176" />
            <wire x2="176" y1="816" y2="1488" x1="176" />
        </branch>
        <branch name="F0">
            <wire x2="240" y1="1440" y2="1440" x1="80" />
            <wire x2="304" y1="1440" y2="1440" x1="240" />
            <wire x2="816" y1="880" y2="880" x1="240" />
            <wire x2="240" y1="880" y2="1440" x1="240" />
        </branch>
        <branch name="Clk">
            <wire x2="288" y1="1248" y2="1248" x1="80" />
            <wire x2="1840" y1="1248" y2="1248" x1="288" />
            <wire x2="1920" y1="1248" y2="1248" x1="1840" />
            <wire x2="1840" y1="1248" y2="1824" x1="1840" />
            <wire x2="2640" y1="1824" y2="1824" x1="1840" />
            <wire x2="288" y1="1248" y2="1376" x1="288" />
            <wire x2="304" y1="1376" y2="1376" x1="288" />
            <wire x2="816" y1="688" y2="688" x1="288" />
            <wire x2="288" y1="688" y2="1248" x1="288" />
        </branch>
        <branch name="XLXN_126(31:0)">
            <wire x2="1904" y1="1504" y2="1504" x1="1808" />
            <wire x2="1904" y1="1504" y2="1760" x1="1904" />
            <wire x2="1920" y1="1760" y2="1760" x1="1904" />
        </branch>
        <instance x="2640" y="1920" name="XLXI_17" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3216" y="2192" name="WaveOut(11:0)" orien="R0" />
        <iomarker fontsize="28" x="3216" y="1824" name="DAC_Clock" orien="R0" />
        <instance x="1376" y="1472" name="XLXI_22" orien="R0">
        </instance>
        <branch name="Reset">
            <wire x2="160" y1="1888" y2="1888" x1="112" />
            <wire x2="288" y1="1888" y2="1888" x1="160" />
            <wire x2="2640" y1="1888" y2="1888" x1="288" />
            <wire x2="816" y1="752" y2="752" x1="160" />
            <wire x2="160" y1="752" y2="1888" x1="160" />
            <wire x2="304" y1="1568" y2="1568" x1="288" />
            <wire x2="288" y1="1568" y2="1888" x1="288" />
        </branch>
        <branch name="XLXN_136(7:0)">
            <wire x2="1312" y1="1200" y2="1200" x1="1264" />
            <wire x2="1312" y1="1200" y2="1440" x1="1312" />
            <wire x2="1376" y1="1440" y2="1440" x1="1312" />
        </branch>
        <branch name="XLXN_137(7:0)">
            <wire x2="1360" y1="688" y2="688" x1="1264" />
            <wire x2="1360" y1="688" y2="1376" x1="1360" />
            <wire x2="1376" y1="1376" y2="1376" x1="1360" />
        </branch>
        <branch name="XLXN_139(7:0)">
            <wire x2="720" y1="1376" y2="1376" x1="688" />
            <wire x2="816" y1="1008" y2="1008" x1="720" />
            <wire x2="720" y1="1008" y2="1376" x1="720" />
        </branch>
        <iomarker fontsize="28" x="80" y="1440" name="F0" orien="R180" />
        <iomarker fontsize="28" x="144" y="1488" name="DI_Rdy" orien="R180" />
        <iomarker fontsize="28" x="80" y="1248" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="128" y="1632" name="DI(7:0)" orien="R180" />
        <iomarker fontsize="28" x="112" y="1888" name="Reset" orien="R180" />
        <instance x="816" y="1232" name="XLXI_27" orien="R0">
        </instance>
        <branch name="XLXN_138(7:0)">
            <wire x2="736" y1="1136" y2="1136" x1="656" />
            <wire x2="816" y1="1136" y2="1136" x1="736" />
            <wire x2="736" y1="1136" y2="1200" x1="736" />
            <wire x2="816" y1="1200" y2="1200" x1="736" />
        </branch>
        <instance x="512" y="1104" name="XLXI_23" orien="R0">
        </instance>
    </sheet>
</drawing>