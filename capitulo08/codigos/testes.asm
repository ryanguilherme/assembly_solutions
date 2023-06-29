            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
temp        sdword 5, 7
format      byte "%d", 0

            .code
main        PROC
            mov         esi, offset temp+4
            mov         eax, 2
            imul        [esi]

            INVOKE      printf, ADDR format, eax
            ret
main        endp
            end