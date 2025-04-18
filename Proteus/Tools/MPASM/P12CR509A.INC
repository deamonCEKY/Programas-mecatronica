        LIST

;==========================================================================
; Build date : Sep 19 2017
;  MPASM PIC12CR509A processor include
; 
;  (c) Copyright 1999-2017 Microchip Technology, All rights reserved
;==========================================================================

        NOLIST

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12CR509A microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;
;       1. Command line switch:
;               C:\MPASM MYFILE.ASM /PIC12CR509A
;       2. LIST directive in the source file
;               LIST   P=PIC12CR509A
;       3. Processor Type entry in the MPASM full-screen interface
;       4. Setting the processor in the MPLAB Project Dialog
;==========================================================================

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
        IFNDEF __12CR509A
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
OSCCAL           EQU  H'0005'
GPIO             EQU  H'0006'

;----- STATUS Bits -----------------------------------------------------
C                EQU  H'0000'
DC               EQU  H'0001'
Z                EQU  H'0002'
NOT_PD           EQU  H'0003'
NOT_TO           EQU  H'0004'
PA0              EQU  H'0005'
GPWUF            EQU  H'0007'


;----- OSCCAL Bits -----------------------------------------------------
CAL0             EQU  H'0002'
CAL1             EQU  H'0003'
CAL2             EQU  H'0004'
CAL3             EQU  H'0005'
CAL4             EQU  H'0006'
CAL5             EQU  H'0007'

OSCSLW           EQU  H'0002'
OSCFST           EQU  H'0003'


;----- GPIO Bits -----------------------------------------------------
GP0              EQU  H'0000'
GP1              EQU  H'0001'
GP2              EQU  H'0002'
GP3              EQU  H'0003'
GP4              EQU  H'0004'
GP5              EQU  H'0005'



;----- OPTION_REG Bits -----------------------------------------------------
PSA              EQU  H'0003'
T0SE             EQU  H'0004'
T0CS             EQU  H'0005'
NOT_GPPU         EQU  H'0006'
NOT_GPWU         EQU  H'0007'

PS0              EQU  H'0000'
PS1              EQU  H'0001'
PS2              EQU  H'0002'


;----- TRIS Bits -----------------------------------------------------
TRIS0            EQU  H'0000'
TRIS1            EQU  H'0001'
TRIS2            EQU  H'0002'
TRIS3            EQU  H'0003'
TRIS4            EQU  H'0004'
TRIS5            EQU  H'0005'



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
       __MAXRAM  H'003F'

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG             FFFh
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG         EQU  H'FFF'

;----- CONFIG Options --------------------------------------------------
_OSC_LP              EQU  H'0FFC'; LP oscillator
_LP_OSC              EQU  H'0FFC'; LP oscillator
_OSC_XT              EQU  H'0FFD'; XT oscillator
_XT_OSC              EQU  H'0FFD'; XT oscillator
_OSC_IntRC           EQU  H'0FFE'; internal RC oscillator
_IntRC_OSC           EQU  H'0FFE'; internal RC oscillator
_OSC_ExtRC           EQU  H'0FFF'; external RC oscillator
_ExtRC_OSC           EQU  H'0FFF'; external RC oscillator

_WDT_OFF             EQU  H'0FFB'; WDT disabled
_WDT_ON              EQU  H'0FFF'; WDT enabled

_CP_ON               EQU  H'0FF7'; Code protection on
_CP_OFF              EQU  H'0FFF'; Code protection off

_MCLRE_OFF           EQU  H'0FEF'; MCLR tied to VDD, (Internally)
_MCLRE_ON            EQU  H'0FFF'; MCLR pin enabled


;----- IDLOC Equates --------------------------------------------------
_IDLOC0          EQU  H'400'
_IDLOC1          EQU  H'401'
_IDLOC2          EQU  H'402'
_IDLOC3          EQU  H'403'

        LIST
