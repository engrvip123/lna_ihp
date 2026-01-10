<Qucs Schematic 25.2.0>
<Properties>
  <View=202,134,977,584,1.63953,0,0>
  <Grid=10,10,1>
  <DataSet=ind_lumped.dat>
  <DataDisplay=ind_lumped.dpl>
  <OpenDisplay=0>
  <Script=ind_lumped.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 14 SUB "1=Lseries=1==" "1=Rseries=1==" "1=Cshunt1=1==" "1=Cshunt2=1==" "1=Rshunt1=1==" "1=Rshunt2=1==">
  <.PortSym -30 0 1 0 P1>
  <.PortSym 30 0 2 180 P2>
  <Line -30 0 10 0 #000080 2 1>
  <Line 20 0 10 0 #000080 2 1>
  <Line -20 -10 40 0 #000080 2 1>
  <Line 20 -10 0 20 #000080 2 1>
  <Line -20 10 40 0 #000080 2 1>
  <Line -20 -10 0 20 #000080 2 1>
</Symbol>
<Components>
  <GND * 1 340 510 0 0 0 0>
  <GND * 1 810 500 0 0 0 0>
  <Port P1 1 270 230 -23 12 0 0 "1" 1 "analog" 0>
  <Port P2 1 880 230 4 -48 0 2 "2" 1 "analog" 0>
  <L L1 1 470 230 -26 10 0 0 "Lseries" 1 "" 0>
  <R R1 1 700 230 -26 15 0 0 "Rseries" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C1 1 340 350 17 -26 0 1 "Cshunt1" 1 "" 0 "neutral" 0>
  <R R2 1 340 480 15 -26 0 1 "Rshunt1" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C2 1 810 340 17 -26 0 1 "Cshunt2" 1 "" 0 "neutral" 0>
  <R R3 1 810 470 15 -26 0 1 "Rshunt2" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <340 230 440 230 "" 0 0 0 "">
  <340 230 340 320 "" 0 0 0 "">
  <500 230 670 230 "" 0 0 0 "">
  <730 230 810 230 "" 0 0 0 "">
  <810 230 810 310 "" 0 0 0 "">
  <340 380 340 450 "" 0 0 0 "">
  <810 370 810 440 "" 0 0 0 "">
  <270 230 340 230 "" 0 0 0 "">
  <810 230 880 230 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
