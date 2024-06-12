;
; L_00.asm
;
; Created: 2/7/2024 7:56:21 PM
; Author : jlb
; Introduction to AVR assembler
;
/*
	1.DataSheet
		-AVR CPU Core
			-pipelining
	2.View Help
		-Assembler syntax **Register restriction (0-15 & 16-31)
		-Assembler directives
		-Expressions
			-functions
			-operands
			-operators
	3.Environment
		-Solution explorer
	4.Build
		-Segments and %usage
	5.Debug
		-CPU
		-Flash memory map
		-I/O
		-Register address (pag.309)
*/
; Created: 2024
; Author : jlb
;

; Replace with your application code
.cseg	//Code Segment initialization
.org 0x10 //Program Counter (PC) initialization
.def My_Register = r17 //simbolic name for register
.def counter = r16	//simbolic name for register

		ldi My_Register,0b0101_1010 ;0x5A
		ldi r21,0xff; //directly acces to register number
		out DDRB,r21;Port B output
		ldi counter,0x00; init counter

start:
		out PORTB,counter; write on port B
		inc counter ;increment counter
		rjmp start ; got to "start" and repeat
