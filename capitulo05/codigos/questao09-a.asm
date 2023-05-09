            .686
            .model flat, c
            .stack 100h
scanf       PROTO arg1:Ptr Byte, inputlist:VARARG
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
n           sdword ?
format      byte "%d", 0

            .code
main        proc
            INVOKE      scanf, ADDR format, ADDR n
            mov         eax, 1
            .while      n > 0
            imul        n
            dec         n
            .endw
            INVOKE      printf, ADDR format, eax
            ret
main        endp
            end
