# _8. Write an assembly language program to create the following input and output with the spacing shown._
<br>
<code style='color:pink'>
Enter a number: 1<br>
Enter a number: 2<br>
<br>
Numbers<br>
   1<br>
   2
</code>
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
inpfmt      byte "%d", 0<br>
inpmsg      byte "Enter a number: ", 0<br>
msgspc      byte 0Ah, "   ", 0<br>
msg0        byte 0Ah, "Numbers", 0<br>
outfmt      byte "%s%d", 0<br><br>
            .code<br>
main        proc<br>
            INVOKE printf, ADDR inpmsg<br>
            INVOKE scanf, ADDR inpfmt, ADDR num1<br>
            INVOKE printf, ADDR inpmsg<br>
            INVOKE scanf, ADDR inpfmt, ADDR num2<br>
            INVOKE printf, ADDR msg0<br>
            INVOKE printf, ADDR outfmt, ADDR msgspc, num1<br>
            INVOKE printf, ADDR outfmt, ADDR msgspc, num2<br>
            ret<br>
main        endp<br>
            end
</code>
<hr>