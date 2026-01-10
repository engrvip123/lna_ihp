v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -240 60 -240 140 {lab=#net1}
N -240 170 -240 200 {lab=GND}
N -60 60 -60 140 {lab=#net2}
N -60 170 -60 200 {lab=GND}
N 110 60 110 140 {lab=#net3}
N 110 170 110 200 {lab=GND}
N 280 60 280 140 {lab=#net4}
N 280 170 280 200 {lab=GND}
N 450 60 450 140 {lab=#net5}
N 450 170 450 200 {lab=GND}
N 40 200 40 340 {lab=GND}
N -240 200 -60 200 {lab=GND}
N 40 200 110 200 {lab=GND}
N 110 200 280 200 {lab=GND}
N 280 200 450 200 {lab=GND}
N -60 200 40 200 {lab=GND}
N -430 0 -380 0 {lab=#net6}
N -430 0 -430 30 {lab=#net6}
N -430 90 -430 200 {lab=GND}
N -430 200 -240 200 {lab=GND}
N -320 -0 560 0 {lab=out}
C {ind.sym} -350 0 3 1 {name=L1
m=1
value=3
footprint=1206
device=inductor}
C {capa-2.sym} -240 30 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device=polarized_capacitor}
C {IHP-Open-PDK/ihp-sg13g2/libs.tech/xschem/sg13g2_pr/sg13_lv_nmos.sym} -220 170 0 1 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa-2.sym} -60 30 0 0 {name=C2
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {IHP-Open-PDK/ihp-sg13g2/libs.tech/xschem/sg13g2_pr/sg13_lv_nmos.sym} -40 170 0 1 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa-2.sym} 110 30 0 0 {name=C3
m=1
value=2p
footprint=1206
device=polarized_capacitor}
C {IHP-Open-PDK/ihp-sg13g2/libs.tech/xschem/sg13g2_pr/sg13_lv_nmos.sym} 130 170 0 1 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa-2.sym} 280 30 0 0 {name=C4
m=1
value=4p
footprint=1206
device=polarized_capacitor}
C {IHP-Open-PDK/ihp-sg13g2/libs.tech/xschem/sg13g2_pr/sg13_lv_nmos.sym} 300 170 0 1 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa-2.sym} 450 30 0 0 {name=C5
m=1
value=8p
footprint=1206
device=polarized_capacitor}
C {IHP-Open-PDK/ihp-sg13g2/libs.tech/xschem/sg13g2_pr/sg13_lv_nmos.sym} 470 170 0 1 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 40 340 0 0 {name=l2 lab=GND}
C {iopin.sym} 560 0 0 0 {name=p1 lab=out}
C {vsource.sym} -430 60 0 0 {name=V1 value="DC 0 AC 1" savecurrent=false}
C {devices/code_shown.sym} -770 110 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -910 290 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all
write dc_lv_nmos.raw
set appendwrite
dc Vds 0 1.2 0.01
write dc_lv_nmos.raw
.endc
"}
