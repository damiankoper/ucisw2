<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_95(7:0)" />
        <signal name="XLXN_96(7:0)" />
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
        <block symbolname="ToneFSM" name="XLXI_4">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="DI_Rdy" name="DI_Rdy" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="DI(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_95(7:0)" name="Tone(7:0)" />
        </block>
        <block symbolname="FreqMapper" name="XLXI_22">
            <blockpin signalname="XLXN_95(7:0)" name="Tone(7:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="OctaveNum(7:0)" />
            <blockpin signalname="XLXN_126(31:0)" name="Period(31:0)" />
        </block>
        <block symbolname="constant" name="XLXI_23">
            <attr value="04" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_96(7:0)" name="O" />
        </block>
        <block symbolname="Clock_32kHz" name="XLXI_17">
            <blockpin signalname="Clk" name="CLK_IN" />
            <blockpin signalname="Reset" name="RESET" />
            <blockpin signalname="DAC_Clock" name="CLK_OUT" />
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
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="304" y="1152" name="XLXI_4" orien="R0">
        </instance>
        <instance x="880" y="960" name="XLXI_22" orien="R0">
        </instance>
        <instance x="512" y="1200" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_95(7:0)">
            <wire x2="880" y1="864" y2="864" x1="688" />
        </branch>
        <branch name="XLXN_96(7:0)">
            <wire x2="768" y1="1232" y2="1232" x1="656" />
            <wire x2="768" y1="928" y2="1232" x1="768" />
            <wire x2="880" y1="928" y2="928" x1="768" />
        </branch>
        <instance x="1920" y="832" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_104(11:0)">
            <wire x2="2320" y1="736" y2="736" x1="2304" />
            <wire x2="2320" y1="736" y2="1744" x1="2320" />
            <wire x2="2736" y1="1744" y2="1744" x1="2320" />
        </branch>
        <instance x="2736" y="1968" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_113(7:0)">
            <wire x2="2736" y1="1680" y2="1680" x1="2528" />
        </branch>
        <instance x="2384" y="1648" name="XLXI_26" orien="R0">
        </instance>
        <instance x="2800" y="1376" name="XLXI_17" orien="R0">
        </instance>
        <branch name="DAC_Clock">
            <wire x2="3216" y1="1280" y2="1280" x1="3184" />
        </branch>
        <iomarker fontsize="28" x="3216" y="1280" name="DAC_Clock" orien="R0" />
        <branch name="WaveOut(11:0)">
            <wire x2="3216" y1="1680" y2="1680" x1="3184" />
        </branch>
        <iomarker fontsize="28" x="3216" y="1680" name="WaveOut(11:0)" orien="R0" />
        <branch name="Reset">
            <wire x2="288" y1="1376" y2="1376" x1="240" />
            <wire x2="2784" y1="1376" y2="1376" x1="288" />
            <wire x2="304" y1="1056" y2="1056" x1="288" />
            <wire x2="288" y1="1056" y2="1376" x1="288" />
            <wire x2="2800" y1="1344" y2="1344" x1="2784" />
            <wire x2="2784" y1="1344" y2="1376" x1="2784" />
        </branch>
        <branch name="DI(7:0)">
            <wire x2="304" y1="1120" y2="1120" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="1120" name="DI(7:0)" orien="R180" />
        <branch name="DI_Rdy">
            <wire x2="304" y1="992" y2="992" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="992" name="DI_Rdy" orien="R180" />
        <branch name="F0">
            <wire x2="304" y1="928" y2="928" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="928" name="F0" orien="R180" />
        <iomarker fontsize="28" x="240" y="1376" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="272" y="736" name="Clk" orien="R180" />
        <branch name="Clk">
            <wire x2="288" y1="736" y2="736" x1="272" />
            <wire x2="1840" y1="736" y2="736" x1="288" />
            <wire x2="1920" y1="736" y2="736" x1="1840" />
            <wire x2="1840" y1="736" y2="1312" x1="1840" />
            <wire x2="2800" y1="1312" y2="1312" x1="1840" />
            <wire x2="288" y1="736" y2="864" x1="288" />
            <wire x2="304" y1="864" y2="864" x1="288" />
            <wire x2="2800" y1="1280" y2="1312" x1="2800" />
        </branch>
        <branch name="XLXN_126(31:0)">
            <wire x2="1616" y1="992" y2="992" x1="1312" />
            <wire x2="1616" y1="992" y2="1248" x1="1616" />
            <wire x2="1920" y1="1248" y2="1248" x1="1616" />
        </branch>
    </sheet>
</drawing>