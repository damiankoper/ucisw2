<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_104(11:0)" />
        <signal name="Reset" />
        <signal name="DI(7:0)" />
        <signal name="DI_Rdy" />
        <signal name="F0" />
        <signal name="XLXN_126(31:0)" />
        <signal name="XLXN_137(7:0)" />
        <signal name="XLXN_138(7:0)" />
        <signal name="XLXN_139(7:0)" />
        <signal name="SDC_DI_Start" />
        <signal name="XLXN_157(7:0)" />
        <signal name="SDC_DI_Busy" />
        <signal name="SDC_DI_Rdy" />
        <signal name="SDC_DI_Pop" />
        <signal name="WaveOut(11:0)" />
        <signal name="XLXN_113(7:0)" />
        <signal name="DAC_Clock" />
        <signal name="SDC_DI(7:0)" />
        <signal name="XLXN_162" />
        <signal name="XLXN_197(7:0)" />
        <signal name="DI_Reset" />
        <signal name="Clk" />
        <signal name="XLXN_211" />
        <signal name="XLXN_212" />
        <signal name="XLXN_213" />
        <signal name="XLXN_214(7:0)" />
        <signal name="XLXN_215(7:0)" />
        <signal name="XLXN_216(7:0)" />
        <signal name="XLXN_217(7:0)" />
        <signal name="XLXN_219" />
        <signal name="XLXN_220" />
        <signal name="XLXN_221" />
        <signal name="XLXN_222" />
        <signal name="XLXN_223" />
        <signal name="XLXN_224(7:0)" />
        <signal name="XLXN_225" />
        <signal name="XLXN_226" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="DI(7:0)" />
        <port polarity="Input" name="DI_Rdy" />
        <port polarity="Input" name="F0" />
        <port polarity="Output" name="SDC_DI_Start" />
        <port polarity="Input" name="SDC_DI_Busy" />
        <port polarity="Input" name="SDC_DI_Rdy" />
        <port polarity="Output" name="SDC_DI_Pop" />
        <port polarity="Output" name="WaveOut(11:0)" />
        <port polarity="Output" name="DAC_Clock" />
        <port polarity="Input" name="SDC_DI(7:0)" />
        <port polarity="Output" name="DI_Reset" />
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
            <timestamp>2020-4-16T18:0:41</timestamp>
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
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
            <rect width="320" x="64" y="-576" height="704" />
        </blockdef>
        <blockdef name="FileReaderFSM">
            <timestamp>2020-4-16T18:10:33</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
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
            <blockpin signalname="XLXN_197(7:0)" name="OctaveNum(7:0)" />
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
        <block symbolname="SourceSwitchFSM" name="XLXI_27">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="DI_Rdy" name="DI_Rdy" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="DI(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_139(7:0)" name="Tone_Key(7:0)" />
            <blockpin signalname="XLXN_157(7:0)" name="Tone_File(7:0)" />
            <blockpin signalname="XLXN_138(7:0)" name="Octave_Key(7:0)" />
            <blockpin signalname="XLXN_224(7:0)" name="Octave_File(7:0)" />
            <blockpin signalname="XLXN_137(7:0)" name="Tone(7:0)" />
            <blockpin signalname="XLXN_197(7:0)" name="Octave(7:0)" />
            <blockpin name="Key_Source_Selected" />
            <blockpin signalname="XLXN_162" name="File_Source_Selected" />
        </block>
        <block symbolname="FileReaderFSM" name="FileReader">
            <blockpin signalname="SDC_DI_Rdy" name="DI_Rdy" />
            <blockpin signalname="SDC_DI_Busy" name="DI_Busy" />
            <blockpin signalname="XLXN_162" name="Reset" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="SDC_DI(7:0)" name="DI(7:0)" />
            <blockpin signalname="SDC_DI_Pop" name="DI_Pop" />
            <blockpin signalname="SDC_DI_Start" name="DI_Start" />
            <blockpin signalname="XLXN_157(7:0)" name="Tone(7:0)" />
            <blockpin signalname="XLXN_224(7:0)" name="Octave(7:0)" />
            <blockpin signalname="DI_Reset" name="DI_Reset" />
        </block>
        <block symbolname="constant" name="XLXI_26">
            <attr value="00" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_113(7:0)" name="O" />
        </block>
        <block symbolname="GeneratorSignalSwitch" name="XLXI_24">
            <blockpin signalname="XLXN_113(7:0)" name="Wave_Type(7:0)" />
            <blockpin signalname="XLXN_104(11:0)" name="Input_0(11:0)" />
            <blockpin name="Input_1(11:0)" />
            <blockpin name="Input_2(11:0)" />
            <blockpin name="Input_3(11:0)" />
            <blockpin signalname="WaveOut(11:0)" name="Output(11:0)" />
        </block>
        <block symbolname="Clock_32kHz" name="XLXI_17">
            <blockpin signalname="Clk" name="CLK_IN" />
            <blockpin signalname="Reset" name="RESET" />
            <blockpin signalname="DAC_Clock" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_137(7:0)">
            <wire x2="1424" y1="672" y2="672" x1="1296" />
            <wire x2="1424" y1="672" y2="1392" x1="1424" />
            <wire x2="1440" y1="1392" y2="1392" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="112" y="1888" name="Reset" orien="R180" />
        <branch name="SDC_DI_Busy">
            <wire x2="368" y1="304" y2="304" x1="240" />
        </branch>
        <branch name="SDC_DI_Pop">
            <wire x2="896" y1="240" y2="240" x1="752" />
        </branch>
        <branch name="WaveOut(11:0)">
            <wire x2="2912" y1="1184" y2="1184" x1="2896" />
            <wire x2="2912" y1="1184" y2="1360" x1="2912" />
            <wire x2="2960" y1="1360" y2="1360" x1="2912" />
        </branch>
        <branch name="XLXN_113(7:0)">
            <wire x2="2336" y1="1056" y2="1056" x1="2192" />
            <wire x2="2336" y1="1056" y2="1184" x1="2336" />
            <wire x2="2448" y1="1184" y2="1184" x1="2336" />
        </branch>
        <branch name="XLXN_104(11:0)">
            <wire x2="2448" y1="1248" y2="1248" x1="2304" />
        </branch>
        <instance x="2048" y="1024" name="XLXI_26" orien="R0">
        </instance>
        <instance x="2448" y="1472" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_126(31:0)">
            <wire x2="1904" y1="1520" y2="1520" x1="1872" />
            <wire x2="1904" y1="1520" y2="1760" x1="1904" />
            <wire x2="1920" y1="1760" y2="1760" x1="1904" />
        </branch>
        <instance x="1920" y="1344" name="XLXI_25" orien="R0">
        </instance>
        <branch name="DAC_Clock">
            <wire x2="2800" y1="1824" y2="1824" x1="2784" />
            <wire x2="2912" y1="1824" y2="1824" x1="2800" />
            <wire x2="2912" y1="1408" y2="1824" x1="2912" />
            <wire x2="2960" y1="1408" y2="1408" x1="2912" />
        </branch>
        <instance x="2400" y="1920" name="XLXI_17" orien="R0">
        </instance>
        <branch name="SDC_DI_Start">
            <wire x2="896" y1="320" y2="320" x1="752" />
        </branch>
        <branch name="XLXN_157(7:0)">
            <wire x2="800" y1="400" y2="400" x1="752" />
            <wire x2="800" y1="400" y2="1056" x1="800" />
            <wire x2="848" y1="1056" y2="1056" x1="800" />
        </branch>
        <branch name="SDC_DI(7:0)">
            <wire x2="352" y1="496" y2="496" x1="240" />
            <wire x2="368" y1="496" y2="496" x1="352" />
        </branch>
        <branch name="SDC_DI_Rdy">
            <wire x2="352" y1="240" y2="240" x1="240" />
            <wire x2="368" y1="240" y2="240" x1="352" />
        </branch>
        <instance x="368" y="528" name="FileReader" orien="R0">
        </instance>
        <branch name="XLXN_162">
            <wire x2="352" y1="128" y2="368" x1="352" />
            <wire x2="368" y1="368" y2="368" x1="352" />
            <wire x2="1392" y1="128" y2="128" x1="352" />
            <wire x2="1392" y1="128" y2="1312" x1="1392" />
            <wire x2="1392" y1="1312" y2="1312" x1="1296" />
        </branch>
        <instance x="1440" y="1488" name="XLXI_22" orien="R0">
        </instance>
        <iomarker fontsize="28" x="896" y="240" name="SDC_DI_Pop" orien="R0" />
        <iomarker fontsize="28" x="896" y="320" name="SDC_DI_Start" orien="R0" />
        <iomarker fontsize="28" x="896" y="400" name="DI_Reset" orien="R0" />
        <branch name="DI_Reset">
            <wire x2="832" y1="560" y2="560" x1="752" />
            <wire x2="896" y1="400" y2="400" x1="832" />
            <wire x2="832" y1="400" y2="560" x1="832" />
        </branch>
        <instance x="512" y="1088" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_197(7:0)">
            <wire x2="1360" y1="1184" y2="1184" x1="1296" />
            <wire x2="1360" y1="1184" y2="1456" x1="1360" />
            <wire x2="1440" y1="1456" y2="1456" x1="1360" />
        </branch>
        <branch name="XLXN_138(7:0)">
            <wire x2="848" y1="1120" y2="1120" x1="656" />
        </branch>
        <branch name="XLXN_139(7:0)">
            <wire x2="736" y1="1376" y2="1376" x1="704" />
            <wire x2="736" y1="992" y2="1376" x1="736" />
            <wire x2="848" y1="992" y2="992" x1="736" />
        </branch>
        <branch name="DI(7:0)">
            <wire x2="208" y1="1632" y2="1632" x1="144" />
            <wire x2="320" y1="1632" y2="1632" x1="208" />
            <wire x2="848" y1="928" y2="928" x1="208" />
            <wire x2="208" y1="928" y2="1632" x1="208" />
        </branch>
        <branch name="F0">
            <wire x2="240" y1="1440" y2="1440" x1="144" />
            <wire x2="320" y1="1440" y2="1440" x1="240" />
            <wire x2="848" y1="864" y2="864" x1="240" />
            <wire x2="240" y1="864" y2="1440" x1="240" />
        </branch>
        <branch name="DI_Rdy">
            <wire x2="176" y1="1504" y2="1504" x1="144" />
            <wire x2="320" y1="1504" y2="1504" x1="176" />
            <wire x2="848" y1="800" y2="800" x1="176" />
            <wire x2="176" y1="800" y2="1504" x1="176" />
        </branch>
        <branch name="Reset">
            <wire x2="160" y1="1888" y2="1888" x1="112" />
            <wire x2="240" y1="1888" y2="1888" x1="160" />
            <wire x2="2400" y1="1888" y2="1888" x1="240" />
            <wire x2="848" y1="736" y2="736" x1="160" />
            <wire x2="160" y1="736" y2="1888" x1="160" />
            <wire x2="240" y1="1568" y2="1888" x1="240" />
            <wire x2="320" y1="1568" y2="1568" x1="240" />
        </branch>
        <instance x="848" y="1216" name="XLXI_27" orien="R0">
        </instance>
        <iomarker fontsize="28" x="240" y="304" name="SDC_DI_Busy" orien="R180" />
        <branch name="Clk">
            <wire x2="288" y1="1376" y2="1376" x1="144" />
            <wire x2="320" y1="1376" y2="1376" x1="288" />
            <wire x2="288" y1="1376" y2="1824" x1="288" />
            <wire x2="1840" y1="1824" y2="1824" x1="288" />
            <wire x2="2400" y1="1824" y2="1824" x1="1840" />
            <wire x2="368" y1="432" y2="432" x1="288" />
            <wire x2="288" y1="432" y2="672" x1="288" />
            <wire x2="848" y1="672" y2="672" x1="288" />
            <wire x2="288" y1="672" y2="1376" x1="288" />
            <wire x2="1920" y1="1248" y2="1248" x1="1840" />
            <wire x2="1840" y1="1248" y2="1824" x1="1840" />
        </branch>
        <instance x="320" y="1664" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_224(7:0)">
            <wire x2="784" y1="480" y2="480" x1="752" />
            <wire x2="784" y1="480" y2="1184" x1="784" />
            <wire x2="848" y1="1184" y2="1184" x1="784" />
        </branch>
        <iomarker fontsize="28" x="144" y="1504" name="DI_Rdy" orien="R180" />
        <iomarker fontsize="28" x="144" y="1632" name="DI(7:0)" orien="R180" />
        <iomarker fontsize="28" x="144" y="1440" name="F0" orien="R180" />
        <iomarker fontsize="28" x="144" y="1376" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="240" y="240" name="SDC_DI_Rdy" orien="R180" />
        <iomarker fontsize="28" x="240" y="496" name="SDC_DI(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2960" y="1360" name="WaveOut(11:0)" orien="R0" />
        <iomarker fontsize="28" x="2960" y="1408" name="DAC_Clock" orien="R0" />
    </sheet>
</drawing>