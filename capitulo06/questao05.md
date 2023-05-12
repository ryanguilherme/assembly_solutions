# **5.** _Similar to the program in Sect. 6.8, write a program to simulate a security alarm system according to the following table, where it is possible that any of the first three high-priority items could happen at the same time. Although the last three items can also occur at the same time, the program should check and output messages for them only when none of the higher priority first three items have occurred._<br><br>_Bit message_<br><br>0 Fire alarm<br><br>1 Carbon monoxide<br><br>2 Power outage<br><br>3 Gate unlocked<br><br>4 Door open<br><br>5 Window open<br><br>

## _Sect 6.8 program_

```asm
                .686
                .model flat,c
                .stack 100h
scanf           PROTO arg2:Ptr Byte, inputlist:VARARG
printf          PROTO arg1:Ptr Byte, printlist:VARARG
.data
.code
msg1fmt         byte "%s",0
in1fmt          byte "%x",0
msg2fmt         byte "%s%x",0Ah,0Ah,0
msg1            byte 0Ah,"Enter a hexadecimal number: ",0
msg2            byte "The hexadecimal number is: ",0
msgshort        byte "SHORT DOCUMENT",0Ah,0
msglong         byte "LONG DOCUMENT",0Ah,0
msgclose        byte "CLOSE FEED",0Ah,0
msgmult         byte "MULTIPLE FEED",0Ah,0
msgskew         byte "EXCESSIVE SKEW",0Ah,0
msgfeed         byte "DOCUMENT MISFEED",0Ah,0
msgjam          byte "DOCUMENT JAM",0Ah,0
msgerror        byte "UNSPECIFIED ERROR",0Ah,0
dsb         dword ?
main        proc
            ; 6.8 Complete Program: Simulating an OCR Machine 117
            INVOKE      printf, ADDR msg1fmt,ADDR msg1
            INVOKE      scanf, ADDR in1fmt,ADDR dsb
            INVOKE      printf, ADDR msg2fmt, ADDR msg2, dsb
            .while      dsb<=0ffh
            test        dsb, 00000001b
            .if         !ZERO? ; if bit 0 = 1 then
            INVOKE      printf, ADDR msg1fmt,ADDR msgshort
            .endif
            test        dsb, 00000010b
            .if         !ZERO? ; if bit 1 = 1 then
            INVOKE      printf, ADDR msg1fmt,ADDR msglong
            .endif
            test        dsb,00000100b
            .if         !ZERO? ; if bit 2 = 1 then
            INVOKE      printf, ADDR msg1fmt,ADDR msgclose
            .endif
            test        dsb,00001000b
            .if         !ZERO? ; if bit 3 = 1 then
            INVOKE      printf, ADDR msg1fmt,ADDR msgmult
            .endif
            test        dsb,00010000b
            .if         !ZERO? ; if bit 4 = 1 then
            INVOKE      printf, ADDR msg1fmt,ADDR msgskew
            .endif
            test        dsb,00100000b
            .if         !ZERO? ; if bit 5 = 1 then
            INVOKE      printf, ADDR msg1fmt,ADDR msgfeed
            .endif
            test        dsb,01000000b
            .if         !ZERO? ; if bit 6 = 1 then
            INVOKE      printf, ADDR msg1fmt,ADDR msgjam
            .endif
            test        dsb,10000000b
            .if         !ZERO? ; if bit 7 = 1 then
            INVOKE      printf, ADDR msg1fmt,ADDR msgerror
            .endif
            INVOKE      printf, ADDR msg1fmt,ADDR msg1
            INVOKE      scanf, ADDR in1fmt,ADDR dsb
            INVOKE      printf, ADDR msg2fmt,ADDR msg2, dsb
            .endw
            ret
main        endp
            end
```
<hr>

### **Resposta:**

