.equ nanosleep, 162

@ Faz uma chamada a nanosleep
@R0 -> variavel com duas words
@ Primeira word = sec
@ Segunda word = nanosec
.macro nanoSleep time 
	LDR R0, =\time
	ADD R1, R0, #4
	MOV R7, #nanosleep	
	SVC 0


.endm