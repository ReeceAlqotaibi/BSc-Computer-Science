; =================================================================================================================================================================================================================
; ===== 99snake.asm ===============================================================================================================================================================================================
;=============Snake Control Logic==================================================================================================================================================================================
; The snake movement value must be a hexadecimal value. To get this we convert from a binary byte. The byte is made up of two binary nibbles (a nibble is 4 bits) (2 nibbles make 8 bits, and 8 bits make a byte).
; The first nibble is used to control the direction in which the snake moves, using the following:
; 1 0 0 0 = Move the snake up (8)
; 0 1 0 0 = Move the snake down (4)
; 0 0 1 0 = Move the snake left (2)
; 0 0 0 1 = Move the snake right (1)
;
;
;The second nibble is used to control the distance in which the snake travels, using the following:
;Movement nibble 		1	1	1	1
;Binary representation		8	4	2	1

;Currently using only the second nibble, the result of this (00001111) in binary is 15, which when converted to Hexadecimal (remembering that the snakes movement value must be a hex value) is F.
;Using what we know, we can copy a value such as 4F to the AL and this would move the snake down at a distance of 15
;	4		F
;      0100	       1111
;
; Similarly, moving a value to the AL such as 4C would move the snake down at a distance of 12, with the following:
;	4		C
;      0100	       1100
;==================================================================================================================================================================================================================


; ===== Snake and Maze =========================================================

	MOV	AL,FF	; Special code to reset the snake.
	OUT	04	; Sends the current value of AL to the snake (port 04)

	MOV	AL,4F	; Move 4F (Binary 01001111) to the AL register.
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)

	MOV 	AL,1F	; Move 4F (Binary 01001111) to the AL register.
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT 	04	; Sends the current value of AL to the snake (port 04)

	MOV	AL,8F	; Move 4F (Binary 01001111) to the AL register.
	OUT	04	; Sends the current value of AL to the snake (port 04)	
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)

	MOV	AL,1F	; Move 41 (Binary 00011111) to the AL register.
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	
	MOV	AL,4F	; Move 4F (Binary 01001111) to the AL register.
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)

	MOV	AL,1F	; Move 1F (Binary 00011111) to the AL register.
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	
	MOV	AL,8F	; Move 8F (Binary 10001111) to the AL register.
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)

	MOV	AL,2F	; Move 2F (Binary 00101111) to the AL register.
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)

	MOV	AL,8F	; Move 8F (Binary 10001111) to the AL register.
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	
	MOV	AL,1F	; Move 1F (Binary 00011111) to the AL register.
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)

	MOV	AL,4F	; Move 4F (Binary 01001111) to the AL register.
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	OUT	04	; Sends the current value of AL to the snake (port 04)
	
	END
; ==================================================================================================================================================================================================================