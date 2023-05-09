            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
sum         sdword ?
n           sdword ?
format      byte "%d", 0
errormsg    byte "no sum to do, n <= 0", 0Ah, 0

            .code
main        proc
            INVOKE      scanf, ADDR format, ADDR n

            mov         sum, 0
            mov         ecx, n
            .if         n > 0
            .repeat
            add         sum, ecx
            .untilcxz
            INVOKE      printf, ADDR format, sum
            .else
            INVOKE      printf, ADDR errormsg
            .endif

            ret
main        endp
            end