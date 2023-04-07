.include "gpio.s"
.include "sleep.s"

.equ PA_DATA_REG, 0x10
.equ PG_DATA_REG, 0xE8

.global _start

.macro _end
    MOV R0, #0
    MOV R7, #1
    SVC 0
.endm
@/////////////////////// Set Enable pin to Low-High-Low //////////////////
.macro enable
        GPIOPinLow EN
       
        nanoSleep time1ms

        GPIOPinHigh EN
        nanoSleep time1ms

        GPIOPinLow EN
        nanoSleep time1ms
        .ltorg
        
.endm
@/////////////////////// Set 4 bits Mode /////////////////////////////////
.macro setTo4BitsMode

    @  setup GPIOPinLow of Enable
	GPIOPinLow EN
    @  setup GPIOPinLow of RS
	GPIOPinLow RS

    @  setup GPIOPinLow of DB7
	GPIOPinLow D7

    @  setup GPIOPinLow of DB6
	GPIOPinLow D6

    @  setup GPIOPinHigh of DB5
	GPIOPinHigh D5

    @  setup GPIOPinLow of DB4
	GPIOPinLow D4
	.ltorg


.endm
@///////////////////////  Pin IN configurations Buttons //////////////////
.macro setButtonsIN

	@ setup GPIOPinIn of Button 1
	GPIOPinIn B1
	
	@ setup GPIOPinIn of Button 2	
	GPIOPinIn B2
	.ltorg
.endm


@///////////////////////  Set All Display pins to OUT ////////////////////
.macro setPinsOUT

    @ setup GPIOPinOut of RS
	GPIOPinOut RS

    @ setup GPIOPinOut of Enable
	GPIOPinOut EN
 
    @ setup GPIOPinOut of DB7
	GPIOPinOut D7

    @ setup GPIOPinOut of DB6
	GPIOPinOut D6

    @ setup GPIOPinOut of DB5
	GPIOPinOut D5

    @  setup GPIOPinOut of DB4
 	GPIOPinOut D4
 	.ltorg

.endm
@///////////////////////  Set All Display pins to Low ////////////////////
.macro allZeros

    @  setup GPIOPinLow of Enable
	GPIOPinLow EN
    @  setup GPIOPinLow of RS
	GPIOPinLow RS

    @  setup GPIOPinLow of DB7
	GPIOPinLow D7

    @  setup GPIOPinLow of DB6
	GPIOPinLow D6

    @  setup GPIOPinHigh of DB5
	GPIOPinLow D5

    @  setup GPIOPinLow of DB4
	GPIOPinLow D4
	.ltorg


.endm

@///////////////////////  Clear Display ////////////////////////////////
.macro clearDisplay

    @  setup GPIOPinLow of Enable
	GPIOPinLow EN
    @  setup GPIOPinLow of RS
	GPIOPinLow RS

    @  setup GPIOPinLow of DB7
	GPIOPinLow D7

    @  setup GPIOPinLow of DB6
	GPIOPinLow D6

    @  setup GPIOPinLow of DB5
	GPIOPinLow D5

    @  setup GPIOPinHigh of DB4
	GPIOPinHigh D4
	.ltorg

.endm

@///////////////////////  Return Home ////////////////////////////////////
.macro returnHome

    setTo4BitsMode
    .ltorg

.endm

@///////////////////////  Display Cursor /////////////////////////////////
.macro displayOnCursor

    @  setup GPIOPinLow of Enable
	GPIOPinLow EN
    @  setup GPIOPinLow of RS
	GPIOPinLow RS

    @  setup GPIOPinHigh of DB7
	GPIOPinHigh D7

    @  setup GPIOPinLow of DB6
	GPIOPinLow D6

    @  setup GPIOPinLow of DB5
	GPIOPinLow D5

    @  setup GPIOPinLow of DB4
	GPIOPinLow D4
	.ltorg

.endm

@///////////////////////  Set Letters Dictionary - First Collum //////////
.macro setLetters

    @  setup GPIOPinLow of Enable
	GPIOPinLow EN
    @  setup GPIOPinLow of RS
	GPIOPinLow RS

    @  setup GPIOPinLow of DB7
	GPIOPinLow D7

    @  setup GPIOPinHigh of DB6
	GPIOPinHigh D6

    @  setup GPIOPinLow of DB5
	GPIOPinLow D5

    @  setup GPIOPinLow of DB4
	GPIOPinLow D4
	.ltorg

.endm

@///////////////////////  Set Letters Dictionary - Second Collum /////////
.macro setLetters2

    @  setup GPIOPinLow of Enable
	GPIOPinLow EN
    @  setup GPIOPinLow of RS
	GPIOPinLow RS

    @  setup GPIOPinLow of DB7
	GPIOPinLow D7

    @  setup GPIOPinHigh of DB6
	GPIOPinHigh D6

    @  setup GPIOPinLow of DB5
	GPIOPinLow D5

    @  setup GPIOPinHigh of DB4
	GPIOPinHigh D4
	.ltorg

.endm

@///////////////////////  Display Letter T ///////////////////////////////
.macro letterT

    setLetters
    .ltorg

.endm
@///////////////////////  Display Letter I ////////////////////////////////
.macro letterI

    @  setup GPIOPinLow of Enable
	GPIOPinLow EN
    @  setup GPIOPinLow of RS
	GPIOPinLow RS

    @  setup GPIOPinHigh of DB7
	GPIOPinHigh D7

    @  setup GPIOPinLow of DB6
	GPIOPinLow D6

    @  setup GPIOPinLow of DB5
	GPIOPinLow D5

    @  setup GPIOPinHigh of DB4
	GPIOPinHigh D4
	.ltorg

.endm
@///////////////////////  Display Letter M ////////////////////////////////
.macro letterM

    @  setup GPIOPinLow of Enable
	GPIOPinLow EN
    @  setup GPIOPinLow of RS
	GPIOPinLow RS

    @  setup GPIOPinHigh of DB7
	GPIOPinHigh D7

    @  setup GPIOPinHigh of DB6
	GPIOPinHigh D6

    @  setup GPIOPinLow of DB5
	GPIOPinLow D5

    @  setup GPIOPinHigh of DB4
	GPIOPinHigh D4
	.ltorg

.endm
@///////////////////////  Display Letter E ////////////////////////////////
.macro letterE

    @  setup GPIOPinLow of Enable
	GPIOPinLow EN
    @  setup GPIOPinLow of RS
	GPIOPinLow RS

    @  setup GPIOPinLow of DB7
	GPIOPinLow D7

    @  setup GPIOPinHigh of DB6
	GPIOPinHigh D6

    @  setup GPIOPinLow of DB5
	GPIOPinLow D5

    @  setup GPIOPinHigh of DB4
	GPIOPinHigh D4
	.ltorg

.endm
@///////////////////////  Display Letter R ////////////////////////////////
.macro letterR

    @  setup GPIOPinLow of Enable
	GPIOPinLow EN
    @  setup GPIOPinLow of RS
	GPIOPinLow RS

    @  setup GPIOPinLow of DB7
	GPIOPinLow D7

    @  setup GPIOPinLow of DB6
	GPIOPinLow D6

    @  setup GPIOPinHigh of DB5
	GPIOPinHigh D5

    @  setup GPIOPinLow of DB4
	GPIOPinLow D4
	.ltorg

.endm

@///////////////////////  Set Number Dictionary - First Collum ///////////
.macro setNumbers

    @  setup GPIOPinLow of Enable
	GPIOPinLow EN
    @  setup GPIOPinLow of RS
	GPIOPinLow RS

    @  setup GPIOPinHigh of DB7
	GPIOPinHigh D7

    @  setup GPIOPinHigh of DB6
	GPIOPinHigh D6

    @  setup GPIOPinLow of DB5
	GPIOPinLow D5

    @  setup GPIOPinLow of DB4
	GPIOPinLow D4
	.ltorg

.endm
@///////////////////////  Set All Display pins to High  ////////////////////////////////
.macro setAllHigh

    @  setup GPIOPinHigh of Enable
	GPIOPinHigh EN
    @  setup GPIOPinHigh of RS
	GPIOPinHigh RS

    @  setup GPIOPinHigh of DB7
	GPIOPinHigh D7

    @  setup GPIOPinHigh of DB6
	GPIOPinHigh D6

    @  setup GPIOPinHigh of DB5
	GPIOPinHigh D5

    @  setup GPIOPinHigh of DB4
	GPIOPinHigh D4
	.ltorg

.endm
@///////////////////////  Display Inicialization /////////////////////////

.macro displayInitData

	GPIOPinLow EN
	nanoSleep time1ms

	setTo4BitsMode
	enable
	allZeros
	enable
	clearDisplay
	enable
	returnHome
	allZeros
	enable
	displayOnCursor
	enable


    @  setup GPIOPinHigh of RS
	GPIOPinHigh RS
	.ltorg
.endm
@///////////////////////  START TIMER PROGRAM ////////////////////////////
_start:
	@ Memory Mapping
	MemoryMap

	@ Sequence to turn on LED1
	GPIOPinOut LED1
	GPIOPinHigh LED1
	
	@ Macro call to set the display pins to OUT
	setPinsOUT

	@ Macro call to set the buttons pins to IN
	setButtonsIN

	@ Macro call tha initialize the 16x2 Display to be ready for data receving
	displayInitData

	@ Sequence to show "Timer" on the 16x2 Display
	setLetters
	enable
	letterT
	enable
	setLetters
	enable
	letterI
	enable
	setLetters
	enable
	letterM
	enable
	setLetters
	enable
	letterE
	enable
	setLetters2
	enable
	letterR
	enable

	@ Macro call to finish Program
	_end


.data

fileName: .asciz "/dev/mem"
gpioaddr: .word 0x1C20
pagelen: .word 0x1000
    
time:
	.word 2       @ Time in seconds
	.word 0       @ Time in nanosseconds
time5ms:
	.word 0       @ Time in seconds
	.word 5000000 @ Time in nanosseconds

time1ms:
	.word 0       @ Time in seconds
	.word 1500000 @ Time in nanosseconds
time1micros:
	.word 0       @ Time in seconds
	.word 150000  @ Time in nanosseconds
    
PA9:
	.word 0x4  @offset of pin register
	.word 0x4  @offset of pin register function (LSB)
	.word 0x9  @offset of pin register set and clear
	.word 0x10 @offset of PA_DATA_REG

@///////////////////////  LEDs pins data /////////////////////////////////  
PA7:
	.word 0x0  @offset of pin register
	.word 0x1C @offset of pin register function (LSB)
	.word 0x7  @offset of pin register set and clear
	.word 0x10 @offset do PA_DATA_REG
	
LED1:
	.word 0x4  @offset of pin register
	.word 0x0  @offset of pin register function (LSB)
	.word 0x8  @offset of pin register set and clear
	.word 0x10 @offset do PA_DATA_REG

@/////////////////////// LCD pins data ///////////////////////////////////
	
@D7
D7:
	.word 0xD8 @offset of pin register
	.word 0x1C @offset of pin register function (LSB)
	.word 0x7  @offset of pin register set and clear
	.word 0xE8 @offset do PG_DATA_REG
@D6
D6:
	.word 0xD8 @offset of pin register
	.word 0x18 @offset of pin register function (LSB)
	.word 0x6  @offset of pin register set and clear
	.word 0xE8 @offset do PG_DATA_REG
@D5
D5:
	.word 0xDC @offset of pin register
	.word 0x4  @offset of pin register function (LSB)
	.word 0x5  @offset of pin register set and clear
	.word 0xE8 @offset do PG_DATA_REG
@D4
D4:
	.word 0xDC @offset of pin register
	.word 0x0  @offset of pin register function (LSB)
	.word 0x8  @offset of pin register set and clear
	.word 0xE8 @offset do PG_DATA_REG
	
@Enable
EN:
	.word 0x8  @offset of pin register
	.word 0x8  @offset of pin register function (LSB)
	.word 0x12 @offset of pin register set and clear
	.word 0x10 @offset do PA_DATA_REG
@RS
RS:
	.word 0x0  @offset of pin register
	.word 0x8  @offset of pin register function (LSB)
	.word 0x2  @offset of pin register set and clear
	.word 0x10 @offset do PA_DATA_REG
@RW
@GROUND


@/////////////////////// Buttons Pins Data ////////////////////////////////

@Botao 1 (Second Button from left to right or down upwards)
B1:
	.word 0x4  @offset of pin register
	.word 0x8  @offset of pin register function (LSB)
	.word 0xA  @offset of pin register set and clear
	.word 0x10 @offset do PA_DATA_REG

@Botao 2 (Third Button from left to right or down upwards)
B2:
	.word 0x8  @offset of pin register
	.word 0x10 @offset of pin register function (LSB)
	.word 0x14 @offset of pin register set and clear
	.word 0x10 @offset do PA_DATA_REG
	


