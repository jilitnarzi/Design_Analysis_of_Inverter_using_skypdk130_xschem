v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 560 -80 590 -80 {
lab=vout}
N 560 -120 600 -120 {
lab=vout}
N 600 -120 600 -80 {
lab=vout}
N 590 -80 600 -80 {
lab=vout}
C {vsource.sym} -170 -50 0 0 {name=vin value=0}
C {vsource.sym} -270 -50 0 0 {name=vdd value=1.8}
C {gnd.sym} -170 -20 0 0 {name=l1 lab=GND}
C {gnd.sym} -270 -20 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -170 -80 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} -270 -80 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {inver_vtc.sym} 200 110 0 0 {name=x1}
C {lab_pin.sym} 60 -100 0 0 {name=p3 sig_type=std_logic lab=vin}
C {lab_pin.sym} 290 -200 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 560 -120 2 0 {name=p5 sig_type=std_logic lab=vout}
C {code_shown.sym} -510 -480 0 0 {name=VTC only_toplevel=false value=".lib  /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
..control

let supply = 1.8
alter Vdd = supply
	let VDD_start = 0
	dowhile VDD_start < 6
	  dc Vin 0 1.8 1m
	  let supply = supply - 0.3
	  alter Vdd = supply
	  let VDD_start = VDD_start + 1
  end
plot dc1.vout vs vin dc2.vout vs vin dc3.vout vs vin dc4.vout vs vin dc5.vout vs vin dc6.vout vs vin xlabel "Vin(V)" ylabel "Vout(V)" title "Inverter VTC with vdd variations"

.endc
.save all"}
C {gnd.sym} 180 10 0 0 {name=l3 lab=GND}
C {parax_cap.sym} 560 -70 0 0 {name=C1 gnd=0 value=1f m=1}
