SPICE LIBRARY  ,  d   )       LM111               �  q޵PEi  LM211               �  q޵PFi  LM311               �  q޵P�h  LP111               �  q޵P�h  LP211                 q޵P�h  LP311               $  q޵P�h  TL031               =  q޵P��  TL032               >  q޵P��  TL034               ?  q޵P��  TL051               @"  q޵P�  TL052               %  q޵P�  TL054               �'  q޵P�  TL061               �*  q޵P��  TL062               �-  q޵P��  TL064               �0  q޵P��  TL071               �3  q޵P��  TL072               {6  q޵P��  TL074               d9  q޵P��  TL081               M<  q޵P��  TL082               6?  q޵P��  TL084               B  q޵P��  TLE2021             E  q޵P�  TLE2022             H  q޵P��  TLE2024             "K  q޵PO�  TLE2027             7N  q޵P��  TLE2037             JQ  q޵PH�  TLE2061             eT  q޵P�  TLE2062             DW  q޵P�  TLE2064             #Z  q޵P�  TLE2071             ]  q޵P�  TLE2072             �_  q޵P�  TLE2074             �b  q޵P�  TLE2081             �e  q޵P�  TLE2082             hh  q޵P�  TLE2084             Fk  q޵P�  TLE2141             n  q޵P�  TLE2142             q  q޵P�  TLE2144             t  q޵P�  TLE2161             w  q޵P�  TLE2227             �y  q޵P��  TLE2237             
}  q޵PJ�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    .SUBCKT LM111    1 2 3 4 5 6
*
  F1    9  3 V1 1
  IEE   3  7 DC 100.0E-6
  VI1  21  1 DC .45
  VI2  22  2 DC .45
  Q1    9 21  7 QIN
  Q2    8 22  7 QIN
  Q3    9  8  4 QMO
  Q4    8  8  4 QMI
.MODEL QIN PNP(IS=800.0E-18 BF=666.7)
.MODEL QMI NPN(IS=800.0E-18 BF=1002)
.MODEL QMO NPN(IS=800.0E-18 BF=1000 CJC=1E-15 TR=102.5E-9)
  E1   10  6  9  4  1
  V1   10 11 DC 0
  Q5    5 11  6 QOC
.MODEL QOC NPN(IS=800.0E-18 BF=103.5E3 CJC=1E-15 TF=11.60E-12 TR=48.19E-9)
  DP    4  3 DX
  RP    3  4 6.667E3
.MODEL DX  D(IS=800.0E-18)
*
.ENDS
   .SUBCKT LM211    1 2 3 4 5 6
*
  F1    9  3 V1 1
  IEE   3  7 DC 100.0E-6
  VI1  21  1 DC .45
  VI2  22  2 DC .45
  Q1    9 21  7 QIN
  Q2    8 22  7 QIN
  Q3    9  8  4 QMO
  Q4    8  8  4 QMI
.MODEL QIN PNP(IS=800.0E-18 BF=666.7)
.MODEL QMI NPN(IS=800.0E-18 BF=1002)
.MODEL QMO NPN(IS=800.0E-18 BF=1000 CJC=1E-15 TR=102.5E-9)
  E1   10  6  9  4  1
  V1   10 11 DC 0
  Q5    5 11  6 QOC
.MODEL QOC NPN(IS=800.0E-18 BF=103.5E3 CJC=1E-15 TF=11.60E-12 TR=48.19E-9)
  DP    4  3 DX
  RP    3  4 6.667E3
.MODEL DX  D(IS=800.0E-18)
*
.ENDS
   .SUBCKT LM311    1 2 3 4 5 6
*
  F1    9  3 V1 1
  IEE   3  7 DC 100.0E-6
  VI1  21  1 DC .45
  VI2  22  2 DC .45
  Q1    9 21  7 QIN
  Q2    8 22  7 QIN
  Q3    9  8  4 QMO
  Q4    8  8  4 QMI
.MODEL QIN PNP(IS=800.0E-18 BF=500)
.MODEL QMI NPN(IS=800.0E-18 BF=1002)
.MODEL QMO NPN(IS=800.0E-18 BF=1000 CJC=1E-15 TR=102.5E-9)
  E1   10  6  9  4  1
  V1   10 11 DC 0
  Q5    5 11  6 QOC
.MODEL QOC NPN(IS=800.0E-18 BF=103.5E3 CJC=1E-15 TF=11.60E-12 TR=48.19E-9)
  DP    4  3 DX
  RP    3  4 6.667E3
.MODEL DX  D(IS=800.0E-18)
*
.ENDS
   .SUBCKT LP111    1 2 3 4 5 6
*
  F1    9  3 V1 1
  IEE   3  7 DC 100.0E-6
  VI1  21  1 DC .45
  VI2  22  2 DC .45
  Q1    9 21  7 QIN
  Q2    8 22  7 QIN
  Q3    9  8  4 QMO
  Q4    8  8  4 QMI
.MODEL QIN PNP(IS=800.0E-18 BF=3.333E3)
.MODEL QMI NPN(IS=800.0E-18 BF=1002)
.MODEL QMO NPN(IS=800.0E-18 BF=1000 CJC=1E-15 TR=745.3E-9)
  E1   10  6  9  4  1
  V1   10 11 DC 0
  Q5    5 11  6 QOC
.MODEL QOC NPN(IS=800.0E-18 BF=10.35E3 CJC=1E-15 TF=10.38E-12 TR=503.0E-9)
  DP    4  3 DX
  RP 3  4 600E3
.MODEL DX  D(IS=800.0E-18)
*
.ENDS
   .SUBCKT LP211    1 2 3 4 5 6
*
  F1    9  3 V1 1
  IEE   3  7 DC 100.0E-6
  VI1  21  1 DC .45
  VI2  22  2 DC .45
  Q1    9 21  7 QIN
  Q2    8 22  7 QIN
  Q3    9  8  4 QMO
  Q4    8  8  4 QMI
.MODEL QIN PNP(IS=800.0E-18 BF=3.333E3)
.MODEL QMI NPN(IS=800.0E-18 BF=1002)
.MODEL QMO NPN(IS=800.0E-18 BF=1000 CJC=1E-15 TR=745.3E-9)
  E1   10  6  9  4  1
  V1   10 11 DC 0
  Q5    5 11  6 QOC
.MODEL QOC NPN(IS=800.0E-18 BF=10.35E3 CJC=1E-15 TF=10.38E-12 TR=503.0E-9)
  DP    4  3 DX
  RP 3  4 600E3
.MODEL DX  D(IS=800.0E-18)
*
.ENDS
   .SUBCKT LP311    1 2 3 4 5 6
*
  F1    9  3 V1 1
  IEE   3  7 DC 100.0E-6
  VI1  21  1 DC .45
  VI2  22  2 DC .45
  Q1    9 21  7 QIN
  Q2    8 22  7 QIN
  Q3    9  8  4 QMO
  Q4    8  8  4 QMI
.MODEL QIN PNP(IS=800.0E-18 BF=3.333E3)
.MODEL QMI NPN(IS=800.0E-18 BF=1002)
.MODEL QMO NPN(IS=800.0E-18 BF=1000 CJC=1E-15 TR=745.3E-9)
  E1   10  6  9  4  1
  V1   10 11 DC 0
  Q5    5 11  6 QOC
.MODEL QOC NPN(IS=800.0E-18 BF=10.35E3 CJC=1E-15 TF=10.38E-12 TR=503.0E-9)
  DP    4  3 DX
  RP 3  4 600E3
.MODEL DX  D(IS=800.0E-18)
*
.ENDS
   .SUBCKT TL031    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  CSS  10 99 11.38E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 936.5E3 -900E3 900E3 900E3 -900E3
  GA 6  0 11 12 113.1E-6
  GCM   0  6 10 99 2.257E-9
  ISS   3 10 DC 76.50E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 8.841E3
  RD2   4 12 8.841E3
  RO1   8  5 135
  RO2   7 99 135
  RP    3  4 138.5E3
  RSS  10 99 2.614E6
  VB    9  0 DC 0
  VC    3 53 DC 1.700
  VE   54  4 DC 1.800
  VLIM  7  8 DC 0
  VLP  91  0 DC 8
  VLN   0 92 DC 8
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=1.000E-12 BETA=140E-6 VTO=-1)
.ENDS
   .SUBCKT TL032    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  CSS  10 99 11.38E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 936.5E3 -900E3 900E3 900E3 -900E3
  GA 6  0 11 12 113.1E-6
  GCM   0  6 10 99 2.257E-9
  ISS   3 10 DC 76.50E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 8.841E3
  RD2   4 12 8.841E3
  RO1   8  5 135
  RO2   7 99 135
  RP    3  4 138.5E3
  RSS  10 99 2.614E6
  VB    9  0 DC 0
  VC    3 53 DC 1.700
  VE   54  4 DC 1.800
  VLIM  7  8 DC 0
  VLP  91  0 DC 8
  VLN   0 92 DC 8
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=1.000E-12 BETA=140E-6 VTO=-1)
.ENDS
   .SUBCKT TL034    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  CSS  10 99 11.38E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 936.5E3 -900E3 900E3 900E3 -900E3
  GA 6  0 11 12 113.1E-6
  GCM   0  6 10 99 2.257E-9
  ISS   3 10 DC 76.50E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 8.841E3
  RD2   4 12 8.841E3
  RO1   8  5 135
  RO2   7 99 135
  RP    3  4 138.5E3
  RSS  10 99 2.614E6
  VB    9  0 DC 0
  VC    3 53 DC 1.700
  VE   54  4 DC 1.800
  VLIM  7  8 DC 0
  VLP  91  0 DC 8
  VLN   0 92 DC 8
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=1.000E-12 BETA=140E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL051    1 2 3 4 5
*
  C1   11 12 3.988E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 2.875E6 -3E6 3E6 3E6 -3E6
  GA 6  0 11 12 292.2E-6
  GCM   0  6 10 99 6.542E-9
  ISS   3 10 DC 300.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2 6  9 100.0E3
  RD1 4 11 3.422E3
  RD2 4 12 3.422E3
  RO1 8  5 125
  RO2 7 99 125
  RP    3  4 11.11E3
  RSS  10 99 666.7E3
  VB    9  0 DC 0
  VC    3 53 DC 3
  VE   54  4 DC 3.700
  VLIM  7  8 DC 0
  VLP  91  0 DC 28
  VLN   0 92 DC 28
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=185.2E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL052    1 2 3 4 5
*
  C1   11 12 3.988E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 2.875E6 -3E6 3E6 3E6 -3E6
  GA 6  0 11 12 292.2E-6
  GCM   0  6 10 99 6.542E-9
  ISS   3 10 DC 300.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2 6  9 100.0E3
  RD1 4 11 3.422E3
  RD2 4 12 3.422E3
  RO1 8  5 125
  RO2 7 99 125
  RP    3  4 11.11E3
  RSS  10 99 666.7E3
  VB    9  0 DC 0
  VC    3 53 DC 3
  VE   54  4 DC 3.700
  VLIM  7  8 DC 0
  VLP  91  0 DC 28
  VLN   0 92 DC 28
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=185.2E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL054    1 2 3 4 5
*
  C1   11 12 3.988E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 2.875E6 -3E6 3E6 3E6 -3E6
  GA 6  0 11 12 292.2E-6
  GCM   0  6 10 99 6.542E-9
  ISS   3 10 DC 300.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2 6  9 100.0E3
  RD1 4 11 3.422E3
  RD2 4 12 3.422E3
  RO1 8  5 125
  RO2 7 99 125
  RP    3  4 11.11E3
  RSS  10 99 666.7E3
  VB    9  0 DC 0
  VC    3 53 DC 3
  VE   54  4 DC 3.700
  VLIM  7  8 DC 0
  VLP  91  0 DC 28
  VLN   0 92 DC 28
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=185.2E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL061    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 318.3E3 -300E3 300E3 300E3 -300E3
  GA    6  0 11 12 94.26E-6
  GCM 0  6 10 99 1.607E-9
  ISS   3 10 DC 52.50E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 10.61E3
  RD2   4 12 10.61E3
  RO1   8  5 200
  RO2   7 99 200
  RP    3  4 150.0E3
  RSS  10 99 3.810E6
  VB    9  0 DC 0
  VC    3 53 DC 2.200
  VE   54  4 DC 2.200
  VLIM  7  8 DC 0
  VLP  91  0 DC 15
  VLN   0 92 DC 15
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=100.5E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL062    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 318.3E3 -300E3 300E3 300E3 -300E3
  GA    6  0 11 12 94.26E-6
  GCM 0  6 10 99 1.607E-9
  ISS   3 10 DC 52.50E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 10.61E3
  RD2   4 12 10.61E3
  RO1   8  5 200
  RO2   7 99 200
  RP    3  4 150.0E3
  RSS  10 99 3.810E6
  VB    9  0 DC 0
  VC    3 53 DC 2.200
  VE   54  4 DC 2.200
  VLIM  7  8 DC 0
  VLP  91  0 DC 15
  VLN   0 92 DC 15
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=100.5E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL064    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 318.3E3 -300E3 300E3 300E3 -300E3
  GA    6  0 11 12 94.26E-6
  GCM 0  6 10 99 1.607E-9
  ISS   3 10 DC 52.50E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 10.61E3
  RD2   4 12 10.61E3
  RO1   8  5 200
  RO2   7 99 200
  RP    3  4 150.0E3
  RSS  10 99 3.810E6
  VB    9  0 DC 0
  VC    3 53 DC 2.200
  VE   54  4 DC 2.200
  VLIM  7  8 DC 0
  VLP  91  0 DC 15
  VLN   0 92 DC 15
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=100.5E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL071    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 4.715E6 -5E6 5E6 5E6 -5E6
  GA    6  0 11 12 282.8E-6
  GCM   0  6 10 99 8.942E-9
  ISS   3 10 DC 195.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.536E3
  RD2   4 12 3.536E3
  RO1   8  5 150
  RO2   7 99 150
  RP    3  4 2.143E3
  RSS  10 99 1.026E6
  VB    9  0 DC 0
  VC    3 53 DC 2.200
  VE   54  4 DC 2.200
  VLIM  7  8 DC 0
  VLP  91  0 DC 25
  VLN   0 92 DC 25
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=270.1E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL072    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 4.715E6 -5E6 5E6 5E6 -5E6
  GA    6  0 11 12 282.8E-6
  GCM   0  6 10 99 8.942E-9
  ISS   3 10 DC 195.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.536E3
  RD2   4 12 3.536E3
  RO1   8  5 150
  RO2   7 99 150
  RP    3  4 2.143E3
  RSS  10 99 1.026E6
  VB    9  0 DC 0
  VC    3 53 DC 2.200
  VE   54  4 DC 2.200
  VLIM  7  8 DC 0
  VLP  91  0 DC 25
  VLN   0 92 DC 25
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=270.1E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL074    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 4.715E6 -5E6 5E6 5E6 -5E6
  GA    6  0 11 12 282.8E-6
  GCM   0  6 10 99 8.942E-9
  ISS   3 10 DC 195.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.536E3
  RD2   4 12 3.536E3
  RO1   8  5 150
  RO2   7 99 150
  RP    3  4 2.143E3
  RSS  10 99 1.026E6
  VB    9  0 DC 0
  VC    3 53 DC 2.200
  VE   54  4 DC 2.200
  VLIM  7  8 DC 0
  VLP  91  0 DC 25
  VLN   0 92 DC 25
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=270.1E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL081    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 4.715E6 -5E6 5E6 5E6 -5E6
  GA    6  0 11 12 282.8E-6
  GCM   0  6 10 99 8.942E-9
  ISS   3 10 DC 195.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.536E3
  RD2   4 12 3.536E3
  RO1   8  5 150
  RO2   7 99 150
  RP    3  4 2.143E3
  RSS  10 99 1.026E6
  VB    9  0 DC 0
  VC    3 53 DC 2.200
  VE   54  4 DC 2.200
  VLIM  7  8 DC 0
  VLP  91  0 DC 25
  VLN   0 92 DC 25
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=270.1E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL082    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 4.715E6 -5E6 5E6 5E6 -5E6
  GA    6  0 11 12 282.8E-6
  GCM   0  6 10 99 8.942E-9
  ISS   3 10 DC 195.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.536E3
  RD2   4 12 3.536E3
  RO1   8  5 150
  RO2   7 99 150
  RP    3  4 2.143E3
  RSS  10 99 1.026E6
  VB    9  0 DC 0
  VC    3 53 DC 2.200
  VE   54  4 DC 2.200
  VLIM  7  8 DC 0
  VLP  91  0 DC 25
  VLN   0 92 DC 25
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=270.1E-6 VTO=-1)
.ENDS
 �  .SUBCKT TL084    1 2 3 4 5
*
  C1   11 12 3.498E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 4.715E6 -5E6 5E6 5E6 -5E6
  GA    6  0 11 12 282.8E-6
  GCM   0  6 10 99 8.942E-9
  ISS   3 10 DC 195.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.536E3
  RD2   4 12 3.536E3
  RO1   8  5 150
  RO2   7 99 150
  RP    3  4 2.143E3
  RSS  10 99 1.026E6
  VB    9  0 DC 0
  VC    3 53 DC 2.200
  VE   54  4 DC 2.200
  VLIM  7  8 DC 0
  VLP  91  0 DC 25
  VLN   0 92 DC 25
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=270.1E-6 VTO=-1)
.ENDS
   .SUBCKT TLE2021  1 2 3 4 5
*
  C1   11 12 6.244E-12
  C2 6  7 13.4E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 547.3E6 -500E6 500E6 500E6 -500E6
  GA 6  0 11 12 188.5E-6
  GCM   0  6 10 99 335.2E-12
  IEE 3 10 DC 15.67E-6
  HLIM 90  0 VLIM 1K
  Q1   11  2 13 QX
  Q2   12  1 14 QX
  R2    6  9 100.0E3
  RC1 4 11 5.305E3
  RC2 4 12 5.305E3
  RE1  13 10 1.467E3
  RE2  14 10 1.467E3
  REE  10 99 14.76E6
  RO1   8  5 62
  RO2   7 99 63
  RP    3  4 160.9E3
  VB    9  0 DC 0
  VC    3 53 DC 1.400
  VE   54  4 DC 1.600
  VLIM  7  8 DC 0
  VLP  91  0 DC 3.200
  VLN   0 92 DC 3.200
.MODEL DX D(IS=800.0E-18)
.MODEL QX PNP(IS=800.0E-18 BF=270)
.ENDS
   .SUBCKT TLE2022  1 2 3 4 5
*
  C1   11 12 6.814E-12
  C2    6  7 20.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 45.47E6 -50E6 50E6 50E6 -50E6
  GA 6  0 11 12 377.9E-6
  GCM 0  6 10 99 7.84E-10
  IEE   3 10 DC 18.07E-6
  HLIM 90  0 VLIM 1K
  Q1   11  2 13 QX
  Q2   12  1 14 QX
  R2    6  9 100.0E3
  RC1   4 11 2.842E3
  RC2   4 12 2.842E3
  GE1  13 10 (10,13) 31.299E-3
  GE2  14 10 (10,14) 31.299E-3
  REE  10 99 11.07E6
  RO1   8  5 250
  RO2   7 99 250
  RP    3  4 137.2E3
  VB    9  0 DC 0
  VC 3 53 DC 1.300
  VE   54  4 DC 1.500
  VLIM  7  8 DC 0
  VLP  91  0 DC 3
  VLN   0 92 DC 3
.MODEL DX D(IS=800.0E-18)
.MODEL QX PNP(IS=800.0E-18 BF=257.1)
.ENDS
   .SUBCKT TLE2024  1 2 3 4 5
*
  C1   11 12 6.814E-12
  C2    6  7 20.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 22.73E6 -20E6 20E6 20E6 -20E6
  GA 6  0 11 12 372.9E-6
  GCM   0  6 10 99 1.572E-9
  IEE   3 10 DC 18.10E-6
  HLIM 90  0 VLIM 1K
  Q1   11  2 13 QX
  Q2   12  1 14 QX
  R2    6  9 100.0E3
  RC1   4 11 2.842E3
  RC2   4 12 2.842E3
  GE1  13 10 (10,13) 31.347E-3
  GE2  14 10 (10,14) 31.347E-3
  REE  10 99 11.05E6
  RO1   8  5 250
  RO2   7 99 250
  RP    3  4 137.2E3
  VB    9  0 DC 0
  VC 3 53 DC 1.500
  VE   54  4 DC 1.500
  VLIM  7  8 DC 0
  VLP  91  0 DC 3
  VLN   0 92 DC 3
.MODEL DX D(IS=800.0E-18)
.MODEL QX PNP(IS=800.0E-18 BF=180)
.ENDS
   .SUBCKT TLE2027  1 2 3 4 5
*
  C1   11 12 4.003E-12
  C2    6  7 20.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 954.8E6 -1E9 1E9 1E9 -1E9
  GA 6  0 11 12 2.062E-3
  GCM   0  6 10 99 531.3E-12
  IEE  10  4 DC 56.01E-6
  HLIM 90  0 VLIM 1K
  Q1   11  2 13 QX
  Q2   12  1 14 QX
  R2    6  9 100.0E3
  RC1   3 11 530.5
  RC2   3 12 530.5
  GE1  13 10 (10,13) 2.543E-3
  GE2  14 10 (10,14) 2.543E-3
  REE  10 99 3.571E6
  RO1   8  5 25
  RO2   7 99 25
  RP    3  4 8.013E3
  VB    9  0 DC 0
  VC    3 53 DC 2.400
  VE   54  4 DC 2.100
  VLIM  7  8 DC 0
  VLP  91  0 DC 40
  VLN   0 92 DC 40
.MODEL DX D(IS=800.0E-18)
.MODEL QX NPN(IS=800.0E-18 BF=7.000E3)
.ENDS
   .SUBCKT TLE2037  1 2 3 4 5
*
  C1   11 12 14.74E-12
  C2    6  7 7.500E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB 7 99 POLY(5) VB VC VE VLP VLN 0 923.4E6 -800E6 800E6 800E6 -800E6
  GA    6  0 11 12 2.121E-3
  GCM   0  6 10 99 597.7E-12
  IEE  10  4 DC 56.26E-6
  HLIM 90  0 VLIM 1K
  Q1   11  2 13 QX
  Q2   12  1 14 QX
  R2    6  9 100.0E3
  RC1   3 11 471.5
  RC2   3 12 471.5
  GE1  13 10 (10,13) 2.232E-3
  GE2  14 10 (10,14) 2.232E-3
  REE  10 99 3.555E6
  RO1   8  5 25
  RO2   7 99 25
  RP    3  4 8.013E3
  VB    9  0 DC 0
  VC    3 53 DC 2.400
  VE   54  4 DC 2.100
  VLIM  7  8 DC 0
  VLP  91  0 DC 40
  VLN   0 92 DC 40
.MODEL DX D(IS=800.0E-18)
.MODEL QX NPN(IS=800.0E-18 BF=7.031E3)
.ENDS
 �  .SUBCKT TLE2061  1 2 3 4 5
*
  C1   11 12 1.457E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 4.357E6 -4E6 4E6 4E6 -4E6
  GA    6  0 11 12 188.5E-6
  GCM   0  6 10 99 3.352E-9
  ISS   3 10 DC 51.00E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 5.305E3
  RD2   4 12 5.305E3
  RO1   8  5 280
  RO2   7 99 280
  RP    3  4 113.2E3
  RSS  10 99 3.922E6
  VB    9  0 DC 0
  VC    3 53 DC 2
  VE   54  4 DC 2
  VLIM  7  8 DC 0
  VLP  91  0 DC 50
  VLN   0 92 DC 50
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=2.000E-12 BETA=423E-6 VTO=-1)
.ENDS
 �  .SUBCKT TLE2062  1 2 3 4 5
*
  C1   11 12 1.457E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 4.357E6 -4E6 4E6 4E6 -4E6
  GA    6  0 11 12 188.5E-6
  GCM   0  6 10 99 3.352E-9
  ISS   3 10 DC 51.00E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 5.305E3
  RD2   4 12 5.305E3
  RO1   8  5 280
  RO2   7 99 280
  RP    3  4 113.2E3
  RSS  10 99 3.922E6
  VB    9  0 DC 0
  VC    3 53 DC 2
  VE   54  4 DC 2
  VLIM  7  8 DC 0
  VLP  91  0 DC 50
  VLN   0 92 DC 50
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=2.000E-12 BETA=423E-6 VTO=-1)
.ENDS
 �  .SUBCKT TLE2064  1 2 3 4 5
*
  C1   11 12 1.457E-12
  C2    6  7 15.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 4.357E6 -4E6 4E6 4E6 -4E6
  GA    6  0 11 12 188.5E-6
  GCM   0  6 10 99 3.352E-9
  ISS   3 10 DC 51.00E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 5.305E3
  RD2   4 12 5.305E3
  RO1   8  5 280
  RO2   7 99 280
  RP    3  4 113.2E3
  RSS  10 99 3.922E6
  VB    9  0 DC 0
  VC    3 53 DC 2
  VE   54  4 DC 2
  VLIM  7  8 DC 0
  VLP  91  0 DC 50
  VLN   0 92 DC 50
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=2.000E-12 BETA=423E-6 VTO=-1)
.ENDS
 �  .SUBCKT TLE2071  1 2 3 4 5
*
  C1   11 12 1.2E-12
  C2    6  7 10.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 5.607E6 -6E6 6E6 6E6 -6E6
  GA    6  0 11 12 333.0E-6
  GCM 0  6 10 99 7.436E-9
  ISS   3 10 DC 400.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.003E3
  RD2   4 12 3.003E3
  RO1   8  5 80
  RO2   7 99 80
  RP 3 4 23E3
  RSS  10 99 500.0E3
  VB    9  0 DC 0
  VC 3 53 DC 1.7
  VE   54  4 DC 1.7
  VLIM  7  8 DC 0
  VLP  91  0 DC 45
  VLN   0 92 DC 45
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=554.5E-6 VTO=-.564)
.ENDS
 �  .SUBCKT TLE2072  1 2 3 4 5
*
  C1   11 12 2.2E-12
  C2    6  7 10.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 5.607E6 -6E6 6E6 6E6 -6E6
  GA    6  0 11 12 333.0E-6
  GCM 0  6 10 99 7.436E-9
  ISS   3 10 DC 400.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.003E3
  RD2   4 12 3.003E3
  RO1   8  5 80
  RO2   7 99 80
  RP 3  4 27.30E3
  RSS  10 99 500.0E3
  VB    9  0 DC 0
  VC 3 53 DC 2.200
  VE   54  4 DC 2.200
  VLIM  7  8 DC 0
  VLP  91  0 DC 45
  VLN   0 92 DC 45
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=554.5E-6 VTO=-.6)
.ENDS
 �  .SUBCKT TLE2074  1 2 3 4 5
*
  C1   11 12 1.2E-12
  C2    6  7 10.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 5.607E6 -6E6 6E6 6E6 -6E6
  GA    6  0 11 12 333.0E-6
  GCM 0  6 10 99 7.436E-9
  ISS   3 10 DC 400.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.003E3
  RD2   4 12 3.003E3
  RO1   8  5 80
  RO2   7 99 80
  RP 3 4 23E3
  RSS  10 99 500.0E3
  VB    9  0 DC 0
  VC 3 53 DC 1.7
  VE   54  4 DC 1.7
  VLIM  7  8 DC 0
  VLP  91  0 DC 45
  VLN   0 92 DC 45
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=554.5E-6 VTO=-.564)
.ENDS
 �  .SUBCKT TLE2081  1 2 3 4 5
*
  C1   11 12 1.2E-12
  C2    6  7 10.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 5.607E6 -6E6 6E6 6E6 -6E6
  GA    6  0 11 12 333.0E-6
  GCM 0  6 10 99 7.436E-9
  ISS   3 10 DC 400.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.003E3
  RD2   4 12 3.003E3
  RO1   8  5 80
  RO2   7 99 80
  RP 3 4 23E3
  RSS  10 99 500.0E3
  VB    9  0 DC 0
  VC 3 53 DC 1.7
  VE   54  4 DC 1.7
  VLIM  7  8 DC 0
  VLP  91  0 DC 45
  VLN   0 92 DC 45
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=554.5E-6 VTO=-.564)
.ENDS
 �  .SUBCKT TLE2082  1 2 3 4 5
*
  C1   11 12 2.2E-12
  C2    6  7 10.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 5.607E6 -6E6 6E6 6E6 -6E6
  GA    6  0 11 12 333.0E-6
  GCM 0  6 10 99 7.436E-9
  ISS   3 10 DC 400.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.003E3
  RD2   4 12 3.003E3
  RO1   8  5 80
  RO2   7 99 80
  RP 3  4 27.30E3
  RSS  10 99 500.0E3
  VB    9  0 DC 0
  VC 3 53 DC 2.200
  VE   54  4 DC 2.200
  VLIM  7  8 DC 0
  VLP  91  0 DC 45
  VLN   0 92 DC 45
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=554.5E-6 VTO=-.6)
.ENDS
 �  .SUBCKT TLE2084  1 2 3 4 5
*
  C1   11 12 1.2E-12
  C2    6  7 10.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 5.607E6 -6E6 6E6 6E6 -6E6
  GA    6  0 11 12 333.0E-6
  GCM 0  6 10 99 7.436E-9
  ISS   3 10 DC 400.0E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 3.003E3
  RD2   4 12 3.003E3
  RO1   8  5 80
  RO2   7 99 80
  RP 3 4 23E3
  RSS  10 99 500.0E3
  VB    9  0 DC 0
  VC 3 53 DC 1.7
  VE   54  4 DC 1.7
  VLIM  7  8 DC 0
  VLP  91  0 DC 45
  VLN   0 92 DC 45
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=15.00E-12 BETA=554.5E-6 VTO=-.564)
.ENDS
 �  .SUBCKT TLE2141  1 2 3 4 5
*
  C1   11 12 9.373E-12
  C2    6  7 30.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB 7 99 POLY(5) VB VC VE VLP VLN 0 23.34E6 -30E6 30E6 30E6 -30E6
  GA    6  0 11 12 1.301E-3
  GCM   0  6 10 99 5.178E-9
  IEE   3 10 DC 1.351E-3
  HLIM 90  0 VLIM 1K
  Q1   11  2 13 QX
  Q2   12  1 14 QX
  R2    6  9 100.0E3
  RC1   4 11 768.9
  RC2   4 12 768.9
  RE1  13 10 729.8
  RE2  14 10 729.8
  REE  10 99 148.0E3
  RO1   8  5 15
  RO2   7 99 15
  RP    3  4 13.96E3
  VB    9  0 DC 0
  VC    3 53 DC 1.800
  VE   54  4 DC 1.300
  VLIM  7  8 DC 0
  VLP  91  0 DC 31
  VLN   0 92 DC 31
.MODEL DX D(IS=800.0E-18)
.MODEL QX PNP(IS=800.0E-18 BF=964.3)
.ENDS
 �  .SUBCKT TLE2142  1 2 3 4 5
*
  C1   11 12 9.373E-12
  C2    6  7 30.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB 7 99 POLY(5) VB VC VE VLP VLN 0 23.34E6 -30E6 30E6 30E6 -30E6
  GA    6  0 11 12 1.301E-3
  GCM   0  6 10 99 5.178E-9
  IEE   3 10 DC 1.351E-3
  HLIM 90  0 VLIM 1K
  Q1   11  2 13 QX
  Q2   12  1 14 QX
  R2    6  9 100.0E3
  RC1   4 11 768.9
  RC2   4 12 768.9
  RE1  13 10 729.8
  RE2  14 10 729.8
  REE  10 99 148.0E3
  RO1   8  5 15
  RO2   7 99 15
  RP    3  4 13.96E3
  VB    9  0 DC 0
  VC    3 53 DC 1.800
  VE   54  4 DC 1.300
  VLIM  7  8 DC 0
  VLP  91  0 DC 31
  VLN   0 92 DC 31
.MODEL DX D(IS=800.0E-18)
.MODEL QX PNP(IS=800.0E-18 BF=964.3)
.ENDS
 �  .SUBCKT TLE2144  1 2 3 4 5
*
  C1   11 12 9.373E-12
  C2    6  7 30.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB 7 99 POLY(5) VB VC VE VLP VLN 0 23.34E6 -30E6 30E6 30E6 -30E6
  GA    6  0 11 12 1.301E-3
  GCM   0  6 10 99 5.178E-9
  IEE   3 10 DC 1.351E-3
  HLIM 90  0 VLIM 1K
  Q1   11  2 13 QX
  Q2   12  1 14 QX
  R2    6  9 100.0E3
  RC1   4 11 768.9
  RC2   4 12 768.9
  RE1  13 10 729.8
  RE2  14 10 729.8
  REE  10 99 148.0E3
  RO1   8  5 15
  RO2   7 99 15
  RP    3  4 13.96E3
  VB    9  0 DC 0
  VC    3 53 DC 1.800
  VE   54  4 DC 1.300
  VLIM  7  8 DC 0
  VLP  91  0 DC 31
  VLN   0 92 DC 31
.MODEL DX D(IS=800.0E-18)
.MODEL QX PNP(IS=800.0E-18 BF=964.3)
.ENDS
 �  .SUBCKT TLE2161  1 2 3 4 5
*
  C1   11 12 125.4E-14
  C2    6  7 5.000E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 4.085E6 -4E6 4E6 4E6 -4E6
  GA    6  0 11 12 201.1E-6
  GCM   0  6 10 99 3.576E-9
  ISS   3 10 DC 45.00E-6
  HLIM 90  0 VLIM 1K
  J1   11  2 10 JX
  J2   12  1 10 JX
  R2    6  9 100.0E3
  RD1   4 11 4.973E3
  RD2   4 12 4.973E3
  RO1   8  5 280
  RO2   7 99 280
  RP    3  4 113.2E3
  RSS  10 99 4.444E6
  VB    9  0 DC 0
  VC    3 53 DC 2
  VE   54  4 DC 2
  VLIM  7  8 DC 0
  VLP  91  0 DC 50
  VLN   0 92 DC 50
.MODEL DX D(IS=800.0E-18)
.MODEL JX PJF(IS=1.000E-12 BETA=480E-6 VTO=-1)
.ENDS
   .SUBCKT TLE2227  1 2 3 4 5
*
  C1   11 12 4.003E-12
  C2    6  7 20.00E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB    7 99 POLY(5) VB VC VE VLP VLN 0 954.8E6 -1E9 1E9 1E9 -1E9
  GA 6  0 11 12 2.062E-3
  GCM   0  6 10 99 531.3E-12
  IEE  10  4 DC 56.01E-6
  HLIM 90  0 VLIM 1K
  Q1   11  2 13 QX
  Q2   12  1 14 QX
  R2    6  9 100.0E3
  RC1   3 11 530.5
  RC2   3 12 530.5
  GE1  13 10 (10,13) 2.543E-3
  GE2  14 10 (10,14) 2.543E-3
  REE  10 99 3.571E6
  RO1   8  5 25
  RO2   7 99 25
  RP    3  4 8.013E3
  VB    9  0 DC 0
  VC    3 53 DC 2.400
  VE   54  4 DC 2.100
  VLIM  7  8 DC 0
  VLP  91  0 DC 40
  VLN   0 92 DC 40
.MODEL DX D(IS=800.0E-18)
.MODEL QX NPN(IS=800.0E-18 BF=7.000E3)
.ENDS
   .SUBCKT TLE2237  1 2 3 4 5
*
  C1   11 12 14.74E-12
  C2    6  7 7.500E-12
  DC    5 53 DX
  DE   54  5 DX
  DLP  90 91 DX
  DLN  92 90 DX
  DP    4  3 DX
  EGND 99  0 POLY(2) (3,0) (4,0) 0 .5 .5
  FB 7 99 POLY(5) VB VC VE VLP VLN 0 923.4E6 -800E6 800E6 800E6 -800E6
  GA    6  0 11 12 2.121E-3
  GCM   0  6 10 99 597.7E-12
  IEE  10  4 DC 56.26E-6
  HLIM 90  0 VLIM 1K
  Q1   11  2 13 QX
  Q2   12  1 14 QX
  R2    6  9 100.0E3
  RC1   3 11 471.5
  RC2   3 12 471.5
  GE1  13 10 (10,13) 2.232E-3
  GE2  14 10 (10,14) 2.232E-3
  REE  10 99 3.555E6
  RO1   8  5 25
  RO2   7 99 25
  RP    3  4 8.013E3
  VB    9  0 DC 0
  VC    3 53 DC 2.400
  VE   54  4 DC 2.100
  VLIM  7  8 DC 0
  VLP  91  0 DC 40
  VLN   0 92 DC 40
.MODEL DX D(IS=800.0E-18)
.MODEL QX NPN(IS=800.0E-18 BF=7.031E3)
.ENDS
 