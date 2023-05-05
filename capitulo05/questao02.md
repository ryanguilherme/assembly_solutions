# _2. Implement the last code segment in Sect. 5.1 without using directives and using only conditional and unconditional jumps._

## _*Last code segment in Sect. 5.1*_
```asm
mov         ans, 0          ; initialize ans to 0
.if         x != 0          
mov         ecx, 1          ; initialize ecx to 1
.while      ecx <= y
add         eax, x          ; add x to eax
mov         ans, eax        ; store eax in ans
inc         ecx             ; increment ecx by one
.endw
mov         i, ecx          ; store ecx in i
.endif

```
<hr>

### **Resposta:**
```asm
            mov     ans, 0
if01:       nop
            cmp     x, 0
            je      endif01
            mov     ecx, 1
while01:    nop
            cmp     ecx, y
            jg      endw01
            add     eax, x
            mov     ans, eax
            inc     ecx
endw01:     nop
            mov     i, ecx
endif01:    nop
            ret
```