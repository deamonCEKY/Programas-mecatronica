        LIST

;==========================================================================
; Build date : Sep 19 2017
;  MPASM PIC16LF819 processor include
; 
;  (c) Copyright 1999-2017 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16LF819 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC16LF819
;       2. LIST directive in the source file
;               LIST   P=PIC16LF819
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __16LF819
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
INDF             EQU  H'0000'
TMR0             EQU  H'0001'
PCL              EQU  H'0002'
STATUS           EQU  H'0003'
FSR              EQU  H'0004'
PORTA            EQU  H'0005'
PORTB            EQU  H'0006'
PCLATH           EQU  H'000A'
INTCON           EQU  H'000B'
PIR1             EQU  H'000C'
PIR2             EQU  H'000D'
TMR1             EQU  H'000E'
TMR1L            EQU  H'000E'
TMR1H            EQU  H'000F'
T1CON            EQU  H'0010'
TMR2             EQU  H'0011'
T2CON            EQU  H'0012'
SSPBUF           EQU  H'0013'
SSPCON           EQU  H'0014'
CCPR1            EQU  H'0015'
CCPR1L           EQU  H'0015'
CCPR1H           EQU  H'0016'
CCP1CON          EQU  H'0017'
ADRESH           EQU  H'001E'
ADCON0           EQU  H'001F'

;-----Bank1------------------
OPTION_REG       EQU  H'0081'
TRISA            EQU  H'0085'
TRISB            EQU  H'0086'
PIE1             EQU  H'008C'
PIE2             EQU  H'008D'
PCON             EQU  H'008E'
OSCCON           EQU  H'008F'
OSCTUNE          EQU  H'0090'
PR2              EQU  H'0092'
SSPADD           EQU  H'0093'
SSPSTAT          EQU  H'0094'
ADRESL           EQU  H'009E'
ADCON1           EQU  H'009F'

;-----Bank2------------------
EEDATA           EQU  H'010C'
EEADR            EQU  H'010D'
EEDATH           EQU  H'010E'
EEADRH           EQU  H'010F'

;-----Bank3------------------
EECON1           EQU  H'018C'
EECON2           EQU  H'018D'

;----- STATUS Bits -----------------------------------------------------
C                EQU  H'0000'
DC               EQU  H'0001'
Z                EQU  H'0002'
NOT_PD           EQU  H'0003'
NOT_TO           EQU  H'0004'
IRP              EQU  H'0007'

RP0              EQU  H'0005'
RP1              EQU  H'0006'


;----- PORTA Bits -----------------------------------------------------
RA0              EQU  H'0000'
RA1              EQU  H'0001'
RA2              EQU  H'0002'
RA3              EQU  H'0003'
RA4              EQU  H'0004'
RA5              EQU  H'0005'
RA6              EQU  H'0006'
RA7              EQU  H'0007'


;----- PORTB Bits -----------------------------------------------------
RB0              EQU  H'0000'
RB1              EQU  H'0001'
RB2              EQU  H'0002'
RB3              EQU  H'0003'
RB4              EQU  H'0004'
RB5              EQU  H'0005'
RB6              EQU  H'0006'
RB7              EQU  H'0007'


;----- INTCON Bits -----------------------------------------------------
RBIF             EQU  H'0000'
INTF             EQU  H'0001'
TMR0IF           EQU  H'0002'
RBIE             EQU  H'0003'
INTE             EQU  H'0004'
TMR0IE           EQU  H'0005'
PEIE             EQU  H'0006'
GIE              EQU  H'0007'


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           EQU  H'0000'
TMR2IF           EQU  H'0001'
CCP1IF           EQU  H'0002'
SSPIF            EQU  H'0003'
ADIF             EQU  H'0006'


;----- PIR2 Bits -----------------------------------------------------
EEIF             EQU  H'0004'


;----- T1CON Bits -----------------------------------------------------
TMR1ON           EQU  H'0000'
TMR1CS           EQU  H'0001'
NOT_T1SYNC       EQU  H'0002'
T1OSCEN          EQU  H'0003'

T1CKPS0          EQU  H'0004'
T1CKPS1          EQU  H'0005'

T1INSYNC         EQU  H'0002'


;----- T2CON Bits -----------------------------------------------------
TMR2ON           EQU  H'0002'

T2CKPS0          EQU  H'0000'
T2CKPS1          EQU  H'0001'
TOUTPS0          EQU  H'0003'
TOUTPS1          EQU  H'0004'
TOUTPS2          EQU  H'0005'
TOUTPS3          EQU  H'0006'


;----- SSPCON Bits -----------------------------------------------------
CKP              EQU  H'0004'
SSPEN            EQU  H'0005'
SSPOV            EQU  H'0006'
WCOL             EQU  H'0007'

SSPM0            EQU  H'0000'
SSPM1            EQU  H'0001'
SSPM2            EQU  H'0002'
SSPM3            EQU  H'0003'


;----- CCP1CON Bits -----------------------------------------------------
CCP1Y            EQU  H'0004'
CCP1X            EQU  H'0005'

CCP1M0           EQU  H'0000'
CCP1M1           EQU  H'0001'
CCP1M2           EQU  H'0002'
CCP1M3           EQU  H'0003'


;----- ADCON0 Bits -----------------------------------------------------
ADON             EQU  H'0000'
GO_NOT_DONE      EQU  H'0002'

GO               EQU  H'0002'
CHS0             EQU  H'0003'
CHS1             EQU  H'0004'
CHS2             EQU  H'0005'
ADCS0            EQU  H'0006'
ADCS1            EQU  H'0007'

NOT_DONE         EQU  H'0002'

GO_DONE          EQU  H'0002'


;----- OPTION_REG Bits -----------------------------------------------------
PSA              EQU  H'0003'
T0SE             EQU  H'0004'
T0CS             EQU  H'0005'
INTEDG           EQU  H'0006'
NOT_RBPU         EQU  H'0007'

PS0              EQU  H'0000'
PS1              EQU  H'0001'
PS2              EQU  H'0002'


;----- TRISA Bits -----------------------------------------------------
TRISA0           EQU  H'0000'
TRISA1           EQU  H'0001'
TRISA2           EQU  H'0002'
TRISA3           EQU  H'0003'
TRISA4           EQU  H'0004'
TRISA5           EQU  H'0005'
TRISA6           EQU  H'0006'
TRISA7           EQU  H'0007'


;----- TRISB Bits -----------------------------------------------------
TRISB0           EQU  H'0000'
TRISB1           EQU  H'0001'
TRISB2           EQU  H'0002'
TRISB3           EQU  H'0003'
TRISB4           EQU  H'0004'
TRISB5           EQU  H'0005'
TRISB6           EQU  H'0006'
TRISB7           EQU  H'0007'


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           EQU  H'0000'
TMR2IE           EQU  H'0001'
CCP1IE           EQU  H'0002'
SSPIE            EQU  H'0003'
ADIE             EQU  H'0006'


;----- PIE2 Bits -----------------------------------------------------
EEIE             EQU  H'0004'


;----- PCON Bits -----------------------------------------------------
NOT_BOR          EQU  H'0000'
NOT_POR          EQU  H'0001'

NOT_BO           EQU  H'0000'


;----- OSCCON Bits -----------------------------------------------------
IOFS             EQU  H'0002'

IRCF0            EQU  H'0004'
IRCF1            EQU  H'0005'
IRCF2            EQU  H'0006'


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             EQU  H'0000'
TUN1             EQU  H'0001'
TUN2             EQU  H'0002'
TUN3             EQU  H'0003'
TUN4             EQU  H'0004'
TUN5             EQU  H'0005'


;----- SSPSTAT Bits -----------------------------------------------------
BF               EQU  H'0000'
UA               EQU  H'0001'
R_NOT_W          EQU  H'0002'
S                EQU  H'0003'
P                EQU  H'0004'
D_NOT_A          EQU  H'0005'
CKE              EQU  H'0006'
SMP              EQU  H'0007'

R                EQU  H'0002'
D                EQU  H'0005'

I2C_READ         EQU  H'0002'
I2C_START        EQU  H'0003'
I2C_STOP         EQU  H'0004'
I2C_DATA         EQU  H'0005'

NOT_W            EQU  H'0002'
NOT_A            EQU  H'0005'

NOT_WRITE        EQU  H'0002'
NOT_ADDRESS      EQU  H'0005'

R_W              EQU  H'0002'
D_A              EQU  H'0005'

READ_WRITE       EQU  H'0002'
DATA_ADDRESS     EQU  H'0005'


;----- ADCON1 Bits -----------------------------------------------------
ADCS2            EQU  H'0006'
ADFM             EQU  H'0007'

PCFG0            EQU  H'0000'
PCFG1            EQU  H'0001'
PCFG2            EQU  H'0002'
PCFG3            EQU  H'0003'


;----- EECON1 Bits -----------------------------------------------------
RD               EQU  H'0000'
WR               EQU  H'0001'
WREN             EQU  H'0002'
WRERR            EQU  H'0003'
FREE             EQU  H'0004'
EEPGD            EQU  H'0007'




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
       __MAXRAM  H'01FF'
       __BADRAM  H'0007'-H'0009'
       __BADRAM  H'0018'-H'001D'
       __BADRAM  H'0087'-H'0089'
       __BADRAM  H'0091'
       __BADRAM  H'0095'-H'009D'
       __BADRAM  H'0105'
       __BADRAM  H'0107'-H'0109'
       __BADRAM  H'0110'-H'011F'
       __BADRAM  H'0185'
       __BADRAM  H'0187'-H'0189'
       __BADRAM  H'018E'-H'019F'

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG            2007h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG         EQU  H'2007'

;----- CONFIG Options --------------------------------------------------
_FOSC_LP             EQU  H'3FEC'; LP oscillator
_LP_OSC              EQU  H'3FEC'; LP oscillator
_FOSC_XT             EQU  H'3FED'; XT oscillator
_XT_OSC              EQU  H'3FED'; XT oscillator
_FOSC_HS             EQU  H'3FEE'; HS oscillator
_HS_OSC              EQU  H'3FEE'; HS oscillator
_FOSC_EC             EQU  H'3FEF'; EXTCLK; port I/O function on RA6/OSC2/CLKO pin
_EXTCLK              EQU  H'3FEF'; EXTCLK; port I/O function on RA6/OSC2/CLKO pin
_FOSC_INTOSCIO       EQU  H'3FFC'; INTRC oscillator; port I/O function on both RA6/OSC2/CLKO pin and RA7/OSC1/CLKI pin
_INTRC_IO            EQU  H'3FFC'; INTRC oscillator; port I/O function on both RA6/OSC2/CLKO pin and RA7/OSC1/CLKI pin
_FOSC_INTOSCCLK      EQU  H'3FFD'; INTRC oscillator; CLKO function on RA6/OSC2/CLKO pin and port I/O function on RA7/OSC1/CLKI pin
_INTRC_CLKOUT        EQU  H'3FFD'; INTRC oscillator; CLKO function on RA6/OSC2/CLKO pin and port I/O function on RA7/OSC1/CLKI pin
_FOSC_EXTRCIO        EQU  H'3FFE'; EXTRC oscillator; port I/O function on RA6/OSC2/CLKO pin
_EXTRC_IO            EQU  H'3FFE'; EXTRC oscillator; port I/O function on RA6/OSC2/CLKO pin
_FOSC_EXTRCCLK       EQU  H'3FFF'; EXTRC oscillator; CLKO function on RA6/OSC2/CLKO pin
_EXTRC_CLKOUT        EQU  H'3FFF'; EXTRC oscillator; CLKO function on RA6/OSC2/CLKO pin

_WDTE_OFF            EQU  H'3FFB'; WDT disabled
_WDT_OFF             EQU  H'3FFB'; WDT disabled
_WDTE_ON             EQU  H'3FFF'; WDT enabled
_WDT_ON              EQU  H'3FFF'; WDT enabled

_PWRTE_ON            EQU  H'3FF7'; PWRT enabled
_PWRTE_OFF           EQU  H'3FFF'; PWRT disabled

_MCLRE_OFF           EQU  H'3FDF'; RA5/MCLR/VPP pin function is digital I/O, MCLR internally tied to VDD
_MCLR_OFF            EQU  H'3FDF'; RA5/MCLR/VPP pin function is digital I/O, MCLR internally tied to VDD
_MCLRE_ON            EQU  H'3FFF'; RA5/MCLR/VPP pin function is MCLR
_MCLR_ON             EQU  H'3FFF'; RA5/MCLR/VPP pin function is MCLR

_BOREN_OFF           EQU  H'3FBF'; BOR disabled
_BODEN_OFF           EQU  H'3FBF'; BOR disabled
_BOREN_ON            EQU  H'3FFF'; BOR enabled
_BODEN_ON            EQU  H'3FFF'; BOR enabled

_LVP_OFF             EQU  H'3F7F'; RB3/PGM pin has digital I/O function, HV on MCLR must be used for programming
_LVP_ON              EQU  H'3FFF'; RB3/PGM pin has PGM function, Low-Voltage Programming enabled

_CPD_ON              EQU  H'3EFF'; Data EE memory locations code-protected
_CPD_OFF             EQU  H'3FFF'; Code protection off

_WRT_1536            EQU  H'39FF'; 0000h to 05FFh write-protected, 0600h to 07FFh may be modified by EECON control
_WRT_ENABLE_1536     EQU  H'39FF'; 0000h to 05FFh write-protected, 0600h to 07FFh may be modified by EECON control
_WRT_1024            EQU  H'3BFF'; 0000h to 03FFh write-protected, 0400h to 07FFh may be modified by EECON control
_WRT_ENABLE_1024     EQU  H'3BFF'; 0000h to 03FFh write-protected, 0400h to 07FFh may be modified by EECON control
_WRT_512             EQU  H'3DFF'; 0000h to 01FFh write-protected, 0200h to 07FFh may be modified by EECON control
_WRT_ENABLE_512      EQU  H'3DFF'; 0000h to 01FFh write-protected, 0200h to 07FFh may be modified by EECON control
_WRT_OFF             EQU  H'3FFF'; Write protection off
_WRT_ENABLE_OFF      EQU  H'3FFF'; Write protection off

_DEBUG_ON            EQU  H'37FF'; In-Circuit Debugger enabled, RB6 and RB7 are dedicated to the debugger
_DEBUG_OFF           EQU  H'3FFF'; In-Circuit Debugger disabled, RB6 and RB7 are general purpose I/O pins

_CCPMX_RB3           EQU  H'2FFF'; CCP1 function on RB3
_CCP1_RB3            EQU  H'2FFF'; CCP1 function on RB3
_CCPMX_RB2           EQU  H'3FFF'; CCP1 function on RB2
_CCP1_RB2            EQU  H'3FFF'; CCP1 function on RB2

_CP_ON               EQU  H'1FFF'; All memory locations code-protected
_CP_ALL              EQU  H'1FFF'; All memory locations code-protected
_CP_OFF              EQU  H'3FFF'; Code protection off

;----- DEVID Equates --------------------------------------------------
_DEVID1          EQU  H'2006'

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          EQU  H'2000'
_IDLOC1          EQU  H'2001'
_IDLOC2          EQU  H'2002'
_IDLOC3          EQU  H'2003'

        LIST
