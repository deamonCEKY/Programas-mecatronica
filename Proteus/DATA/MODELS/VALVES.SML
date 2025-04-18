SPICE LIBRARY  ,  2          5AR4                `  ��P+K  5U4GB               �  ��P�H  5V3A                	  ��PcO  5V4GA               �
  ��PD  6BQ5                �  ��P+q  6CA7                �  ��Php  6DJ8                �  ��P�u  6L6GC                 ��P�L  6V6GTA              �  ��Pj\  12AT7               /  ��P�w  12AU7               `  ��P�z  12AX7               �  ��Ps  12AX7A              �  ��P�*  12BH7               �  ��Pq  EF86                �  ��P�l  KT88                �   ��Pa[                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  T  .SUBCKT 5AR4 1 2 3 4 
X1 1 2 5AR4A
X2 3 4 5AR4A
* THIS MODEL IS VALID FOR THE FOLLOWING TUBES:
* 5AR4/GZ34;
* AT THE FOLLOWING CONDITIONS:
*  PLATE CURRENT  : 0..1.2A
*
*
* CONNECTIONS: PLATE
*              | CATHODE
*              | |
.SUBCKT 5AR4A  P K
GP  P  K  VALUE={3.96E-3*(PWR(V(P,K),1.5)+PWRS(V(P,K),1.5))/2}
.ENDS 5AR4
.ENDS
 `  .SUBCKT 5U4GB 1 2 3 4 
X1 1 2 5U4GBA 
X2 3 4 5U4GBA 
* 5U4GB MAXIMUM RATINGS:
*
*   PIV     1550V
*   MAX IN  550V RMS
*   IA PK   1000MA REPETITIVE  (4600MA TRANSIENT)
*
*
*             .----- ANODE
*             | .--- CATHODE
*             | |
.SUBCKT 5U4GBA A K
GP  A  K  VALUE={7.55E-4*(PWR(V(A,K),1.5)+PWRS(V(A,K),1.5))/2}
.ENDS 5U4GB
.ENDS
 z  .SUBCKT 5V3A 1 2 3 4 
X1 1 2 5V3AS
X2 3 4 5V3AS
* 5V3A MAXIMUM RATINGS:
*
*   PIV     1550V
*   MAX IN  550V RMS
*   IOUT    550MA DC OUTPUT CURRENT
*   IA PK   1400MA REPETITIVE  (6600MA TRANSIENT)
*
*
*            .----- ANODE
*            | .--- CATHODE
*            | |
.SUBCKT 5V3AS A K
GP  A  K  VALUE={1.287E-3*(PWR(V(A,K),1.5)+PWRS(V(A,K),1.5))/2}
.ENDS 5V3A
.ENDS
 J  .SUBCKT 5V4GA 1 2 3 4 
X1 1 2 5V4GAS
X2 3 4 5V4GAS
* 5V4GA MAXIMUM RATINGS:
*
*   PIV     1400V
*   IA PK   525MA REPETITIVE  (3500MA TRANSIENT)
*
*
*              .----- ANODE
*              | .--- CATHODE
*              | |
.SUBCKT 5V4GAS A K
GP  A  K  VALUE={1.4E-3*(PWR(V(A,K),1.5)+PWRS(V(A,K),1.5))/2}
.ENDS 5V4GA
.ENDS
   .SUBCKT 6BQ5 A S G K
*
* CALCULATE CONTRIBUTION TO CATHODE CURRENT
*
BAT	AT  0	V=0.636*ATAN(V(A,K)/15)
BGS	GS  0	V=URAMP(V(S,K)/19+V(G,K)+V(A,K)/1400)
BGS2	GS2 0	V=V(GS)^1.5
BCATH	CC  0	V=V(GS2)*V(AT)
*
* CALCULATE ANODE CURRENT
*
BA	A   K	I=3.2E-3*V(CC)
*
* CALCULATE SCREEN CURRENT
*
BSCRN	SC  0	V=V(GS2)*(1.1-V(AT))
BS	S   K	I=2.0E-3*V(SC)
*
* GRID CURRENT (APPROXIMATION - DOES NOT MODEL LOW VA/VS)
*
BG	G   K	I=(URAMP(V(G,K)+1)^1.5)*50E-6
*
* CAPACITANCES
*
CG1	G	K	10.8P
CAK	A	K	6.5P
CG1A	G	A	0.5P
.ENDS 
   .SUBCKT 6CA7 A S G K
*
* CALCULATE CONTRIBUTION TO CATHODE CURRENT
*
BAT	AT  0	V=0.636*ATAN(V(A,K)/23)
BGS	GS  0	V=URAMP(V(S,K)/9.3+V(G,K)*0.95)
BGS2	GS2 0	V=V(GS)^1.5
BCATH	CC  0	V=V(GS2)*V(AT)
*
* CALCULATE ANODE CURRENT
*
BA	A   K	I=1.86E-3*V(CC)
*
* CALCULATE SCREEN CURRENT
*
BSCRN	SC  0	V=V(GS2)*(1.1-V(AT))
BS	S   K	I=1.518E-3*V(SC)
*
* GRID CURRENT (APPROXIMATION - DOES NOT MODEL LOW VA/VS)
*
BG	G   K	I=(URAMP(V(G,K)+1)^1.5)*50E-6
*
* CAPACITANCES
*
CG1	G	K	15.4P
CAK	A	K	8.4P
CG1A	G	A	1.1P
.ENDS 
 '  .SUBCKT 6DJ8 1 2 3 4 5 6
X1 1 2 3 6DJ8S
X2 4 5 6 6DJ8S
* THIS MODEL IS VALID FOR THE FOLLOWING TUBES:
* 6DJ8/ECC88, 6922/E88CC, 7308;
* AT THE FOLLOWING CONDITIONS:
*  PLATE VOLTAGE  : 0..300V
*  GRID VOLTAGE   : 0..-8V
*  CATHODE CURRENT: 0..100MA
*
*
* CONNECTIONS:  PLATE
*               | GRID
*               | | CATHODE
*               | | |
.SUBCKT 6DJ8S   P G K
E1  2  0  VALUE={V(P,K)+30.95*V(G,K)}
R1  2  0  1.0K
GP  P  K  VALUE={34.56E-6*(PWR(V(2),1.5)+PWRS(V(2),1.5))/2}
CGK G  K  3.1P
CGP G  P  1.4P
CPK P  K  0.18P
.ENDS 6DJ8
.ENDS
 ~  .SUBCKT  6L6GC P S G K
BSP 2  0  V=V(P,K)+15.15*V(S,K)+134.6*V(G,K)
B1  3  2  V=7.731E-7*(PWR(V(2),1.5)+PWRS(V(2),1.5))/2
B2  3  4  V=7.731E-7*15.15*V(S,K)^1.5*V(P,K)/60
B3  5  4  V=(1-V(4,2)/ABS(V(4,2)+0.001))/2
R1  5  0  1.0K
BK  S  K  I=V(3,2)
BP  P  S  I=LIMIT(0.94*(V(3,4)*(1-V(5,4))+V(3,2)*V(5,4)),0,1)
CGK G  K  5P
CGS G  S  5P
CGP G  P  0.6P
CPK P  K  6.5P
.ENDS 6L6GC
 �  .SUBCKT 6V6GTA P S G K
ESP 2  0  VALUE={V(P,K)+13.49*V(S,K)+130.4*V(G,K)}
E1  3  2  VALUE={5.521E-7*(PWR(V(2),1.5)+PWRS(V(2),1.5))/2}
E2  3  4  VALUE={5.521E-7*PWR(13.49*V(S,K),1.5)*V(P,K)/25}
E3  5  4  VALUE={(1-V(4,2)/ABS(V(4,2)+0.001))/2}
R1  5  0  1.0K
GK  S  K  VALUE={V(3,2)} 
GP  P  S  VALUE={LIMIT(0.92*(V(3,4)*(1-V(5,4))+V(3,2)*V(5,4)),0,1)}
CGK G  K  4.5P
CGS G  S  4.5P
CGP G  P  0.7P
CPK P  K  7.5P
.ENDS 6V6GTA
 1  .SUBCKT 12AT7 1 2 3 4 5 6
X1 1 2 3 12AT7A 
X2 4 5 6 12AT7A 
* THIS MODEL IS VALID FOR THE FOLLOWING TUBES:
* 12AT7/ECC81, 6AB4/EC92, 6201, 6679;
* AT THE FOLLOWING CONDITIONS:
*  PLATE VOLTAGE  : 0..500V
*  GRID VOLTAGE   : 0..-8V
*  CATHODE CURRENT: 0..30MA
*
*
* CONNECTIONS:  PLATE
*               | GRID
*               | | CATHODE
*               | | |
.SUBCKT 12AT7A  P G K
E1  2  0  VALUE={V(P,K)+63.19*V(G,K)}
R1  2  0  1.0K
GP  P  K  VALUE={6.717E-6*(PWR(V(2),1.5)+PWRS(V(2),1.5))/2}
CGK G  K  2.2P
CGP G  P  1.5P
CPK P  K  0.5P
.ENDS 12AT7
.ENDS
 =  .SUBCKT 12AU7 1 2 3 4 5 6
X1 1 2 3 12AU7A
X2 4 5 6 12AU7A 
* THIS MODEL IS VALID FOR THE FOLLOWING TUBES:
* 12AU7A/ECC82, 6680, 6C4/EC90, 12DW7/7247 (UNIT #2);
* AT THE FOLLOWING CONDITIONS:
*  PLATE VOLTAGE  : 0..400V
*  GRID VOLTAGE   : 0..-18V
*  CATHODE CURRENT: 0..30MA
*
*
* CONNECTIONS: PLATE
*              | GRID
*              | | CATHODE
*              | | |
.SUBCKT 12AU7A P G K
E1  2  0  VALUE={V(P,K)+18.28*V(G,K)}
R1  2  0  1.0K
GP  P  K  VALUE={10.88E-6*(PWR(V(2),1.5)+PWRS(V(2),1.5))/2}
CGK G  K  1.6P
CGP G  P  1.5P
CPK P  K  0.5P
.ENDS 12AU7A
.ENDS
 /  .SUBCKT 12AX7 1 2 3 4 5 6
X1  1 2 3 12AX7A
X2  4 5 6 12AX7A
* PINS   A  ANODE
*        G  GRID
*        K  CATHODE
*
*-----------------------------------------------------------------------
.SUBCKT 12AX7A A G K
*
* CALCULATE CONTRIBUTION TO ANODE CURRENT
*
BCA	CA  0	V=45+V(A,K)+95.43*V(G,K)
*
* REDUCTION AT LOW VA
*
BRE	RE  0	V=URAMP(V(A,K)/5)-URAMP(V(A,K)/5-1)
BAA	A   K	I=V(RE)*1.147E-6*(URAMP(V(CA))^1.5)
*
* GRID CURRENT
*
BGG	G   K	I=5E-6*(URAMP(V(G,K)+0.2)^1.5)
*
* CAPACITANCES
*
CGK G  K  1.6P
CGP G  A  1.7P
CPK A  K  0.46P
.ENDS 12AX7A
.ENDS
 �   .SUBCKT 12AX7A P G K
E1  2  0  VALUE={45+V(P,K)+95.43*V(G,K)}
R1  2  0  1.0K
GP  P  K  VALUE={1.147E-6*(PWR(V(2),1.5)+PWRS(V(2),1.5))/2}
CGK G  K  1.6P
CGP G  P  1.7P
CPK P  K  0.46P
.ENDS 12AX7A
   .SUBCKT 12BH7 1 2 3 4 5 6
X1 1 2 3 12BH7A
X2 4 5 6 12BH7A
* THIS MODEL IS VALID FOR THE FOLLOWING TUBES:
* 12BH7A;
* AT THE FOLLOWING CONDITIONS:
*  PLATE VOLTAGE  : 0..600V
*  GRID VOLTAGE   : 0..-35V
*  CATHODE CURRENT: 0..50MA
*
*
* CONNECTIONS: PLATE
*              | GRID
*              | | CATHODE
*              | | |
.SUBCKT 12BH7A P G K
E1  2  0  VALUE={V(P,K)+16.64*V(G,K)}
R1  2  0  1.0K
GP  P  K  VALUE={22.34E-6*(PWR(V(2),1.5)+PWRS(V(2),1.5))/2}
CGK G  K  3.2P
CGP G  P  2.6P
CPK P  K  0.5P
.ENDS 12BH7A
.ENDS
 �  .SUBCKT EF86 A S G K
*
* CALCULATE REDUCTION IN MU WHEN VG < -3V
*
BMU	MU 0	V=V(G,K)+URAMP(V(K,G)-3)*0.4
*
* CALCULATE CONTRIBUTION TO CATHODE CURRENT
*
BAT	AT  0	V=0.636*ATAN(V(A,K)/15)
BGS	GS  0	V=URAMP(V(S,K)/27.5+V(MU)*1.32+1)
BGS2	GS2 0	V=URAMP(V(GS))^1.5
BCATH  	CC  0 	V=V(GS2)*V(AT)
*
* CALCULATE ANODE CURRENT
*
BA     	A   K  	I=5.83E-4*V(CC)
*
* CALCULATE SCREEN CURRENT
*
BS	S   K	I=0.5E-3*V(GS2)*(1.1-V(AT))
*
* CAPACITANCES
*
CG1	G   K	3.8P
CAK	A   K	5.3P
CG1A	G   A	0.05P
.ENDS 
 �  .SUBCKT   KT88 P S G K
ESP 2  0  VALUE={V(P,K)+24.49*V(S,K)+189.9*V(G,K)}
E1  3  2  VALUE={8.301E-7*(PWR(V(2),1.5)+PWRS(V(2),1.5))/2}
E2  3  4  VALUE={8.301 E-7*PWR(24.49*V(S,K),1.5)*V(P,K)/40}
E3  5  4  VALUE={(1-V(4,2)/ABS(V(4,2)+0.001))/2}
R1  5  0  1.0K
GK  S  K  VALUE={V(3,2)}
GP  P  S  VALUE={LIMIT(0.95*(V(3,4)*(1-V(5,4))+V(3,2)*V(5,4)),0,1)}
CGK G  K  8.0P
CGS G  S  8.0P
CGP G  P  1.2P
CPK P  K  12P
.ENDS KT88
 