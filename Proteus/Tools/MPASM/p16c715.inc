        LIST

;==========================================================================
; Build date : Sep 19 2017
;  MPASM PIC16C715 processor include
; 
;  (c) Copyright 1999-2017 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16C715 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC16C715
;       2. LIST directive in the source file
;               LIST   P=PIC16C715
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __16C715
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
ADRES            EQU  H'001E'
ADCON0           EQU  H'001F'

;-----Bank1------------------
OPTION_REG       EQU  H'0081'
TRISA            EQU  H'0085'
TRISB            EQU  H'0086'
PIE1             EQU  H'008C'
PCON             EQU  H'008E'
ADCON1           EQU  H'009F'

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
T0IF             EQU  H'0002'
RBIE             EQU  H'0003'
INTE             EQU  H'0004'
T0IE             EQU  H'0005'
PEIE             EQU  H'0006'
GIE              EQU  H'0007'

TMR0IF           EQU  H'0002'
TMR0IE           EQU  H'0005'


;----- PIR1 Bits -----------------------------------------------------
ADIF             EQU  H'0006'


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
ADIE             EQU  H'0006'


;----- PCON Bits -----------------------------------------------------
NOT_BOR          EQU  H'0000'
NOT_POR          EQU  H'0001'
NOT_PER          EQU  H'0002'
MPEEN            EQU  H'0007'

NOT_BO           EQU  H'0000'
NOT_MPE          EQU  H'0002'


;----- ADCON1 Bits -----------------------------------------------------
PCFG0            EQU  H'0000'
PCFG1            EQU  H'0001'




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
       __MAXRAM  H'00BF'
       __BADRAM  H'0007'-H'0009'
       __BADRAM  H'000D'-H'001D'
       __BADRAM  H'0087'-H'0089'
       __BADRAM  H'008D'
       __BADRAM  H'008F'-H'009E'

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1           2007h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        EQU  H'2007'

;----- CONFIG1 Options --------------------------------------------------
_FOSC_LP             EQU  H'3FFC'; LP oscillator
_LP_OSC              EQU  H'3FFC'; LP oscillator
_FOSC_XT             EQU  H'3FFD'; XT oscillator
_XT_OSC              EQU  H'3FFD'; XT oscillator
_FOSC_HS             EQU  H'3FFE'; HS oscillator
_HS_OSC              EQU  H'3FFE'; HS oscillator
_FOSC_RC             EQU  H'3FFF'; RC oscillator
_RC_OSC              EQU  H'3FFF'; RC oscillator

_WDTE_OFF            EQU  H'3FFB'; WDT disabled
_WDT_OFF             EQU  H'3FFB'; WDT disabled
_WDTE_ON             EQU  H'3FFF'; WDT enabled
_WDT_ON              EQU  H'3FFF'; WDT enabled

_PWRTE_ON            EQU  H'3FF7'; PWRT enabled
_PWRTE_OFF           EQU  H'3FFF'; PWRT disabled

_CP_ALL              EQU  H'00CF'; All memory is code protected
_CP_75               EQU  H'15DF'; 0200h-07FFh code protected
_CP_50               EQU  H'2AEF'; 0400h-07FFh code protected
_CP_OFF              EQU  H'3FFF'; Code protection off

_BOREN_OFF           EQU  H'3FBF'; BOR disabled
_BODEN_OFF           EQU  H'3FBF'; BOR disabled
_BOREN_ON            EQU  H'3FFF'; BOR enabled
_BODEN_ON            EQU  H'3FFF'; BOR enabled

_MPEEN_OFF           EQU  H'3F7F'; Memory Parity Checking is disabled
_MPEEN_ON            EQU  H'3FFF'; Memory Parity Checking is enabled


;----- IDLOC Equates --------------------------------------------------
_IDLOC0          EQU  H'2000'
_IDLOC1          EQU  H'2001'
_IDLOC2          EQU  H'2002'
_IDLOC3          EQU  H'2003'

        LIST
