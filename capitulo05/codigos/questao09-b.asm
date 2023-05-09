            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            
            .data
n           sdword ?
format      byte    "%d", 0

            .code
main        proc
            INVOKE      scanf, ADDR format, ADDR n
            mov         eax, 1
            .repeat
            .if         n > 0
                imul        n
                dec         n
            .endif
            .until      n == 0
            INVOKE      printf, ADDR format, eax
            ret
main        endp
            end