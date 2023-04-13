# _7. Given the following input and output, write both the C and assembly code necessary to make it look exactly as below. Pay careful attention to spacing and the blank lines:_

## _Input and Output_
```
Enter a number: 1
Enter a larger number: 3
Enter an even larger 
number: 5

1 < 3 < 5 

5 > 3 > 1
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
num3        sdword ?
inpfmt      byte "%d", 0
msglt       byte " < ", 0
msggt       byte " > ", 0
outfmt      byte 0Ah, "%d%s%d%s%d", 0Ah, 0
msg1        byte "Enter a number: ", 0
msg2        byte "Enter a larger number: ", 0
msg3        byte "Enter a even larger", 0Ah, "number: ", 0
            .code
main        proc
            INVOKE printf, ADDR msg1
            INVOKE scanf, ADDR inpfmt, ADDR num1
            INVOKE printf, ADDR msg2
            INVOKE scanf, ADDR inpfmt, ADDR num2
            INVOKE printf, ADDR msg3
            INVOKE scanf, ADDR inpfmt, ADDR num3
            INVOKE printf, ADDR outfmt, num1, ADDR msglt, num2, ADDR msglt, num3
            INVOKE printf, ADDR outfmt, num3, ADDR msggt, num2, ADDR msggt, num1
            ret
main        endp
            end
```
<hr>