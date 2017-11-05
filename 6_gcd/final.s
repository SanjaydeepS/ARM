     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
		MOV R1,#0xF    ; 1ST NUMBER A
		MOV R2,#0xA    ; 2ND NUMBER B
		MOV R3,#0x20000000

LOOP    CMP R1,R2
		BEQ END
		BGT IF
		SUB R2,R2,R1
		B LOOP
IF      SUB R1,R1,R2
        B LOOP
END     STR R1,[R3]    ; GCD OF A,B 	
				
		
stop B stop ; stop program
     ENDFUNC
     END