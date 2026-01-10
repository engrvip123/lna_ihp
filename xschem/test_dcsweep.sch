v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1040 -960 1600 -660 {flags=graph
y1=-4.5e-10
y2=0.072
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.2
divx=5
subdivx=1
node="i(vd)%0
i(vd)%1
i(vd)%2"
color="4 7 10"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1}
B 2 1020 -1410 1820 -1010 {flags=graph
y1=-4.3e-09
y2=0.47
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="@n.xm1.nsg13_lv_nmos[gm]%0
@n.xm1.nsg13_lv_nmos[gm]%1
@n.xm1.nsg13_lv_nmos[gm]%2"
color="4 7 10"
dataset=-1
unitx=1
logx=0
logy=0
autoload=0
legend=1}
B 2 1640 -960 2440 -560 {flags=graph
y1=2.6e-13
y2=7.8e-13
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=9
node=@n.xm1.nsg13_lv_nmos[cgg]}
T {Ctrl-Click to execute launcher} 1180 -640 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 1180 -520 0 0 0.3 0.3 {layer=11}
N 780 -470 780 -450 {
lab=GND}
N 780 -560 780 -530 {
lab=G}
N 910 -530 910 -470 {
lab=GND}
N 1040 -530 1040 -470 {
lab=GND}
N 910 -650 910 -590 {
lab=#net1}
N 1040 -650 1040 -590 {
lab=D}
N 910 -560 980 -560 {
lab=GND}
N 980 -560 980 -470 {
lab=GND}
N 910 -650 940 -650 {
lab=#net1}
N 1000 -650 1040 -650 {
lab=D}
N 780 -560 870 -560 {
lab=G}
C {devices/code_shown.sym} 380 -290 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"
}
C {devices/gnd.sym} 910 -470 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 780 -450 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 780 -500 0 0 {name=Vgs value='vg'}
C {devices/vsource.sym} 1040 -560 0 0 {name=Vds value=0.5}
C {devices/gnd.sym} 1040 -470 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 980 -470 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} 970 -650 1 0 {name=Vd}
C {lab_pin.sym} 780 -560 0 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 1040 -650 0 1 {name=p2 sig_type=std_logic lab=D}
C {devices/launcher.sym} 1240 -570 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {sg13g2_pr/sg13_lv_nmos.sym} 890 -560 0 0 {name=M1
l=0.25u
w=5u
ng=1
m=40
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/launcher.sym} 1240 -540 0 0 {name=h2
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 1240 -600 0 0 {name=h3
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {devices/code_shown.sym} 80 -1040 0 0 {name=NGSPICE1 only_toplevel=true 
value="

.include ~/lna_ihp/xschem/simulations/test_dcsweep.save
.param temp=27 wid=70.0u vg=0.45


.control
save all
save @n.xm1.nsg13_lv_nmos[vds]
save @n.xm1.nsg13_lv_nmos[gds]
save @n.xm1.nsg13_lv_nmos[cgs]
save @n.xm1.nsg13_lv_nmos[cgd]
save @n.xm1.nsg13_lv_nmos[vdsat]


op
write test_dcsweep.raw
set appendwrite

* --- wid = 1u ---
*alterparam wid=1u
alterparam vg=0.4
reset
op
set appendwrite
dc Vds 0 1.2 0.01 
write test_dcsweep.raw
set appendwrite


* --- wid = 10u ---
*alterparam wid=10u
alterparam vg=0.5
reset
dc Vds 0 1.2 0.01 
write test_dcsweep.raw
set appendwrite


* --- wid = 20u ---
*alterparam wid=20u
alterparam vg=0.6
reset
dc Vds 0 1.2 0.01 
write test_dcsweep.raw

.endc

"
}
C {ngspice_get_value.sym} 870 -730 0 0 {name=r3 node=v(@n.xm1.nsg13_lv_nmos[vdsat])
descr="vdsat="
}
C {ngspice_get_value.sym} 870 -770 0 0 {name=r6 node=@n.xm1.nsg13_lv_nmos[cgd]
descr="cgd="
}
C {ngspice_get_value.sym} 870 -810 0 0 {name=r9 node=@n.xm1.nsg13_lv_nmos[cgs]
descr="cgs="
}
C {sg13g2_pr/annotate_fet_params.sym} 870 -970 0 0 {name=annot1 ref=M1}
C {title.sym} 170 -130 0 0 {name=l6 author="Vipul Sharma"}
