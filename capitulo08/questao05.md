# 5. Write both the C code and the assembly code to transfer the contents of a 20-element array of integers to a second 20-element array of integers.

## **Código C:**
[Código C aqui](codigos/questao05.c)
> TESTADO: OK
```c
#include <stdio.h>

int main(){
    int array[20] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
    int second_array[20];

    for(int i = 0; i < 20; i++){
        second_array[i] = array[i];
    }

    for (int i = 0; i < 20; i++){
        printf("%d ", second_array[i]);
    }
}
```
---

## **Código ASM:**
[Código ASM aqui](codigos/questao05.asm)
> TESTADO: OK
```asm
                .686
                .model flat, c
                .stack 100h
printf          PROTO arg1:Ptr Byte, printlist:VARARG
scanf           PROTO arg2:Ptr Byte, inputlist:VARARG
                .data

format          byte "%d", 0
array           sdword 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105
second_array    sdword 20 dup(?)
                
                .code
main            proc
                mov             ecx, lengthof array
                .repeat
                mov             eax, array[ecx*4-4]
                mov             second_array[ecx*4-4], eax
                .untilcxz

                mov             eax, second_array+76            ; apenas checando o valor do ultimo indice, resultado ok

                INVOKE          printf, ADDR format, eax

                ret
main            endp
                end
```