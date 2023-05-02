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
            end

