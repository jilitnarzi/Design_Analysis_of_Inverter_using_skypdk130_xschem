v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {vsource.sym} -120 10 0 0 {name=vin value="Pulse(0 1.8 0 .3n .3n 6.6n 5)"}
C {vsource.sym} -220 10 0 0 {name=vdd value=1.8}
C {gnd.sym} -120 40 0 0 {name=l1 lab=GND}
C {gnd.sym} -220 40 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -120 -20 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} -220 -20 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {inver_vtc.sym} 250 170 0 0 {name=x1}
C {lab_pin.sym} 110 -40 0 0 {name=p3 sig_type=std_logic lab=vin}
C {lab_pin.sym} 340 -140 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 610 -60 2 0 {name=p5 sig_type=std_logic lab=vout}
C {code_shown.sym} -350 -230 0 0 {name=VTC only_toplevel=false value=".lib  /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc vin 0 2 1m
.tran .02n 10n
.save all
.end
"}
C {gnd.sym} 230 70 0 0 {name=l3 lab=GND}
