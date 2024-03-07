				AREA Example, CODE, READONLY
                ENTRY                ; starting point of the code execution
                EXPORT main          ; declaration of identifier main

main            ; address of the main function
                ; Initialize Q, R, S
                MOV r1, #2           ; Q = 2
                MOV r2, #4           ; R = 4
                MOV r3, #5           ; S = 5

                ; user code starts from the next line
                ADD r0, r1, r2       ; P = Q + R, add Q to R and put in P
                ADD r0, r0, r3       ; P = P + S, add S to P and put the result in P

Stop            B Stop               ; Infinite loop to stop execution

                END                  ; End of the program