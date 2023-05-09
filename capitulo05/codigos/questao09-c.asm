            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg1:Ptr Byte, inputlist:VARARG

            .data
n           sdword ?
format      byte    "%d", 0

            .code
main        proc
            INVOKE      scanf, ADDR format, ADDR n
            mov         eax, 1
            mov         ecx, n
            .if         ecx > 0
            .repeat
            .if         ecx > 0
            imul        ecx
            .endif
            .untilcxz
            .endif
            INVOKE      printf, ADDR format, eax
            ret
main        endp
            end