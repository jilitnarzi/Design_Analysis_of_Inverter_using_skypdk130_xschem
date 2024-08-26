v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {vsource.sym} -190 -80 0 0 {name=vin value=0}
C {vsource.sym} -290 -80 0 0 {name=vdd value=1.8}
C {gnd.sym} -190 -50 0 0 {name=l1 lab=GND}
C {gnd.sym} -290 -50 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -190 -110 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} -290 -110 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {inver_vtc.sym} 180 80 0 0 {name=x1}
C {lab_pin.sym} 40 -130 0 0 {name=p3 sig_type=std_logic lab=vin}
C {lab_pin.sym} 270 -230 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 540 -150 2 0 {name=p5 sig_type=std_logic lab=vout}
C {code_shown.sym} -420 -320 0 0 {name=VTC only_toplevel=false value=".lib  /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc vin 0 2 1m
.save all
.end "}
C {gnd.sym} 160 -20 0 0 {name=l3 lab=GND}
