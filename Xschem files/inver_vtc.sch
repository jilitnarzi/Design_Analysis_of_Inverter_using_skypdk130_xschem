v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -230 150 -150 {
lab=vout}
N 150 -120 190 -120 {
lab=gnd}
N 190 -120 190 -80 {
lab=gnd}
N 150 -80 190 -80 {
lab=gnd}
N 150 -90 150 -80 {
lab=gnd}
N 110 -260 110 -120 {
lab=vin}
N 150 -190 230 -190 {
lab=vout}
N 150 -300 200 -300 {
lab=vdd}
N 150 -260 200 -260 {
lab=vdd}
N 150 -320 150 -290 {
lab=vdd}
N 150 -80 150 -70 {
lab=gnd}
N 200 -300 200 -260 {
lab=vdd}
N 40 -200 110 -200 {
lab=vin}
C {sky130_fd_pr/pfet_01v8.sym} 130 -260 0 0 {name=M1
W=2
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 130 -120 0 0 {name=M2
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
C {ipin.sym} 40 -200 0 0 {name=p1 lab=vin}
C {ipin.sym} 150 -70 0 0 {name=p2 lab=gnd}
C {ipin.sym} 150 -320 0 0 {name=p3 lab=vdd}
C {opin.sym} 230 -190 0 0 {name=p4 lab=vout}
