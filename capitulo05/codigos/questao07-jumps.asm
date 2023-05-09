            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
i           sdword ?
sum         sdword ?
outfmt      byte "%d", 0

            .code
main        proc
            mov         i, 10
            mov         sum, 0
while01:    nop
            cmp         i, 0
            jle         endw01
            mov         ecx, i
            add         sum, ecx
            sub         i, 2
            jmp         while01
endw01:     nop
            INVOKE      printf, ADDR outfmt, sum
            ret
main        endp
            end
