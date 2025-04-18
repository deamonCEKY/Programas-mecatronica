        LIST

;==========================================================================
; Build date : Sep 19 2017
;  MPASM PIC16LF1459 processor include
; 
;  (c) Copyright 1999-2017 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16LF1459 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC16LF1459
;       2. LIST directive in the source file
;               LIST   P=PIC16LF1459
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __16LF1459
           MESSG "Processor-header file mismatch.  Verify selected processor."
        ENDIF



;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                EQU  H'0000'
F                EQU  H'0001'

;----- Register Files -----------------------------------------------------

;-----Bank0------------------
INDF0            EQU  H'0000'
INDF1            EQU  H'0001'
PCL              EQU  H'0002'
STATUS           EQU  H'0003'
FSR0             EQU  H'0004'
FSR0L            EQU  H'0004'
FSR0H            EQU  H'0005'
FSR1             EQU  H'0006'
FSR1L            EQU  H'0006'
FSR1H            EQU  H'0007'
BSR              EQU  H'0008'
WREG             EQU  H'0009'
PCLATH           EQU  H'000A'
INTCON           EQU  H'000B'
PORTA            EQU  H'000C'
PORTB            EQU  H'000D'
PORTC            EQU  H'000E'
PIR1             EQU  H'0011'
PIR2             EQU  H'0012'
TMR0             EQU  H'0015'
TMR1             EQU  H'0016'
TMR1L            EQU  H'0016'
TMR1H            EQU  H'0017'
T1CON            EQU  H'0018'
T1GCON           EQU  H'0019'
TMR2             EQU  H'001A'
PR2              EQU  H'001B'
T2CON            EQU  H'001C'

;-----Bank1------------------
TRISA            EQU  H'008C'
TRISB            EQU  H'008D'
TRISC            EQU  H'008E'
PIE1             EQU  H'0091'
PIE2             EQU  H'0092'
OPTION_REG       EQU  H'0095'
PCON             EQU  H'0096'
WDTCON           EQU  H'0097'
OSCTUNE          EQU  H'0098'
OSCCON           EQU  H'0099'
OSCSTAT          EQU  H'009A'
ADRES            EQU  H'009B'
ADRESL           EQU  H'009B'
ADRESH           EQU  H'009C'
ADCON0           EQU  H'009D'
ADCON1           EQU  H'009E'
ADCON2           EQU  H'009F'

;-----Bank2------------------
LATA             EQU  H'010C'
LATB             EQU  H'010D'
LATC             EQU  H'010E'
CM1CON0          EQU  H'0111'
CM1CON1          EQU  H'0112'
CM2CON0          EQU  H'0113'
CM2CON1          EQU  H'0114'
CMOUT            EQU  H'0115'
BORCON           EQU  H'0116'
FVRCON           EQU  H'0117'
DACCON0          EQU  H'0118'
DACCON1          EQU  H'0119'
APFCON           EQU  H'011D'

;-----Bank3------------------
ANSELA           EQU  H'018C'
ANSELB           EQU  H'018D'
ANSELC           EQU  H'018E'
PMADR            EQU  H'0191'
PMADRL           EQU  H'0191'
PMADRH           EQU  H'0192'
PMDAT            EQU  H'0193'
PMDATL           EQU  H'0193'
PMDATH           EQU  H'0194'
PMCON1           EQU  H'0195'
PMCON2           EQU  H'0196'
RCREG            EQU  H'0199'
TXREG            EQU  H'019A'
SPBRG            EQU  H'019B'
SPBRGL           EQU  H'019B'
SPBRGH           EQU  H'019C'
RCSTA            EQU  H'019D'
TXSTA            EQU  H'019E'
BAUDCON          EQU  H'019F'

;-----Bank4------------------
WPUA             EQU  H'020C'
WPUB             EQU  H'020D'
SSP1BUF          EQU  H'0211'
SSPBUF           EQU  H'0211'
SSP1ADD          EQU  H'0212'
SSPADD           EQU  H'0212'
SSP1MSK          EQU  H'0213'
SSPMSK           EQU  H'0213'
SSP1STAT         EQU  H'0214'
SSPSTAT          EQU  H'0214'
SSP1CON1         EQU  H'0215'
SSPCON           EQU  H'0215'
SSPCON1          EQU  H'0215'
SSP1CON2         EQU  H'0216'
SSPCON2          EQU  H'0216'
SSP1CON3         EQU  H'0217'
SSPCON3          EQU  H'0217'

;-----Bank7------------------
IOCAP            EQU  H'0391'
IOCAN            EQU  H'0392'
IOCAF            EQU  H'0393'
IOCBP            EQU  H'0394'
IOCBN            EQU  H'0395'
IOCBF            EQU  H'0396'
CLKRCON          EQU  H'039A'
ACTCON           EQU  H'039B'

;-----Bank12------------------
PWM1DCL          EQU  H'0611'
PWM1DCH          EQU  H'0612'
PWM1CON          EQU  H'0613'
PWM1CON0         EQU  H'0613'
PWM2DCL          EQU  H'0614'
PWM2DCH          EQU  H'0615'
PWM2CON          EQU  H'0616'
PWM2CON0         EQU  H'0616'

;-----Bank13------------------
CWG1DBR          EQU  H'0691'
CWG1DBF          EQU  H'0692'
CWG1CON0         EQU  H'0693'
CWG1CON1         EQU  H'0694'
CWG1CON2         EQU  H'0695'

;-----Bank29------------------
UCON             EQU  H'0E8E'
USTAT            EQU  H'0E8F'
UIR              EQU  H'0E90'
UCFG             EQU  H'0E91'
UIE              EQU  H'0E92'
UEIR             EQU  H'0E93'
UFRM             EQU  H'0E94'
UFRMH            EQU  H'0E94'
UFRML            EQU  H'0E95'
UADDR            EQU  H'0E96'
UEIE             EQU  H'0E97'
UEP0             EQU  H'0E98'
UEP1             EQU  H'0E99'
UEP2             EQU  H'0E9A'
UEP3             EQU  H'0E9B'
UEP4             EQU  H'0E9C'
UEP5             EQU  H'0E9D'
UEP6             EQU  H'0E9E'
UEP7             EQU  H'0E9F'

;-----Bank31------------------
STATUS_SHAD      EQU  H'0FE4'
WREG_SHAD        EQU  H'0FE5'
BSR_SHAD         EQU  H'0FE6'
PCLATH_SHAD      EQU  H'0FE7'
FSR0L_SHAD       EQU  H'0FE8'
FSR0H_SHAD       EQU  H'0FE9'
FSR1L_SHAD       EQU  H'0FEA'
FSR1H_SHAD       EQU  H'0FEB'
STKPTR           EQU  H'0FED'
TOSL             EQU  H'0FEE'
TOSH             EQU  H'0FEF'

;----- STATUS Bits -----------------------------------------------------
C                EQU  H'0000'
DC               EQU  H'0001'
Z                EQU  H'0002'
NOT_PD           EQU  H'0003'
NOT_TO           EQU  H'0004'


;----- BSR Bits -----------------------------------------------------
BSR0             EQU  H'0000'
BSR1             EQU  H'0001'
BSR2             EQU  H'0002'
BSR3             EQU  H'0003'
BSR4             EQU  H'0004'


;----- INTCON Bits -----------------------------------------------------
IOCIF            EQU  H'0000'
INTF             EQU  H'0001'
TMR0IF           EQU  H'0002'
IOCIE            EQU  H'0003'
INTE             EQU  H'0004'
TMR0IE           EQU  H'0005'
PEIE             EQU  H'0006'
GIE              EQU  H'0007'

T0IF             EQU  H'0002'
T0IE             EQU  H'0005'


;----- PORTA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'


;----- PORTB Bits -----------------------------------------------------
RB4              EQU  H'0004'
RB5              EQU  H'0005'
RB6              EQU  H'0006'
RB7              EQU  H'0007'


;----- PORTC Bits -----------------------------------------------------
RC0              EQU  H'0000'
RC1              EQU  H'0001'
RC2              EQU  H'0002'
RC3              EQU  H'0003'
RC4              EQU  H'0004'
RC5              EQU  H'0005'
RC6              EQU  H'0006'
RC7              EQU  H'0007'


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           EQU  H'0000'
TMR2IF           EQU  H'0001'
SSP1IF           EQU  H'0003'
TXIF             EQU  H'0004'
RCIF             EQU  H'0005'
ADIF             EQU  H'0006'
TMR1GIF          EQU  H'0007'


;----- PIR2 Bits -----------------------------------------------------
ACTIF            EQU  H'0001'
USBIF            EQU  H'0002'
BCL1IF           EQU  H'0003'
C1IF             EQU  H'0005'
C2IF             EQU  H'0006'
OSFIF            EQU  H'0007'


;----- T1CON Bits -----------------------------------------------------
TMR1ON           EQU  H'0000'
NOT_T1SYNC       EQU  H'0002'
T1OSCEN          EQU  H'0003'

T1CKPS0          EQU  H'0004'
T1CKPS1          EQU  H'0005'
TMR1CS0          EQU  H'0006'
TMR1CS1          EQU  H'0007'


;----- T1GCON Bits -----------------------------------------------------
T1GVAL           EQU  H'0002'
T1GGO_NOT_DONE   EQU  H'0003'
T1GSPM           EQU  H'0004'
T1GTM            EQU  H'0005'
T1GPOL           EQU  H'0006'
TMR1GE           EQU  H'0007'

T1GSS0           EQU  H'0000'
T1GSS1           EQU  H'0001'


;----- T2CON Bits -----------------------------------------------------
TMR2ON           EQU  H'0002'

T2CKPS0          EQU  H'0000'
T2CKPS1          EQU  H'0001'
T2OUTPS0         EQU  H'0003'
T2OUTPS1         EQU  H'0004'
T2OUTPS2         EQU  H'0005'
T2OUTPS3         EQU  H'0006'


;----- TRISA Bits -----------------------------------------------------
TRISA4           EQU  H'0004'
TRISA5           EQU  H'0005'


;----- TRISB Bits -----------------------------------------------------
TRISB4           EQU  H'0004'
TRISB5           EQU  H'0005'
TRISB6           EQU  H'0006'
TRISB7           EQU  H'0007'


;----- TRISC Bits -----------------------------------------------------
TRISC0           EQU  H'0000'
TRISC1           EQU  H'0001'
TRISC2           EQU  H'0002'
TRISC3           EQU  H'0003'
TRISC4           EQU  H'0004'
TRISC5           EQU  H'0005'
TRISC6           EQU  H'0006'
TRISC7           EQU  H'0007'


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           EQU  H'0000'
TMR2IE           EQU  H'0001'
SSP1IE           EQU  H'0003'
TXIE             EQU  H'0004'
RCIE             EQU  H'0005'
ADIE             EQU  H'0006'
TMR1GIE          EQU  H'0007'


;----- PIE2 Bits -----------------------------------------------------
ACTIE            EQU  H'0001'
USBIE            EQU  H'0002'
BCL1IE           EQU  H'0003'
C1IE             EQU  H'0005'
C2IE             EQU  H'0006'
OSFIE            EQU  H'0007'


;----- OPTION_REG Bits -----------------------------------------------------
PSA              EQU  H'0003'
TMR0SE           EQU  H'0004'
TMR0CS           EQU  H'0005'
INTEDG           EQU  H'0006'
NOT_WPUEN        EQU  H'0007'

PS0              EQU  H'0000'
PS1              EQU  H'0001'
PS2              EQU  H'0002'
T0SE             EQU  H'0004'
T0CS             EQU  H'0005'


;----- PCON Bits -----------------------------------------------------
NOT_BOR          EQU  H'0000'
NOT_POR          EQU  H'0001'
NOT_RI           EQU  H'0002'
NOT_RMCLR        EQU  H'0003'
NOT_RWDT         EQU  H'0004'
STKUNF           EQU  H'0006'
STKOVF           EQU  H'0007'


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           EQU  H'0000'

WDTPS0           EQU  H'0001'
WDTPS1           EQU  H'0002'
WDTPS2           EQU  H'0003'
WDTPS3           EQU  H'0004'
WDTPS4           EQU  H'0005'


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             EQU  H'0000'
TUN1             EQU  H'0001'
TUN2             EQU  H'0002'
TUN3             EQU  H'0003'
TUN4             EQU  H'0004'
TUN5             EQU  H'0005'
TUN6             EQU  H'0006'


;----- OSCCON Bits -----------------------------------------------------
SPLLMULT         EQU  H'0006'
SPLLEN           EQU  H'0007'

SCS0             EQU  H'0000'
SCS1             EQU  H'0001'
IRCF0            EQU  H'0002'
IRCF1            EQU  H'0003'
IRCF2            EQU  H'0004'
IRCF3            EQU  H'0005'


;----- OSCSTAT Bits -----------------------------------------------------
HFIOFS           EQU  H'0000'
LFIOFR           EQU  H'0001'
HFIOFR           EQU  H'0004'
OSTS             EQU  H'0005'
PLLRDY           EQU  H'0006'
SOSCR            EQU  H'0007'


;----- ADCON0 Bits -----------------------------------------------------
ADON             EQU  H'0000'
GO_NOT_DONE      EQU  H'0001'

ADGO             EQU  H'0001'
CHS0             EQU  H'0002'
CHS1             EQU  H'0003'
CHS2             EQU  H'0004'
CHS3             EQU  H'0005'
CHS4             EQU  H'0006'

GO               EQU  H'0001'


;----- ADCON1 Bits -----------------------------------------------------
ADFM             EQU  H'0007'

ADPREF0          EQU  H'0000'
ADPREF1          EQU  H'0001'
ADCS0            EQU  H'0004'
ADCS1            EQU  H'0005'
ADCS2            EQU  H'0006'


;----- ADCON2 Bits -----------------------------------------------------
TRIGSEL0         EQU  H'0004'
TRIGSEL1         EQU  H'0005'
TRIGSEL2         EQU  H'0006'


;----- LATA Bits -----------------------------------------------------
LATA4            EQU  H'0004'
LATA5            EQU  H'0005'


;----- LATB Bits -----------------------------------------------------
LATB4            EQU  H'0004'
LATB5            EQU  H'0005'
LATB6            EQU  H'0006'
LATB7            EQU  H'0007'


;----- LATC Bits -----------------------------------------------------
LATC0            EQU  H'0000'
LATC1            EQU  H'0001'
LATC2            EQU  H'0002'
LATC3            EQU  H'0003'
LATC4            EQU  H'0004'
LATC5            EQU  H'0005'
LATC6            EQU  H'0006'
LATC7            EQU  H'0007'


;----- CM1CON0 Bits -----------------------------------------------------
C1SYNC           EQU  H'0000'
C1HYS            EQU  H'0001'
C1SP             EQU  H'0002'
C1POL            EQU  H'0004'
C1OE             EQU  H'0005'
C1OUT            EQU  H'0006'
C1ON             EQU  H'0007'


;----- CM1CON1 Bits -----------------------------------------------------
C1NCH0           EQU  H'0000'
C1NCH1           EQU  H'0001'
C1NCH2           EQU  H'0002'
C1PCH0           EQU  H'0004'
C1PCH1           EQU  H'0005'
C1INTN           EQU  H'0006'
C1INTP           EQU  H'0007'



;----- CM2CON0 Bits -----------------------------------------------------
C2SYNC           EQU  H'0000'
C2HYS            EQU  H'0001'
C2SP             EQU  H'0002'
C2POL            EQU  H'0004'
C2OE             EQU  H'0005'
C2OUT            EQU  H'0006'
C2ON             EQU  H'0007'


;----- CM2CON1 Bits -----------------------------------------------------
C2NCH0           EQU  H'0000'
C2NCH1           EQU  H'0001'
C2NCH2           EQU  H'0002'
C2PCH0           EQU  H'0004'
C2PCH1           EQU  H'0005'
C2INTN           EQU  H'0006'
C2INTP           EQU  H'0007'



;----- CMOUT Bits -----------------------------------------------------
MC1OUT           EQU  H'0000'
MC2OUT           EQU  H'0001'


;----- BORCON Bits -----------------------------------------------------
BORRDY           EQU  H'0000'
BORFS            EQU  H'0006'
SBOREN           EQU  H'0007'


;----- FVRCON Bits -----------------------------------------------------
FVRRDY           EQU  H'0006'
FVREN            EQU  H'0007'

ADFVR0           EQU  H'0000'
ADFVR1           EQU  H'0001'
CDAFVR0          EQU  H'0002'
CDAFVR1          EQU  H'0003'


;----- DACCON0 Bits -----------------------------------------------------
DACOE2           EQU  H'0004'
DACOE1           EQU  H'0005'
DACEN            EQU  H'0007'

D1PSS0           EQU  H'0002'
D1PSS1           EQU  H'0003'


;----- DACCON1 Bits -----------------------------------------------------
DACR0            EQU  H'0000'
DACR1            EQU  H'0001'
DACR2            EQU  H'0002'
DACR3            EQU  H'0003'
DACR4            EQU  H'0004'


;----- APFCON Bits -----------------------------------------------------
T1GSEL           EQU  H'0003'
SSSEL            EQU  H'0005'
CLKRSEL          EQU  H'0007'


;----- ANSELA Bits -----------------------------------------------------
ANSA4            EQU  H'0004'



;----- ANSELB Bits -----------------------------------------------------
ANSB4            EQU  H'0004'
ANSB5            EQU  H'0005'



;----- ANSELC Bits -----------------------------------------------------
ANSC0            EQU  H'0000'
ANSC1            EQU  H'0001'
ANSC2            EQU  H'0002'
ANSC3            EQU  H'0003'
ANSC6            EQU  H'0006'
ANSC7            EQU  H'0007'



;----- PMCON1 Bits -----------------------------------------------------
RD               EQU  H'0000'
WR               EQU  H'0001'
WREN             EQU  H'0002'
WRERR            EQU  H'0003'
FREE             EQU  H'0004'
LWLO             EQU  H'0005'
CFGS             EQU  H'0006'


;----- RCSTA Bits -----------------------------------------------------
RX9D             EQU  H'0000'
OERR             EQU  H'0001'
FERR             EQU  H'0002'
ADDEN            EQU  H'0003'
CREN             EQU  H'0004'
SREN             EQU  H'0005'
RX9              EQU  H'0006'
SPEN             EQU  H'0007'


;----- TXSTA Bits -----------------------------------------------------
TX9D             EQU  H'0000'
TRMT             EQU  H'0001'
BRGH             EQU  H'0002'
SENDB            EQU  H'0003'
SYNC             EQU  H'0004'
TXEN             EQU  H'0005'
TX9              EQU  H'0006'
CSRC             EQU  H'0007'


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            EQU  H'0000'
WUE              EQU  H'0001'
BRG16            EQU  H'0003'
SCKP             EQU  H'0004'
RCIDL            EQU  H'0006'
ABDOVF           EQU  H'0007'


;----- WPUA Bits -----------------------------------------------------
WPUA3            EQU  H'0003'
WPUA4            EQU  H'0004'
WPUA5            EQU  H'0005'



;----- WPUB Bits -----------------------------------------------------
WPUB4            EQU  H'0004'
WPUB5            EQU  H'0005'
WPUB6            EQU  H'0006'
WPUB7            EQU  H'0007'



;----- SSP1STAT Bits -----------------------------------------------------
BF               EQU  H'0000'
UA               EQU  H'0001'
R_NOT_W          EQU  H'0002'
S                EQU  H'0003'
P                EQU  H'0004'
D_NOT_A          EQU  H'0005'
CKE              EQU  H'0006'
SMP              EQU  H'0007'


;----- SSPSTAT Bits -----------------------------------------------------
BF               EQU  H'0000'
UA               EQU  H'0001'
R_NOT_W          EQU  H'0002'
S                EQU  H'0003'
P                EQU  H'0004'
D_NOT_A          EQU  H'0005'
CKE              EQU  H'0006'
SMP              EQU  H'0007'


;----- SSP1CON1 Bits -----------------------------------------------------
SSP1M0           EQU  H'0000'
SSP1M1           EQU  H'0001'
SSP1M2           EQU  H'0002'
SSP1M3           EQU  H'0003'
CKP              EQU  H'0004'
SSPEN            EQU  H'0005'
SSPOV            EQU  H'0006'
WCOL             EQU  H'0007'

SSP1EN           EQU  H'0005'
SSP1OV           EQU  H'0006'


;----- SSPCON Bits -----------------------------------------------------
SSP1M0           EQU  H'0000'
SSP1M1           EQU  H'0001'
SSP1M2           EQU  H'0002'
SSP1M3           EQU  H'0003'
CKP              EQU  H'0004'
SSPEN            EQU  H'0005'
SSPOV            EQU  H'0006'
WCOL             EQU  H'0007'

SSP1EN           EQU  H'0005'
SSP1OV           EQU  H'0006'


;----- SSPCON1 Bits -----------------------------------------------------
SSP1M0           EQU  H'0000'
SSP1M1           EQU  H'0001'
SSP1M2           EQU  H'0002'
SSP1M3           EQU  H'0003'
CKP              EQU  H'0004'
SSPEN            EQU  H'0005'
SSPOV            EQU  H'0006'
WCOL             EQU  H'0007'

SSP1EN           EQU  H'0005'
SSP1OV           EQU  H'0006'


;----- SSP1CON2 Bits -----------------------------------------------------
SEN              EQU  H'0000'
RSEN             EQU  H'0001'
PEN              EQU  H'0002'
RCEN             EQU  H'0003'
ACKEN            EQU  H'0004'
ACKDT            EQU  H'0005'
ACKSTAT          EQU  H'0006'
GCEN             EQU  H'0007'


;----- SSPCON2 Bits -----------------------------------------------------
SEN              EQU  H'0000'
RSEN             EQU  H'0001'
PEN              EQU  H'0002'
RCEN             EQU  H'0003'
ACKEN            EQU  H'0004'
ACKDT            EQU  H'0005'
ACKSTAT          EQU  H'0006'
GCEN             EQU  H'0007'


;----- SSP1CON3 Bits -----------------------------------------------------
DHEN             EQU  H'0000'
AHEN             EQU  H'0001'
SBCDE            EQU  H'0002'
SDAHT            EQU  H'0003'
BOEN             EQU  H'0004'
SCIE             EQU  H'0005'
PCIE             EQU  H'0006'
ACKTIM           EQU  H'0007'


;----- SSPCON3 Bits -----------------------------------------------------
DHEN             EQU  H'0000'
AHEN             EQU  H'0001'
SBCDE            EQU  H'0002'
SDAHT            EQU  H'0003'
BOEN             EQU  H'0004'
SCIE             EQU  H'0005'
PCIE             EQU  H'0006'
ACKTIM           EQU  H'0007'


;----- IOCAP Bits -----------------------------------------------------
IOCAP0           EQU  H'0000'
IOCAP1           EQU  H'0001'
IOCAP3           EQU  H'0003'
IOCAP4           EQU  H'0004'
IOCAP5           EQU  H'0005'



;----- IOCAN Bits -----------------------------------------------------
IOCAN0           EQU  H'0000'
IOCAN1           EQU  H'0001'
IOCAN3           EQU  H'0003'
IOCAN4           EQU  H'0004'
IOCAN5           EQU  H'0005'



;----- IOCAF Bits -----------------------------------------------------
IOCAF0           EQU  H'0000'
IOCAF1           EQU  H'0001'
IOCAF3           EQU  H'0003'
IOCAF4           EQU  H'0004'
IOCAF5           EQU  H'0005'



;----- IOCBP Bits -----------------------------------------------------
IOCBP4           EQU  H'0004'
IOCBP5           EQU  H'0005'
IOCBP6           EQU  H'0006'
IOCBP7           EQU  H'0007'



;----- IOCBN Bits -----------------------------------------------------
IOCBN4           EQU  H'0004'
IOCBN5           EQU  H'0005'
IOCBN6           EQU  H'0006'
IOCBN7           EQU  H'0007'



;----- IOCBF Bits -----------------------------------------------------
IOCBF4           EQU  H'0004'
IOCBF5           EQU  H'0005'
IOCBF6           EQU  H'0006'
IOCBF7           EQU  H'0007'



;----- CLKRCON Bits -----------------------------------------------------
CLKRSLR          EQU  H'0005'
CLKROE           EQU  H'0006'
CLKREN           EQU  H'0007'

CLKRDIV0         EQU  H'0000'
CLKRDIV1         EQU  H'0001'
CLKRDIV2         EQU  H'0002'
CLKRCD0          EQU  H'0003'
CLKRCD1          EQU  H'0004'


;----- ACTCON Bits -----------------------------------------------------
ACTORS           EQU  H'0001'
ACTLOCK          EQU  H'0003'
ACTSRC           EQU  H'0004'
ACTUD            EQU  H'0006'
ACTEN            EQU  H'0007'


;----- PWM1DCL Bits -----------------------------------------------------
PWM1DCL0         EQU  H'0006'
PWM1DCL1         EQU  H'0007'


;----- PWM1DCH Bits -----------------------------------------------------
PWM1DCH0         EQU  H'0000'
PWM1DCH1         EQU  H'0001'
PWM1DCH2         EQU  H'0002'
PWM1DCH3         EQU  H'0003'
PWM1DCH4         EQU  H'0004'
PWM1DCH5         EQU  H'0005'
PWM1DCH6         EQU  H'0006'
PWM1DCH7         EQU  H'0007'


;----- PWM1CON Bits -----------------------------------------------------
PWM1POL          EQU  H'0004'
PWM1OUT          EQU  H'0005'
PWM1OE           EQU  H'0006'
PWM1EN           EQU  H'0007'


;----- PWM1CON0 Bits -----------------------------------------------------
PWM1POL          EQU  H'0004'
PWM1OUT          EQU  H'0005'
PWM1OE           EQU  H'0006'
PWM1EN           EQU  H'0007'


;----- PWM2DCL Bits -----------------------------------------------------
PWM2DCL0         EQU  H'0006'
PWM2DCL1         EQU  H'0007'


;----- PWM2DCH Bits -----------------------------------------------------
PWM2DCH0         EQU  H'0000'
PWM2DCH1         EQU  H'0001'
PWM2DCH2         EQU  H'0002'
PWM2DCH3         EQU  H'0003'
PWM2DCH4         EQU  H'0004'
PWM2DCH5         EQU  H'0005'
PWM2DCH6         EQU  H'0006'
PWM2DCH7         EQU  H'0007'


;----- PWM2CON Bits -----------------------------------------------------
PWM2POL          EQU  H'0004'
PWM2OUT          EQU  H'0005'
PWM2OE           EQU  H'0006'
PWM2EN           EQU  H'0007'


;----- PWM2CON0 Bits -----------------------------------------------------
PWM2POL          EQU  H'0004'
PWM2OUT          EQU  H'0005'
PWM2OE           EQU  H'0006'
PWM2EN           EQU  H'0007'


;----- CWG1DBR Bits -----------------------------------------------------
CWG1DBR0         EQU  H'0000'
CWG1DBR1         EQU  H'0001'
CWG1DBR2         EQU  H'0002'
CWG1DBR3         EQU  H'0003'
CWG1DBR4         EQU  H'0004'
CWG1DBR5         EQU  H'0005'


;----- CWG1DBF Bits -----------------------------------------------------
CWG1DBF0         EQU  H'0000'
CWG1DBF1         EQU  H'0001'
CWG1DBF2         EQU  H'0002'
CWG1DBF3         EQU  H'0003'
CWG1DBF4         EQU  H'0004'
CWG1DBF5         EQU  H'0005'


;----- CWG1CON0 Bits -----------------------------------------------------
G1CS0            EQU  H'0000'
G1POLA           EQU  H'0003'
G1POLB           EQU  H'0004'
G1OEA            EQU  H'0005'
G1OEB            EQU  H'0006'
G1EN             EQU  H'0007'



;----- CWG1CON1 Bits -----------------------------------------------------
G1IS0            EQU  H'0000'
G1IS1            EQU  H'0001'

G1ASDLA0         EQU  H'0004'
G1ASDLA1         EQU  H'0005'
G1ASDLB0         EQU  H'0006'
G1ASDLB1         EQU  H'0007'


;----- CWG1CON2 Bits -----------------------------------------------------
G1ASDSFLT        EQU  H'0001'
G1ASDSC1         EQU  H'0002'
G1ASDSC2         EQU  H'0003'
G1ARSEN          EQU  H'0006'
G1ASE            EQU  H'0007'


;----- UCON Bits -----------------------------------------------------
SUSPND           EQU  H'0001'
RESUME           EQU  H'0002'
USBEN            EQU  H'0003'
PKTDIS           EQU  H'0004'
SE0              EQU  H'0005'
PPBRST           EQU  H'0006'


;----- USTAT Bits -----------------------------------------------------
PPBI             EQU  H'0001'
DIR              EQU  H'0002'

ENDP0            EQU  H'0003'
ENDP1            EQU  H'0004'
ENDP2            EQU  H'0005'
ENDP3            EQU  H'0006'


;----- UIR Bits -----------------------------------------------------
URSTIF           EQU  H'0000'
UERRIF           EQU  H'0001'
ACTVIF           EQU  H'0002'
TRNIF            EQU  H'0003'
IDLEIF           EQU  H'0004'
STALLIF          EQU  H'0005'
SOFIF            EQU  H'0006'


;----- UCFG Bits -----------------------------------------------------
FSEN             EQU  H'0002'
UPUEN            EQU  H'0004'
UTEYE            EQU  H'0007'

PPB0             EQU  H'0000'
PPB1             EQU  H'0001'


;----- UIE Bits -----------------------------------------------------
URSTIE           EQU  H'0000'
UERRIE           EQU  H'0001'
ACTVIE           EQU  H'0002'
TRNIE            EQU  H'0003'
IDLEIE           EQU  H'0004'
STALLIE          EQU  H'0005'
SOFIE            EQU  H'0006'


;----- UEIR Bits -----------------------------------------------------
PIDEF            EQU  H'0000'
CRC5EF           EQU  H'0001'
CRC16EF          EQU  H'0002'
DFN8EF           EQU  H'0003'
BTOEF            EQU  H'0004'
BTSEF            EQU  H'0007'


;----- UFRMH Bits -----------------------------------------------------
FRM8             EQU  H'0000'
FRM9             EQU  H'0001'
FRM10            EQU  H'0002'


;----- UFRML Bits -----------------------------------------------------
FRM0             EQU  H'0000'
FRM1             EQU  H'0001'
FRM2             EQU  H'0002'
FRM3             EQU  H'0003'
FRM4             EQU  H'0004'
FRM5             EQU  H'0005'
FRM6             EQU  H'0006'
FRM7             EQU  H'0007'


;----- UADDR Bits -----------------------------------------------------
ADDR0            EQU  H'0000'
ADDR1            EQU  H'0001'
ADDR2            EQU  H'0002'
ADDR3            EQU  H'0003'
ADDR4            EQU  H'0004'
ADDR5            EQU  H'0005'
ADDR6            EQU  H'0006'


;----- UEIE Bits -----------------------------------------------------
PIDEE            EQU  H'0000'
CRC5EE           EQU  H'0001'
CRC16EE          EQU  H'0002'
DFN8EE           EQU  H'0003'
BTOEE            EQU  H'0004'
BTSEE            EQU  H'0007'


;----- UEP0 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP1 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP2 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP3 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP4 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP5 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP6 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- UEP7 Bits -----------------------------------------------------
EPSTALL          EQU  H'0000'
EPINEN           EQU  H'0001'
EPOUTEN          EQU  H'0002'
EPCONDIS         EQU  H'0003'
EPHSHK           EQU  H'0004'


;----- STATUS_SHAD Bits -----------------------------------------------------
C                EQU  H'0000'
DC               EQU  H'0001'
Z                EQU  H'0002'



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
       __MAXRAM  H'0FFF'
       __BADRAM  H'000F'
       __BADRAM  H'0010'
       __BADRAM  H'0013'-H'0014'
       __BADRAM  H'001D'-H'001F'
       __BADRAM  H'008F'
       __BADRAM  H'0090'
       __BADRAM  H'0093'-H'0094'
       __BADRAM  H'010F'-H'0110'
       __BADRAM  H'011A'-H'011C'
       __BADRAM  H'011E'-H'011F'
       __BADRAM  H'018F'-H'0190'
       __BADRAM  H'0197'-H'0198'
       __BADRAM  H'020E'-H'0210'
       __BADRAM  H'0218'-H'021F'
       __BADRAM  H'028C'-H'029F'
       __BADRAM  H'030C'-H'031F'
       __BADRAM  H'038C'-H'0390'
       __BADRAM  H'0397'-H'0399'
       __BADRAM  H'039C'-H'039F'
       __BADRAM  H'040C'-H'041F'
       __BADRAM  H'048C'-H'049F'
       __BADRAM  H'050C'-H'051F'
       __BADRAM  H'058C'-H'059F'
       __BADRAM  H'060C'-H'0610'
       __BADRAM  H'0617'-H'061F'
       __BADRAM  H'0650'-H'066F'
       __BADRAM  H'068C'-H'0690'
       __BADRAM  H'0696'-H'069F'
       __BADRAM  H'06A0'-H'06EF'
       __BADRAM  H'070C'-H'071F'
       __BADRAM  H'0720'-H'076F'
       __BADRAM  H'078C'-H'079F'
       __BADRAM  H'07A0'-H'07EF'
       __BADRAM  H'080C'-H'081F'
       __BADRAM  H'0820'-H'086F'
       __BADRAM  H'088C'-H'089F'
       __BADRAM  H'08A0'-H'08EF'
       __BADRAM  H'090C'-H'091F'
       __BADRAM  H'0920'-H'096F'
       __BADRAM  H'098C'-H'099F'
       __BADRAM  H'09A0'-H'09EF'
       __BADRAM  H'0A0C'-H'0A1F'
       __BADRAM  H'0A20'-H'0A6F'
       __BADRAM  H'0A8C'-H'0A9F'
       __BADRAM  H'0AA0'-H'0AEF'
       __BADRAM  H'0B0C'-H'0B1F'
       __BADRAM  H'0B20'-H'0B6F'
       __BADRAM  H'0B8C'-H'0B9F'
       __BADRAM  H'0BA0'-H'0BEF'
       __BADRAM  H'0C0C'-H'0C1F'
       __BADRAM  H'0C20'-H'0C6F'
       __BADRAM  H'0C8C'-H'0C9F'
       __BADRAM  H'0CA0'-H'0CEF'
       __BADRAM  H'0D0C'-H'0D1F'
       __BADRAM  H'0D20'-H'0D6F'
       __BADRAM  H'0D8C'-H'0D9F'
       __BADRAM  H'0DA0'-H'0DEF'
       __BADRAM  H'0E0C'-H'0E1F'
       __BADRAM  H'0E20'-H'0E6F'
       __BADRAM  H'0E8C'-H'0E8D'
       __BADRAM  H'0EA0'-H'0EEF'
       __BADRAM  H'0F0C'-H'0F1F'
       __BADRAM  H'0F20'-H'0F6F'
       __BADRAM  H'0F8C'-H'0FE3'
       __BADRAM  H'0FEC'

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1           8007h
;   CONFIG2           8008h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        EQU  H'8007'
_CONFIG2        EQU  H'8008'

;----- CONFIG1 Options --------------------------------------------------
_FOSC_LP             EQU  H'3FF8'; LP Oscillator, Low-power crystal connected between OSC1 and OSC2 pins
_FOSC_XT             EQU  H'3FF9'; XT Oscillator, Crystal/resonator connected between OSC1 and OSC2 pins
_FOSC_HS             EQU  H'3FFA'; HS Oscillator, High-speed crystal/resonator connected between OSC1 and OSC2 pins
_FOSC_EXTRC          EQU  H'3FFB'; EXTRC oscillator: External RC circuit connected to CLKIN pin
_FOSC_INTOSC         EQU  H'3FFC'; INTOSC oscillator: I/O function on CLKIN pin
_FOSC_ECL            EQU  H'3FFD'; ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pins
_FOSC_ECM            EQU  H'3FFE'; ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pins
_FOSC_ECH            EQU  H'3FFF'; ECH, External Clock, High Power Mode (4-20 MHz): device clock supplied to CLKIN pins

_WDTE_OFF            EQU  H'3FE7'; WDT disabled
_WDTE_SWDTEN         EQU  H'3FEF'; WDT controlled by the SWDTEN bit in the WDTCON register
_WDTE_NSLEEP         EQU  H'3FF7'; WDT enabled while running and disabled in Sleep
_WDTE_ON             EQU  H'3FFF'; WDT enabled

_PWRTE_ON            EQU  H'3FDF'; PWRT enabled
_PWRTE_OFF           EQU  H'3FFF'; PWRT disabled

_MCLRE_OFF           EQU  H'3FBF'; MCLR/VPP pin function is digital input
_MCLRE_ON            EQU  H'3FFF'; MCLR/VPP pin function is MCLR

_CP_ON               EQU  H'3F7F'; Program memory code protection is enabled
_CP_OFF              EQU  H'3FFF'; Program memory code protection is disabled

_BOREN_OFF           EQU  H'39FF'; Brown-out Reset disabled
_BOREN_SBODEN        EQU  H'3BFF'; Brown-out Reset controlled by the SBOREN bit in the BORCON register
_BOREN_NSLEEP        EQU  H'3DFF'; Brown-out Reset enabled while running and disabled in Sleep
_BOREN_ON            EQU  H'3FFF'; Brown-out Reset enabled

_CLKOUTEN_ON         EQU  H'37FF'; CLKOUT function is enabled on the CLKOUT pin
_CLKOUTEN_OFF        EQU  H'3FFF'; CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin

_IESO_OFF            EQU  H'2FFF'; Internal/External Switchover Mode is disabled
_IESO_ON             EQU  H'3FFF'; Internal/External Switchover Mode is enabled

_FCMEN_OFF           EQU  H'1FFF'; Fail-Safe Clock Monitor is disabled
_FCMEN_ON            EQU  H'3FFF'; Fail-Safe Clock Monitor is enabled

;----- CONFIG2 Options --------------------------------------------------
_WRT_ALL             EQU  H'3FFC'; 000h to 1FFFh write protected, no addresses may be modified by PMCON control
_WRT_HALF            EQU  H'3FFD'; 000h to 0FFFh write protected, 1000h to 1FFFh may be modified by PMCON control
_WRT_BOOT            EQU  H'3FFE'; 000h to 1FFh write protected, 200h to 1FFFh may be modified by PMCON control
_WRT_OFF             EQU  H'3FFF'; Write protection off

_CPUDIV_NOCLKDIV     EQU  H'3FCF'; NO CPU system divide
_CPUDIV_CLKDIV2      EQU  H'3FDF'; CPU system clock divided by 2
_CPUDIV_CLKDIV3      EQU  H'3FEF'; CPU system clock divided by 3
_CPUDIV_CLKDIV6      EQU  H'3FFF'; CPU system clock divided by 6

_USBLSCLK_24MHz      EQU  H'3FBF'; System clock expects 24 MHz, FS/LS USB CLKENs divide-by is set to 4.
_USBLSCLK_48MHz      EQU  H'3FFF'; System clock expects 48 MHz, FS/LS USB CLKENs divide-by is set to 8.

_PLLMULT_4x          EQU  H'3F7F'; 4x Output Frequency Selected
_PLLMULT_3x          EQU  H'3FFF'; 3x Output Frequency Selected

_PLLEN_DISABLED      EQU  H'3EFF'; 3x or 4x PLL Disabled
_PLLEN_ENABLED       EQU  H'3FFF'; 3x or 4x PLL Enabled

_STVREN_OFF          EQU  H'3DFF'; Stack Overflow or Underflow will not cause a Reset
_STVREN_ON           EQU  H'3FFF'; Stack Overflow or Underflow will cause a Reset

_BORV_HI             EQU  H'3BFF'; Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_LO             EQU  H'3FFF'; Brown-out Reset Voltage (Vbor), low trip point selected.

_LPBOR_ON            EQU  H'37FF'; Low-Power BOR is enabled
_LPBOR_OFF           EQU  H'3FFF'; Low-Power BOR is disabled

_LVP_OFF             EQU  H'1FFF'; High-voltage on MCLR/VPP must be used for programming
_LVP_ON              EQU  H'3FFF'; Low-voltage programming enabled

;----- DEVID Equates --------------------------------------------------
_DEVID1          EQU  H'8006'

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          EQU  H'8000'
_IDLOC1          EQU  H'8001'
_IDLOC2          EQU  H'8002'
_IDLOC3          EQU  H'8003'

        LIST
