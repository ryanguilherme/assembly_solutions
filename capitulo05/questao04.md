# _4. Implement the .repeat and .until directive at the end of Sect. 5.2 using only compare and jump instructions, along with the appropriate label names._

> Correção: 0,1

## _.repeat and .until directive ant the end of Sect. 5.2_

```asm
mov         ans, 0
.if         y != 0
mov         ecx, 1
.repeat
mov         eax, ans
add         eax, x
mov         ans, eax
inc         ecx
.until      ecx > y
mov         i, ecx
.endif
```
<hr>

### **Resposta:**
```asm
            mov     ans, 0
if01:       nop
            cmp     y, 0
            je      endif01
            mov     ecx, 1
for01:      nop
            mov     eax, ans
            add     eax, x
            mov     ans, eax
            inc     ecx
            cmp     ecx, y
            jle     for01
endfor01:   nop
            mov     i, ecx
endif01:    nop
```