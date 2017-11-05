     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION	
		MOV R5,#0x20000000
		MOV R1,#8     ; 1ST NUMBER A 
		MOV R2,#4	  ; 2ND NUMBER B
		MOV R3,#6	  ; 3RD NUMBER C

		CMP R1,R2	  
		BGE AGB       
		CMP R2,R3     
		BGE BGC	      
		MOV R4,R3     ; R4 LARGEST NUMBER
		B FINAL
BGC     MOV R4,R2
		B FINAL
AGB		CMP R1,R3
		BGE AGC
		MOV R4,R3
		B FINAL
AGC		MOV R4,R1
		B FINAL
FINAL   STR R4,[R5]		
				
		
stop B stop ; stop program
     ENDFUNC
     END