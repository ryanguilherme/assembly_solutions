# _4. Given the following MASM program, what will be output to the screen. Be sure to line everything up properly. Use a lowercase letter b to represent a blank and the words blank line to represent a blank line:_

<code style='color:pink'>
            .686<br>
            .model flat, c<br>
            .stack 100h<br>
printf      PROTO arg1:Ptr Byte, printlist:VARARG<br>
            .data<br>
msg1fmt     byte 0Ah,"%s%d%s%d%s",0Ah,0<br>
msg2fmt     byte 0Ah,"%s%d",0Ah,0Ah,0<br>
msg11       byte "The first number is ",0<br>
msg12       byte ", but the second number is ",0<br>
msg13       byte ",",0<br>
msg2        byte "while the third number is ",0<br>
num1        sdword 5 <br>
num2        sdword 7 <br>
num3        sdword 11<br>
            .code<br>
main        proc<br>
            INVOKE printf, ADDR msg1fmt, ADDR msg11, num1, ADDR msg12, num2, ADDR msg13<br>
            INVOKE printf, ADDR msg2fmt, ADDR msg2, num3<br>
            ret<br>
main        endp<br>
            end<br>
</code>
<hr>

### **Resposta:**
### blank line
### The first number isb5bbut the second number isb7,
### blank line
### blank line
### while the third number isb11
### bllank line
### blank line
