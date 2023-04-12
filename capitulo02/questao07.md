# _7. Given the following input and output, write both the C and assembly code necessary to make it look exactly as below. Pay careful attention to spacing and the blank lines:_

## _Input and Output_
<code style='color:pink'>
<br>
Enter a number: 1<br>
Enter a larger number: 3<br>
Enter an even larger <br>
number: 5<br>
<br>
1 < 3 < 5 <br>
<br>
5 > 3 > 1
</code>
<br><br>
<hr>

### **Resposta:**
<code style='color:pink'>
            .686<br>
            .model flat, c<br>
            .stack 100h<br>
printf      PROTO arg1:Ptr Byte, printlist:VARARG<br>
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG<br><br>
            .data<br>
num1        sdword ?<br>
num2        sdword ?<br>
num3        sdword ?<br>
inpfmt      byte "%d", 0<br>
msglt       byte " < ", 0<br>
msggt       byte " > ", 0<br>
outfmt      byte 0Ah, "%d%s%d%s%d", 0Ah, 0<br>
msg1        byte "Enter a number: ", 0<br>
msg2        byte "Enter a larger number: ", 0<br>
msg3        byte "Enter a even larger", 0Ah, "number: ", 0<br><br>
            .code<br>
main        proc<br>
            INVOKE printf, ADDR msg1<br>
            INVOKE scanf, ADDR inpfmt, ADDR num1<br>
            INVOKE printf, ADDR msg2<br>
            INVOKE scanf, ADDR inpfmt, ADDR num2<br>
            INVOKE printf, ADDR msg3<br>
            INVOKE scanf, ADDR inpfmt, ADDR num3<br>
            INVOKE printf, ADDR outfmt, num1, ADDR msglt, num2, ADDR msglt, num3<br>
            INVOKE printf, ADDR outfmt, num3, ADDR msggt, num2, ADDR msggt, num1<br>
            ret<br>
main        endp<br>
            end
</code>
<hr>