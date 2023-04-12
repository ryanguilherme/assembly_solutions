# _6. Implement the following C program in MASM. Be sure to use proper spacing on all output. If necessary, first key in the C program and then implement the MASM program to insure the MASM program works identically to the C program:_
### OBS: Comentários sobre o código no arquivo .asm referente ao código, e vou presumir que esses 'n' isolados na verdade eram '\n' e foram erros de digitação.

<hr>
<code style='color:pink'>
#include <stdio.h><br>
    int main(){<br>
    int num1, num2; <br>
    printf("\n%s","Enter a value for num1: ");<br>
    scanf("%d",&num1); <br>
    printf("\n%s","Enter a value for num2: ");<br>
    scanf("%d",&num2);<br>
    printf("\n%s\n\n","num1 num2");<br>
    printf("%s%d%s%d\n\n"," ",num1," ",num2);<br>
    return 0;<br>
}
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
msg0fmt     byte 0Ah, "%s", 0<br>
msg1fmt     byte 0Ah, "%s", 0Ah, 0Ah, 0<br>
msg2fmt     byte "%s%d%s%d", 0Ah, 0Ah, 0<br>
msgin0      byte "Enter a value for num1: ", 0<br>
msgin1      byte "Enter a value for num2: ", 0<br>
msg1        byte "num1 num2"<br>
msg2        byte " ", 0<br><br>
            .code<br>
main        proc<br>
            INVOKE printf, ADDR msg0fmt, ADDR msgin0<br>
            INVOKE scanf, ADDR inpfmt, ADDR num1<br>
            INVOKE printf, ADDR msg0fmt, ADDR msgin1<br>
            INVOKE scanf, ADDR inpfmt, ADDR num2<br>
            INVOKE printf, ADDR msg1fmt, ADDR msg1<br>
            INVOKE printf, ADDR msg2fmt, ADDR msg2, num1, ADDR msg2, num2<br>
            ret<br>
main        endp<br>
            end <br>
</code>