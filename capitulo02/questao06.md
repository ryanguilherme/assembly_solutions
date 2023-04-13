# _6. Implement the following C program in MASM. Be sure to use proper spacing on all output. If necessary, first key in the C program and then implement the MASM program to insure the MASM program works identically to the C program:_
### OBS: Comentários sobre o código no arquivo .asm referente ao código, e vou presumir que esses 'n' isolados na verdade eram '\n' e foram erros de digitação.

<hr>

```c
#include <stdio.h>
    int main(){
    int num1, num2; 
    printf("\n%s","Enter a value for num1: ");
    scanf("%d",&num1); 
    printf("\n%s","Enter a value for num2: ");
    scanf("%d",&num2);
    printf("\n%s\n\n","num1 num2");
    printf("%s%d%s%d\n\n"," ",num1," ",num2);
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
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
num1        sdword ?
num2        sdword ?
inpfmt      byte "%d", 0
msg0fmt     byte 0Ah, "%s", 0
msg1fmt     byte 0Ah, "%s", 0Ah, 0Ah, 0
msg2fmt     byte "%s%d%s%d", 0Ah, 0Ah, 0
msgin0      byte "Enter a value for num1: ", 0
msgin1      byte "Enter a value for num2: ", 0
msg1        byte "num1 num2"
msg2        byte " ", 0
            .code
main        proc
            INVOKE printf, ADDR msg0fmt, ADDR msgin0
            INVOKE scanf, ADDR inpfmt, ADDR num1
            INVOKE printf, ADDR msg0fmt, ADDR msgin1
            INVOKE scanf, ADDR inpfmt, ADDR num2
            INVOKE printf, ADDR msg1fmt, ADDR msg1
            INVOKE printf, ADDR msg2fmt, ADDR msg2, num1, ADDR msg2, num2
            ret
main        endp
            end 
```