# _8. Write an assembly language program to create the following input and output with the spacing shown._

```
Enter a number: 1
Enter a number: 2

Numbers
   1
   2
```
<hr>

### **Resposta:**
```asm
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
num1        sdword ?
num2        sdword ?
inpfmt      byte "%d", 0
inpmsg      byte "Enter a number: ", 0
msgspc      byte 0Ah, "   ", 0
msg0        byte 0Ah, "Numbers", 0
outfmt      byte "%s%d", 0
            .code
main        proc
            INVOKE printf, ADDR inpmsg
            INVOKE scanf, ADDR inpfmt, ADDR num1
            INVOKE printf, ADDR inpmsg
            INVOKE scanf, ADDR inpfmt, ADDR num2
            INVOKE printf, ADDR msg0
            INVOKE printf, ADDR outfmt, ADDR msgspc, num1
            INVOKE printf, ADDR outfmt, ADDR msgspc, num2
            ret
main        endp
            end
```
<hr>