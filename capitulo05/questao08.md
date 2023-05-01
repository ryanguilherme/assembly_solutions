# _8. Implement the last code segment in Sect. 5.5 using the loop instruction instead of .repeat and .untilcxz directives._

## _Last code segment in Sect. 5.5_

```asm
mov         ecx, 2
.repeat
mov         tempecx, ecx
mov         ecx, 3
.repeat
; body of nested loop
.untilcxz
mov         ecx, tempecx
.untilcxz
```

### **Resposta:**