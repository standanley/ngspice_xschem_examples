v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 20 -160 20 -90 { lab=#net1}
N 80 -110 150 -110 { lab=g_node}
N 20 30 20 40 { lab=GND}
N 20 40 170 40 { lab=GND}
N 80 30 80 40 { lab=GND}
N 170 40 190 40 { lab=GND}
N 20 -90 20 -30 { lab=#net1}
N 190 30 190 40 { lab=GND}
N 190 -80 190 -30 { lab=#net2}
N 190 -110 210 -110 { lab=GND}
N 210 -110 210 40 { lab=GND}
N 190 40 210 40 { lab=GND}
N 80 -40 80 -30 { lab=#net3}
N 80 -110 80 -100 { lab=g_node}
N 190 -160 190 -140 { lab=out_node}
N 190 -230 190 -220 { lab=#net1}
N 20 -230 190 -230 { lab=#net1}
N 20 -230 20 -160 { lab=#net1}
C {devices/gnd.sym} 170 40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 80 0 0 0 {name=V1 value=0.8}
C {devices/vsource.sym} 20 0 0 0 {name=V2 value=1.2}
C {sky130_fd_pr/nfet_01v8.sym} 170 -110 0 0 {name=M2
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
C {devices/vsource.sym} 190 0 0 0 {name=V3 value=\{0\}}
C {devices/code_shown.sym} 240 -240 0 0 {name=s1 only_toplevel=false value="
.lib /home/users/dstanley/share/sky130_fd_pr_ngspice/models/sky130.lib.spice tt

.noise v(out_node) V4 dec 10 100 100MEG 1

.control
*listing e

run

write noisean.raw
print v(inoise_total) v(onoise_total)
write noisean2.raw noise1.all noise2.all

* noise1 is noise spectrum
* noise2 is integrated noise (seems to be default)
setplot noise2

*echo Total integrated input noise is \{$&inoise_total\}
echo Total integrated output noise is \{$&onoise_total\}echo total integrated output noise is \{$&onoise_total\}
echo Transistor noise is \{$&onoise_total.m.xm2.msky130_fd_pr__nfet_01v8\}
echo Resistor noise is \{$&onoise_total_R2\}

setplot noise1
write noise_test_output.raw v(onoise_spectrum) v(onoise.m.xm2.msky130_fd_pr__nfet_01v8) v(onoise_R2)

* Uncomment to see input -> output gain
*ac  dec 10 1kHz 100MEG

* Uncomment to see DC voltage/current values
*op

.endc
"}
C {devices/lab_wire.sym} 120 -110 0 0 {name=l2 sig_type=std_logic lab=g_node}
C {devices/lab_wire.sym} 190 -150 0 0 {name=l3 sig_type=std_logic lab=out_node}
C {devices/vsource.sym} 80 -70 0 0 {name=V4 value="ac 1"}
C {devices/res.sym} 190 -190 0 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
