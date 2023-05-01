# _4. Implement the .repeat and .until directive at the end of Sect. 5.2 using only compare and jump instructions, along with the appropriate label names._

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