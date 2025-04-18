************************************************************
*    REGISTER-ONLY INCLUDE FILE FOR THE ASM11 ASSEMBLER    *
************************************************************

#ifndef NOT
NOT                 equ       $FF                 ;XOR value to produce NOT result
#endif

#ifdef BASEZERO
                    #message  REGS is set to zero page RAM
REGS                equ       $0000               ;Register Base Address
#else
REGS                equ       $1000               ;Register Base Address
#endif
VECTORS             equ       $FFD6               ;Start of Vectors

                  * REGISTER BLOCK ABSOLUTES *

PORTA               equ       REGS+$00            ;Port A Data
PIOC                equ       REGS+$02            ;Parallel IO Control
PORTC               equ       REGS+$03            ;Port C Data
PORTB               equ       REGS+$04            ;Port B Data
PORTCL              equ       REGS+$05            ;Port C Latched Data
DDRC                equ       REGS+$07            ;Data Direction Register C
PORTD               equ       REGS+$08            ;Port D Data
DDRD                equ       REGS+$09            ;Data Direction Register D
PORTE               equ       REGS+$0A            ;Port E Data
CFORC               equ       REGS+$0B            ;Timer Compare Force
OC1M                equ       REGS+$0C            ;Output Compare 1 Mask
OC1D                equ       REGS+$0D            ;Output Compare 1 Data
TCNT                equ       REGS+$0E            ;Timer Count
TIC1                equ       REGS+$10            ;Timer Input Capture 1
TIC2                equ       REGS+$12            ;Timer Input Capture 2
TIC3                equ       REGS+$14            ;Timer Input Capture 3
TOC1                equ       REGS+$16            ;Timer Output Compare 1
TOC2                equ       REGS+$18            ;Timer Output Compare 2
TOC3                equ       REGS+$1A            ;Timer Output Compare 3
TOC4                equ       REGS+$1C            ;Timer Output Compare 4
TIC4                equ       REGS+$1E            ;Timer Input Capture 4
TOC5                equ       REGS+$1E            ;Timer Output Compare 5
TCTL1               equ       REGS+$20            ;Timer Control 1
TCTL2               equ       REGS+$21            ;Timer Control 2
TMSK1               equ       REGS+$22            ;Timer Interrupt Mask 1
TFLG1               equ       REGS+$23            ;Timer Interrupt Flag 1
TMSK2               equ       REGS+$24            ;Timer Interrupt Mask 2
TFLG2               equ       REGS+$25            ;Timer Interrupt Flag 2
PACTL               equ       REGS+$26            ;Pulse Accumulator Control
PACNT               equ       REGS+$27            ;Pulse Accumulator Counter
SPCR                equ       REGS+$28            ;SPI Control Register
SPSR                equ       REGS+$29            ;SPI Status Register
SPDR                equ       REGS+$2A            ;SPI Data Register
BAUD                equ       REGS+$2B            ;Baud Rate Control Register
SCCR1               equ       REGS+$2C            ;SCI Control 1
SCCR2               equ       REGS+$2D            ;SCI Control 2
SCSR                equ       REGS+$2E            ;SCI Status Register
SCDR                equ       REGS+$2F            ;SCI Data Register
ADCTL               equ       REGS+$30            ;AD Control Status Register
ADR1                equ       REGS+$31            ;AD Result 1
ADR2                equ       REGS+$32            ;AD Result 2
ADR3                equ       REGS+$33            ;AD Result 3
ADR4                equ       REGS+$34            ;AD Result 4
BPROT               equ       REGS+$35            ;Block Protect
EPROG               equ       REGS+$36            ;EPROG (E20 only, not E9)
OPTION              equ       REGS+$39            ;System Configuration Options
COPRST              equ       REGS+$3A            ;COP Reset
PPROG               equ       REGS+$3B            ;EEPROM Programming Control
HPRIO               equ       REGS+$3C            ;Highest Interrupt Priority
INIT                equ       REGS+$3D            ;INIT
CONFIG              equ       REGS+$3F            ;Configuration Register

CSSTRH              EQU       $105C               ;Clock Stetch (F1 only)
CSCTL               EQU       $105D               ;Program Chip Select (F1 only)
CSGADR              EQU       $105E               ;General Chip Select Address (F1 only)
CSGSIZ              EQU       $105F               ;General Chip Select Size (F1 only)

                    * END OF FILE *