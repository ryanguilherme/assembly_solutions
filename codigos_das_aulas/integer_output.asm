            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1: Ptr Byte, printlist:VARARG
            .data
msg1fmt     byte "%s%d", 0Ah, 0
msg1        byte "The number is:", 0
number      sdword ?
            .code
main        proc
            mov number, 5
            INVOKE printf, ADDR msg1fmt, ADDR msg1, number
            ret
main        endp
            end

