v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 70 -40 70 -30 { lab=S}
N 450 -40 450 -30 { lab=S}
N 70 -30 400 -30 { lab=S}
N 160 -40 160 -30 { lab=S}
N 10 -30 70 -30 { lab=S}
N 10 -70 30 -70 { lab=G}
N 70 -120 70 -100 { lab=#net1}
N 10 -200 70 -200 { lab=D}
N 70 -200 160 -200 { lab=D}
N 160 -120 160 -100 { lab=D}
N 450 -120 450 -100 { lab=noise_node}
N 420 -120 450 -120 { lab=noise_node}
N 70 -70 90 -70 { lab=B}
N 70 -200 70 -180 { lab=D}
N 160 -200 160 -120 { lab=D}
N 400 -30 450 -30 { lab=S}
N 400 -40 400 -30 { lab=S}
N 380 -120 420 -120 { lab=noise_node}
N 400 -120 400 -100 { lab=noise_node}
C {sky130_fd_pr/nfet_01v8.sym} 50 -70 0 0 {name=M1
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
C {devices/vsource.sym} 450 -70 0 0 {name=V1 value="DC 0 trnoise(0 \{noise_timestep\} \{oneoverf_exponent\} \{oneoverf_rms\})"}
C {devices/code_shown.sym} 40 20 0 0 {name=s1 only_toplevel=false value=".param noise_max_freq=100MEG
.param noise_timestep=\{1/noise_max_freq\}
.param oneoverf_exponent=0.8
.param oneoverf_rms=6.63n
.param i_nominal=14.46u"}
C {devices/bsource.sym} 160 -70 0 0 {name=B1 VAR=I FUNC="i(V2)/\{i_nominal\}*v(noise_node, S)"}
C {devices/lab_wire.sym} 380 -120 0 0 {name=l1 sig_type=std_logic lab=noise_node}
C {devices/lab_wire.sym} 10 -200 0 0 {name=l2 sig_type=std_logic lab=D}
C {devices/lab_wire.sym} 10 -70 0 0 {name=l3 sig_type=std_logic lab=G}
C {devices/lab_wire.sym} 10 -30 0 0 {name=l4 sig_type=std_logic lab=S}
C {devices/lab_wire.sym} 90 -70 0 1 {name=l5 sig_type=std_logic lab=B}
C {devices/iopin.sym} -100 -60 0 0 { name=p1 lab=S }
C {devices/ipin.sym} -100 -80 0 0 { name=p2 lab=G }
C {devices/iopin.sym} -100 -100 0 0 { name=p3 lab=D }
C {devices/ipin.sym} -100 -120 0 0 { name=p4 lab=B }
C {devices/vsource.sym} 70 -150 0 0 {name=V2 value="dc 0"}
C {devices/res.sym} 400 -70 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
