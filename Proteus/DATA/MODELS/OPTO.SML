SPICE LIBRARY  ,  2          6N136               `  ��[�  HCNR200             0	  ��[]|  HCPL_3120           f  ��[+                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �  .SUBCKT 6N136 DA DK QE QC QB  VCC
DIN DA 9 DT8811VB
VT 9 DK 0
CIO DA QC 0.6E-12
QOUT QC QB QE QF290D
RFX QB QE 1E6
HD T1 0 VT 800
RDLY1 T1 T2 0.1
CDLY1 T2 0 1P
GDLY1 VCC QB VALUE={-2E-7 + 5E-6*V(T2) -1.7E-8*V(T2)*V(T2)}
.MODEL DT8811VB D 
+ IS=4.5E-18 N=1.40 RS=3.8
+ BV=3.000E+000 IBV=0.5E-006  XTI=4
+ EG=1.52436 CJO=18E-12 VJ=0.75 M=0.5 FC=0.5
.MODEL QF290D NPN 
+ IS=2.691E-016 NF=1.000E+000 ISE=6.586E-018
+ NE = 1.082E+000 BF = 176 BR = 1.000E+000
+ IKF = 7.300E-003 VAF = 1.000E+002 VAR = 2.800E+002
+ EG = 1.110E+000 XTI = 1.068E+000 XTB = 0.000E+000
+ RC = -1E+000 RB = 2.500E+001 RE = 40
+ CJE = 2.500E-012 MJE = 1.740E-001 VJE = 1.250E-001
+ CJC = 7.24E-012 MJC = 2.573E-001 VJC = 1.100E-001
.ENDS 6N136
 6  .SUBCKT HCNR200 1 2 3 4 5 6 
* 
* LED CIRCUIT 
QLED1 8 2 7 QCPL .5 
QLED2 9 2 7 QCPL .5 
VLED 7 1 DC .658 
VPD1 8 1 DC 2 
VPD2 9 1 DC 2 
* 
* INPUT PHOTODIODE CIRCUIT 
DPD1 4 3 DPHOTO 
FPD1 3 4 VPD1 -1 
CPD1 4 3 8P 
* 
* OUTPUT PHOTODIODE CIRCUIT 
DPD2 5 6 DPHOTO 
FPD2 6 5 VPD2 -1 
CPD2 5 6 8P 
* 
* PHOTODIODE MODEL 
.MODEL DPHOTO D(IS=4.5E-12 RS=150 N=1.3 XTI=4 EG=1.11 CJO=14P M=0.9 VJ=1.9) 
* 
* LED/OPTICAL-COUPLING TRANSISTOR MODEL 
.MODEL QCPL NPN(IS=2.214E-19 BF=10M NF=1.010 IKF=11.00M ISE=1.167P NE=1.737 RB=3.469 VAF=100 TF=1.77U CJE=80P) 
* 
.ENDS
 �	  .SUBCKT HCPL_3120   2 3 5 6 7 8 
Q2ICC 163 84 8  PNPMOD
Q1ICC 84 84 8  PNPMOD
XLED 5 10 3 2 LED
XLIMITL 5 10 50 LIMITL
EHDRIVE 42 7  40 5 1
ELDRIVE 51 5  50 5 -1
XHLIMIT 5 10 40 LIMIT
VUVLO 20 5 DC 12
VCCINSIDE 22 5 DC 30
DMOSL 5 7 DMOD
DDRIVE3 47 46 DMOD
DDRIVE2 49 47 DMOD
DDRIVE1 7 49 DMOD
Q4ICC 122 124 5  NPNMOD
Q3ICC 84 122 124  NPNMOD
QDRIVE3 8 46 47  NPNMOD
QDRIVE2 8 47 49  NPNMOD
QDRIVE1 8 49 48  NPNMOD
XUVLO 5 22 8 21 23 COMPARATOR
MUVLO 10 24 5 5 NMOSSWITCH L=1E-6 W=100E-6
MDRIVE 7 52 5 5 NMOSMOD L=1E-6 W=10E-3
CUVLO 24 5 20E-12
CHIGH 8 7 1E-12
CLGATE 52 5 1E-12
CLOW 7 5 1E-12
CHGATE 46 7 300E-12 
RSHORT67  6 7  0.0001
RUVLO2 23 21 40E3
R2ICC 124 5 600
RUVLO3 23 24 1E3
R1ICC 163 122 1E3
RHGATE 42 46 1E3
RLGATE 51 52 1E3
RUVLO 21 20 1E3
REHDRIVE 48 7 1.4 
.MODEL NMOSSWITCH NMOS (VTO=+0.7)
.MODEL NMOSMOD NMOS (VTO=+0.5   RS=0.9  LAMBDA=0)
.MODEL NPNMOD  NPN BF=16
.MODEL PNPMOD  PNP BF=100 
.MODEL DMOD D IS=2.22P CJO=1P VJ=.376 M=.139 N=1.07
.SUBCKT LED 1 3 4 5
GBAND 1 3  9 1 1 
FPHOTO 1 9  VSENSE  1 
EGAIN 7 4  6 4 1
CBAND 3 1 140E-12
ITHRE 3 1 DC 500E-6
VSENSE 8 4 DC 0
DLED 6 4 LEDNOR
DOPTIC 7 8 LEDNORC
RBAND 3 1 1E3 RMOD1 
RTHERMO 9 1 1 RMOD2
RLED 5 6 1
.MODEL LEDNOR D IS=5E-16 N=2 XTI=3 EG=2.1 BV=5 IBV=10U CJO=60P VJ=.75 M=.3333 FC=.5 TT=20N
.MODEL LEDNORC D IS=5E-16 N=2 XTI=3 EG=2.1 BV=5 IBV=10U VJ=.75 M=.3333 FC=.5 
.MODEL RMOD1 TC1=2E-3
.MODEL RMOD2 TC1=-1.5E-3 
.ENDS LED
.SUBCKT LIMITL 1 2 3
ELIMIT 4 1  2 7 10
VNEGATIV 6 1 DC -12
VTHRESHOLD 7 1 DC 2
VPOSITIVE 5 1 DC  12
DNEGA 6 3 DMOD
DPOSI 3 5 DMOD
R2 4 3 1E3
R1 2 7 10E6
.MODEL NMOSSWITCH NMOS (VTO=+0.7)
.MODEL NMOSMOD NMOS (VTO=+0.5   RS=0.9  LAMBDA=0)
.MODEL NPNMOD  NPN BF=16
.MODEL PNPMOD  PNP BF=100 
.MODEL DMOD D IS=2.22P CJO=1P VJ=.376 M=.139 N=1.07
.ENDS LIMITL
.SUBCKT LIMIT 1 2 3
ELIMIT 4 1  2 7 10
VNEGATIV 6 1 DC -10
VTHRESHOLD 7 1 DC 2
VPOSITIVE 5 1 DC 10
DNEGA 6 3 DMOD
DPOSI 3 5 DMOD
R2 4 3 1E3
R1 2 7 1E6
.MODEL NMOSSWITCH NMOS (VTO=+0.7)
.MODEL NMOSMOD NMOS (VTO=+0.5   RS=0.9  LAMBDA=0)
.MODEL NPNMOD  NPN BF=16
.MODEL PNPMOD  PNP BF=100 
.MODEL DMOD D IS=2.22P CJO=1P VJ=.376 M=.139 N=1.07
.ENDS LIMIT
.SUBCKT COMPARATOR 1 2 3 4 5
MCOPA 5 6 1 1 NMOSSWITCH L=1E-6 W=100E-6
EGAIN 6 1  3 4 1E3
RO 5 2 10E3
RGATE 6 1 10E3
R1N 3 4 1E6
.MODEL NMOSSWITCH NMOS (VTO=+0.7)
.MODEL NMOSMOD NMOS (VTO=+0.5   RS=0.9  LAMBDA=0)
.MODEL NPNMOD  NPN BF=16
.MODEL PNPMOD  PNP BF=100 
.MODEL DMOD D IS=2.22P CJO=1P VJ=.376 M=.139 N=1.07
.ENDS COMPARATOR
.ENDS HCPL_3120
 