# _5. Implement the following C program in MASM. Be sure to use proper spacing on all output. If necessary, first key in the C program and then implement the MASM program to insure the MASM program works identically to the C program:_
### OBS: Vou presumir que a ausência de aspas no começo do printf foi um erro de digitação.
<code style='color:pink'>
#include <stdio.h>
int main(){<br>
    int x, y, z;<br>
    x = 1;<br>
    y = 2;<br>
    z = 3;<br>
    printf("\n%d%s%d%s%d\n\n", x, " + ", y, " = ", z);<br>
    return 0;<br>
}

</code>
<hr>

### **Resposta:**
<code style='color:pink'>
            .686<br>
            .model flat, c<br>
            .stack 100h<br>
printf      PROTO arg1:Ptr Byte, printlist:VARARG<br><br>
            .data<br>
x           sdword 1;<br>
y           sdword 2;<br>
z           sdword 3;<br>
msg1        byte " + ", 0<br>
msg2        byte " = ", 0<br>
msgfmt      byte 0Ah, "%d%s%d%s%d", 0Ah, 0Ah, 0<br><br>
            .code<br>
main        proc<br>
            INVOKE printf, ADDR msgfmt, x, ADDR msg1, y, ADDR msg2, z<br>
            ret<br>
main        endp<br>
            end<br>


</code>