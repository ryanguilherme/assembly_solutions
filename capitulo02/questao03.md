# _3. Given the following MASM program, what will be output to the screen? Be sure to line everything up properly. Use a lowercase letter b to represent a blank and the words blank line to represent a blank line:_

<code style='color:pink'>
            .686<br>
            .model flat, c<br> 
            .stack 100h<br>
printf      PROTO arg1:Ptr Byte, printlist:VARARG<br>
            .data<br>
msg1fmt     byte "%s%d",0<br>
msg2fmt     byte "%s%d",0Ah,0Ah,0Ah,0<br>
msg3fmt     byte "%s%d",0Ah,0<br> 
msg1        byte "x ",0 <br>
msg2        byte " y ",0 <br>
msg3        byte "z ",0<br>
num1        sdword 1 <br>
num2        sdword 2 <br>
num3        sdword 3 <br>
            .code<br>
main        proc<br>
            INVOKE printf, ADDR msg1fmt, ADDR msg1, num1<br>
            INVOKE printf, ADDR msg2fmt, ADDR msg2, num2<br>
            INVOKE printf, ADDR msg3fmt, ADDR msg3, num3<br>
            ret<br>
main        endp<br>
            end<br>
</code>
<hr>

### **Resposta:**
### xb1
### byb2
### blank line
### blank line
### blank line
### zb3
### blank line