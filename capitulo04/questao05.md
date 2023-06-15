# _5. Implement the following C switch statement, which does not have a default statement, using compares, jumps, and appropriate labels. If number does not contain a 0 through 3, then the value of count should not change:_
### **OBS:** no código já está implementado um teste para quando number = 1 e count = 5.
<hr>

> Correção: 0,1. Se você fizer number == 2, nada executa. 

```c
switch number {
    case 0:
    case 1: count = count + 2;
            break;
    case 2:
    case 3: count = count - 2;
}
```
### **Resposta:**
```asm
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
number      sdword 1
count       sdword 5
outfmt      byte 0Ah, "%d", 0

            .code
main        proc
if01:       cmp     number, 1
            jne     if02
then01:     add     count, 2
endif01:    nop
if02:       cmp     number, 3
            jne     endif02
then02:     sub     count, 2
endif02:    nop
            INVOKE  printf, ADDR outfmt, count
            ret
main        endp
            end

```
