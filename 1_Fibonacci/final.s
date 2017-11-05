     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION	
		MOV R1,#0x20000000    ; INITIAL ADDRESS
		MOV R2,#10            ; SIZE OF THE SERIES
		MOV R6,#0
		MOV R7,#1
		
		STR R6,[R1]
		LDR R3,[R1]
		SUB R2,R2,#1
		
		ADD R1,R1,#4
		STR R7,[R1]
		LDR R4,[R1]
		SUB R2,R2,#1
		
LOOP			ADD R1,R1,#4
				ADD R5,R3,R4
				STR R5,[R1]
				SUB R2,R2,#1
				MOV R3,R4
				LDR R4,[R1]
				CMP R2,#0
				BNE LOOP
		
	 			
		
stop B stop ; stop program
     ENDFUNC
     END