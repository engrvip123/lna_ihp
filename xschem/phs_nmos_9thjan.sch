v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1430 -540 2230 -140 {flags=graph
y1=-170
y2=-2.6e-07
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
y1=0.1
y2=8.9
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
N 1220 -410 1220 -380 {lab=b4}
N 1960 -840 1960 -760 {lab=n4}
N 1030 -900 1030 -870 {lab=rf_inp}
N 1030 -810 1030 -700 {lab=GND}
N 1960 -710 1960 -700 {lab=GND}
N 1960 -740 2000 -740 {lab=GND}
N 2000 -740 2000 -700 {lab=GND}
N 1960 -700 2000 -700 {lab=GND}
N 1890 -740 1920 -740 {lab=b4}
N 1030 -700 1550 -700 {lab=GND}
N 1030 -900 1070 -900 {lab=rf_inp}
N 1130 -900 2070 -900 {lab=rf_out}
N 1550 -700 1550 -650 {lab=GND}
N 1550 -700 1960 -700 {lab=GND}
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
C {vsource.sym} 1220 -350 0 0 {name=V6 value="b4"}
C {gnd.sym} 1220 -320 0 0 {name=l7 lab=GND}
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
C {capa-2.sym} 1960 -870 0 0 {name=C10
m=1
value=1.5p
footprint=1206
device=polarized_capacitor
}
C {gnd.sym} 1550 -650 0 0 {name=l9 lab=GND
spice_ignore=short}
C {iopin.sym} 2070 -900 0 0 {name=p18 lab=rf_out
}
C {vsource.sym} 1030 -840 0 0 {name=V7 value="DC 0 AC 1" savecurrent=false
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1940 -740 0 0 {name=M10
l=0.13u
w=10u
ng=1
m=10
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1890 -740 0 0 {name=p23 sig_type=std_logic lab=b4
}
C {lab_wire.sym} 1030 -900 0 0 {name=p24 sig_type=std_logic lab=rf_inp

}
C {lab_wire.sym} 1960 -800 0 0 {name=p29 sig_type=std_logic lab=n4
}
C {code_shown.sym} 400 -470 0 0 {name=CONTROL_BITS2 only_toplevel=false value="

.param 
+ b0=0
+ b1=0
+ b2=0
+ b3=0
+ b4=1.2
"
spice_ignore=true}
C {code_shown.sym} 1010 -450 0 0 {name=CONTROL_BITS3 only_toplevel=false value="

.param 
+ b4=1.8
"
}
