# _4. Given the example of the if-then-else-if structure in Problem 2 above, re-implement it using a nested if-then-if structure:_

### **_Problem 2_**
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

## **A.** Use MASM directives.
### **Resposta:**
```asm
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
avar        sdword ?
bvar        sdword ?
cvar        sdword ?
dvar        sdword ?
outfmt      byte "%d %d %d %d", 0
inpfmt      byte "%d%d%d%d", 0

            .code
main        proc
            INVOKE scanf, ADDR inpfmt, ADDR avar, ADDR bvar, ADDR cvar, ADDR dvar

            mov     eax, bvar
            .if     avar <= eax
            .if     eax < cvar
            mov     eax, dvar
            .if     cvar <= eax
            mov     ebx, 2
            mov     eax, dvar
            cdq
            idiv    ebx
            mov     dvar, eax
            .else
            add     cvar, eax
            .endif
            .else
            sub     bvar, 2
            .endif
            .else
            dec     avar
            .endif

            INVOKE printf, ADDR outfmt, avar, bvar, cvar, dvar
            ret
main        endp
```

<hr>

## **B.** Do not use MASM directives, but rather compares, jumps, and appropriate labels.
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
if01:       cmp     avar, eax
            jbe     if02
then01:     dec     avar
endif01:    jmp     endall
if02:       mov     eax, cvar
            cmp     bvar, eax
            jb      if03
then02:     sub     bvar, 2
endif02:    jmp     endall
if03:       mov     eax, dvar
            cmp     cvar, eax
            jbe     if04
then03:     add     cvar, eax
endif03:    jmp     endall
if04:       mov     eax, dvar
then04:     mov     ebx, 2
            idiv    ebx
            mov     dvar, eax
endif04:    nop
endall:     nop
            INVOKE printf, ADDR outfmt, avar
            INVOKE printf, ADDR outfmt, bvar
            INVOKE printf, ADDR outfmt, cvar
            INVOKE printf, ADDR outfmt, dvar
            ret
main        endp
            end

```
