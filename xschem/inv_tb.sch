v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1230 -770 2030 -370 {flags=graph
y1=-0.52
y2=2.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in
out
"
color="7 8"
dataset=-1
unitx=1
logx=0
logy=0
}
N 380 -400 380 -380 {
lab=GND}
N 1090 -450 1090 -390 {
lab=GND}
N 700 -730 1090 -730 {lab=#net1}
N 1090 -730 1090 -510 {lab=#net1}
N 700 -730 700 -600 {lab=#net1}
N 700 -480 700 -380 {lab=GND}
N 850 -540 910 -540 {lab=out}
N 380 -540 550 -540 {lab=in}
N 380 -540 380 -460 {lab=in}
N 910 -540 910 -500 {lab=out}
C {devices/gnd.sym} 380 -380 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 380 -430 0 0 {name=Vin value="dc 0 ac 0 pulse(0, 1.2, 0, 100p, 100p, 2n, 4n ) "}
C {devices/lab_pin.sym} 380 -540 0 0 {name=p1 sig_type=std_logic lab=in}
C {devices/vsource.sym} 1090 -480 0 0 {name=Vdd value=1.2}
C {devices/gnd.sym} 1090 -390 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 700 -380 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 910 -540 2 0 {name=p2 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 680 -290 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 0.1n 100n
meas tran tdelay TRIG v(in) VAl=0.9 FALl=1 TARG v(out) VAl=0.9 RISE=1
write inv.raw
.endc
"}
C {devices/code_shown.sym} 290 -290 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {launcher.sym} 1290 -350 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inv.raw tran"
}
C {inv.sym} 700 -540 0 0 {name=x1}
C {capa-2.sym} 910 -470 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {devices/gnd.sym} 910 -440 0 0 {name=l4 lab=GND}
