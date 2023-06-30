            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
temp        sdword 5, 7
format      byte "%d", 0
y           sdword 1, 2, 3, 4, 5
i           sdword 1

            .code
main        PROC
            ; y[i+1] = y[i]
            mov         eax, i
            mov         ebx, 4
            imul        ebx
            mov         esi, offset y+i
            INVOKE      printf, ADDR format, eax
            ret
main        endp
            end