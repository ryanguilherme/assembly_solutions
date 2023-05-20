            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg1:Ptr Byte, inputlist:VARARG
            
            .data
inpfmt      byte "%x", 0
msg1        byte 0Ah, "Enter a hexadecimal number: ", 0
error0      byte "FIRE ALARM", 0
error1      byte 0Ah, "CARBON MONOXIDE", 0
error2      byte 0Ah, "POWER OUTAGE", 0
error3      byte 0Ah, "GATE UNLOCKED", 0
error4      byte 0Ah, "DOOR OPEN", 0
error5      byte 0Ah, "WINDOW OPEN", 0
input       dword ?

            .code
main        proc
            INVOKE      printf, ADDR msg1
            INVOKE      scanf, ADDR inpfmt, ADDR input
            mov         ecx, 0
            test        input, 000001b
            .if         !ZERO?  
            INVOKE      printf, ADDR error0
            inc         ecx
            .endif
            test        input, 000010b
            .if         !ZERO?
            INVOKE      printf, ADDR error1
            inc         ecx
            .endif
            test        input, 000100b
            .if         !ZERO?
            INVOKE      printf, ADDR error2
            inc         ecx
            .endif
            .if         ecx == 0
            test        input, 001000b
            .if         !ZERO?
            INVOKE      printf, ADDR error3
            .endif
            test        input, 010000b
            .if         !ZERO?
            INVOKE      printf, ADDR error4
            .endif
            test        input, 100000b
            .if         !ZERO?
            INVOKE      printf, ADDR error5
            .endif
            .endif
            ret
main        endp
            end
            
