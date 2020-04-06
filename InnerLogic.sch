<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DI(7:0)" />
        <signal name="DI_Rdy" />
        <signal name="F0" />
        <signal name="Clk" />
        <signal name="Reset" />
        <signal name="XLXN_170(31:0)" />
        <signal name="XLXN_171(11:0)" />
        <signal name="XLXN_172" />
        <signal name="XLXN_173" />
        <signal name="XLXN_174(31:0)" />
        <signal name="XLXN_176" />
        <signal name="XLXN_177" />
        <signal name="XLXN_181" />
        <signal name="XLXN_183" />
        <signal name="XLXN_187(31:0)" />
        <signal name="XLXN_188(11:0)" />
        <signal name="XLXN_189(31:0)" />
        <signal name="XLXN_190(11:0)" />
        <signal name="XLXN_191(31:0)" />
        <signal name="XLXN_192(11:0)" />
        <signal name="XLXN_193(11:0)" />
        <signal name="XLXN_194" />
        <signal name="XLXN_196" />
        <signal name="XLXN_197(7:0)" />
        <signal name="XLXN_139(7:0)" />
        <signal name="XLXN_201(7:0)" />
        <signal name="XLXN_205(11:0)" />
        <signal name="XLXN_206" />
        <signal name="XLXN_211" />
        <signal name="XLXN_212" />
        <signal name="XLXN_213(7:0)" />
        <signal name="XLXN_214" />
        <signal name="XLXN_215" />
        <signal name="XLXN_221(11:0)" />
        <signal name="XLXN_222" />
        <signal name="XLXN_227" />
        <signal name="XLXN_228" />
        <signal name="XLXN_229(7:0)" />
        <signal name="XLXN_230" />
        <signal name="XLXN_231" />
        <signal name="XLXN_232(7:0)" />
        <signal name="XLXN_136(7:0)" />
        <signal name="XLXN_137(7:0)" />
        <signal name="XLXN_138(7:0)" />
        <signal name="XLXN_162(31:0)" />
        <signal name="XLXN_180(11:0)" />
        <signal name="XLXN_238(11:0)" />
        <signal name="XLXN_239" />
        <signal name="XLXN_244" />
        <signal name="XLXN_245" />
        <signal name="XLXN_246(7:0)" />
        <signal name="XLXN_247" />
        <signal name="XLXN_248" />
        <signal name="XLXN_249(7:0)" />
        <signal name="XLXN_250" />
        <signal name="XLXN_251" />
        <signal name="XLXN_252" />
        <signal name="XLXN_253" />
        <signal name="XLXN_254" />
        <signal name="XLXN_255" />
        <signal name="XLXN_256(7:0)" />
        <signal name="XLXN_257(7:0)" />
        <signal name="XLXN_258(11:0)" />
        <signal name="XLXN_259(31:0)" />
        <signal name="XLXN_260(7:0)" />
        <signal name="XLXN_261" />
        <signal name="DAC_Clock" />
        <signal name="WaveOut(11:0)" />
        <signal name="XLXN_195(7:0)" />
        <signal name="XLXN_265(11:0)" />
        <port polarity="Input" name="DI(7:0)" />
        <port polarity="Input" name="DI_Rdy" />
        <port polarity="Input" name="F0" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Reset" />
        <port polarity="Output" name="DAC_Clock" />
        <port polarity="Output" name="WaveOut(11:0)" />
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
        <blockdef name="GeneratorSaw">
            <timestamp>2020-4-5T18:1:14</timestamp>
            <rect width="448" x="16" y="-132" height="112" />
            <line x2="-48" y1="-96" y2="-96" x1="16" />
            <rect width="64" x="-48" y="-60" height="24" />
            <line x2="-48" y1="-48" y2="-48" x1="16" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
            <line x2="528" y1="-48" y2="-48" x1="464" />
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
        <blockdef name="GeneratorSignalSwitch">
            <timestamp>2020-4-6T15:31:34</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="448" y1="32" y2="32" x1="384" />
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
            <rect width="320" x="64" y="-320" height="576" />
        </blockdef>
        <block symbolname="ToneFSM" name="XLXI_4">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="DI_Rdy" name="DI_Rdy" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="DI(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_139(7:0)" name="Tone(7:0)" />
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
        <block symbolname="constant" name="XLXI_23">
            <attr value="04" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_138(7:0)" name="O" />
        </block>
        <block symbolname="GeneratorSaw" name="XLXI_31">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_162(31:0)" name="Period(31:0)" />
            <blockpin signalname="XLXN_180(11:0)" name="Sample(11:0)" />
            <blockpin signalname="XLXN_181" name="Sample_Rdy" />
        </block>
        <block symbolname="FreqMapper" name="XLXI_22">
            <blockpin signalname="XLXN_137(7:0)" name="Tone(7:0)" />
            <blockpin signalname="XLXN_136(7:0)" name="OctaveNum(7:0)" />
            <blockpin signalname="XLXN_162(31:0)" name="Period(31:0)" />
        </block>
        <block symbolname="GeneratorSignalSwitch" name="XLXI_28">
            <blockpin signalname="XLXN_195(7:0)" name="Wave_Type(7:0)" />
            <blockpin signalname="XLXN_180(11:0)" name="Input_0(11:0)" />
            <blockpin name="Input_1(11:0)" />
            <blockpin name="Input_2(11:0)" />
            <blockpin name="Input_3(11:0)" />
            <blockpin signalname="WaveOut(11:0)" name="Output(11:0)" />
            <blockpin signalname="XLXN_181" name="Input_0_Rdy" />
            <blockpin name="Input_1_Rdy" />
            <blockpin name="Input_2_Rdy" />
            <blockpin name="Input_3_Rdy" />
            <blockpin signalname="DAC_Clock" name="Output_Rdy" />
        </block>
        <block symbolname="constant" name="XLXI_33">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_195(7:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="DI(7:0)">
            <wire x2="208" y1="1632" y2="1632" x1="128" />
            <wire x2="464" y1="1632" y2="1632" x1="208" />
            <wire x2="1776" y1="912" y2="912" x1="208" />
            <wire x2="208" y1="912" y2="1632" x1="208" />
        </branch>
        <branch name="DI_Rdy">
            <wire x2="176" y1="1504" y2="1504" x1="144" />
            <wire x2="464" y1="1504" y2="1504" x1="176" />
            <wire x2="1776" y1="784" y2="784" x1="176" />
            <wire x2="176" y1="784" y2="1504" x1="176" />
        </branch>
        <branch name="F0">
            <wire x2="240" y1="1440" y2="1440" x1="80" />
            <wire x2="464" y1="1440" y2="1440" x1="240" />
            <wire x2="1776" y1="848" y2="848" x1="240" />
            <wire x2="240" y1="848" y2="1440" x1="240" />
        </branch>
        <iomarker fontsize="28" x="80" y="1440" name="F0" orien="R180" />
        <iomarker fontsize="28" x="80" y="1248" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="128" y="1632" name="DI(7:0)" orien="R180" />
        <iomarker fontsize="28" x="112" y="1888" name="Reset" orien="R180" />
        <branch name="Clk">
            <wire x2="288" y1="1248" y2="1248" x1="80" />
            <wire x2="288" y1="1248" y2="1376" x1="288" />
            <wire x2="464" y1="1376" y2="1376" x1="288" />
            <wire x2="2864" y1="1248" y2="1248" x1="288" />
            <wire x2="2864" y1="1248" y2="1424" x1="2864" />
            <wire x2="2928" y1="1424" y2="1424" x1="2864" />
            <wire x2="1776" y1="656" y2="656" x1="288" />
            <wire x2="288" y1="656" y2="1248" x1="288" />
        </branch>
        <branch name="Reset">
            <wire x2="160" y1="1888" y2="1888" x1="112" />
            <wire x2="304" y1="1888" y2="1888" x1="160" />
            <wire x2="1776" y1="720" y2="720" x1="160" />
            <wire x2="160" y1="720" y2="1888" x1="160" />
            <wire x2="304" y1="1568" y2="1888" x1="304" />
            <wire x2="464" y1="1568" y2="1568" x1="304" />
        </branch>
        <branch name="XLXN_139(7:0)">
            <wire x2="1760" y1="1376" y2="1376" x1="848" />
            <wire x2="1776" y1="976" y2="976" x1="1760" />
            <wire x2="1760" y1="976" y2="1376" x1="1760" />
        </branch>
        <branch name="XLXN_136(7:0)">
            <wire x2="2240" y1="1168" y2="1168" x1="2224" />
            <wire x2="2240" y1="1168" y2="1408" x1="2240" />
            <wire x2="2416" y1="1408" y2="1408" x1="2240" />
        </branch>
        <branch name="XLXN_137(7:0)">
            <wire x2="2240" y1="656" y2="656" x1="2224" />
            <wire x2="2320" y1="656" y2="656" x1="2240" />
            <wire x2="2320" y1="656" y2="1344" x1="2320" />
            <wire x2="2416" y1="1344" y2="1344" x1="2320" />
        </branch>
        <instance x="1776" y="1200" name="XLXI_27" orien="R0">
        </instance>
        <branch name="XLXN_138(7:0)">
            <wire x2="1696" y1="1104" y2="1104" x1="1648" />
            <wire x2="1776" y1="1104" y2="1104" x1="1696" />
            <wire x2="1696" y1="1104" y2="1168" x1="1696" />
            <wire x2="1776" y1="1168" y2="1168" x1="1696" />
        </branch>
        <branch name="XLXN_162(31:0)">
            <wire x2="2912" y1="1472" y2="1472" x1="2848" />
            <wire x2="2928" y1="1472" y2="1472" x1="2912" />
        </branch>
        <branch name="XLXN_180(11:0)">
            <wire x2="3520" y1="1424" y2="1424" x1="3504" />
            <wire x2="3744" y1="1216" y2="1216" x1="3520" />
            <wire x2="3520" y1="1216" y2="1424" x1="3520" />
        </branch>
        <branch name="XLXN_181">
            <wire x2="3520" y1="1472" y2="1472" x1="3504" />
            <wire x2="3744" y1="1472" y2="1472" x1="3520" />
        </branch>
        <instance x="1504" y="1072" name="XLXI_23" orien="R0">
        </instance>
        <instance x="464" y="1664" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2976" y="1520" name="XLXI_31" orien="R0">
        </instance>
        <instance x="2416" y="1440" name="XLXI_22" orien="R0">
        </instance>
        <branch name="DAC_Clock">
            <wire x2="4240" y1="1472" y2="1472" x1="4192" />
            <wire x2="4480" y1="1200" y2="1200" x1="4240" />
            <wire x2="4240" y1="1200" y2="1472" x1="4240" />
        </branch>
        <branch name="WaveOut(11:0)">
            <wire x2="4208" y1="1152" y2="1152" x1="4192" />
            <wire x2="4480" y1="1152" y2="1152" x1="4208" />
        </branch>
        <instance x="3744" y="1440" name="XLXI_28" orien="R0">
        </instance>
        <instance x="3520" y="1120" name="XLXI_33" orien="R0">
        </instance>
        <branch name="XLXN_195(7:0)">
            <wire x2="3744" y1="1152" y2="1152" x1="3664" />
        </branch>
        <iomarker fontsize="28" x="4480" y="1152" name="WaveOut(11:0)" orien="R0" />
        <iomarker fontsize="28" x="4480" y="1200" name="DAC_Clock" orien="R0" />
        <iomarker fontsize="28" x="144" y="1504" name="DI_Rdy" orien="R180" />
    </sheet>
</drawing>