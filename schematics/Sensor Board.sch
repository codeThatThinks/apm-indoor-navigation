v 20110115 2
C 40000 40000 0 0 0 title-bordered-A2.sym
T 59700 41700 9 10 1 0 0 1 1
Sensor Board
T 60000 41100 9 10 1 0 0 1 1
INS for Multirotors
T 60100 40500 9 10 1 0 0 1 1
Ian Glen <ian@ianglen.me>
C 47600 47800 1 0 0 gnd.sym
{
T 47800 47900 5 8 1 1 0 4 1
pinlabel=GND
T 47600 47800 5 10 0 1 0 0 1
netname=GND:1
}
C 47600 50400 1 0 0 power.sym
{
T 47800 50700 5 8 1 1 0 4 1
pinlabel=+2.8v
T 47600 50400 5 10 0 1 0 0 1
netname=2.8v:1
}
N 47800 48900 47800 48300 4
C 49500 54900 1 270 0 diode-led.sym
{
T 50150 53950 5 10 0 0 270 0 1
device=LED
T 50100 54400 5 8 1 1 0 0 1
footprint=0805
T 50100 54600 5 8 1 1 0 0 1
refdes=LED_STATUS
T 50100 54200 5 8 1 1 0 0 1
value=Orange
}
C 49600 53700 1 270 0 resistor.sym
{
T 50000 53400 5 10 0 0 270 0 1
device=RESISTOR
T 49900 53400 5 8 1 1 0 0 1
refdes=R1
T 49900 53000 5 8 1 1 0 0 1
value=35R
T 49900 53200 5 8 1 1 0 0 1
footprint=0805
}
C 49500 52000 1 0 0 gnd.sym
{
T 49700 52100 5 8 1 1 0 4 1
pinlabel=GND
T 49500 52000 5 10 0 1 0 0 1
netname=GND:1
}
C 47600 49800 1 270 0 capacitor.sym
{
T 48300 49600 5 10 0 0 270 0 1
device=CAPACITOR
T 48100 49500 5 8 1 1 0 0 1
refdes=C5
T 48500 49600 5 10 0 0 270 0 1
symversion=0.1
T 48100 49100 5 8 1 1 0 0 1
value=0.1uF
T 48100 49300 5 8 1 1 0 0 1
footprint=0805
}
N 47800 50400 47800 49800 4
C 48100 50000 1 0 0 io.sym
{
T 48300 50600 5 10 0 0 0 0 1
device=none
T 48300 50100 5 8 1 1 0 1 1
value=PWR_VCC1
T 48100 50000 5 10 0 1 0 0 1
netname=PWRVCC:1
}
C 48100 48500 1 0 0 io.sym
{
T 48300 49100 5 10 0 0 0 0 1
device=none
T 48300 48600 5 8 1 1 0 1 1
value=PWR_GND1
T 48100 48500 5 10 0 1 0 0 1
netname=PWRGND:1
}
N 48100 50100 47800 50100 4
N 48100 48600 47800 48600 4
C 55800 54900 1 90 0 io.sym
{
T 55200 55100 5 10 0 0 90 0 1
device=none
T 55700 55100 5 8 1 1 90 1 1
value=PWR_VCC1
T 55800 54900 5 10 0 1 0 0 1
netname=PWRVCC:1
}
C 56100 54900 1 90 0 io.sym
{
T 55500 55100 5 10 0 0 90 0 1
device=none
T 56000 55100 5 8 1 1 90 1 1
value=PWR_GND1
T 56100 54900 5 10 0 1 0 0 1
netname=PWRGND:1
}
C 59100 54900 1 90 0 io.sym
{
T 58500 55100 5 10 0 0 90 0 1
device=none
T 59000 55100 5 8 1 1 90 1 1
value=PWR_GND2
T 59100 54900 5 10 0 0 0 0 1
netname=PWRGND:2
}
C 59400 54900 1 90 0 io.sym
{
T 58800 55100 5 10 0 0 90 0 1
device=none
T 59300 55100 5 8 1 1 90 1 1
value=PWR_VCC2
T 59400 54900 5 10 0 0 0 0 1
netname=PWRVCC:2
}
C 57000 46800 1 90 1 io.sym
{
T 56400 46600 5 10 0 0 90 6 1
device=none
T 56900 46600 5 8 1 1 90 7 1
value=PWR_VCC3
T 57000 46800 5 10 0 0 0 0 1
netname=PWRVCC:3
}
C 57300 46800 1 90 1 io.sym
{
T 56700 46600 5 10 0 0 90 6 1
device=none
T 57200 46600 5 8 1 1 90 7 1
value=PWR_GND3
T 57300 46800 5 10 0 0 0 0 1
netname=PWRGND:3
}
C 53900 52700 1 0 1 io.sym
{
T 53700 53300 5 10 0 0 0 6 1
device=none
T 53700 52800 5 8 1 1 0 7 1
value=ISP_MOSI
T 53900 52700 5 10 0 0 0 0 1
netname=ISPMOSI:1
}
C 53900 52400 1 0 1 io.sym
{
T 53700 53000 5 10 0 0 0 6 1
device=none
T 53700 52500 5 8 1 1 0 7 1
value=ISP_MISO
T 53900 52400 5 10 0 0 0 0 1
netname=ISPMISO:1
}
C 53300 50300 1 0 1 io.sym
{
T 53100 50900 5 10 0 0 0 6 1
device=none
T 53100 50400 5 8 1 1 0 7 1
value=ISP_SCK
T 53300 50300 5 10 0 0 0 0 1
netname=ISPSCK:1
}
N 53900 52800 54200 52800 4
N 53900 52500 54200 52500 4
C 56700 46800 1 90 1 io.sym
{
T 56100 46600 5 10 0 0 90 6 1
device=none
T 56600 46600 5 8 1 1 90 7 1
value=ISP_RESET
T 56700 46800 5 10 0 0 90 0 1
netname=ISPRESET:1
}
C 42300 42100 1 0 0 MM74HC573MTC.sym
{
T 42300 42100 5 1 0 0 0 0 1
device=MM74HC573MTC
T 42300 42100 5 1 0 0 0 0 1
footprint=TSSOP20
T 42700 45800 5 8 1 1 0 0 1
refdes=U4
}
C 54200 47100 1 0 0 ATmega64A.sym
{
T 54200 47100 5 1 0 0 0 0 1
device=ATMEGA64A
T 54200 47100 5 1 0 0 0 0 1
footprint=TQFP64_14
T 54600 54400 5 8 1 1 0 0 1
refdes=U1
}
C 46200 40900 1 0 0 AS6C6264.sym
{
T 46200 40900 5 1 0 0 0 0 1
device=AS6C6264
T 46200 40900 5 1 0 0 0 0 1
footprint=TSOP28
T 46600 45800 5 8 1 1 0 0 1
refdes=U3
}
C 41800 42000 1 0 0 gnd.sym
{
T 42000 42100 5 8 1 1 0 4 1
pinlabel=GND
T 41800 42000 5 10 0 1 0 0 1
netname=GND:1
}
C 49700 40800 1 0 0 gnd.sym
{
T 49900 40900 5 8 1 1 0 4 1
pinlabel=GND
T 49700 40800 5 10 0 1 0 0 1
netname=GND:1
}
C 41800 47500 1 0 0 power.sym
{
T 42000 47800 5 8 1 1 0 4 1
pinlabel=+2.8v
T 41800 47500 5 10 0 1 0 0 1
netname=2.8v:1
}
N 44400 45400 46200 45400 4
N 48300 41600 49900 41600 4
N 42000 42500 42000 46000 4
N 42000 42700 42300 42700 4
N 44400 45100 46200 45100 4
N 44400 44800 46200 44800 4
N 44400 44500 46200 44500 4
N 44400 44200 46200 44200 4
N 44400 43900 46200 43900 4
N 44400 43600 46200 43600 4
N 44400 43300 46200 43300 4
N 44400 43000 46200 43000 4
C 45900 42600 1 0 1 io.sym
{
T 45700 43200 5 10 0 0 0 6 1
device=none
T 45700 42700 5 8 1 1 0 7 1
value=A8
T 45900 42600 5 10 0 1 0 0 1
netname=A:8
}
C 45900 42300 1 0 1 io.sym
{
T 45700 42900 5 10 0 0 0 6 1
device=none
T 45700 42400 5 8 1 1 0 7 1
value=A9
T 45900 42300 5 10 0 1 0 0 1
netname=A:9
}
C 45900 42000 1 0 1 io.sym
{
T 45700 42600 5 10 0 0 0 6 1
device=none
T 45700 42100 5 8 1 1 0 7 1
value=A10
T 45900 42000 5 10 0 1 0 0 1
netname=A:10
}
C 45900 41700 1 0 1 io.sym
{
T 45700 42300 5 10 0 0 0 6 1
device=none
T 45700 41800 5 8 1 1 0 7 1
value=A11
T 45900 41700 5 10 0 1 0 0 1
netname=A:11
}
C 45900 41400 1 0 1 io.sym
{
T 45700 42000 5 10 0 0 0 6 1
device=none
T 45700 41500 5 8 1 1 0 7 1
value=A12
T 45900 41400 5 10 0 1 0 0 1
netname=A:12
}
N 45900 42700 46200 42700 4
N 45900 42400 46200 42400 4
N 45900 42100 46200 42100 4
N 45900 41800 46200 41800 4
N 45900 41500 46200 41500 4
C 44700 42600 1 0 0 io.sym
{
T 44900 43200 5 10 0 0 0 0 1
device=none
T 44900 42700 5 8 1 1 0 1 1
value=ALE
T 44700 42600 5 10 0 1 0 0 1
netname=ALE:1
}
N 44700 42700 44400 42700 4
C 41700 44400 1 0 1 io.sym
{
T 41500 45000 5 10 0 0 0 6 1
device=none
T 41500 44500 5 8 1 1 0 7 1
value=AD3
T 41700 44400 5 10 0 1 0 0 1
netname=AD:3
}
C 41700 45000 1 0 1 io.sym
{
T 41500 45600 5 10 0 0 0 6 1
device=none
T 41500 45100 5 8 1 1 0 7 1
value=AD1
T 41700 45000 5 10 0 1 0 0 1
netname=AD:1
}
C 41700 44700 1 0 1 io.sym
{
T 41500 45300 5 10 0 0 0 6 1
device=none
T 41500 44800 5 8 1 1 0 7 1
value=AD2
T 41700 44700 5 10 0 1 0 0 1
netname=AD:2
}
C 41700 44100 1 0 1 io.sym
{
T 41500 44700 5 10 0 0 0 6 1
device=none
T 41500 44200 5 8 1 1 0 7 1
value=AD4
T 41700 44100 5 10 0 1 0 0 1
netname=AD:4
}
C 41700 43800 1 0 1 io.sym
{
T 41500 44400 5 10 0 0 0 6 1
device=none
T 41500 43900 5 8 1 1 0 7 1
value=AD5
T 41700 43800 5 10 0 1 0 0 1
netname=AD:5
}
C 41700 43500 1 0 1 io.sym
{
T 41500 44100 5 10 0 0 0 6 1
device=none
T 41500 43600 5 8 1 1 0 7 1
value=AD6
T 41700 43500 5 10 0 1 0 0 1
netname=AD:6
}
C 41700 43200 1 0 1 io.sym
{
T 41500 43800 5 10 0 0 0 6 1
device=none
T 41500 43300 5 8 1 1 0 7 1
value=AD7
T 41700 43200 5 10 0 1 0 0 1
netname=AD:7
}
C 41700 42900 1 0 1 io.sym
{
T 41500 43500 5 10 0 0 0 6 1
device=none
T 41500 43000 5 8 1 1 0 7 1
value=AD8
T 41700 42900 5 10 0 1 0 0 1
netname=AD:8
}
N 41700 44500 42300 44500 4
N 41700 45100 42300 45100 4
N 41700 44800 42300 44800 4
N 41700 44200 42300 44200 4
N 41700 43900 42300 43900 4
N 41700 43600 42300 43600 4
N 41700 43300 42300 43300 4
N 41700 43000 42300 43000 4
N 42000 45400 42300 45400 4
C 48600 44500 1 0 0 io.sym
{
T 48800 45100 5 10 0 0 0 0 1
device=none
T 48800 44600 5 8 1 1 0 1 1
value=AD3
T 48600 44500 5 10 0 1 0 0 1
netname=AD:3
}
C 48600 45100 1 0 0 io.sym
{
T 48800 45700 5 10 0 0 0 0 1
device=none
T 48800 45200 5 8 1 1 0 1 1
value=AD1
T 48600 45100 5 10 0 1 0 0 1
netname=AD:1
}
C 48600 44800 1 0 0 io.sym
{
T 48800 45400 5 10 0 0 0 0 1
device=none
T 48800 44900 5 8 1 1 0 1 1
value=AD2
T 48600 44800 5 10 0 1 0 0 1
netname=AD:2
}
C 48600 44200 1 0 0 io.sym
{
T 48800 44800 5 10 0 0 0 0 1
device=none
T 48800 44300 5 8 1 1 0 1 1
value=AD4
T 48600 44200 5 10 0 1 0 0 1
netname=AD:4
}
C 48600 43900 1 0 0 io.sym
{
T 48800 44500 5 10 0 0 0 0 1
device=none
T 48800 44000 5 8 1 1 0 1 1
value=AD5
T 48600 43900 5 10 0 1 0 0 1
netname=AD:5
}
C 48600 43600 1 0 0 io.sym
{
T 48800 44200 5 10 0 0 0 0 1
device=none
T 48800 43700 5 8 1 1 0 1 1
value=AD6
T 48600 43600 5 10 0 1 0 0 1
netname=AD:6
}
C 48600 43300 1 0 0 io.sym
{
T 48800 43900 5 10 0 0 0 0 1
device=none
T 48800 43400 5 8 1 1 0 1 1
value=AD7
T 48600 43300 5 10 0 1 0 0 1
netname=AD:7
}
C 48600 43000 1 0 0 io.sym
{
T 48800 43600 5 10 0 0 0 0 1
device=none
T 48800 43100 5 8 1 1 0 1 1
value=AD8
T 48600 43000 5 10 0 1 0 0 1
netname=AD:8
}
N 48600 44600 48300 44600 4
N 48600 45200 48300 45200 4
N 48600 44900 48300 44900 4
N 48600 44300 48300 44300 4
N 48600 44000 48300 44000 4
N 48600 43700 48300 43700 4
N 48600 43400 48300 43400 4
N 48600 43100 48300 43100 4
C 48600 42700 1 0 0 io.sym
{
T 48800 43300 5 10 0 0 0 0 1
device=none
T 48800 42800 5 8 1 1 0 1 1
value=WR
T 48600 42700 5 10 0 1 0 0 1
netname=WR:1
}
N 48600 42800 48300 42800 4
C 48900 42100 1 0 0 io.sym
{
T 49100 42700 5 10 0 0 0 0 1
device=none
T 49100 42200 5 8 1 1 0 1 1
value=RD
T 48900 42100 5 10 0 1 0 0 1
netname=RD:1
}
N 48900 42200 48300 42200 4
C 41800 46900 1 270 0 capacitor.sym
{
T 42500 46700 5 10 0 0 270 0 1
device=CAPACITOR
T 42300 46600 5 8 1 1 0 0 1
refdes=C3
T 42700 46700 5 10 0 0 270 0 1
symversion=0.1
T 42300 46200 5 8 1 1 0 0 1
value=0.1uF
T 42300 46400 5 8 1 1 0 0 1
footprint=0805
}
N 42000 46900 42000 47500 4
N 42000 47200 44700 47200 4
N 44700 47200 44700 45400 4
C 49700 43400 1 0 0 power.sym
{
T 49900 43700 5 8 1 1 0 4 1
pinlabel=+2.8v
T 49700 43400 5 10 0 1 0 0 1
netname=2.8v:1
}
C 49700 42800 1 270 0 capacitor.sym
{
T 50400 42600 5 10 0 0 270 0 1
device=CAPACITOR
T 50200 42500 5 8 1 1 0 0 1
refdes=C4
T 50600 42600 5 10 0 0 270 0 1
symversion=0.1
T 50200 42100 5 8 1 1 0 0 1
value=0.1uF
T 50200 42300 5 8 1 1 0 0 1
footprint=0805
}
N 49900 42800 49900 43400 4
N 48300 42500 48600 42500 4
N 48600 42500 48600 41600 4
N 48300 41900 49500 41900 4
N 49500 41900 49500 43100 4
N 49900 41300 49900 41900 4
N 49500 43100 49900 43100 4
C 62000 53000 1 0 0 io.sym
{
T 62200 53600 5 10 0 0 0 0 1
device=none
T 62200 53100 5 8 1 1 0 1 1
value=AD3
T 62000 53000 5 10 0 0 0 0 1
netname=AD:4
}
C 62000 52700 1 0 0 io.sym
{
T 62200 53300 5 10 0 0 0 0 1
device=none
T 62200 52800 5 8 1 1 0 1 1
value=AD4
T 62000 52700 5 10 0 0 0 0 1
netname=AD:5
}
C 62000 52400 1 0 0 io.sym
{
T 62200 53000 5 10 0 0 0 0 1
device=none
T 62200 52500 5 8 1 1 0 1 1
value=AD5
T 62000 52400 5 10 0 0 0 0 1
netname=AD:6
}
C 62000 52100 1 0 0 io.sym
{
T 62200 52700 5 10 0 0 0 0 1
device=none
T 62200 52200 5 8 1 1 0 1 1
value=AD6
T 62000 52100 5 10 0 0 0 0 1
netname=AD:7
}
C 62000 51800 1 0 0 io.sym
{
T 62200 52400 5 10 0 0 0 0 1
device=none
T 62200 51900 5 8 1 1 0 1 1
value=AD7
T 62000 51800 5 10 0 0 0 0 1
netname=AD:8
}
C 62000 51500 1 0 0 io.sym
{
T 62200 52100 5 10 0 0 0 0 1
device=none
T 62200 51600 5 8 1 1 0 1 1
value=ALE
T 62000 51500 5 10 0 0 0 0 1
netname=ALE:1
}
C 60000 54900 1 90 0 io.sym
{
T 59400 55100 5 10 0 0 90 0 1
device=none
T 59900 55100 5 8 1 1 90 1 1
value=AD1
T 60000 54900 5 10 0 0 0 0 1
netname=AD:2
}
C 60300 54900 1 90 0 io.sym
{
T 59700 55100 5 10 0 0 90 0 1
device=none
T 60200 55100 5 8 1 1 90 1 1
value=AD2
T 60300 54900 5 10 0 0 0 0 1
netname=AD:3
}
C 59700 54900 1 90 0 io.sym
{
T 59100 55100 5 10 0 0 90 0 1
device=none
T 59600 55100 5 8 1 1 90 1 1
value=AD0
T 59700 54900 5 10 0 0 0 0 1
netname=AD:1
}
C 62000 50300 1 0 0 io.sym
{
T 62200 50900 5 10 0 0 0 0 1
device=none
T 62200 50400 5 8 1 1 0 1 1
value=A12
T 62000 50300 5 10 0 0 0 0 1
netname=A:12
}
C 62000 50000 1 0 0 io.sym
{
T 62200 50600 5 10 0 0 0 0 1
device=none
T 62200 50100 5 8 1 1 0 1 1
value=A11
T 62000 50000 5 10 0 0 0 0 1
netname=A:11
}
C 62000 49700 1 0 0 io.sym
{
T 62200 50300 5 10 0 0 0 0 1
device=none
T 62200 49800 5 8 1 1 0 1 1
value=A10
T 62000 49700 5 10 0 0 0 0 1
netname=A:10
}
C 62000 49400 1 0 0 io.sym
{
T 62200 50000 5 10 0 0 0 0 1
device=none
T 62200 49500 5 8 1 1 0 1 1
value=A9
T 62000 49400 5 10 0 0 0 0 1
netname=A:9
}
C 62000 49100 1 0 0 io.sym
{
T 62200 49700 5 10 0 0 0 0 1
device=none
T 62200 49200 5 8 1 1 0 1 1
value=A8
T 62000 49100 5 10 0 0 0 0 1
netname=A:8
}
C 62000 48800 1 0 0 io.sym
{
T 62200 49400 5 10 0 0 0 0 1
device=none
T 62200 48900 5 8 1 1 0 1 1
value=RD
T 62000 48800 5 10 0 0 0 0 1
netname=RD:1
}
C 62000 48500 1 0 0 io.sym
{
T 62200 49100 5 10 0 0 0 0 1
device=none
T 62200 48600 5 8 1 1 0 1 1
value=WR
T 62000 48500 5 10 0 0 0 0 1
netname=WR:1
}
N 62000 53100 61700 53100 4
N 62000 52800 61700 52800 4
N 62000 52500 61700 52500 4
N 62000 52200 61700 52200 4
N 62000 51900 61700 51900 4
N 62000 51600 61700 51600 4
N 62000 50400 61700 50400 4
N 62000 50100 61700 50100 4
N 62000 49800 61700 49800 4
N 62000 49500 61700 49500 4
N 62000 49200 61700 49200 4
N 62000 48900 61700 48900 4
N 62000 48600 61700 48600 4
C 53600 49400 1 0 1 io.sym
{
T 53400 50000 5 10 0 0 0 6 1
device=none
T 53400 49500 5 8 1 1 0 7 1
value=MISO
T 53600 49400 5 10 0 0 0 0 1
netname=MISO:1
}
C 53600 49700 1 0 1 io.sym
{
T 53400 50300 5 10 0 0 0 6 1
device=none
T 53400 49800 5 8 1 1 0 7 1
value=MOSI
T 53600 49700 5 10 0 0 0 0 1
netname=MOSI:1
}
C 53300 50000 1 0 1 io.sym
{
T 53100 50600 5 10 0 0 0 6 1
device=none
T 53100 50100 5 8 1 1 0 7 1
value=SCK
T 53300 50000 5 10 0 0 0 0 1
netname=SCK:1
}
N 53300 50100 54200 50100 4
N 53600 50100 53600 50400 4
N 53600 50400 53300 50400 4
C 53700 47800 1 0 0 gnd.sym
{
T 53900 47900 5 8 1 1 0 4 1
pinlabel=GND
T 53700 47800 5 10 0 0 0 0 1
netname=GND:1
}
N 53600 49500 54200 49500 4
N 53600 49800 54200 49800 4
N 53900 48300 53900 50400 4
N 53900 50400 54200 50400 4
C 58500 46800 1 90 1 io.sym
{
T 57900 46600 5 10 0 0 90 6 1
device=none
T 58400 46600 5 8 1 1 90 7 1
value=CAM_SDA
T 58500 46800 5 10 0 0 0 0 1
netname=CAMSDA:1
}
C 58000 46800 1 270 0 io.sym
{
T 58600 46600 5 10 0 0 90 8 1
device=none
T 58100 46600 5 8 1 1 90 7 1
value=CAM_SCL
T 58000 46800 5 10 0 0 0 0 1
netname=CAMSCL:1
}
C 42400 53700 1 0 0 MIC5320-MFYD6.sym
{
T 42400 53700 5 1 0 0 0 0 1
device=MIC5320-MFYD6
T 42400 53700 5 1 0 0 0 0 1
footprint=SOT457
T 42800 55300 5 8 1 1 0 0 1
refdes=U2
}
C 45200 52600 1 0 0 gnd.sym
{
T 45400 52700 5 8 1 1 0 4 1
pinlabel=GND
T 45200 52600 5 10 0 1 0 0 1
netname=GND:1
}
C 41000 55200 1 0 0 power.sym
{
T 41200 55500 5 8 1 1 0 4 1
pinlabel=Vcc
T 41000 55200 5 10 0 1 0 0 1
netname=Vcc:1
}
N 41200 54300 41200 55200 4
N 41200 54900 42400 54900 4
N 45400 53100 45400 53700 4
C 41000 54300 1 270 0 capacitor.sym
{
T 41700 54100 5 10 0 0 270 0 1
device=CAPACITOR
T 41500 54000 5 8 1 1 0 0 1
refdes=C1
T 41900 54100 5 10 0 0 270 0 1
symversion=0.1
T 41500 53600 5 8 1 1 0 0 1
value=0.1uF
T 41500 53800 5 8 1 1 0 0 1
footprint=0805
}
C 45200 54600 1 270 0 capacitor.sym
{
T 45900 54400 5 10 0 0 270 0 1
device=CAPACITOR
T 45700 54300 5 8 1 1 0 0 1
refdes=C2
T 46100 54400 5 10 0 0 270 0 1
symversion=0.1
T 45700 53900 5 8 1 1 0 0 1
value=0.1uF
T 45700 54100 5 8 1 1 0 0 1
footprint=0805
}
C 41000 52600 1 0 0 gnd.sym
{
T 41200 52700 5 8 1 1 0 4 1
pinlabel=GND
T 41000 52600 5 10 0 1 0 0 1
netname=GND:1
}
N 42400 54300 42100 54300 4
N 42100 53400 42100 54300 4
N 42100 53400 41200 53400 4
N 41200 54600 42400 54600 4
N 41200 53100 41200 53400 4
C 45200 55200 1 0 0 power.sym
{
T 45400 55500 5 8 1 1 0 4 1
pinlabel=+2.8v
T 45200 55200 5 10 0 1 0 0 1
netname=2.8v:1
}
N 44500 54900 45400 54900 4
N 45400 54600 45400 55200 4
N 44500 54600 44800 54600 4
N 44800 53400 44800 54600 4
N 44800 54300 44500 54300 4
N 45400 53400 44800 53400 4
C 53600 48800 1 0 1 io.sym
{
T 53400 49400 5 10 0 0 0 6 1
device=none
T 53400 48900 5 8 1 1 0 7 1
value=CAM_DCLK
T 53600 48800 5 10 0 0 0 0 1
netname=CAMDCLK:1
}
C 53600 48500 1 0 1 io.sym
{
T 53400 49100 5 10 0 0 0 6 1
device=none
T 53400 48600 5 8 1 1 0 7 1
value=CAM_EXTCLK
T 53600 48500 5 10 0 0 0 0 1
netname=CAMEXTCLK:1
}
N 53600 48900 54200 48900 4
N 53600 48600 54200 48600 4
C 56700 54900 1 90 0 io.sym
{
T 56100 55100 5 10 0 0 90 0 1
device=none
T 56600 55100 5 8 1 1 90 1 1
value=CAM_D0
T 56700 54900 5 10 0 1 0 0 1
netname=CAMD:1
}
C 57000 54900 1 90 0 io.sym
{
T 56400 55100 5 10 0 0 90 0 1
device=none
T 56900 55100 5 8 1 1 90 1 1
value=CAM_D1
T 57000 54900 5 10 0 1 0 0 1
netname=CAMD:2
}
C 57300 54900 1 90 0 io.sym
{
T 56700 55100 5 10 0 0 90 0 1
device=none
T 57200 55100 5 8 1 1 90 1 1
value=CAM_D2
T 57300 54900 5 10 0 1 0 0 1
netname=CAMD:3
}
C 57900 54900 1 90 0 io.sym
{
T 57300 55100 5 10 0 0 90 0 1
device=none
T 57800 55100 5 8 1 1 90 1 1
value=CAM_D4
T 57900 54900 5 10 0 1 0 0 1
netname=CAMD:5
}
C 57600 54900 1 90 0 io.sym
{
T 57000 55100 5 10 0 0 90 0 1
device=none
T 57500 55100 5 8 1 1 90 1 1
value=CAM_D3
T 57600 54900 5 10 0 1 0 0 1
netname=CAMD:4
}
C 58200 54900 1 90 0 io.sym
{
T 57600 55100 5 10 0 0 90 0 1
device=none
T 58100 55100 5 8 1 1 90 1 1
value=CAM_D5
T 58200 54900 5 10 0 0 0 0 1
netname=CAMD:6
}
C 58500 54900 1 90 0 io.sym
{
T 57900 55100 5 10 0 0 90 0 1
device=none
T 58400 55100 5 8 1 1 90 1 1
value=CAM_D6
T 58500 54900 5 10 0 0 0 0 1
netname=CAMD:7
}
C 58800 54900 1 90 0 io.sym
{
T 58200 55100 5 10 0 0 90 0 1
device=none
T 58700 55100 5 8 1 1 90 1 1
value=CAM_D7
T 58800 54900 5 10 0 0 0 0 1
netname=CAMD:8
}
C 53900 52100 1 0 1 io.sym
{
T 53700 52700 5 10 0 0 0 6 1
device=none
T 53700 52200 5 8 1 1 0 7 1
value=LASER_IO
T 53900 52100 5 10 0 0 0 0 1
netname=LASERIO:1
}
C 59400 46800 1 90 1 io.sym
{
T 58800 46600 5 10 0 0 90 6 1
device=none
T 59300 46600 5 8 1 1 90 7 1
value=CAM_VD
T 59400 46800 5 10 0 0 0 0 1
netname=CAMVD:1
}
C 59700 46800 1 90 1 io.sym
{
T 59100 46600 5 10 0 0 90 6 1
device=none
T 59600 46600 5 8 1 1 90 7 1
value=CAM_HD
T 59700 46800 5 10 0 0 0 0 1
netname=CAMHD:1
}
C 60000 46800 1 90 1 io.sym
{
T 59400 46600 5 10 0 0 90 6 1
device=none
T 59900 46600 5 8 1 1 90 7 1
value=CAM_RESET
T 60000 46800 5 10 0 0 0 0 1
netname=CAMRESET:1
}
N 53900 52200 54200 52200 4
N 59300 46800 59300 47100 4
N 59600 46800 59600 47100 4
N 59900 46800 59900 47100 4
N 58400 46800 58400 47100 4
N 58100 46800 58100 47100 4
N 57200 46800 57200 47100 4
N 56900 46800 56900 47100 4
N 56600 46800 56600 47100 4
N 55700 54900 55700 54600 4
N 56000 54900 56000 54600 4
N 59000 54900 59000 54600 4
N 59300 54900 59300 54600 4
N 59900 54900 59900 54600 4
N 60200 54900 60200 54600 4
N 59600 54900 59600 54600 4
N 56600 54900 56600 54600 4
N 56900 54900 56900 54600 4
N 57200 54900 57200 54600 4
N 57800 54900 57800 54600 4
N 57500 54900 57500 54600 4
N 58100 54900 58100 54600 4
N 58400 54900 58400 54600 4
N 58700 54900 58700 54600 4
C 53900 51800 1 0 1 io.sym
{
T 53700 52400 5 10 0 0 0 6 1
device=none
T 53700 51900 5 8 1 1 0 7 1
value=L_ECHO1
T 53900 51800 5 10 0 0 0 0 1
netname=LECHO:1
}
C 53900 51500 1 0 1 io.sym
{
T 53700 52100 5 10 0 0 0 6 1
device=none
T 53700 51600 5 8 1 1 0 7 1
value=L_TRIG2
T 53900 51500 5 10 0 0 0 0 1
netname=LTRIG:2
}
C 53900 51200 1 0 1 io.sym
{
T 53700 51800 5 10 0 0 0 6 1
device=none
T 53700 51300 5 8 1 1 0 7 1
value=L_ECHO2
T 53900 51200 5 10 0 0 0 0 1
netname=LECHO:2
}
C 53600 49100 1 0 1 io.sym
{
T 53400 49700 5 10 0 0 0 6 1
device=none
T 53400 49200 5 8 1 1 0 7 1
value=L_TRIG1
T 53600 49100 5 10 0 0 0 0 1
netname=LTRIG:1
}
N 53600 49200 54200 49200 4
N 53900 51900 54200 51900 4
N 53900 51600 54200 51600 4
N 53900 51300 54200 51300 4
N 49700 53700 49700 54000 4
N 49700 52500 49700 52800 4
C 50000 55100 1 0 0 io.sym
{
T 50200 55700 5 10 0 0 0 0 1
device=none
T 50200 55200 5 8 1 1 0 1 1
value=STATUS_LED
T 50000 55100 5 10 0 1 0 0 1
netname=STATUSLED:1
}
C 55800 46800 1 90 1 io.sym
{
T 55200 46600 5 10 0 0 90 6 1
device=none
T 55700 46600 5 8 1 1 90 7 1
value=STATUS_LED
T 55800 46800 5 10 0 0 0 0 1
netname=STATUSLED:1
}
N 55700 46800 55700 47100 4
N 49700 54900 49700 55200 4
N 49700 55200 50000 55200 4
C 50900 44800 1 0 0 gnd.sym
{
T 51100 44900 5 8 1 1 0 4 1
pinlabel=GND
T 50900 44800 5 10 0 1 0 0 1
netname=GND:1
}
C 50900 47400 1 0 0 power.sym
{
T 51100 47700 5 8 1 1 0 4 1
pinlabel=+2.8v
T 50900 47400 5 10 0 1 0 0 1
netname=2.8v:1
}
N 51100 45900 51100 45300 4
C 50900 46800 1 270 0 capacitor.sym
{
T 51600 46600 5 10 0 0 270 0 1
device=CAPACITOR
T 51400 46500 5 8 1 1 0 0 1
refdes=C6
T 51800 46600 5 10 0 0 270 0 1
symversion=0.1
T 51400 46100 5 8 1 1 0 0 1
value=0.1uF
T 51400 46300 5 8 1 1 0 0 1
footprint=0805
}
N 51100 47400 51100 46800 4
C 51400 47000 1 0 0 io.sym
{
T 51600 47600 5 10 0 0 0 0 1
device=none
T 51600 47100 5 8 1 1 0 1 1
value=PWR_VCC2
T 51400 47000 5 10 0 1 0 0 1
netname=PWRVCC:2
}
C 51400 45500 1 0 0 io.sym
{
T 51600 46100 5 10 0 0 0 0 1
device=none
T 51600 45600 5 8 1 1 0 1 1
value=PWR_GND2
T 51400 45500 5 10 0 1 0 0 1
netname=PWRGND:2
}
N 51400 47100 51100 47100 4
N 51400 45600 51100 45600 4
C 53800 41500 1 0 0 gnd.sym
{
T 54000 41600 5 8 1 1 0 4 1
pinlabel=GND
T 53800 41500 5 10 0 1 0 0 1
netname=GND:1
}
C 53800 44100 1 0 0 power.sym
{
T 54000 44400 5 8 1 1 0 4 1
pinlabel=+2.8v
T 53800 44100 5 10 0 1 0 0 1
netname=2.8v:1
}
N 54000 42600 54000 42000 4
C 53800 43500 1 270 0 capacitor.sym
{
T 54500 43300 5 10 0 0 270 0 1
device=CAPACITOR
T 54300 43200 5 8 1 1 0 0 1
refdes=C7
T 54700 43300 5 10 0 0 270 0 1
symversion=0.1
T 54300 42800 5 8 1 1 0 0 1
value=0.1uF
T 54300 43000 5 8 1 1 0 0 1
footprint=0805
}
N 54000 44100 54000 43500 4
C 54300 43700 1 0 0 io.sym
{
T 54500 44300 5 10 0 0 0 0 1
device=none
T 54500 43800 5 8 1 1 0 1 1
value=PWR_VCC3
T 54300 43700 5 10 0 1 0 0 1
netname=PWRVCC:3
}
C 54300 42200 1 0 0 io.sym
{
T 54500 42800 5 10 0 0 0 0 1
device=none
T 54500 42300 5 8 1 1 0 1 1
value=PWR_GND3
T 54300 42200 5 10 0 1 0 0 1
netname=PWRGND:3
}
N 54300 43800 54000 43800 4
N 54300 42300 54000 42300 4
C 58600 44700 1 270 0 capacitor.sym
{
T 59300 44500 5 10 0 0 270 0 1
device=CAPACITOR
T 59100 44400 5 8 1 1 0 0 1
refdes=C9
T 59500 44500 5 10 0 0 270 0 1
symversion=0.1
T 59100 44000 5 8 1 1 0 0 1
value=22pF
T 59100 44200 5 8 1 1 0 0 1
footprint=0805
}
C 57300 44700 1 270 0 capacitor.sym
{
T 58000 44500 5 10 0 0 270 0 1
device=CAPACITOR
T 57800 44400 5 8 1 1 0 0 1
refdes=C8
T 58200 44500 5 10 0 0 270 0 1
symversion=0.1
T 57800 44000 5 8 1 1 0 0 1
value=22pF
T 57800 44200 5 8 1 1 0 0 1
footprint=0805
}
C 57800 44900 1 0 0 crystal.sym
{
T 58000 45400 5 10 0 0 0 0 1
device=CRYSTAL
T 57800 45200 5 8 1 1 0 0 1
refdes=Y1
T 58000 45600 5 10 0 0 0 0 1
symversion=0.1
T 58100 45200 5 8 1 1 0 0 1
value=16MHz
T 57800 44900 5 10 0 1 0 0 1
footprint=ABMM2
}
N 57500 43500 57500 43800 4
N 58800 43200 58800 43800 4
N 57500 44700 57500 47100 4
N 57800 47100 57800 45600 4
N 57800 45600 58800 45600 4
N 58800 45600 58800 44700 4
C 58600 42700 1 0 0 gnd.sym
{
T 58800 42800 5 8 1 1 0 4 1
pinlabel=GND
T 58600 42700 5 10 0 1 0 0 1
netname=GND:1
}
N 57500 43500 58800 43500 4
N 57500 45000 57800 45000 4
N 58500 45000 58800 45000 4
C 60100 46800 1 270 0 io.sym
{
T 60700 46600 5 10 0 0 90 8 1
device=none
T 60200 46600 5 8 1 1 90 7 1
value=L_SERVO_IO
T 60100 46800 5 10 0 0 0 0 1
netname=LSERVOIO:1
}
N 60200 46800 60200 47100 4
