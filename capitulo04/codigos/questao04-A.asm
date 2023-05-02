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

            mov     eax, cvar
            .if     eax > dvar
            .if     bvar >= eax
            mov     eax, bvar
            .if     avar > eax
            dec     avar
            .else
            sub     bvar, 2
            .endif
            .else
            mov     eax, dvar
            add     cvar, eax
            .endif
            .else
            mov     eax, dvar
            mov     ebx, 2
            cdq
            idiv    ebx
            mov     dvar, eax
            .endif

            INVOKE printf, ADDR outfmt, avar, bvar, cvar, dvar
            ret
main        endp
            end

