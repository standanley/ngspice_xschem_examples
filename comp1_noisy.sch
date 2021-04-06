v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 140 100 140 140 { lab=#net1}
N 140 200 340 200 { lab=#net2}
N 240 200 240 220 { lab=#net2}
N 140 -20 140 40 { lab=OUTB}
N 180 -70 200 -70 { lab=OUTA}
N 200 -50 200 70 { lab=OUTA}
N 180 70 200 70 { lab=OUTA}
N 140 -40 140 -20 { lab=OUTB}
N -20 -20 140 -20 { lab=OUTB}
N -20 -40 -20 -20 { lab=OUTB}
N -20 -120 -20 -100 { lab=VDD}
N -20 -120 140 -120 { lab=VDD}
N 140 -120 140 -100 { lab=VDD}
N -100 -70 -60 -70 { lab=CLK}
N 60 170 100 170 { lab=INA}
N -100 -20 -20 -20 { lab=OUTB}
N 340 100 340 140 { lab=#net3}
N 340 -20 340 40 { lab=OUTA}
N 280 -70 300 -70 { lab=OUTB}
N 280 -50 280 70 { lab=OUTB}
N 280 70 300 70 { lab=OUTB}
N 280 -70 280 -50 { lab=OUTB}
N 340 -40 340 -20 { lab=OUTA}
N 340 -20 500 -20 { lab=OUTA}
N 500 -40 500 -20 { lab=OUTA}
N 500 -120 500 -100 { lab=VDD}
N 340 -120 500 -120 { lab=VDD}
N 340 -120 340 -100 { lab=VDD}
N 380 170 420 170 { lab=INB}
N 200 -70 200 -50 { lab=OUTA}
N 200 -0 340 0 { lab=OUTA}
N 140 20 280 20 { lab=OUTB}
N 500 -20 580 -20 { lab=OUTA}
N 160 250 200 250 { lab=CLK}
N 240 280 240 310 { lab=VSS}
N 140 -120 340 -120 { lab=VDD}
N -100 -120 -20 -120 { lab=VDD}
N 540 -70 580 -70 { lab=CLK}
N 160 310 240 310 { lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 220 250 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 120 170 0 0 {name=M2
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 160 -70 0 1 {name=M5
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} -40 -70 0 0 {name=M6
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 360 170 0 1 {name=M3
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 320 -70 0 0 {name=M8
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 520 -70 0 1 {name=M9
L=0.15
W=1
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
C {devices/lab_pin.sym} 60 170 0 0 {name=l1 sig_type=std_logic lab=INA}
C {devices/lab_pin.sym} -100 -20 0 0 {name=l2 sig_type=std_logic lab=OUTB}
C {devices/lab_pin.sym} -100 -70 0 0 {name=l3 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 160 250 0 0 {name=l4 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 580 -20 0 1 {name=l6 sig_type=std_logic lab=OUTA}
C {devices/lab_pin.sym} 420 170 0 1 {name=l7 sig_type=std_logic lab=INB}
C {devices/lab_pin.sym} 160 310 0 0 {name=l8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 580 -70 0 1 {name=l5 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 140 70 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 170 0 0 {name=l11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 140 170 0 1 {name=l12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 70 0 1 {name=l13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 250 0 1 {name=l14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 140 -70 0 0 {name=l15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 -70 0 0 {name=l16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 340 -70 0 1 {name=l17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -20 -70 0 1 {name=l18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -100 -120 0 0 {name=l9 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -300 -100 0 0 { name=p1 lab=VSS }
C {devices/iopin.sym} -300 -120 0 0 { name=p2 lab=VDD }
C {devices/iopin.sym} -290 30 0 0 { name=p5 lab=OUTB }
C {devices/iopin.sym} -290 10 0 0 { name=p6 lab=OUTA }
C {devices/ipin.sym} -290 -10 0 0 { name=p7 lab=INB }
C {devices/ipin.sym} -290 -30 0 0 { name=p8 lab=INA }
C {devices/ipin.sym} -290 -50 0 0 { name=p9 lab=CLK }
C {/home/users/dstanley/EE272B/xschem_tests/nmos_noisy.sym} 140 70 0 1 {name=x1}
C {/home/users/dstanley/EE272B/xschem_tests/nmos_noisy.sym} 340 70 0 0 {name=x2}
