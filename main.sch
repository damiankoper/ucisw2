<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="Clk_50MHz" />
        <signal name="Reset" />
        <signal name="PS2_Data" />
        <signal name="PS2_Clk" />
        <signal name="XLXN_94" />
        <signal name="XLXN_114(11:0)" />
        <signal name="XLXN_119" />
        <signal name="XLXN_122" />
        <signal name="XLXN_124(7:0)" />
        <signal name="XLXN_125(11:0)" />
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
            <timestamp>2020-3-26T8:31:44</timestamp>
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
        <block symbolname="PS2_Kbd" name="XLXI_1">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_10" name="F0" />
            <blockpin signalname="XLXN_11" name="DO_Rdy" />
            <blockpin signalname="XLXN_124(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="DACWrite" name="XLXI_3">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_94" name="Start" />
            <blockpin name="SPI_MISO" />
            <blockpin name="Cmd(3:0)" />
            <blockpin name="Addr(3:0)" />
            <blockpin signalname="XLXN_114(11:0)" name="DATA(11:0)" />
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
        <block symbolname="InnerLogic" name="XLXI_27">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_124(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_11" name="DI_Rdy" />
            <blockpin signalname="XLXN_10" name="F0" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_94" name="DAC_Clock" />
            <blockpin signalname="XLXN_114(11:0)" name="WaveOut(11:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <attr value="Inch" name="LengthUnitName" />
        <attr value="10" name="GridsPerUnit" />
        <branch name="PS2_Data">
            <wire x2="608" y1="2176" y2="2176" x1="368" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="608" y1="2112" y2="2112" x1="336" />
        </branch>
        <instance x="608" y="2336" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="352" y="2384" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="384" y="2240" name="Clk_50MHz" orien="R180" />
        <instance x="4256" y="3280" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_94">
            <wire x2="4032" y1="2112" y2="2112" x1="1824" />
            <wire x2="4032" y1="2112" y2="2528" x1="4032" />
            <wire x2="4240" y1="2528" y2="2528" x1="4032" />
            <wire x2="4240" y1="2528" y2="2736" x1="4240" />
            <wire x2="4256" y1="2736" y2="2736" x1="4240" />
        </branch>
        <branch name="XLXN_114(11:0)">
            <wire x2="2928" y1="2368" y2="2368" x1="1824" />
            <wire x2="2928" y1="2368" y2="2928" x1="2928" />
            <wire x2="4256" y1="2928" y2="2928" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="368" y="2176" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="336" y="2112" name="PS2_Clk" orien="R180" />
        <branch name="XLXN_10">
            <wire x2="1008" y1="2240" y2="2240" x1="992" />
            <wire x2="1008" y1="2224" y2="2240" x1="1008" />
            <wire x2="1200" y1="2224" y2="2224" x1="1008" />
            <wire x2="1200" y1="2224" y2="2304" x1="1200" />
            <wire x2="1440" y1="2304" y2="2304" x1="1200" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1008" y1="2304" y2="2304" x1="992" />
            <wire x2="1008" y1="2288" y2="2304" x1="1008" />
            <wire x2="1216" y1="2288" y2="2288" x1="1008" />
            <wire x2="1216" y1="2240" y2="2288" x1="1216" />
            <wire x2="1440" y1="2240" y2="2240" x1="1216" />
        </branch>
        <instance x="1440" y="2400" name="XLXI_27" orien="R0">
        </instance>
        <branch name="XLXN_124(7:0)">
            <wire x2="1008" y1="2112" y2="2112" x1="992" />
            <wire x2="1008" y1="2112" y2="2176" x1="1008" />
            <wire x2="1440" y1="2176" y2="2176" x1="1008" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="576" y1="2240" y2="2240" x1="384" />
            <wire x2="608" y1="2240" y2="2240" x1="576" />
            <wire x2="576" y1="2240" y2="2304" x1="576" />
            <wire x2="608" y1="2304" y2="2304" x1="576" />
            <wire x2="576" y1="2304" y2="2464" x1="576" />
            <wire x2="576" y1="2464" y2="3376" x1="576" />
            <wire x2="4256" y1="3376" y2="3376" x1="576" />
            <wire x2="4256" y1="3376" y2="3440" x1="4256" />
            <wire x2="1040" y1="2464" y2="2464" x1="576" />
            <wire x2="1440" y1="2368" y2="2368" x1="1040" />
            <wire x2="1040" y1="2368" y2="2464" x1="1040" />
        </branch>
        <branch name="Reset">
            <wire x2="544" y1="2384" y2="2384" x1="352" />
            <wire x2="1024" y1="2384" y2="2384" x1="544" />
            <wire x2="544" y1="2384" y2="2592" x1="544" />
            <wire x2="544" y1="2592" y2="3312" x1="544" />
            <wire x2="4256" y1="3312" y2="3312" x1="544" />
            <wire x2="1440" y1="2112" y2="2112" x1="1024" />
            <wire x2="1024" y1="2112" y2="2384" x1="1024" />
        </branch>
    </sheet>
</drawing>