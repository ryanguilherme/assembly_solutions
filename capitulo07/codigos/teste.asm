            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr byte, printlist:VARARG
scanf       PROTO arg2:Ptr byte, inputlist:VARARG

            .data
num         sdword 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
i           sdword 3
format      byte "%d", 0

            .code
main        PROC

            mov     ebx, i
            mov     eax, num[ebx]
            mov     num+4[ebx], eax

            mov     eax, num+8
            INVOKE  printf, ADDR format, eax

            ret
main        endp
            end
