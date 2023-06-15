# _2. Using MASM directives, write an assembly language code segment to implement the following:_
### **OBS:** as variáveis a, b, c e d são respecitvamente avar, bvar, cvar e dvar, pois devido a linha model flat, c, não podemos declarar uma variável chamada 'c'
### **OBS':** no código já está implementado um teste para quando a = 5, b = 4, c = 3 e d = 2.
<hr>

>> Correção: 0,3.

```c
if (a > b)
    a = a - 1
else
    if (b >= c)
        b = b - 2;
    else
        if (c > d)
            c = c + d;
        else
            d = d / 2;
```
<hr>

### **Resposta:**
```asm
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
avar        sdword 5
bvar        sdword 4
cvar        sdword 3
dvar        sdword 2
outfmt      byte 0Ah, "%d", 0

            .code
main        proc
            mov     eax, bvar
            .if     avar > eax
            dec     avar
            .else
            mov     eax, cvar
            .if     bvar >= eax
            sub     bvar, 2
            .else
            mov     eax, dvar
            .if     cvar > eax
            add     cvar, eax
            .else
            mov     eax, dvar
            mov     ebx, 2
            idiv    ebx
            mov     dvar, eax
            .endif
            .endif
            .endif
            INVOKE printf, ADDR outfmt, avar
            INVOKE printf, ADDR outfmt, bvar
            INVOKE printf, ADDR outfmt, cvar
            INVOKE printf, ADDR outfmt, dvar
            ret
main        endp
            end
            
```