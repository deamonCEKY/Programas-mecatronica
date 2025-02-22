SPICE LIBRARY  ,  2          1                   `  � �P%�  STGB7NB40LZ         
  � �PԸ  STGB7NB60K          �  � �P��  STGB7NC60HD         �  � �P�  STGB10NB37LZ          � �P��  STGB10NB60S         �  � �PY�  STGB20NB32LZ        j  � �P�  STGD7NB60H          L   � �P|�  STGD7NB60K          �#  � �P��  STGD7NB60S          ~'  � �P�  STGF7NC60HD         �*  � �P�  STGF10NB60SD        w.  � �P��  STGP7NB60KF         �1  � �Ps�  STGP7NC60HD         �5  � �P$�  STGP10NB60S         +9  � �Pu�  STGP10NB60SFP       �<  � �P��  STGP20NC60V         '@  � �P�  STGW20NC60V         �C  � �P�  STGW20NC60VD        G  � �P��  STGW40NC60V         �J  � �Pާ  STGY40NC60VD        N  � �Pl�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �  .SUBCKT  1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 3.3
RC 14 13 0.201E-02
RE 15 12 0.204E-02
RF 7 10 1MEG
RX 4 14 782.313
CGE 12 5 0.621E-09
CCG 17 4 0.654E-09
CK 16 4  0.231E-10
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 6.071
+ KP    = 2.049
+ THETA = 0.182
 
.MODEL Q PNP
+ IS    = 0.282E-17
+ VAF   = 161.251
+ BF    = 0.492E-01
+ NE    = 1.943
+ ISE   = 0.452E-14
+ IKF   = 1.268
+ BR    = 0.398E-01
+ NC    = 2.933
+ NK    = 0.679
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DE D
+ IS    = 0.01E-12
+ BV    = 14.3
+ N     = 2
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 640
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGP7NB60K
 �  .SUBCKT STGB7NB40LZ 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 32
RC 14 13 0.609E-02
RE 15 12 0.328E-01
RGE 12 10 18.5K
RF 7 10 1MEG
RX 4 14 789.559
CGE 12 5 0.708E-09
CCG 17 4 0.191E-08
CK 16 4  0.175E-10
DGE 12 5 DE
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 1.778
+ KP    = 35.459
+ THETA = 0.993E-01
 
.MODEL Q PNP
+ IS    = 0.329E-13
+ VAF   = 743.187
+ BF    = 2.887
+ NE    = 1.819
+ ISE   = 0.559E-12
+ IKF   = 17.716
+ BR    = 0.965E-01
+ NC    = 1.114
+ NK    = 0.677
+ TF    = 1E-06
+ ITF   = 0.1
+ VTF   = 1
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DE D
+ IS    = 0.01E-12
+ BV    = 14.3
+ N     = 2
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 400
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGB7NB40LZ
 �  .SUBCKT STGB7NB60K 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 3.3
RC 14 13 0.201E-02
RE 15 12 0.204E-02
RF 7 10 1MEG
RX 4 14 782.313
CGE 12 5 0.621E-09
CCG 17 4 0.654E-09
CK 16 4  0.231E-10
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 6.071
+ KP    = 2.049
+ THETA = 0.182
 
.MODEL Q PNP
+ IS    = 0.282E-17
+ VAF   = 161.251
+ BF    = 0.492E-01
+ NE    = 1.943
+ ISE   = 0.452E-14
+ IKF   = 1.268
+ BR    = 0.398E-01
+ NC    = 2.933
+ NK    = 0.679
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DE D
+ IS    = 0.01E-12
+ BV    = 14.3
+ N     = 2
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 640
+ VJ    = 0.75
+ M     = 0.35
.ENDS STGB7NB60K
   .SUBCKT STGB7NC60HD 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 2.301
RC 14 13 0.151E-03
RE 15 12 0.349E-02
RF 7 10 1MEG
RX 4 14 800.239
CGE 12 5 0.744E-09
CCG 17 4 0.934E-09
CK 16 4  0.188E-10
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 6.955
+ KP    = 6.798
+ THETA = 0.264
 
.MODEL Q PNP
+ IS    = 0.105E-15
+ VAF   = 166.764
+ BF    = 0.258
+ NE    = 1.766
+ ISE   = 0.754E-15
+ IKF   = 0.154E-01
+ BR    = 0.447E-02
+ NC    = 1.204
+ NK    = 0.864
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 665
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGB7NC60HD
 �  .SUBCKT STGB10NB37LZ 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 8
RC 14 13 0.922E-02
RE 15 12 0.194E-01
RGE 12 10 15K
RF 7 10 1MEG
RX 4 14 855.864
CGE 12 5 0.781E-09
CCG 17 4 0.363E-08
CK 16 4  0.219E-10
DGE 12 5 DE
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 1.774
+ KP    = 30.598
+ THETA = 0.998E-01
 
.MODEL Q PNP
+ IS    = 0.163E-13
+ VAF   = 980.930
+ BF    = 2.853
+ NE    = 1.811
+ ISE   = 0.124E-11
+ IKF   = 28.763
+ BR    = 0.964E-01
+ NC    = 2.824
+ NK    = 0.658
+ TF    = 1E-06
+ ITF   = 0.1
+ VTF   = 1
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DE D
+ IS    = 0.01E-12
+ BV    = 14.3
+ N     = 2
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 400
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGB10NB37LZ
 |  .SUBCKT STGB10NB60S 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 31
RC 14 13 0.158E-02
RE 15 12 0.399E-02
RF 7 10 1MEG
RX 4 14 925.724
CGE 12 5 0.649E-09
CCG 17 4 0.105E-08
CK 16 4  0.321E-11
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 3.418
+ KP    = 2.512
+ THETA = 0.986E-01
 
.MODEL Q PNP
+ IS    = 0.245E-13
+ VAF   = 894.872
+ BF    = 0.864
+ NE    = 1.974
+ ISE   = 0.141E-15
+ IKF   = 8.034
+ BR    = 0.389E-02
+ NC    = 2.714
+ NK    = 0.887
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 740
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGB10NB60S
 �  .SUBCKT STGB20NB32LZ 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 8
RC 14 13 0.543E-02
RE 15 12 0.771E-02
RGE 12 10 15K
RF 7 10 1MEG
RX 4 14 788.722
CGE 12 5 0.192E-08
CCG 17 4 0.548E-08
CK 16 4  0.415E-10
DGE 12 5 DE
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 1.587
+ KP    = 30.429
+ THETA = 0.997E-01
 
.MODEL Q PNP
+ IS    = 0.893E-13
+ VAF   = 524.532
+ BF    = 1.982
+ NE    = 1.598
+ ISE   = 0.816E-12
+ IKF   = 4.722
+ BR    = 0.306E-01
+ NC    = 2.704
+ NK    = 0.329
+ TF    = 0.933E-06
+ ITF   = 1.201
+ VTF   = 20.164
+ XTF   = 1.523
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DE D
+ IS    = 0.01E-12
+ BV    = 14.3
+ N     = 2
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 380
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGB20NB32LZ
 }  .SUBCKT STGD7NB60H 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 2
RC 14 13 0.399E-02
RE 15 12 0.399E-02
RF 7 10 1MEG
RX 4 14 778.894
CGE 12 5 0.129E-08
CCG 17 4 0.512E-09
CK 16 4  0.244E-10
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 3.828
+ KP    = 5.401
+ THETA = 0.199
 
.MODEL Q PNP
+ IS    = 0.101E-15
+ VAF   = 780.032
+ BF    = 0.499E-01
+ NE    = 1.211
+ ISE   = 0.151E-13
+ IKF   = 0.104E-01
+ BR    = 0.376E-01
+ NC    = 1.598
+ NK    = 0.698
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 640
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGD7NB60H
 �  .SUBCKT STGD7NB60K 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 3.3
RC 14 13 0.201E-02
RE 15 12 0.204E-02
RF 7 10 1MEG
RX 4 14 782.313
CGE 12 5 0.621E-09
CCG 17 4 0.654E-09
CK 16 4  0.231E-10
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 6.071
+ KP    = 2.049
+ THETA = 0.182
 
.MODEL Q PNP
+ IS    = 0.282E-17
+ VAF   = 161.251
+ BF    = 0.492E-01
+ NE    = 1.943
+ ISE   = 0.452E-14
+ IKF   = 1.268
+ BR    = 0.398E-01
+ NC    = 2.933
+ NK    = 0.679
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DE D
+ IS    = 0.01E-12
+ BV    = 14.3
+ N     = 2
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 640
+ VJ    = 0.75
+ M     = 0.35
.ENDS STGD7NB60K
 z  .SUBCKT STGD7NB60S 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 31
RC 14 13 0.158E-02
RE 15 12 0.399E-02
RF 7 10 1MEG
RX 4 14 925.724
CGE 12 5 0.649E-09
CCG 17 4 0.105E-08
CK 16 4  0.321E-11
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 3.418
+ KP    = 2.512
+ THETA = 0.986E-01
 
.MODEL Q PNP
+ IS    = 0.245E-13
+ VAF   = 894.872
+ BF    = 0.864
+ NE    = 1.974
+ ISE   = 0.141E-15
+ IKF   = 8.034
+ BR    = 0.389E-02
+ NC    = 2.714
+ NK    = 0.887
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 740
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGD7NB60S
   .SUBCKT STGF7NC60HD 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 2.301
RC 14 13 0.151E-03
RE 15 12 0.349E-02
RF 7 10 1MEG
RX 4 14 800.239
CGE 12 5 0.744E-09
CCG 17 4 0.934E-09
CK 16 4  0.188E-10
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 6.955
+ KP    = 6.798
+ THETA = 0.264
 
.MODEL Q PNP
+ IS    = 0.105E-15
+ VAF   = 166.764
+ BF    = 0.258
+ NE    = 1.766
+ ISE   = 0.754E-15
+ IKF   = 0.154E-01
+ BR    = 0.447E-02
+ NC    = 1.204
+ NK    = 0.864
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 665
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGF7NC60HD
 |  .SUBCKT STGF10NB60SD 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 31
RC 14 13 0.158E-02
RE 15 12 0.399E-02
RF 7 10 1MEG
RX 4 14 925.724
CGE 12 5 0.649E-09
CCG 17 4 0.105E-08
CK 16 4  0.321E-11
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 3.418
+ KP    = 2.512
+ THETA = 0.986E-01
 
.MODEL Q PNP
+ IS    = 0.245E-13
+ VAF   = 894.872
+ BF    = 0.864
+ NE    = 1.974
+ ISE   = 0.141E-15
+ IKF   = 8.034
+ BR    = 0.389E-02
+ NC    = 2.714
+ NK    = 0.887
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 740
+ VJ    = 0.75
+ M     = 0.35
.ENDS STGF10NB60SD
 �  .SUBCKT STGP7NB60KF 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 3.3
RC 14 13 0.201E-02
RE 15 12 0.204E-02
RF 7 10 1MEG
RX 4 14 782.313
CGE 12 5 0.621E-09
CCG 17 4 0.654E-09
CK 16 4  0.231E-10
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 6.071
+ KP    = 2.049
+ THETA = 0.182
 
.MODEL Q PNP
+ IS    = 0.282E-17
+ VAF   = 161.251
+ BF    = 0.492E-01
+ NE    = 1.943
+ ISE   = 0.452E-14
+ IKF   = 1.268
+ BR    = 0.398E-01
+ NC    = 2.933
+ NK    = 0.679
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DE D
+ IS    = 0.01E-12
+ BV    = 14.3
+ N     = 2
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 640
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGP7NB60KF
   .SUBCKT STGP7NC60HD 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 2.301
RC 14 13 0.151E-03
RE 15 12 0.349E-02
RF 7 10 1MEG
RX 4 14 800.239
CGE 12 5 0.744E-09
CCG 17 4 0.934E-09
CK 16 4  0.188E-10
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 6.955
+ KP    = 6.798
+ THETA = 0.264
 
.MODEL Q PNP
+ IS    = 0.105E-15
+ VAF   = 166.764
+ BF    = 0.258
+ NE    = 1.766
+ ISE   = 0.754E-15
+ IKF   = 0.154E-01
+ BR    = 0.447E-02
+ NC    = 1.204
+ NK    = 0.864
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 665
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGP7NC60HD
 |  .SUBCKT STGP10NB60S 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 31
RC 14 13 0.158E-02
RE 15 12 0.399E-02
RF 7 10 1MEG
RX 4 14 925.724
CGE 12 5 0.649E-09
CCG 17 4 0.105E-08
CK 16 4  0.321E-11
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 3.418
+ KP    = 2.512
+ THETA = 0.986E-01
 
.MODEL Q PNP
+ IS    = 0.245E-13
+ VAF   = 894.872
+ BF    = 0.864
+ NE    = 1.974
+ ISE   = 0.141E-15
+ IKF   = 8.034
+ BR    = 0.389E-02
+ NC    = 2.714
+ NK    = 0.887
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 740
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGP10NB60S
 �  .SUBCKT STGP10NB60SFP 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 31
RC 14 13 0.158E-02
RE 15 12 0.399E-02
RF 7 10 1MEG
RX 4 14 925.724
CGE 12 5 0.649E-09
CCG 17 4 0.105E-08
CK 16 4  0.321E-11
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 3.418
+ KP    = 2.512
+ THETA = 0.986E-01
 
.MODEL Q PNP
+ IS    = 0.245E-13
+ VAF   = 894.872
+ BF    = 0.864
+ NE    = 1.974
+ ISE   = 0.141E-15
+ IKF   = 8.034
+ BR    = 0.389E-02
+ NC    = 2.714
+ NK    = 0.887
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 740
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGP10NB60SFP
 z  .SUBCKT STGP20NC60V 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 1.9
RC 14 13 0.679E-03
RE 15 12 0.176E-02
RF 7 10 1MEG
RX 4 14 799.975
CGE 12 5 0.212E-08
CCG 17 4 0.435E-08
CK 16 4  0.187E-10
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 5.734
+ KP    = 16.995
+ THETA = 0.181
 
.MODEL Q PNP
+ IS    = 0.101E-15
+ VAF   = 100.760
+ BF    = 0.258
+ NE    = 1.379
+ ISE   = 0.497E-15
+ IKF   = 0.451
+ BR    = 0.944E-02
+ NC    = 1.639
+ NK    = 0.315
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 665
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGP20NC60V
 z  .SUBCKT STGW20NC60V 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 1.9
RC 14 13 0.679E-03
RE 15 12 0.176E-02
RF 7 10 1MEG
RX 4 14 799.975
CGE 12 5 0.212E-08
CCG 17 4 0.435E-08
CK 16 4  0.187E-10
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 5.734
+ KP    = 16.995
+ THETA = 0.181
 
.MODEL Q PNP
+ IS    = 0.101E-15
+ VAF   = 100.760
+ BF    = 0.258
+ NE    = 1.379
+ ISE   = 0.497E-15
+ IKF   = 0.451
+ BR    = 0.944E-02
+ NC    = 1.639
+ NK    = 0.315
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 665
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGW20NC60V
 |  .SUBCKT STGW20NC60VD 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 1.9
RC 14 13 0.679E-03
RE 15 12 0.176E-02
RF 7 10 1MEG
RX 4 14 799.975
CGE 12 5 0.212E-08
CCG 17 4 0.435E-08
CK 16 4  0.187E-10
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 5.734
+ KP    = 16.995
+ THETA = 0.181
 
.MODEL Q PNP
+ IS    = 0.101E-15
+ VAF   = 100.760
+ BF    = 0.258
+ NE    = 1.379
+ ISE   = 0.497E-15
+ IKF   = 0.451
+ BR    = 0.944E-02
+ NC    = 1.639
+ NK    = 0.315
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 665
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGW20NC60VD
 ~  .SUBCKT STGW40NC60V 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 1.7
RC 14 13 0.399E-02
RE 15 12 0.695E-03
RF 7 10 1MEG
RX 4 14 777.962
CGE 12 5 0.398E-08
CCG 17 4 0.654E-08
CK 16 4  0.139E-09
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 5.274
+ KP    = 34.453
+ THETA = 0.187
 
.MODEL Q PNP
+ IS    = 0.102E-15
+ VAF   = 102.035
+ BF    = 0.241
+ NE    = 1.613
+ ISE   = 0.201E-14
+ IKF   = 0.102E-01
+ BR    = 0.179E-02
+ NC    = 2.881
+ NK    = 0.648
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 675
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGW40NC60V
 �  .SUBCKT STGY40NC60VD 1 2 3
LG 10 2 7.5E-09
LE 3 15 7.5E-09
LC 13 1 4.5E-09
RG 10 5 1.7
RC 14 13 0.399E-02
RE 15 12 0.695E-03
RF 7 10 1MEG
RX 4 14 777.962
CGE 12 5 0.398E-08
CCG 17 4 0.654E-08
CK 16 4  0.139E-09
DCG 12 11 DG
Q1 12 11 14 Q
M1 11 5 12 12 MOS
E1 16 5 8 7 1
E2 17 5 6 7 1
G1 7 9 11 10 1U
D1  8 9 DI
D2  9 6 DI
D3 16 4 DO
R1 7 8 1MEG
R2 7 6 1MEG
 
.MODEL MOS NMOS
+ LEVEL = 3
+ VTO   = 5.274
+ KP    = 34.453
+ THETA = 0.187
 
.MODEL Q PNP
+ IS    = 0.102E-15
+ VAF   = 102.035
+ BF    = 0.241
+ NE    = 1.613
+ ISE   = 0.201E-14
+ IKF   = 0.102E-01
+ BR    = 0.179E-02
+ NC    = 2.881
+ NK    = 0.648
+ TF    = 1E-06
+ ITF   = 1
+ VTF   = 10
+ XTF   = 0.1
 
.MODEL DI D
+ IS    = 0.01E-12
+ RS    = 0
 
.MODEL DO D
+ IS    = 0.01E-12
+ CJO   = 50E-12
+ VJ    = 0.75
+ M     = 0.35
 
.MODEL DG D
+ IS    = 0.01E-12
+ BV    = 675
+ VJ    = 0.75
+ M     = 0.35
 
.ENDS STGY40NC60VD
 