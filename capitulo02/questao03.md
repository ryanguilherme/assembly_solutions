# _3. Given the following MASM program, what will be output to the screen? Be sure to line everything up properly. Use a lowercase letter b to represent a blank and the words blank line to represent a blank line:_

> Correção: 0,5

```asm
            .686
            .model flat, c 
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
            .data
msg1fmt     byte "%s%d",0
msg2fmt     byte "%s%d",0Ah,0Ah,0Ah,0
msg3fmt     byte "%s%d",0Ah,0 
msg1        byte "x ",0 
msg2        byte " y ",0 
msg3        byte "z ",0
num1        sdword 1 
num2        sdword 2 
num3        sdword 3 
            .code
main        proc
            INVOKE printf, ADDR msg1fmt, ADDR msg1, num1
            INVOKE printf, ADDR msg2fmt, ADDR msg2, num2
            INVOKE printf, ADDR msg3fmt, ADDR msg3, num3
            ret
main        endp
            end
```
<hr>

### **Resposta:**
### xb1
### byb2
### blank line
### blank line
### blank line
### zb3
### blank line