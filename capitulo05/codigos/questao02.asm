            .686
            .model flat, c
            .stack 100h
printlist   PROTO arg1:Ptr Byte, printlist:VARARG
inputlist   PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
x           sdword ?
y           sdword ?
i           sdword ?
ans         sdword ?

            .code
main        proc
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
main        endp
            end