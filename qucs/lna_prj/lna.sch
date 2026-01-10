<Qucs Schematic 25.2.0>
<Properties>
  <View=-3738,-1326,4014,1910,0.736246,2113,988>
  <Grid=10,10,1>
  <DataSet=lna.dat>
  <DataDisplay=lna.dpl>
  <OpenDisplay=0>
  <Script=lna.m>
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
  <GND * 1 250 620 0 0 0 0>
  <GND * 1 -420 70 0 0 0 0>
  <S4Q_V V1 1 -420 0 18 -26 0 1 "1.2" 1 "" 0 "" 0 "" 0 "" 0>
  <Pac P1 1 -240 490 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 -240 530 0 0 0 0>
  <GND * 1 -40 530 0 0 0 0>
  <R R1 1 -40 440 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.DC DC1 1 -540 360 0 30 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Pac P2 1 530 290 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 530 330 0 0 0 0>
  <NutmegEq NutmegEq3 1 -360 920 -28 16 0 0 "SP1" 1 "db_s11=dB(S_1_1)" 1 "db_s21=dB(S_2_1)" 1 "db_s12=dB(S_1_2)" 1 "db_s22=dB(S_2_2)" 1>
  <NutmegEq NutmegEq4 0 -620 920 -28 16 0 0 "SP1" 1 "db_nf=dB(nf)" 1 "db_nfmin=dB(nfmin)" 1>
  <INDQ LQ1 1 250 110 -65 -26 0 3 "5 nH" 1 "10" 1 "1100 MHz" 1 "Linear" 1 "26.85" 0>
  <C C2 1 -170 380 -26 17 0 0 "20 pF" 1 "" 0 "neutral" 0>
  <C C3 0 360 90 17 -26 0 1 "4 pF" 1 "" 0 "neutral" 0>
  <INCLSCR INCLSCR1 1 -680 -410 -60 16 0 0 ".LIB cornerMOSlv.lib mos_tt\n\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[gm]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[gds]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cgs]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cgd]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cdb]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[vth]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[vgs]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[ids]\n" 1 "" 0 "" 0>
  <NutmegEq NutmegEq5 1 -220 -390 -30 18 0 0 "ALL" 1 "mos_gm=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[gm]" 1 "mos_gds=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[gds]" 1 "mos_cgs=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cgs]" 1 "mos_cgd=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cgd]" 1 "mos_cdb=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cdb]" 1 "mos_vth=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[vth]" 1 "mos_vgs=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[vgs]" 1 "mos_ids=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[ids]" 1>
  <C C1 1 410 180 -26 17 0 0 "5 pF" 1 "" 0 "neutral" 0>
  <.SP SP1 1 -540 470 0 49 0 0 "log" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "yes" 0 "1" 0 "2" 0 "yes" 0 "yes" 0>
  <SpicePar SpicePar1 1 270 810 -28 16 0 0 "Lseries=10n" 1 "Rseries=1" 1 "Cshunt1=100f" 1 "Rshunt1=1k" 1 "Cshunt2=100f" 1 "Rshunt2=1k" 1>
  <SpicePar SpicePar2 1 -110 140 -28 16 0 0 "Lseries_s=10n" 1 "Rseries_s=1" 1 "Cshunt1_s=100f" 1 "Rshunt1_s=1k" 1 "Cshunt2_s=100f" 1 "Rshunt2_s=1k" 1>
  <INDQ LQ4 1 250 540 -111 -26 0 3 "0.4 nH" 1 "10" 1 "1100 MHz" 1 "Linear" 1 "26.85" 0>
  <INDQ LQ2 1 110 380 -26 17 0 0 "1.4 nH" 1 "10" 1 "1100 MHz" 1 "Linear" 1 "26.85" 0>
  <Lib sg13_lv_nmos1 1 250 380 50 -20 0 0 "/home/ic_design_trg/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "sg13_lv_nmos" 0 "5u" 1 "0.25u" 1 "1" 1 "40" 1 "1" 1 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.34e-6" 0 "0.38e-6" 0 "0.15e-6" 0 "0" 0 "1" 0>
  <Lib sg13_lv_nmos2 1 250 250 50 -20 0 0 "/home/ic_design_trg/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "sg13_lv_nmos" 0 "5u" 1 "0.25u" 1 "1" 1 "40" 1 "1" 1 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.34e-6" 0 "0.38e-6" 0 "0.15e-6" 0 "0" 0 "1" 0>
  <Vdc V2 1 -40 500 18 -26 0 1 "0.45 V" 1>
</Components>
<Wires>
  <250 280 250 350 "" 0 0 0 "">
  <250 140 250 150 "" 0 0 0 "">
  <250 410 250 510 "n2" 280 400 55 "">
  <100 250 220 250 "" 0 0 0 "">
  <100 30 100 250 "" 0 0 0 "">
  <100 30 250 30 "" 0 0 0 "">
  <250 30 250 80 "" 0 0 0 "">
  <270 250 280 250 "" 0 0 0 "">
  <280 250 280 380 "" 0 0 0 "">
  <250 620 280 620 "" 0 0 0 "">
  <270 380 280 380 "" 0 0 0 "">
  <250 180 250 220 "n1" 280 180 32 "">
  <250 180 380 180 "" 0 0 0 "">
  <-420 -70 -420 -30 "" 0 0 0 "">
  <-420 30 -420 70 "" 0 0 0 "">
  <-240 380 -240 460 "" 0 0 0 "">
  <-240 380 -200 380 "" 0 0 0 "">
  <-240 520 -240 530 "" 0 0 0 "">
  <-140 380 -40 380 "" 0 0 0 "">
  <-40 380 -40 410 "" 0 0 0 "">
  <530 180 530 260 "" 0 0 0 "">
  <530 320 530 330 "" 0 0 0 "">
  <440 180 530 180 "" 0 0 0 "">
  <360 30 360 60 "" 0 0 0 "">
  <250 30 360 30 "" 0 0 0 "">
  <360 120 360 150 "" 0 0 0 "">
  <250 150 250 180 "" 0 0 0 "">
  <250 150 360 150 "" 0 0 0 "">
  <250 570 250 620 "" 0 0 0 "">
  <-40 380 80 380 "" 0 0 0 "">
  <140 380 220 380 "n3" 210 350 36 "">
  <280 380 280 620 "" 0 0 0 "">
  <250 30 250 30 "vdd" 280 0 0 "">
  <-420 -70 -420 -70 "vdd" -390 -100 0 "">
  <-40 380 -40 380 "n4" -10 350 0 "">
</Wires>
<Diagrams>
  <Rect -1886 328 930 679 3 #c0c0c0 1 00 1 0 5e+08 1e+10 1 -209.981 20 29.2276 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.db_s21" #0000ff 1 3 0 0 0>
	  <Mkr 1.20226e+09 -12 -833 3 0 0>
	<"ngspice/ac.db_s11" #ff0000 1 3 0 0 0>
	  <Mkr 1.20226e+09 -6 -881 3 0 0>
	<"ngspice/ac.db_s12" #ff00ff 1 3 0 0 0>
	  <Mkr 1.20226e+09 -26 -782 3 0 0>
	<"ngspice/ac.db_s21" #00ff00 1 3 0 0 0>
	<"ngspice/ac.db_s22" #00ffff 1 3 0 0 0>
	  <Mkr 1.20226e+09 -33 -734 3 0 0>
  </Rect>
  <Rect -1690 1082 959 602 3 #c0c0c0 1 00 1 0 5e+08 1e+10 1 -5 5 46.6683 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.nfmin" #0000ff 1 3 0 0 0>
	  <Mkr 1e+09 286 -51 3 0 0>
	<"ngspice/ac.nf" #ff0000 1 3 0 0 0>
	  <Mkr 1e+09 156 -133 3 0 0>
  </Rect>
  <Tab -2520 1021 726 531 3 #c0c0c0 1 00 1 139 1 1 1 0 1 1 1 0 1 185 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.nf" #0000ff 0 3 1 0 0>
	<"ngspice/ac.nfmin" #0000ff 0 3 1 0 0>
	<"ngspice/ac.db_s11" #0000ff 0 3 1 0 0>
	<"ngspice/ac.db_s12" #0000ff 0 3 1 0 0>
	<"ngspice/ac.db_s21" #0000ff 0 3 1 0 0>
	<"ngspice/ac.db_s22" #0000ff 0 3 1 0 0>
  </Tab>
  <Tab -2660 -173 681 177 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/mos_cdb" #0000ff 0 3 1 0 0>
	<"ngspice/mos_cgd" #0000ff 0 3 1 0 0>
	<"ngspice/mos_cgs" #0000ff 0 3 1 0 0>
	<"ngspice/mos_gds" #0000ff 0 3 1 0 0>
	<"ngspice/mos_gm" #0000ff 0 3 1 0 0>
	<"ngspice/mos_vth" #0000ff 0 3 1 0 0>
	<"ngspice/mos_vgs" #0000ff 0 3 1 0 0>
	<"ngspice/mos_ids" #0000ff 0 3 1 0 0>
  </Tab>
  <Tab -190 910 300 200 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 185 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.nf" #0000ff 0 3 1 0 0>
	<"ngspice/ac.nfmin" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
