v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -110 70 -80 {
lab=vds}
N 70 -110 200 -110 {
lab=vds}
N 200 -110 200 -80 {
lab=vds}
N 10 -50 30 -50 {
lab=vgs}
N 10 -90 10 -50 {
lab=vgs}
N -50 -90 10 -90 {
lab=vgs}
N -50 -90 -50 -80 {
lab=vgs}
N 70 -20 70 0 {
lab=GND}
N 70 -50 100 -50 {
lab=GND}
N 100 -50 100 -20 {
lab=GND}
N 100 -20 100 -10 {
lab=GND}
N 70 -10 100 -10 {
lab=GND}
N 200 -20 200 -0 {
lab=GND}
N 70 -0 70 10 {
lab=GND}
N -50 -20 -50 -10 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 50 -50 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} -50 -50 0 0 {name=Vgs value=0 }
C {vsource.sym} 200 -50 0 0 {name=Vds value=3 }
C {gnd.sym} -50 -10 0 0 {name=l1 lab=GND}
C {gnd.sym} 70 10 0 0 {name=l2 lab=GND}
C {gnd.sym} 200 0 0 0 {name=l3 lab=GND}
C {code_shown.sym} -260 -130 0 0 {name=DC Simulation  only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
}
C {lab_pin.sym} -50 -80 0 0 {name=p1 sig_type=std_logic lab=vgs}
C {lab_pin.sym} 200 -80 2 0 {name=p2 sig_type=std_logic lab=vds}
C {code_shown.sym} -260 60 0 0 {name=DC1 Simulation  only_toplevel=false value="
.dc Vds 0 1.8 .1m Vgs 0 2 .3   
.save all 
.end"}
