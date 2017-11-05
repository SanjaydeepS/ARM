     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
		MOV R4,#0x20000000; 
		MOV R1,#7        ; NUMBER
		AND R2,R1,#1
		CMP R2,#0
		BEQ EVEN
		MOV R3,#0xFF        ; IF ODD R3=0xFF
		B LAST
EVEN	MOV R3,#0xEE		 ; IF EVEN R3=0xEE
LAST    STR R3,[R4]	
	
stop B stop ; stop program
     ENDFUNC
     END