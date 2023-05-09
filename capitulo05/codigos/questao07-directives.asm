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
            .repeat
            mov         ecx, i
            add         sum, ecx
            sub         i, 2
            .until      i < 0
            INVOKE      printf, ADDR outfmt, sum
            ret
main        endp
            end
