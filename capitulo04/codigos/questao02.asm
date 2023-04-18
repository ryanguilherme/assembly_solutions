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
            

