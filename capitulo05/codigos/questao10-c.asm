            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg1:Ptr Byte, inputlist:VARARG
            
            .data
n           sdword ?
result      sdword ?
acc         sdword ?


format      byte    "%d", 0

            .code
main        proc
            INVOKE      scanf, ADDR format, ADDR n
            
            mov         eax, 0
            mov         ebx, 0
            mov         ecx, n
            mov         edx, 0
            mov         acc, 0
            .if         n <= 0
            mov         ecx, 1
            .endif
            .repeat
            .if         acc <= 1
            mov         eax, acc
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
            inc         acc
            .untilcxz
            .if         n == 1
            mov         result, 1
            .endif

            INVOKE      printf, ADDR format, result
            ret
main        endp
            end