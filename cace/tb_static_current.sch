v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Power Consumption (Static/Disable)} 90 -630 0 0 0.4 0.4 {}
N 870 -355 930 -355 {
lab=vout}
N 100 -555 100 -495 {
lab=vinp}
N 250 -555 250 -495 {
lab=vinn}
N 400 -555 400 -495 {
lab=ena}
N 190 -365 190 -315 {
lab=avdd}
N 260 -365 260 -315 {
lab=dvdd}
N 330 -365 330 -315 {
lab=avss}
N 400 -365 400 -315 {
lab=dvss}
N 930 -355 1130 -355 {
lab=vout}
N 1070 -355 1070 -295 {
lab=vout}
N 1130 -355 1270 -355 {
lab=vout}
C {devices/lab_pin.sym} 630 -365 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 630 -305 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 710 -215 3 0 {name=p3 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 780 -455 1 0 {name=p4 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 740 -455 1 0 {name=p5 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 740 -215 3 0 {name=p6 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 780 -215 3 0 {name=p7 sig_type=std_logic lab=dvss}
C {devices/vsource.sym} 400 -465 0 0 {name=V3 value="\{ena\}*\{dvdd\}" savecurrent=false}
C {devices/vsource.sym} 190 -285 0 0 {name=avdd value=\{avdd\} savecurrent=false}
C {devices/vsource.sym} 260 -285 0 0 {name=dvdd value=\{dvdd\} savecurrent=false}
C {devices/vsource.sym} 330 -285 0 0 {name=avss value=\{avss\} savecurrent=false}
C {devices/vsource.sym} 400 -285 0 0 {name=dvss value=\{dvss\} savecurrent=false}
C {devices/gnd.sym} 250 -435 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 400 -435 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 190 -255 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 260 -255 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 330 -255 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 400 -255 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 100 -545 0 0 {name=p9 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 100 -435 0 0 {name=p10 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 400 -545 0 0 {name=p11 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 190 -355 0 0 {name=p12 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 260 -355 0 0 {name=p13 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 330 -355 0 0 {name=p14 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 400 -355 0 0 {name=p15 sig_type=std_logic lab=dvss}
C {devices/code.sym} 150 -195 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice \{corner\}
.option TEMP=\{temperature\}"}
C {devices/code.sym} 310 -195 0 0 {name=s2 only_toplevel=false value=".control
op
set wr_singlescale
wrdata \{simpath\}/\{filename\}_\{N\}.data -I(dvdd)
quit
.endc"}
C {devices/vsource_arith.sym} 250 -465 0 0 {name=Vcm VOL="\{Vcm\}"}
C {devices/gnd.sym} 1070 -235 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1070 -265 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=8 MF=3 spiceprefix=X}
C {sky130_icrg_ip__ulpcomp.sym} 670 -335 0 0 {name=x1}
C {devices/lab_pin.sym} 1100 -355 2 0 {name=p21 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 100 -465 0 0 {name=Vdiff value="\{Vdiff\}" savecurrent=false}
C {devices/lab_pin.sym} 250 -545 0 0 {name=p8 sig_type=std_logic lab=vinn}
