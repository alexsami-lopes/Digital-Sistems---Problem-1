
@///////////////////////  Memory Mapping ///////////////////////////////////////////
.macro MemoryMap

    @Abre arquivo
    LDR R0, =fileName    @ R0 = filename
    MOV R1, #2           @ O_RDWR (Read and Write file permission)
    @MOV R2, #0666
    MOV R7, #5           @ sys_open
    SVC 0
    MOV R4, R0           @ saves file descriptor in R4

    @Mapeia os enderecos
    MOV R0, #0           @ Let Operating System chooses address
    LDR R1, =pagelen
    LDR R1, [R1]         @ memory size page
    MOV R2, #3           @ read and write protection
    MOV R3, #1           @ shared memory
    LDR R5, =gpioaddr    @ GPIO address / 4096
    LDR R5, [R5]
    MOV R7, #192         @ sys_mmap2
    SVC 0
    MOV R8, R0
    ADD R8, #0x800       @ base address

.endm

@///////////////////////  This macro sets pins to OUT configuration ////////////////

.macro GPIOPinOut pin

    LDR R0, =\pin        @ pin address is loaded
    LDR R1, [R0, #0] 	 @ offset of register pin
    LDR R2, [R0, #4]	 @ offset of pin register function (LSB)
    LDR R5, [R8, R1]     @ data pin register content
    MOV R0, #0b111       @ 3 bits mask to be cleared
    LSL R0, R2           @ @111 is shifted to pin register position
    BIC R5, R0           @ clear 3 bits in the position
    MOV R0, #1           @ move 1 to R0
    LSL R0, R2           @ shift the bit to function register position
    ORR R5, R0           @ adds 1 in the previously shifted position
    STR R5, [R8, R1]     @ stores the new value in the function register memory

.endm

@///////////////////////  This macro sets pins to IN configuration /////////////////
.macro GPIOPinIn pin
   
    LDR R0, =\pin        @ pin address is loaded
    LDR R1, [R0, #0]	 @ offset of register pin
    LDR R2, [R0, #4]	 @ offset of function register pin	
    LDR R5, [R8, R1]     @ data pin register content
    MOV R0, #0b111       @ 3 bits mask to be cleared
    LSL R0, R2           @ @111 is shifted to pin register position
    BIC R5, R0           @ clear 3 bits in the position
    STR R5, [R8, R1]     @ stores the new value in the function register memory

.endm


@///////////////////////  This macro sets a given pin to High //////////////////////

.macro GPIOPinHigh pin

    LDR R0, =\pin        @ pin address is loaded
    LDR R2, [R0, #8]     @ offset of data register pin
    LDR R1, [R0, #12]    @ offset of data pin register
    LDR R5, [R8, R1]     @ base address + data register
    MOV R4, #1           @ move 1 to R4
    LSL R4, R2           @ the bit is shifted to the data register pin position
    ORR R3, R5, R4       @ 1 is added in the previously shifted position
    STR R3, [R8, R1]     @ data register new value is stored in memory

.endm

@///////////////////////  This macro sets a given pin to Low ///////////////////////

.macro GPIOPinLow pin

    LDR R0, =\pin        @ carrega o endereco do pino
    LDR R2, [R0, #8]     @ offset of data register pin
    LDR R1, [R0, #12]    @ offset of data pin register
    LDR R5, [R8, R1]     @ base address + data register
    MOV R4, #1           @ move 1 to R4
    LSL R4, R2           @ the bit is shifted to the data register pin position
    BIC R5, R4           @ 1 is cleared in the previously shifted position
    STR R5, [R8, R1]     @ data register new value is stored in memory

.endm    