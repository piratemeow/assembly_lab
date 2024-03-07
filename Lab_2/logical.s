				AREA test, CODE, READONLY
                ENTRY                ; starting point of the code execution
                EXPORT main          ; declaration of identifier main

main            ; address of the main function
				; Task 1 
				; for 16 bit integers
                MOVW r1, #0 ; will only accept 16 bit numbers
				MOVW r2, #1 ; will only accept 16 bit numbers
				AND r4,r2,r1 ; AND
				ORR r5,r2,r1 ; OR
				MVN r6,r1 ; NOT
				EOR r7,r1,r2 ; XOR
				MVN r8,r7 ; XNOR
				
				
				;for 32 bit variables
				
				MOV r1, #0xFFFFFFFF ;32 bit 
				MOV r2, #0x00000000 ;32 bit
				AND r4,r2,r1 ; AND
				ORR r5,r2,r1 ; OR
				MVN r6,r1 ; NOT
				EOR r7,r1,r2 ; XOR
				MVN r8,r7 ; XNOR
				
				
				; Task 2
				; addition, substraction, multiplication
				
				MOV r1, #0xFFFFFFFF
				MOV r2, #0xFFFFFFFF
				ADD r3, r1,r2 
				SUB r4, r1,r2
				MUL r5, r1,r2
				
				ADDS r3,r1,r2 ; S suffix makes the PSR floags to set or reset
				MOV r1,#0xFF
				MOV r2,#0xF
				SUBS r3,r2,r1 
				
				
				
				
				; 
				

Stop            B Stop               ; Infinite loop to stop execution

                END                  ; End of the program