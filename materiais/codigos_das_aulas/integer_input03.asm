            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
in1fmt      byte "%d", 0
msg0fmt     byte 0Ah, "%s", 0
msg1fmt     byte 0Ah, "%s%d", 0Ah, 0Ah, 0
msg0        byte "Enter an integer for num1: ", 0
msg1        byte "The integer in num2 is: ", 0
num1        sdword ?
num2        sdword ?
            .code
main        proc
            INVOKE printf, ADDR msg0fmt, ADDR msg0
            INVOKE scanf, ADDR in1fmt, ADDR num1
            mov eax, num1
            mov num2, eax
            INVOKE printf, ADDR msg1fmt, ADDR msg1, num2
            ret
main        endp
            end