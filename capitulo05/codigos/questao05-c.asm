            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
dividend    sdword ?
divisor     sdword ?
quocient    sdword 0
remainder   sdword ?
inpformat   byte "%d%d", 0
outformat   byte "quocient: ", "%d", 0Ah, "remainder: ", "%d";


            .code
main        proc
            INVOKE      scanf, ADDR inpformat, ADDR dividend, ADDR divisor

            mov         ecx, dividend
            mov         ebx, divisor
            .repeat
            sub         ecx, ebx
            inc         quocient
            .untilcxz

            INVOKE      printf, ADDR outformat, quocient, remainder
            ret
main        endp
            end