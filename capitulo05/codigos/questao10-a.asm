            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg1:Ptr Byte, inputlist:VARARG
            
            .data
n           sdword ?
first       sdword ?
second      sdword ?
acc         sdword ?

format      byte    "%d", 0

            .code
main        proc
            INVOKE      scanf, ADDR format, ADDR n
            mov         first, 0
            mov         second, 1
            mov         acc, 0
            mov         eax, 0
            mov         ecx, 0
            .if         n == 0 || n == 1
            add         eax, 1
            .else
            

            INVOKE      printf, ADDR format, eax
            ret
main        endp
            end