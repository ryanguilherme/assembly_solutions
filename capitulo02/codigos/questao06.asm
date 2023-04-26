; Correção: 0,4. O segundo número está desalinhado.
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
num1        sdword ?
num2        sdword ?
inpfmt      byte "%d", 0
msg0fmt     byte 0Ah, "%s", 0
msg1fmt     byte 0Ah, "%s", 0Ah, 0Ah, 0
msg2fmt     byte "%s%d%s%d", 0Ah, 0Ah, 0
msgin0      byte "Enter a value for num1: ", 0
msgin1      byte "Enter a value for num2: ", 0
msg1        byte "num1 num2"
msg2        byte " ", 0

            .code
main        proc
            INVOKE printf, ADDR msg0fmt, ADDR msgin0
            INVOKE scanf, ADDR inpfmt, ADDR num1
            INVOKE printf, ADDR msg0fmt, ADDR msgin1
            INVOKE scanf, ADDR inpfmt, ADDR num2
            INVOKE printf, ADDR msg1fmt, ADDR msg1
            INVOKE printf, ADDR msg2fmt, ADDR msg2, num1, ADDR msg2, num2
            ret
main        endp
            end 