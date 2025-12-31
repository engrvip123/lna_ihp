v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1040 -960 1600 -660 {flags=graph
y1=-2.4e-09
y2=0.0061
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
C {devices/code_shown.sym} 530 -410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"
}
C {devices/gnd.sym} 910 -470 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 780 -450 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 780 -500 0 0 {name=Vgs value='vg'}
C {devices/vsource.sym} 1040 -560 0 0 {name=Vds value=1.5}
C {devices/gnd.sym} 1040 -470 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 980 -470 0 0 {name=l4 lab=GND}
C {devices/title.sym} 690 -340 0 0 {name=l5 author="Copyright 2023 IHP PDK Authors"}
C {devices/ammeter.sym} 970 -650 1 0 {name=Vd}
C {lab_pin.sym} 780 -560 0 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 1040 -650 0 1 {name=p2 sig_type=std_logic lab=D}
C {devices/launcher.sym} 1240 -570 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {sg13g2_pr/sg13_lv_nmos.sym} 890 -560 0 0 {name=M1
l=0.45u
w='wid'
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/launcher.sym} 1250 -540 0 0 {name=h2
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
C {devices/code_shown.sym} 200 -930 0 0 {name=NGSPICE1 only_toplevel=true 
value="

*.include dc_lv_nmos.save
.param temp=27 wid=1.0u vg=1.2


.control
save all
save @n.xm1.nsg13_lv_nmos[vgs]
save @n.xm1.nsg13_lv_nmos[vds]
save @n.xm1.nsg13_lv_nmos[gm]
save @n.xm1.nsg13_lv_nmos[gds]
save @n.xm1.nsg13_lv_nmos[vth]
save @n.xm1.nsg13_lv_nmos[cgg]
save @n.xm1.nsg13_lv_nmos[cgd]
save @n.xm1.nsg13_lv_nmos[cgdol]
save @n.xm1.nsg13_lv_nmos[cgsol]
save @n.xm1.nsg13_lv_nmos[vdss]
save @n.xm1.nsg13_lv_nmos[vdsat]


op
write test_dcsweep.raw
set appendwrite

* --- wid = 1u ---
alterparam wid=1u
reset
dc Vds 0 1.2 0.01 
write test_dcsweep.raw
set appendwrite


* --- wid = 10u ---
alterparam wid=10u
reset
dc Vds 0 1.2 0.01 
write test_dcsweep.raw
set appendwrite


* --- wid = 20u ---
alterparam wid=20u
reset
dc Vds 0 1.2 0.01 
write test_dcsweep.raw

.endc

"
}
C {ngspice_get_value.sym} 780 -730 0 0 {name=r1 node=@n.xm1.nsg13_lv_nmos[gm]
descr="gm="
}
C {ngspice_get_value.sym} 780 -690 0 0 {name=r2 node=@n.xm1.nsg13_lv_nmos[cgg]
descr="cgg="
}
C {ngspice_get_value.sym} 780 -850 0 0 {name=r3 node=v(@n.xm1.nsg13_lv_nmos[vdsat])
descr="vdsat="
}
C {ngspice_get_value.sym} 780 -770 0 0 {name=r4 node=v(@n.xm1.nsg13_lv_nmos[vds])
descr="vds="
}
C {ngspice_get_value.sym} 780 -810 0 0 {name=r5 node=v(@n.xm1.nsg13_lv_nmos[vgs])
descr="vgs="
}
C {ngspice_get_value.sym} 780 -650 0 0 {name=r6 node=@n.xm1.nsg13_lv_nmos[cgd]
descr="cgd="
}
C {ngspice_get_value.sym} 780 -890 0 0 {name=r7 node=@n.xm1.nsg13_lv_nmos[gds]
descr="gds="}
C {ngspice_get_value.sym} 850 -810 0 0 {name=r8 node=v(@n.xm1.nsg13_lv_nmos[vth])
descr="vth="
}
