            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
format      byte "%d", 0

;           esse teste deve retornar 3, pois esta movendo y[2] para y[3]
y           sdword 1, 2, 3, 4, 5
i           sdword 2

            .code
main        PROC
            ; y[i+1] = y[i]
            mov         eax, i          ; guarda i em eax
            mov         ebx, 4          ; move 4 para ebx para multiplicar eax
            imul        ebx             ; multiplica eax por 4 para obter o índice em assembly equivalente ao índice em C
            mov         ecx, eax
            add         ecx, 4          ; agora ecx equivale a i+1
            mov         edx, y[eax]     ; edx = y[i]
            mov         y[ecx], edx     ; y[i+1] = y[i]

            mov         eax, y+12
            INVOKE      printf, ADDR format, eax
            ret
main        endp
            end