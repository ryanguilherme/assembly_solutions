# _5. Implement the following C program in MASM. Be sure to use proper spacing on all output. If necessary, first key in the C program and then implement the MASM program to insure the MASM program works identically to the C program:_
### OBS: Vou presumir que a ausência de aspas no começo do printf foi um erro de digitação., comentários sobre o código no arquivo .asm do código
```c
#include <stdio.h>
int main(){
    int x, y, z;
    x = 1;
    y = 2;
    z = 3;
    printf("\n%d%s%d%s%d\n\n", x, " + ", y, " = ", z);
    return 0;
}

```
<hr>

### **Resposta:**
```asm
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
            .data
x           sdword 1;
y           sdword 2;
z           sdword 3;
msg1        byte " + ", 0
msg2        byte " = ", 0
msgfmt      byte 0Ah, "%d%s%d%s%d", 0Ah, 0Ah, 0
            .code
main        proc
            INVOKE printf, ADDR msgfmt, x, ADDR msg1, y, ADDR msg2, z
            ret
main        endp
            end


```