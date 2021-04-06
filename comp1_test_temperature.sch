v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 150 -30 400 -30 { lab=#net1}
N 150 -50 470 -50 { lab=#net2}
N 470 -50 470 -10 { lab=#net2}
N 400 -30 400 -10 { lab=#net1}
N 240 10 240 30 { lab=outb}
N 150 10 240 10 { lab=outb}
N 150 -10 310 -10 { lab=outa}
N 310 -10 310 30 { lab=outa}
N 240 90 240 120 { lab=GND}
N 240 120 470 120 { lab=GND}
N 470 50 470 120 { lab=GND}
N 400 50 400 120 { lab=GND}
N 310 90 310 120 { lab=GND}
N -200 120 240 120 { lab=GND}
N -140 120 -140 140 { lab=GND}
N -480 120 -200 120 { lab=GND}
N -580 100 -580 120 { lab=GND}
N -300 100 -300 120 { lab=GND}
N -200 100 -200 120 { lab=GND}
N -200 -10 -200 40 { lab=inb}
N -200 -10 -150 -10 { lab=inb}
N -300 -30 -150 -30 { lab=ina}
N -300 -30 -300 40 { lab=ina}
N -580 -50 -580 40 { lab=clk}
N -480 -50 -150 -50 { lab=clk}
N -580 -50 -480 -50 { lab=clk}
N -580 120 -480 120 { lab=GND}
C {/home/users/dstanley/EE272B/xschem_tests/comp1.sym} 0 -20 0 0 {name=x1}
C {devices/vsource.sym} 400 20 0 0 {name=V1 value=0}
C {devices/vsource.sym} 470 20 0 0 {name=V2 value=1.2}
C {devices/capa.sym} 310 60 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 240 60 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -140 140 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -580 70 0 0 {name=V3 value="pwl 0 0 100n 0 105n 1.2 1000n 1.2 1005n 0"}
C {devices/vsource.sym} -200 70 0 0 {name=V4 value=0.795}
C {devices/vsource.sym} -300 70 0 0 {name=V5 value=0.805}
C {devices/code_shown.sym} -440 200 0 0 {name=s1 only_toplevel=false value=".lib /home/users/dstanley/share/sky130_fd_pr_ngspice/models/sky130.lib.spice tt


.tran 0.5n 10u

.control
* temperature in celsius
set temp=75
run
.endc
"}
C {devices/lab_wire.sym} -180 -50 0 0 {name=l2 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} -180 -30 0 0 {name=l3 sig_type=std_logic lab=ina}
C {devices/lab_wire.sym} -180 -10 0 0 {name=l4 sig_type=std_logic lab=inb}
C {devices/lab_wire.sym} 190 -10 0 0 {name=l5 sig_type=std_logic lab=outa}
C {devices/lab_wire.sym} 190 10 0 0 {name=l6 sig_type=std_logic lab=outb}
