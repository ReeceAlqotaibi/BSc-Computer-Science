
;================================================================================= Snake Control Logic ============================================================================================================
; The snake movement value must be a hexadecimal value. To get this we convert from a binary byte. The byte is made up of two binary nibbles (a nibble is 4 bits) (2 nibbles make 8 bits, and 8 bits make a byte).
; The first nibble is used to control the direction in which the snake moves, using the following:
; 1 0 0 0 = Move the snake up (8)
; 0 1 0 0 = Move the snake down (4)
; 0 0 1 0 = Move the snake left (2)
; 0 0 0 1 = Move the snake right (1)
;
;
;The second nibble is used to control the distance in which the snake travels, using the following:
;Movement nibble = 		1	1	1	1
;Binary representation		8	4	2	1

;Currently using only the second nibble, the result of this (00001111) in binary is 15, which when converted to Hexadecimal (remembering that the snakes movement value must be a hex value) is F.
;Using what we know, we can copy a value such as 4F to the AL and this would move the snake down at a distance of 15
;	4		F
;      0100	       1111
;
; Similarly, moving a value to the AL such as 4C would move the snake down at a distance of 12, with the following:
;	4		C
;      0100	       1100


; ================================================================================ Snake and Maze ===================================================================================
	
	MOV	AL,FF	; Special code to reset the snake.
	OUT	04	; Sends the current value of AL to the snake (port 04)

	MOV	AL,4F	; Move 4F (Binary 01001111) to the AL register.
	MOV	BL,A	; Move A (Decimal 10) to the BL register.
	CALL 	D0	; Call the loop stored in address D0, which will run x times, where x is BL. The loop will move the snake every time the loop condition step is not met.
	
	MOV 	AL,1F	; Move 4F (Binary 01001111) to the AL register.
	MOV	BL,3	; Move Decimal 3 to the BL register.
	CALL D0		; Call the loop stored in address D0, which will run x times, where x is BL. The loop will move the snake every time the loop condition step is not met.

	MOV	AL,8F	; Move 4F (Binary 01001111) to the AL register.
	MOV	BL,4	; Move Decimal 4 to the BL register.
	CALL	D0	; Call the loop stored in address D0, which will run x times, where x is BL. The loop will move the snake every time the loop condition step is not met.

	MOV	AL,1F	; Move 1F (Binary 00011111) to the AL register.
	MOV	BL, 2	; Move Decimal 2 to the BL register.
	CALL	D0	; Call the loop stored in address D0, which will run x times, where x is BL. The loop will move the snake every time the loop condition step is not met.

	
	MOV	AL,4F	; Move 4F (Binary 01001111) to the AL register.
	MOV	BL, 4	; Move Decimal 4 to the BL register.
	CALL	D0	; Call the loop stored in address D0, which will run x times, where x is BL. The loop will move the snake every time the loop condition step is not met.

	MOV	AL,1F	; Move 1F (Binary 00011111) to the AL register.
	MOV	BL, 3	; Move Decimal 3 to the BL register.
	CALL	D0	; Call the loop stored in address D0, which will run x times, where x is BL. The loop will move the snake every time the loop condition step is not met.
	
	MOV	AL,8F	; Move 8F (Binary 10001111) to the AL register.
	MOV	BL, 7	; Move Decimal 7 to the BL register.
	CALL	D0	; Call the loop stored in address D0, which will run x times, where x is BL. The loop will move the snake every time the loop condition step is not met.

	MOV	AL,2F	; Move 2F (Binary 00101111) to the AL register.
	MOV	BL, 5	; Move Decimal 5 to the BL register.
	CALL	D0	; Call the loop stored in address D0, which will run x times, where x is BL. The loop will move the snake every time the loop condition step is not met.

	MOV	AL,8F	; Move 8F (Binary 10001111) to the AL register.
	MOV	BL, 3	; Move Decimal 3 to the BL register.
	CALL	D0	; Call the loop stored in address D0, which will run x times, where x is BL. The loop will move the snake every time the loop condition step is not met.

	MOV	AL,1F	; Move 1F (Binary 00011111) to the AL register.
	MOV	BL,7	; Move Decimal 7 to the BL register.
	CALL	D0	; Call the loop stored in address D0, which will run x times, where x is BL. The loop will move the snake every time the loop condition step is not met.

	MOV	AL,4F	; Move 4F (Binary 01001111) to the AL register.
	MOV	BL,A	; Move A (Decimal 10) to the BL register.
	CALL 	D0 	; Call the loop stored in address D0, which will run x times, where x is BL. The loop will move the snake every time the loop condition step is not met.


	
;============= While Loop Stored At Address [D0] =================

	ORG	D0	; Generate machine code from address [D0]

	PUSH	BL	; Save AL on the stack.
	PUSHF		; Save the CPU flags on the stack.
Rep:
	DEC	BL	; Subtract one from AL.
	OUT	04	; Send the current value of AL to Ourput 4
	JNZ	REP	; Jump back to Rep if BL was not Zero.

	POPF		; Restore the CPU flags from the stack.
	POP	BL	; Restore AL from the stack.

	RET		; Return from the procedure.



;=== End the programme === 

	END
	