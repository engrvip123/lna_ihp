v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1430 -540 2230 -140 {flags=graph
y1=-140
y2=-2.1e-07
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
hcursor1_y=-50.999639}
T {tcleval(Phase_radians = [ev \{[xschem raw value ph_rfout 0] \}])} 420 -250 0 0 0.4 0.4 {floater=yes}
T {tcleval(Phase_degree = [ev \{[xschem raw value ph_rfout 0] * 180 / 3.1415926\}])} 420 -180 0 0 0.4 0.4 {floater=yes}
N 1060 -850 1110 -850 {lab=rf_inp}
N 1060 -850 1060 -820 {lab=rf_inp}
N 1060 -760 1060 -620 {lab=GND}
N 1530 -620 1600 -620 {lab=GND}
N 1170 -850 2050 -850 {lab=rf_out}
N 1060 -620 1250 -620 {lab=GND}
N 1250 -620 1430 -620 {lab=GND}
N 1430 -660 1430 -620 {lab=GND}
N 1430 -620 1530 -620 {lab=GND}
N 1360 -690 1390 -690 {lab=b1}
N 1600 -660 1600 -620 {lab=GND}
N 1600 -620 1770 -620 {lab=GND}
N 1530 -690 1560 -690 {lab=b2}
N 1770 -660 1770 -620 {lab=GND}
N 1700 -690 1730 -690 {lab=b3}
N 1770 -620 1940 -620 {lab=GND}
N 1940 -660 1940 -620 {lab=GND}
N 1870 -690 1900 -690 {lab=b4}
N 1530 -620 1530 -600 {lab=GND}
N 1020 -530 1020 -500 {lab=b0}
N 1100 -530 1100 -500 {lab=b1}
N 1170 -530 1170 -500 {lab=b2}
N 1250 -530 1250 -500 {lab=b3}
N 1320 -530 1320 -500 {lab=b4}
N 1250 -790 1250 -720 {lab=n0}
N 1430 -790 1430 -720 {lab=n1}
N 1600 -790 1600 -720 {lab=n2}
N 1770 -790 1770 -720 {lab=n3}
N 1940 -790 1940 -720 {lab=n4}
N 1180 -690 1210 -690 {lab=b0}
N 1250 -660 1250 -620 {lab=GND}
C {ind.sym} 1140 -850 3 1 {name=L1
m=1
value=6n
footprint=1206
device=inductor}
C {capa-2.sym} 1250 -820 0 0 {name=C1
m=1
value=0.2p
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 1430 -820 0 0 {name=C2
m=1
value=0.4p
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 1600 -820 0 0 {name=C3
m=1
value=0.8p
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 1770 -820 0 0 {name=C4
m=1
value=1.6p
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 1940 -820 0 0 {name=C5
m=1
value=3.2p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 1530 -600 0 0 {name=l2 lab=GND}
C {iopin.sym} 2050 -850 0 0 {name=p1 lab=rf_out}
C {vsource.sym} 1060 -790 0 0 {name=V1 value="DC 0 AC 1" savecurrent=false}
C {devices/code_shown.sym} 580 -920 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 580 -800 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all
save vp(rf_out)

op
write phs.raw
setappendwrite

ac dec 101 10e6 10e9 
meas ac ph_rfout FIND vp(rf_out) AT=1.17645G
write phs.raw

.endc
"}
C {lab_wire.sym} 1360 -690 0 0 {name=p3 sig_type=std_logic lab=b1

}
C {lab_wire.sym} 1530 -690 0 0 {name=p4 sig_type=std_logic lab=b2

}
C {lab_wire.sym} 1700 -690 0 0 {name=p5 sig_type=std_logic lab=b3
}
C {lab_wire.sym} 1870 -690 0 0 {name=p6 sig_type=std_logic lab=b4
}
C {vsource.sym} 1020 -470 0 0 {name=V2 value="b0"}
C {vsource.sym} 1100 -470 0 0 {name=V3 value="b1"}
C {gnd.sym} 1100 -440 0 0 {name=l4 lab=GND}
C {vsource.sym} 1170 -470 0 0 {name=V4 value="b2"}
C {gnd.sym} 1170 -440 0 0 {name=l5 lab=GND}
C {vsource.sym} 1250 -470 0 0 {name=V5 value="b3"}
C {gnd.sym} 1250 -440 0 0 {name=l6 lab=GND}
C {vsource.sym} 1320 -470 0 0 {name=V6 value="b4"}
C {gnd.sym} 1320 -440 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 1020 -530 0 0 {name=p7 sig_type=std_logic lab=b0
}
C {lab_wire.sym} 1100 -530 0 0 {name=p8 sig_type=std_logic lab=b1
}
C {lab_wire.sym} 1170 -530 0 0 {name=p9 sig_type=std_logic lab=b2
}
C {lab_wire.sym} 1250 -530 0 0 {name=p10 sig_type=std_logic lab=b3
}
C {lab_wire.sym} 1320 -530 0 0 {name=p11 sig_type=std_logic lab=b4
}
C {code_shown.sym} 580 -460 0 0 {name=CONTROL_BITS only_toplevel=false value="
.param 
+ b0=1.20
+ b1=1.20
+ b2=1.20
+ b3=1.20
+ b4=1.20
"
}
C {lab_wire.sym} 1060 -850 0 0 {name=p12 sig_type=std_logic lab=rf_inp

}
C {launcher.sym} 1480 -100 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/phs.raw ac"
}
C {lab_wire.sym} 1250 -750 0 0 {name=p13 sig_type=std_logic lab=n0
}
C {lab_wire.sym} 1430 -750 0 0 {name=p14 sig_type=std_logic lab=n1
}
C {lab_wire.sym} 1600 -760 0 0 {name=p15 sig_type=std_logic lab=n2
}
C {lab_wire.sym} 1770 -760 0 0 {name=p16 sig_type=std_logic lab=n3
}
C {lab_wire.sym} 1940 -750 0 0 {name=p17 sig_type=std_logic lab=n4}
C {code_shown.sym} 200 -470 0 0 {name=CONTROL_BITS1 only_toplevel=false value="
.param 
+ b0=1.2
+ b1=0
+ b2=0
+ b3=0
+ b4=0
"
spice_ignore=true}
C {gnd.sym} 1020 -440 0 0 {name=l11 lab=GND}
C {switch_ngspice.sym} 1430 -690 0 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=0.01 ROFF=10G "}
C {gnd.sym} 1390 -670 1 0 {name=l12 lab=GND}
C {switch_ngspice.sym} 1600 -690 0 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=0.01 ROFF=10G "}
C {gnd.sym} 1560 -670 1 0 {name=l13 lab=GND}
C {switch_ngspice.sym} 1770 -690 0 0 {name=S5 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=0.01 ROFF=10G "}
C {gnd.sym} 1730 -670 1 0 {name=l14 lab=GND}
C {switch_ngspice.sym} 1940 -690 0 0 {name=S6 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=0.01 ROFF=10G "}
C {gnd.sym} 1900 -670 1 0 {name=l15 lab=GND}
C {lab_wire.sym} 1180 -690 0 0 {name=p19 sig_type=std_logic lab=b0
}
C {switch.sym} 1210 -300 0 0 {name=G1 TABLE="0 10e6 1.2 0.1"
spice_ignore=true}
C {gnd.sym} 1210 -670 1 0 {name=l3 lab=GND}
C {switch_ngspice.sym} 1250 -690 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=0.01 ROFF=10G "}
