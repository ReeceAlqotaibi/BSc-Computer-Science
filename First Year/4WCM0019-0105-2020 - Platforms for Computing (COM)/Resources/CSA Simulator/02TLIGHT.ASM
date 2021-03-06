; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.

	MOV AL,0	; Turn off all the traffic lights.
	OUT 01		; Send AL to the output 01

	MOV AL,90	; Turn on both red lights
	OUT 01		; Send AL to port 01

Loop:	;======= LIGHTS HAVE BEEN INITIALISED, BEGIN LOOP======

	MOV AL,D0	; Turn on MSB red + amber, LSB still red
	OUT 01		; Send AL to the output 01

	MOV AL,30	;Turn off MSB red + amber, Turn on MSB Green. LSB still red
	OUT 01 		; Send AL to the output 01

	MOV AL,50	;Turns off MSB green, turns on MSB Amber, LSB still red.
	OUT 01		; Send AL to the output 01

	MOV AL,98	;Turns off MSB amber, turns on MSB red. Turns on LSB red + amber.
	OUT 01		; Send AL to the output 01

	MOV AL,84	;MSB still red. Turns off LSB red and amber, turns on LSB green
	OUT 01		; Send AL to the output 01

	MOV AL,88	;MSB still red. Turns on  LSB amber
	OUT 01		; Send AL to the output 01

	JMP Loop	; Jump back to the start of the loop.


	END		; Program ends.
	
; ===== Program Ends ==========================================

	YOUR TASK
	=========
	Use the help page on Hexadecimal and ASCII codes.
	Work out what hexadecimal numbers will activate the
	correct traffic lights. Modify the program to step
	the lights through a realistic sequence.
