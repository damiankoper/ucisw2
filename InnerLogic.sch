<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SDC_DI_Busy" />
        <signal name="SDC_DI_Pop" />
        <signal name="SDC_DI_Start" />
        <signal name="XLXN_157(7:0)" />
        <signal name="SDC_DI(7:0)" />
        <signal name="SDC_DI_Rdy" />
        <signal name="DI_Reset" />
        <signal name="XLXN_138(7:0)" />
        <signal name="XLXN_139(7:0)" />
        <signal name="DI(7:0)" />
        <signal name="F0" />
        <signal name="DI_Rdy" />
        <signal name="XLXN_224(7:0)" />
        <signal name="XLXN_266" />
        <signal name="Reset" />
        <signal name="Clk" />
        <signal name="XLXN_232(31:0)" />
        <signal name="XLXN_265(11:0)" />
        <signal name="WaveOut(11:0)" />
        <signal name="XLXN_247(7:0)" />
        <signal name="DAC_Clock" />
        <signal name="XLXN_371(7:0)" />
        <signal name="XLXN_373(7:0)" />
        <signal name="XLXN_382" />
        <port polarity="Input" name="SDC_DI_Busy" />
        <port polarity="Output" name="SDC_DI_Pop" />
        <port polarity="Output" name="SDC_DI_Start" />
        <port polarity="Input" name="SDC_DI(7:0)" />
        <port polarity="Input" name="SDC_DI_Rdy" />
        <port polarity="Output" name="DI_Reset" />
        <port polarity="Input" name="DI(7:0)" />
        <port polarity="Input" name="F0" />
        <port polarity="Input" name="DI_Rdy" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="WaveOut(11:0)" />
        <port polarity="Output" name="DAC_Clock" />
        <blockdef name="ToneFSM">
            <timestamp>2020-4-18T19:11:44</timestamp>
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
            <timestamp>2020-4-18T19:11:39</timestamp>
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
            <timestamp>2020-4-18T19:11:26</timestamp>
            <rect width="448" x="16" y="-132" height="112" />
            <line x2="-48" y1="-96" y2="-96" x1="16" />
            <rect width="64" x="-48" y="-60" height="24" />
            <line x2="-48" y1="-48" y2="-48" x1="16" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
            <line x2="528" y1="-48" y2="-48" x1="464" />
        </blockdef>
        <blockdef name="GeneratorSignalSwitch">
            <timestamp>2020-4-18T19:11:47</timestamp>
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
        <blockdef name="SourceSwitchFSM">
            <timestamp>2020-4-18T19:11:51</timestamp>
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
            <timestamp>2020-4-18T19:11:57</timestamp>
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
        <block symbolname="FileReaderFSM" name="FileReader">
            <blockpin signalname="SDC_DI_Rdy" name="DI_Rdy" />
            <blockpin signalname="SDC_DI_Busy" name="DI_Busy" />
            <blockpin signalname="XLXN_382" name="Reset" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="SDC_DI(7:0)" name="DI(7:0)" />
            <blockpin signalname="SDC_DI_Pop" name="DI_Pop" />
            <blockpin signalname="DI_Reset" name="DI_Reset" />
            <blockpin signalname="SDC_DI_Start" name="DI_Start" />
            <blockpin signalname="XLXN_157(7:0)" name="Tone(7:0)" />
            <blockpin signalname="XLXN_224(7:0)" name="Octave(7:0)" />
        </block>
        <block symbolname="constant" name="XLXI_23">
            <attr value="04" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_138(7:0)" name="O" />
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
            <blockpin name="Key_Source_Selected" />
            <blockpin signalname="XLXN_382" name="File_Source_Selected" />
            <blockpin signalname="XLXN_371(7:0)" name="Tone(7:0)" />
            <blockpin signalname="XLXN_373(7:0)" name="Octave(7:0)" />
        </block>
        <block symbolname="ToneFSM" name="XLXI_4">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="DI_Rdy" name="DI_Rdy" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="DI(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_139(7:0)" name="Tone(7:0)" />
        </block>
        <block symbolname="FreqMapper" name="XLXI_22">
            <blockpin signalname="XLXN_371(7:0)" name="Tone(7:0)" />
            <blockpin signalname="XLXN_373(7:0)" name="OctaveNum(7:0)" />
            <blockpin signalname="XLXN_232(31:0)" name="Period(31:0)" />
        </block>
        <block symbolname="GeneratorSaw" name="XLXI_25">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_232(31:0)" name="Period(31:0)" />
            <blockpin signalname="XLXN_266" name="Sample_Rdy" />
            <blockpin signalname="XLXN_265(11:0)" name="Sample(11:0)" />
        </block>
        <block symbolname="GeneratorSignalSwitch" name="XLXI_24">
            <blockpin signalname="XLXN_266" name="Input_0_Rdy" />
            <blockpin name="Input_1_Rdy" />
            <blockpin name="Input_2_Rdy" />
            <blockpin name="Input_3_Rdy" />
            <blockpin signalname="XLXN_247(7:0)" name="Wave_Type(7:0)" />
            <blockpin signalname="XLXN_265(11:0)" name="Input_0(11:0)" />
            <blockpin name="Input_1(11:0)" />
            <blockpin name="Input_2(11:0)" />
            <blockpin name="Input_3(11:0)" />
            <blockpin signalname="DAC_Clock" name="Output_Rdy" />
            <blockpin signalname="WaveOut(11:0)" name="Output(11:0)" />
        </block>
        <block symbolname="constant" name="XLXI_26">
            <attr value="00" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_247(7:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="SDC_DI_Busy">
            <wire x2="640" y1="320" y2="320" x1="320" />
        </branch>
        <branch name="SDC_DI_Pop">
            <wire x2="1296" y1="256" y2="256" x1="1024" />
        </branch>
        <branch name="SDC_DI_Start">
            <wire x2="1296" y1="336" y2="336" x1="1024" />
        </branch>
        <branch name="XLXN_157(7:0)">
            <wire x2="1072" y1="416" y2="416" x1="1024" />
            <wire x2="1072" y1="416" y2="1072" x1="1072" />
            <wire x2="1120" y1="1072" y2="1072" x1="1072" />
        </branch>
        <branch name="SDC_DI(7:0)">
            <wire x2="640" y1="512" y2="512" x1="320" />
        </branch>
        <branch name="SDC_DI_Rdy">
            <wire x2="640" y1="256" y2="256" x1="320" />
        </branch>
        <instance x="640" y="544" name="FileReader" orien="R0">
        </instance>
        <branch name="DI_Reset">
            <wire x2="1168" y1="576" y2="576" x1="1024" />
            <wire x2="1168" y1="416" y2="576" x1="1168" />
            <wire x2="1296" y1="416" y2="416" x1="1168" />
        </branch>
        <instance x="784" y="1104" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_138(7:0)">
            <wire x2="1120" y1="1136" y2="1136" x1="928" />
        </branch>
        <branch name="XLXN_139(7:0)">
            <wire x2="1008" y1="1392" y2="1392" x1="976" />
            <wire x2="1008" y1="1008" y2="1392" x1="1008" />
            <wire x2="1120" y1="1008" y2="1008" x1="1008" />
        </branch>
        <branch name="DI(7:0)">
            <wire x2="480" y1="1648" y2="1648" x1="288" />
            <wire x2="592" y1="1648" y2="1648" x1="480" />
            <wire x2="1120" y1="944" y2="944" x1="480" />
            <wire x2="480" y1="944" y2="1648" x1="480" />
        </branch>
        <branch name="F0">
            <wire x2="512" y1="1456" y2="1456" x1="288" />
            <wire x2="592" y1="1456" y2="1456" x1="512" />
            <wire x2="1120" y1="880" y2="880" x1="512" />
            <wire x2="512" y1="880" y2="1456" x1="512" />
        </branch>
        <branch name="DI_Rdy">
            <wire x2="448" y1="1520" y2="1520" x1="288" />
            <wire x2="592" y1="1520" y2="1520" x1="448" />
            <wire x2="1120" y1="816" y2="816" x1="448" />
            <wire x2="448" y1="816" y2="1520" x1="448" />
        </branch>
        <instance x="1120" y="1232" name="XLXI_27" orien="R0">
        </instance>
        <instance x="592" y="1680" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_224(7:0)">
            <wire x2="1056" y1="496" y2="496" x1="1024" />
            <wire x2="1056" y1="496" y2="1200" x1="1056" />
            <wire x2="1120" y1="1200" y2="1200" x1="1056" />
        </branch>
        <branch name="Clk">
            <wire x2="560" y1="1392" y2="1392" x1="288" />
            <wire x2="592" y1="1392" y2="1392" x1="560" />
            <wire x2="560" y1="1392" y2="1744" x1="560" />
            <wire x2="2528" y1="1744" y2="1744" x1="560" />
            <wire x2="640" y1="448" y2="448" x1="560" />
            <wire x2="560" y1="448" y2="688" x1="560" />
            <wire x2="1120" y1="688" y2="688" x1="560" />
            <wire x2="560" y1="688" y2="1392" x1="560" />
            <wire x2="2528" y1="1216" y2="1744" x1="2528" />
            <wire x2="2608" y1="1216" y2="1216" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="288" y="1520" name="DI_Rdy" orien="R180" />
        <iomarker fontsize="28" x="288" y="1456" name="F0" orien="R180" />
        <iomarker fontsize="28" x="288" y="1648" name="DI(7:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="1392" name="Clk" orien="R180" />
        <branch name="XLXN_232(31:0)">
            <wire x2="2608" y1="1264" y2="1264" x1="2464" />
        </branch>
        <instance x="2032" y="1232" name="XLXI_22" orien="R0">
        </instance>
        <instance x="2656" y="1312" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_265(11:0)">
            <wire x2="3200" y1="1216" y2="1216" x1="3184" />
            <wire x2="3264" y1="1008" y2="1008" x1="3200" />
            <wire x2="3200" y1="1008" y2="1216" x1="3200" />
        </branch>
        <branch name="XLXN_266">
            <wire x2="3264" y1="1264" y2="1264" x1="3184" />
        </branch>
        <branch name="WaveOut(11:0)">
            <wire x2="3728" y1="944" y2="944" x1="3712" />
            <wire x2="3728" y1="944" y2="1216" x1="3728" />
            <wire x2="3808" y1="1216" y2="1216" x1="3728" />
        </branch>
        <instance x="3264" y="1232" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_247(7:0)">
            <wire x2="3152" y1="800" y2="944" x1="3152" />
            <wire x2="3264" y1="944" y2="944" x1="3152" />
        </branch>
        <branch name="DAC_Clock">
            <wire x2="3808" y1="1264" y2="1264" x1="3712" />
        </branch>
        <instance x="3184" y="656" name="XLXI_26" orien="R90">
        </instance>
        <branch name="XLXN_371(7:0)">
            <wire x2="1984" y1="688" y2="688" x1="1568" />
            <wire x2="1984" y1="688" y2="1136" x1="1984" />
            <wire x2="2032" y1="1136" y2="1136" x1="1984" />
        </branch>
        <branch name="XLXN_373(7:0)">
            <wire x2="2032" y1="1200" y2="1200" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="1296" y="416" name="DI_Reset" orien="R0" />
        <iomarker fontsize="28" x="320" y="320" name="SDC_DI_Busy" orien="R180" />
        <iomarker fontsize="28" x="320" y="256" name="SDC_DI_Rdy" orien="R180" />
        <iomarker fontsize="28" x="320" y="512" name="SDC_DI(7:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="1072" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="1296" y="256" name="SDC_DI_Pop" orien="R0" />
        <iomarker fontsize="28" x="1296" y="336" name="SDC_DI_Start" orien="R0" />
        <iomarker fontsize="28" x="3808" y="1264" name="DAC_Clock" orien="R0" />
        <iomarker fontsize="28" x="3808" y="1216" name="WaveOut(11:0)" orien="R0" />
        <branch name="Reset">
            <wire x2="400" y1="1072" y2="1072" x1="256" />
            <wire x2="400" y1="1072" y2="1584" x1="400" />
            <wire x2="592" y1="1584" y2="1584" x1="400" />
            <wire x2="400" y1="752" y2="1072" x1="400" />
            <wire x2="1120" y1="752" y2="752" x1="400" />
        </branch>
        <branch name="XLXN_382">
            <wire x2="560" y1="48" y2="384" x1="560" />
            <wire x2="640" y1="384" y2="384" x1="560" />
            <wire x2="1632" y1="48" y2="48" x1="560" />
            <wire x2="1632" y1="48" y2="1328" x1="1632" />
            <wire x2="1632" y1="1328" y2="1328" x1="1568" />
        </branch>
    </sheet>
</drawing>