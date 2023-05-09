# _7. Implement the following do-while loop first using the .repeat - .until directives and then using only compares, and conditional and unconditional jumps:_

```c
i = 10;
sum = 0;
do {
    sum = sum + i;
    i = i - 2;
} while i > 0;
```

### **Resposta:**
### _.repeat - .until_
```asm
mov         i, 10
mov         sum, 0
.repeat
mov         ecx, i
add         sum, ecx
sub         i, 2
.until      i < 0
INVOKE      printf, ADDR outfmt, sum
ret
```
### _compares e jumps_
```asm
            mov         i, 10
            mov         sum, 0
while01:    nop
            cmp         i, 0
            jle         endw01
            mov         ecx, i
            add         sum, ecx
            sub         i, 2
            jmp         while01
endw01:     nop
            INVOKE      printf, ADDR outfmt, sum
            ret
```