            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
format      byte "%d", 0
narray      sdword 1, 2, 3, 4, 5
marray      sdword 10 dup(?)
oarray      sword 15, 20, 25

            .code
main        PROC
        ;    mov         eax, lengthof narray
        ;    mov         eax, sizeof   narray
        ;    mov         eax, lengthof marray
        ;    mov         eax, sizeof   marray
        ;    mov         eax, lengthof oarray
            mov         eax, sizeof   oarray

            INVOKE      printf, ADDR format, eax
            ret
main        endp
            end