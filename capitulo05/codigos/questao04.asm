            .686
            .model flat, c
            .stack 100h

            .data
x           sdword ?
y           sdword ?
i           sdword ?
ans         sdword ?

            .code
main        proc
            mov     ans, 0
if01:       nop
            cmp     y, 0
            je      endif01
            mov     ecx, 1
for01:      nop
            mov     eax, ans
            add     eax, x
            mov     ans, eax
            inc     ecx
            cmp     ecx, y
            jle     for01
endfor01:   nop
            mov     i, ecx
endif01:    nop
            ret
main        endp
            end
