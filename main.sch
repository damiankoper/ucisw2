<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4">
        </signal>
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_13" />
        <signal name="XLXN_15" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_20" />
        <signal name="XLXN_22" />
        <signal name="XLXN_24" />
        <signal name="XLXN_26" />
        <signal name="XLXN_31" />
        <signal name="XLXN_33" />
        <signal name="XLXN_35" />
        <signal name="XLXN_38" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_10" />
        <signal name="XLXN_62" />
        <signal name="XLXN_11" />
        <signal name="XLXN_64" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_66" />
        <signal name="Reset" />
        <signal name="XLXN_8(7:0)" />
        <signal name="XLXN_5" />
        <signal name="PS2_Data" />
        <signal name="PS2_Clk" />
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
        <blockdef name="Clock_32kHz">
            <timestamp>2020-3-22T14:9:42</timestamp>
            <rect width="336" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
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
        <block symbolname="Clock_32kHz" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="CLK_IN" />
            <blockpin name="RESET" />
            <blockpin signalname="XLXN_5" name="CLK_OUT" />
            <blockpin name="COUNTER_OUT(10:0)" />
        </block>
        <block symbolname="DACWrite" name="XLXI_3">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_5" name="Start" />
            <blockpin name="SPI_MISO" />
            <blockpin name="Cmd(3:0)" />
            <blockpin name="Addr(3:0)" />
            <blockpin name="DATA(11:0)" />
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
        <block symbolname="ToneFSM" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_10" name="F0" />
            <blockpin signalname="XLXN_11" name="DI_Rdy" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_8(7:0)" name="DI(7:0)" />
            <blockpin name="Tone(7:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_1">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_10" name="F0" />
            <blockpin signalname="XLXN_11" name="DO_Rdy" />
            <blockpin signalname="XLXN_8(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <attr value="Inch" name="LengthUnitName" />
        <attr value="10" name="GridsPerUnit" />
        <branch name="XLXN_10">
            <wire x2="1008" y1="2240" y2="2240" x1="992" />
            <wire x2="1008" y1="2176" y2="2240" x1="1008" />
            <wire x2="1120" y1="2176" y2="2176" x1="1008" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1056" y1="2304" y2="2304" x1="992" />
            <wire x2="1120" y1="2240" y2="2240" x1="1056" />
            <wire x2="1056" y1="2240" y2="2304" x1="1056" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="160" y1="1968" y2="2608" x1="160" />
            <wire x2="576" y1="2608" y2="2608" x1="160" />
            <wire x2="576" y1="2608" y2="2672" x1="576" />
            <wire x2="2960" y1="2672" y2="2672" x1="576" />
            <wire x2="2960" y1="2608" y2="2608" x1="576" />
            <wire x2="1072" y1="1968" y2="1968" x1="160" />
            <wire x2="2464" y1="1968" y2="1968" x1="1072" />
            <wire x2="1072" y1="1968" y2="2112" x1="1072" />
            <wire x2="1120" y1="2112" y2="2112" x1="1072" />
            <wire x2="576" y1="2240" y2="2240" x1="384" />
            <wire x2="576" y1="2240" y2="2304" x1="576" />
            <wire x2="576" y1="2304" y2="2608" x1="576" />
            <wire x2="608" y1="2304" y2="2304" x1="576" />
            <wire x2="608" y1="2240" y2="2240" x1="576" />
        </branch>
        <branch name="Reset">
            <wire x2="512" y1="2384" y2="2384" x1="352" />
            <wire x2="512" y1="2384" y2="2544" x1="512" />
            <wire x2="2960" y1="2544" y2="2544" x1="512" />
            <wire x2="1104" y1="2384" y2="2384" x1="512" />
            <wire x2="1120" y1="2304" y2="2304" x1="1104" />
            <wire x2="1104" y1="2304" y2="2384" x1="1104" />
        </branch>
        <branch name="XLXN_8(7:0)">
            <wire x2="1040" y1="2112" y2="2112" x1="992" />
            <wire x2="1040" y1="2112" y2="2368" x1="1040" />
            <wire x2="1120" y1="2368" y2="2368" x1="1040" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2960" y1="1968" y2="1968" x1="2928" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="608" y1="2176" y2="2176" x1="576" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="608" y1="2112" y2="2112" x1="576" />
        </branch>
        <instance x="2464" y="2064" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2960" y="2512" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1120" y="2400" name="XLXI_4" orien="R0">
        </instance>
        <instance x="608" y="2336" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="352" y="2384" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="384" y="2240" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="576" y="2176" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="576" y="2112" name="PS2_Clk" orien="R180" />
    </sheet>
</drawing>