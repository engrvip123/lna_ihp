<Qucs Schematic 25.2.0>
<Properties>
  <View=-4937,-2675,4141,1861,0.628753,2235,1503>
  <Grid=10,10,1>
  <DataSet=lna_s2p.dat>
  <DataDisplay=lna_s2p.dpl>
  <OpenDisplay=0>
  <Script=lna_s2p.m>
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
  <GND * 1 -100 530 0 0 0 0>
  <R R1 1 -100 440 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.DC DC1 1 -540 360 0 30 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Pac P2 1 530 140 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 530 210 0 0 0 0>
  <NutmegEq NutmegEq3 1 -360 920 -28 16 0 0 "SP1" 1 "db_s11=dB(S_1_1)" 1 "db_s21=dB(S_2_1)" 1 "db_s12=dB(S_1_2)" 1 "db_s22=dB(S_2_2)" 1>
  <NutmegEq NutmegEq4 0 -620 920 -28 16 0 0 "SP1" 1 "db_nf=dB(nf)" 1 "db_nfmin=dB(nfmin)" 1>
  <INDQ LQ1 0 250 -70 -65 -26 0 3 "5 nH" 1 "10" 1 "1100 MHz" 1 "Linear" 1 "26.85" 0>
  <C C2 1 -170 380 -26 17 0 0 "20 pF" 1 "" 0 "neutral" 0>
  <C C3 0 420 -40 17 -26 0 1 "4 pF" 1 "" 0 "neutral" 0>
  <INCLSCR INCLSCR1 1 -680 -410 -60 16 0 0 ".LIB cornerMOSlv.lib mos_tt\n\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[gm]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[gds]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cgs]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cgd]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cdb]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[vth]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[vgs]\n.save all @n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[ids]\n" 1 "" 0 "" 0>
  <NutmegEq NutmegEq5 1 -220 -390 -30 18 0 0 "ALL" 1 "mos_gm=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[gm]" 1 "mos_gds=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[gds]" 1 "mos_cgs=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cgs]" 1 "mos_cgd=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cgd]" 1 "mos_cdb=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[cdb]" 1 "mos_vth=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[vth]" 1 "mos_vgs=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[vgs]" 1 "mos_ids=@n.Xsg13_lv_nmos1.x1.nsg13_lv_nmos[ids]" 1>
  <Lib sg13_lv_nmos1 1 250 380 50 -20 0 0 "/home/ic_design_trg/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "sg13_lv_nmos" 0 "300u" 1 "0.18u" 1 "1" 1 "1" 1 "1" 1 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.34e-6" 0 "0.38e-6" 0 "0.15e-6" 0 "0" 0 "1" 0>
  <Lib sg13_lv_nmos2 1 250 150 50 -20 0 0 "/home/ic_design_trg/QucsWorkspace/user_lib/IHP_PDK_nonlinear_components" 0 "sg13_lv_nmos" 0 "300u" 1 "0.18u" 1 "1" 1 "1" 1 "1" 1 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.34e-6" 0 "0.38e-6" 0 "0.15e-6" 0 "0" 0 "1" 0>
  <Vdc V2 1 -100 500 18 -26 0 1 "0.6 V" 1>
  <C C1 1 410 80 -26 17 0 0 "5 pF" 1 "" 0 "neutral" 0>
  <.SP SP1 1 -540 470 0 49 0 0 "log" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "yes" 0 "1" 0 "2" 0 "yes" 0 "yes" 0>
  <GND * 1 220 540 0 0 0 3>
  <SpicePar SpicePar1 1 270 810 -28 16 0 0 "Lseries=10n" 1 "Rseries=1" 1 "Cshunt1=100f" 1 "Rshunt1=1k" 1 "Cshunt2=100f" 1 "Rshunt2=1k" 1>
  <SpicePar SpicePar2 1 990 50 -28 16 0 0 "Lseries_s=10n" 1 "Rseries_s=1" 1 "Cshunt1_s=100f" 1 "Rshunt1_s=1k" 1 "Cshunt2_s=100f" 1 "Rshunt2_s=1k" 1>
  <INDQ LQ3 0 170 540 -111 -26 0 3 "1 nH" 1 "10" 1 "1100 MHz" 1 "Linear" 1 "26.85" 0>
  <INDQ LQ5 0 90 200 -26 17 0 0 "20 nH" 1 "10" 1 "1100 MHz" 1 "Linear" 1 "26.85" 0>
  <GND * 0 110 410 0 0 0 0>
  <SPfile X1 1 250 540 21 -26 0 3 "/home/ic_design_trg/Downloads/testcase/output/02_run_inductor_2port_data/02_run_inductor_2port.s2p" 1 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <SPfile X2 0 110 380 -26 -57 0 0 "/home/ic_design_trg/Downloads/testcase/output/01_run_inductor_2port_data/run_inductor_2port.s2p" 1 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <GND * 0 310 -50 0 0 0 3>
  <SPfile X3 1 340 -50 21 -26 0 3 "/home/ic_design_trg/Downloads/testcase/output/03_run_inductor_2port_data/03_run_inductor_2port.s2p" 1 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <Sub SUB1 0 -160 120 -20 14 0 0 "ind_lumped.sch" 0 "9.01n" 1 "6.3" 1 "61.6e-15" 1 "62.6e-15" 1 "2225" 1 "2260" 1>
</Components>
<Wires>
  <250 180 250 350 "" 0 0 0 "">
  <250 410 250 500 "n2" 220 470 55 "">
  <100 150 220 150 "" 0 0 0 "">
  <100 -130 250 -130 "" 0 0 0 "">
  <250 -130 250 -100 "" 0 0 0 "">
  <270 150 280 150 "" 0 0 0 "">
  <250 620 280 620 "" 0 0 0 "">
  <270 380 280 380 "" 0 0 0 "">
  <250 80 250 120 "n1" 210 100 32 "">
  <250 80 380 80 "" 0 0 0 "">
  <-420 -70 -420 -30 "" 0 0 0 "">
  <-420 30 -420 70 "" 0 0 0 "">
  <-240 380 -240 460 "" 0 0 0 "">
  <-240 380 -200 380 "" 0 0 0 "">
  <-240 520 -240 530 "" 0 0 0 "">
  <-140 380 -100 380 "" 0 0 0 "">
  <-100 380 -100 410 "" 0 0 0 "">
  <530 80 530 110 "" 0 0 0 "">
  <530 170 530 210 "" 0 0 0 "">
  <440 80 530 80 "" 0 0 0 "">
  <250 570 250 590 "" 0 0 0 "">
  <140 380 170 380 "" 0 0 0 "">
  <280 380 280 620 "" 0 0 0 "">
  <280 150 280 380 "" 0 0 0 "">
  <40 200 60 200 "" 0 0 0 "">
  <40 380 80 380 "" 0 0 0 "">
  <40 200 40 380 "" 0 0 0 "">
  <120 200 170 200 "" 0 0 0 "">
  <170 380 220 380 "n3" 190 410 6 "">
  <170 200 170 380 "" 0 0 0 "">
  <250 -40 250 10 "" 0 0 0 "">
  <100 -130 100 150 "" 0 0 0 "">
  <250 40 250 80 "" 0 0 0 "">
  <420 -10 420 40 "" 0 0 0 "">
  <250 -130 420 -130 "" 0 0 0 "">
  <250 40 420 40 "" 0 0 0 "">
  <420 -130 420 -70 "" 0 0 0 "">
  <250 -100 340 -100 "" 0 0 0 "">
  <340 -100 340 -80 "" 0 0 0 "">
  <340 -20 340 10 "" 0 0 0 "">
  <250 10 250 40 "" 0 0 0 "">
  <250 10 340 10 "" 0 0 0 "">
  <170 570 170 590 "" 0 0 0 "">
  <250 590 250 620 "" 0 0 0 "">
  <170 590 250 590 "" 0 0 0 "">
  <170 500 170 510 "" 0 0 0 "">
  <250 500 250 510 "" 0 0 0 "">
  <170 500 250 500 "" 0 0 0 "">
  <-100 380 40 380 "n4" -70 350 60 "">
  <-190 120 -240 120 "n4" -230 80 42 "">
  <-130 120 -90 120 "n3" -110 90 21 "">
  <250 -130 250 -130 "vdd" 280 -160 0 "">
  <-420 -70 -420 -70 "vdd" -390 -100 0 "">
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
	  <Mkr 1e+09 286 -151 3 0 0>
	<"ngspice/ac.nf" #ff0000 1 3 0 0 0>
	  <Mkr 1e+09 156 -193 3 0 0>
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
