; Correção: 1,0 
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg1:Ptr Byte, inputlist:VARARG
            
            .data
n           sdword ?
result      sdword ?

format      byte    "%d", 0

            .code
main        proc
            INVOKE      scanf, ADDR format, ADDR n
            
            mov         eax, 0
            mov         ebx, 0
            mov         ecx, 0
            mov         edx, 0
            .while      ecx < n
            .if         ecx <= 1
            mov         eax, ecx
            mov         result, eax
            mov         edx, eax
            .else
            add         eax, edx
            add         eax, ebx
            mov         ebx, edx
            mov         edx, eax
            mov         result, eax
            mov         eax, 0
            .endif
            inc         ecx
            .endw
            .if         n == 1
            mov         result, 1'
            .endif

            INVOKE      printf, ADDR format, result
            ret
main        endp
            en'