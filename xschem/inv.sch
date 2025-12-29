v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 600 -600 660 -600 {lab=inp}
N 600 -460 660 -460 {lab=inp}
N 700 -660 700 -630 {lab=vdd}
N 700 -600 760 -600 {lab=vdd}
N 760 -660 760 -600 {lab=vdd}
N 700 -660 760 -660 {lab=vdd}
N 700 -400 700 -380 {lab=vss}
N 700 -460 760 -460 {lab=vss}
N 760 -460 760 -400 {lab=vss}
N 700 -400 760 -400 {lab=vss}
N 700 -430 700 -400 {lab=vss}
N 700 -530 700 -490 {lab=out}
N 600 -530 600 -460 {lab=inp}
N 700 -730 700 -660 {lab=vdd}
N 700 -530 840 -530 {lab=out}
N 700 -570 700 -530 {lab=out}
N 530 -530 600 -530 {lab=inp}
N 600 -600 600 -530 {lab=inp}
C {sg13g2_pr/sg13_lv_rf_nmos.sym} 680 -460 0 0 {name=M1
l=0.72u
w=1.0u
ng=1
m=1
rfmode=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_rf_pmos.sym} 680 -600 0 0 {name=M2
l=0.72u
w=5.0u
ng=1
m=1
rfmode=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 700 -380 0 0 {name=p1 lab=vss}
C {iopin.sym} 840 -530 0 0 {name=p2 lab=out}
C {iopin.sym} 530 -530 2 0 {name=p3 lab=inp}
C {iopin.sym} 700 -730 2 0 {name=p4 lab=vdd}
