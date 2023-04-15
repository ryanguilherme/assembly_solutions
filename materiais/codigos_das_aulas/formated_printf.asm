            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
            .data
msg1fmt     byte "%s", 0Ah, 0
msg1        byte "Hello World", 0
            .code
main        proc
            INVOKE printf, ADDR msg1fmt, ADDR msg1
            ret
main        endp
            end
