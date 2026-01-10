v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1430 -540 2230 -140 {flags=graph
y1=-180
y2=-1.4e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=10000000
x2=1e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=ph(rf_out)
color=7
dataset=-1
unitx=1
logx=0
logy=0
hcursor1_y=-54.6296}
B 2 2230 -540 3030 -140 {flags=graph
y1=0.092
y2=18
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=10000000
x2=1e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=rf_out
color=7
dataset=-1
unitx=1
logx=0
logy=0
hcursor1_y=-54.6296}
T {tcleval(Phase_radians = [ev \{[xschem raw value ph_rfout 0] \}])} 420 -250 0 0 0.4 0.4 {floater=yes}
T {tcleval(Phase_degree = [ev \{[xschem raw value ph_rfout 0] * 180 / 3.1415926\}])} 420 -180 0 0 0.4 0.4 {floater=yes}
T {tcleval(Mag_rfout = [ev \{[xschem raw value mag_rfout 0] \}])} 420 -120 0 0 0.4 0.4 {floater=yes}
T {tcleval(Phase_degree = [ev \{[xschem raw value ph_rfout 0] * 180 / 3.1415926\}])} 420 -180 0 0 0.4 0.4 {floater=yes}
N 920 -410 920 -380 {lab=#net1}
N 1000 -410 1000 -380 {lab=#net2}
N 1070 -410 1070 -380 {lab=#net3}
N 1150 -410 1150 -380 {lab=#net4}
N 1220 -410 1220 -380 {lab=b4}
N 1270 -840 1270 -760 {lab=#net5}
N 1450 -840 1450 -760 {lab=#net6}
N 1620 -840 1620 -760 {lab=#net7}
N 1790 -840 1790 -760 {lab=#net8}
N 1960 -840 1960 -760 {lab=n4}
N 1030 -900 1030 -870 {lab=rf_inp}
N 1030 -810 1030 -700 {lab=GND}
N 1550 -700 1620 -700 {lab=GND}
N 1270 -710 1270 -700 {lab=GND}
N 1270 -740 1310 -740 {lab=GND}
N 1310 -740 1310 -700 {lab=GND}
N 1270 -700 1310 -700 {lab=GND}
N 1200 -740 1230 -740 {lab=#net9}
N 1450 -710 1450 -700 {lab=GND}
N 1450 -740 1490 -740 {lab=GND}
N 1490 -740 1490 -700 {lab=GND}
N 1450 -700 1490 -700 {lab=GND}
N 1380 -740 1410 -740 {lab=#net10}
N 1310 -700 1450 -700 {lab=GND}
N 1620 -710 1620 -700 {lab=GND}
N 1620 -740 1660 -740 {lab=GND}
N 1660 -740 1660 -700 {lab=GND}
N 1620 -700 1660 -700 {lab=GND}
N 1550 -740 1580 -740 {lab=#net11}
N 1790 -710 1790 -700 {lab=GND}
N 1790 -740 1830 -740 {lab=GND}
N 1830 -740 1830 -700 {lab=GND}
N 1720 -740 1750 -740 {lab=#net12}
N 1790 -700 1830 -700 {lab=GND}
N 1960 -710 1960 -700 {lab=GND}
N 1960 -740 2000 -740 {lab=GND}
N 2000 -740 2000 -700 {lab=GND}
N 1960 -700 2000 -700 {lab=GND}
N 1890 -740 1920 -740 {lab=b4}
N 1490 -700 1550 -700 {lab=GND}
N 1830 -700 1960 -700 {lab=GND}
N 1660 -700 1790 -700 {lab=GND}
N 1030 -700 1270 -700 {lab=GND}
N 1030 -900 1070 -900 {lab=rf_inp}
N 1130 -900 2070 -900 {lab=rf_out}
N 1550 -700 1550 -650 {lab=GND}
C {devices/code_shown.sym} 580 -920 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 580 -810 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all
save vp(rf_out)

op
write phs_nmos_9thjan.raw
setappendwrite

ac dec 1001 10e6 10e9 
meas ac ph_rfout FIND vp(rf_out) AT=1.1182G
meas ac mag_rfout FIND vm(rf_out) AT=1.1182G
write phs_nmos_9thjan.raw

.endc
"
}
C {vsource.sym} 920 -350 0 0 {name=V2 value="b0"
spice_ignore=true}
C {vsource.sym} 1000 -350 0 0 {name=V3 value="b1"
spice_ignore=true}
C {gnd.sym} 1000 -320 0 0 {name=l4 lab=GND
spice_ignore=true}
C {vsource.sym} 1070 -350 0 0 {name=V4 value="b2"
spice_ignore=true}
C {gnd.sym} 1070 -320 0 0 {name=l5 lab=GND
spice_ignore=true}
C {vsource.sym} 1150 -350 0 0 {name=V5 value="b3"
spice_ignore=true}
C {gnd.sym} 1150 -320 0 0 {name=l6 lab=GND
spice_ignore=true}
C {vsource.sym} 1220 -350 0 0 {name=V6 value="b4"}
C {gnd.sym} 1220 -320 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 920 -410 0 0 {name=p7 sig_type=std_logic lab=b0
spice_ignore=true}
C {lab_wire.sym} 1000 -410 0 0 {name=p8 sig_type=std_logic lab=b1
spice_ignore=true}
C {lab_wire.sym} 1070 -410 0 0 {name=p9 sig_type=std_logic lab=b2
spice_ignore=true}
C {lab_wire.sym} 1150 -410 0 0 {name=p10 sig_type=std_logic lab=b3
spice_ignore=true}
C {lab_wire.sym} 1220 -410 0 0 {name=p11 sig_type=std_logic lab=b4
}
C {code_shown.sym} 580 -460 0 0 {name=CONTROL_BITS only_toplevel=false value="

.param 
+ b0=1.2
+ b1=1.20
+ b2=1.20
+ b3=1.20
+ b4=1.20
"
spice_ignore=true}
C {launcher.sym} 1480 -100 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/phs_nmos_9thjan.raw ac"
}
C {code_shown.sym} 200 -470 0 0 {name=CONTROL_BITS1 only_toplevel=false value="

.param 
+ b0=1.2
+ b1=0
+ b2=0
+ b3=0
+ b4=0
"
spice_ignore=true}
C {ind.sym} 1100 -900 3 1 {name=L8
m=1
value=2n
footprint=1206
device=inductor
}
C {capa-2.sym} 1270 -870 0 0 {name=C6
m=1
value=0.05p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {capa-2.sym} 1450 -870 0 0 {name=C7
m=1
value=0.1p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {capa-2.sym} 1620 -870 0 0 {name=C8
m=1
value=0.2p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {capa-2.sym} 1790 -870 0 0 {name=C9
m=1
value=0.4p
footprint=1206
device=polarized_capacitor
spice_ignore=true}
C {capa-2.sym} 1960 -870 0 0 {name=C10
m=1
value=0.8p
footprint=1206
device=polarized_capacitor
}
C {gnd.sym} 1550 -650 0 0 {name=l9 lab=GND
spice_ignore=short}
C {iopin.sym} 2070 -900 0 0 {name=p18 lab=rf_out
}
C {vsource.sym} 1030 -840 0 0 {name=V7 value="DC 0 AC 1" savecurrent=false
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1250 -740 0 0 {name=M5
l=0.13u
w=10u
ng=1
m=10
model=sg13_lv_nmos
spiceprefix=X
spice_ignore=true}
C {sg13g2_pr/sg13_lv_nmos.sym} 1430 -740 0 0 {name=M7
l=0.13u
w=10u
ng=1
m=10
model=sg13_lv_nmos
spiceprefix=X
spice_ignore=true}
C {sg13g2_pr/sg13_lv_nmos.sym} 1600 -740 0 0 {name=M8
l=0.13u
w=10u
ng=1
m=10
model=sg13_lv_nmos
spiceprefix=X
spice_ignore=true}
C {sg13g2_pr/sg13_lv_nmos.sym} 1770 -740 0 0 {name=M9
l=0.13u
w=10u
ng=1
m=10
model=sg13_lv_nmos
spiceprefix=X
spice_ignore=true}
C {sg13g2_pr/sg13_lv_nmos.sym} 1940 -740 0 0 {name=M10
l=0.13u
w=10u
ng=1
m=10
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1200 -740 0 0 {name=p19 sig_type=std_logic lab=b0
spice_ignore=true}
C {lab_wire.sym} 1380 -740 0 0 {name=p20 sig_type=std_logic lab=b1

spice_ignore=true}
C {lab_wire.sym} 1550 -740 0 0 {name=p21 sig_type=std_logic lab=b2

spice_ignore=true}
C {lab_wire.sym} 1720 -740 0 0 {name=p22 sig_type=std_logic lab=b3
spice_ignore=true}
C {lab_wire.sym} 1890 -740 0 0 {name=p23 sig_type=std_logic lab=b4
}
C {lab_wire.sym} 1030 -900 0 0 {name=p24 sig_type=std_logic lab=rf_inp

}
C {lab_wire.sym} 1270 -800 0 0 {name=p25 sig_type=std_logic lab=n0
spice_ignore=true}
C {lab_wire.sym} 1450 -800 0 0 {name=p26 sig_type=std_logic lab=n1
spice_ignore=true}
C {lab_wire.sym} 1620 -810 0 0 {name=p27 sig_type=std_logic lab=n2
spice_ignore=true}
C {lab_wire.sym} 1790 -810 0 0 {name=p28 sig_type=std_logic lab=n3
spice_ignore=true}
C {lab_wire.sym} 1960 -800 0 0 {name=p29 sig_type=std_logic lab=n4
}
C {gnd.sym} 920 -320 0 0 {name=l11 lab=GND
spice_ignore=true}
C {code_shown.sym} 400 -470 0 0 {name=CONTROL_BITS2 only_toplevel=false value="

.param 
+ b0=0
+ b1=0
+ b2=0
+ b3=0
+ b4=1.2
"
spice_ignore=true}
C {code_shown.sym} 1000 -220 0 0 {name=CONTROL_BITS3 only_toplevel=false value="

.param 
*+ b0=1.2
*+ b1=1.20
*+ b2=1.20
*+ b3=1.20
+ b4=1.20
"
}
