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
