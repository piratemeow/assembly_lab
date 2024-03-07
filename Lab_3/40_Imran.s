				AREA test, CODE, READONLY
                ENTRY                ; starting point of the code execution
                EXPORT main          ; declaration of identifier main

main            ; address of the main function

				;shift operations on 32 bits
				
				MOV r1, #0x00000101
				
				LSL r3,r1, #2 ; shifts r1's value to 2 bits left
				LSR r4,r1, #1 ; shifts r1's value to 2 bits right
				MOV r2, #-3
				ASR r2,r1, #1; arithmetic shifts r1's value to 2 bits right
				ROR r6,r1, #2 ; rotates right
				
				
				; 2nd problem
				MOV r1, #0x00000000
				MOV r2, #0x00000001
				MOV r3, #0x00000000
				MOV r4, #0x00000001
				
				AND r5,r1,r2 ;WX
				
				AND r6,r3,r4 ;YZ
				
				BIC r7,r6,r5
				MVN r7,r7 ; ~(~(WX).(YZ))
				
				
				; 3rd prob
				MOVW r1, #0x000020F2
				MOVW r2, #0x000030F0
				MOVW r3, #0x0000C4F8
				MOV r10, #0x0000003F
				
				LSL r1,r1, #17  
				LSR r1,r1, #26 ; P
				
				LSL r2,r2, #25
				LSR r2,r2, #26
				;AND r2,r10  ; Q
				
				
				LSL r3,r3, #21
				LSR r3,r3, #26
				;AND r3,r10 ; R
				
				EOR r4,r2,r3 ; Q^R
				ORR r5,r4,r1 ; P + Q^R
				
				MOV r10, #0x0000003E
				AND r6,r5,r10 ;Final result
				
				
				
				

Stop            B Stop               ; Infinite loop to stop execution

                END                  ; End of the program