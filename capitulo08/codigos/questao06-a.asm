            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
array       sdword  17, 26, 3, 31, 44, 82, 9, 6, 0, 11, 251, 39, 5, 1
i           sdword  0
j           sdword  0     
n           sdword  ?  
tempecx     sdword  ?
temp        sdword  ?
format      byte    "%d ", 0

            .code
main        proc
            mov     n, lengthof array
            mov     ecx, n
            dec     ecx
            .repeat
            mov     tempecx, ecx
            mov     eax, n
            sub     eax, i
            sub     eax, 1 
            mov     ecx, eax 
            mov     j, 0

            .repeat
            mov     edx, j
            sal     edx, 2
            add     edx, offset array 
            mov     esi, edx
            add     edx, 4
            mov     edi, edx 
            mov     eax, [esi]
            mov     ebx, [edi]

            .if     eax > ebx 
            mov     [esi], ebx 
            mov     [edi], eax 
            .endif

            inc     j
            .untilcxz

            mov     ecx, tempecx
            inc     i
            .untilcxz

            mov     ecx, n
            mov     edi, offset array

            .repeat
            push    ecx
            mov     eax, [edi]
            mov     temp, eax
            INVOKE  printf, ADDR format, temp
            add     edi, 4
            pop     ecx
            .untilcxz

            ret
main        endp
            end