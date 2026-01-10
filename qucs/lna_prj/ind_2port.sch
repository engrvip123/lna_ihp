<Qucs Schematic 25.2.0>
<Properties>
  <View=20,9,1532,810,0.921244,1,0>
  <Grid=10,10,1>
  <DataSet=ind_2port.dat>
  <DataDisplay=ind_2port.dpl>
  <OpenDisplay=0>
  <Script=ind_2port.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 540 320 0 0 0 0>
  <Pac P1 1 320 340 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac P2 1 750 330 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 320 370 0 0 0 0>
  <GND * 1 750 360 0 0 0 0>
  <NutmegEq NutmegEq1 1 110 360 -28 16 0 0 "SP1" 1 "db_s11=dB(S_1_1)" 1 "db_s21=dB(S_2_1)" 1 "db_s12=dB(S_1_2)" 1 "db_s22=dB(S_2_2)" 1>
  <SPfile X1 1 540 290 -26 -57 0 0 "/home/ic_design_trg/Downloads/testcase/output/run_inductor_2port_data/run_inductor_2port.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <.SP SP1 1 150 110 0 49 0 0 "log" 1 "1 MHz" 1 "10 GHz" 1 "400" 1 "yes" 0 "1" 0 "2" 0 "yes" 0 "yes" 0>
</Components>
<Wires>
  <320 290 510 290 "" 0 0 0 "">
  <320 290 320 310 "" 0 0 0 "">
  <570 290 750 290 "" 0 0 0 "">
  <750 290 750 300 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 420 630 240 160 3 #c0c0c0 1 00 1 0 2e+09 1e+10 1 -0.0706838 0.5 1.19746 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s_1_2" #ff0000 0 3 0 0 0>
	<"ngspice/ac.s_2_1" #ff00ff 0 3 0 0 0>
  </Rect>
  <Smith 1030 650 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s_1_1" #0000ff 1 3 0 0 0>
  </Smith>
  <Smith 1290 660 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.db_s21" #0000ff 1 3 0 0 0>
  </Smith>
  <Smith 760 670 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s_2_2" #0000ff 1 3 0 0 0>
  </Smith>
  <Rect 60 710 240 160 3 #c0c0c0 1 00 1 0 2e+09 1e+10 1 -0.0706838 0.5 1.19746 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s_1_1" #0000ff 1 3 0 0 0>
	<"ngspice/ac.s_2_2" #00ff00 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
