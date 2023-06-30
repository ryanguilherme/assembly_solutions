            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
format      byte "%d", 0

z           sdword 1, 2, 3, 4, 5
i           sdword 2
j           sdword 3

            .code
main        PROC
            ; z[i] = z[j]
            mov         edx, j
            mov         eax, z[edx*4]
            mov         edx, i
            mov         z[edx*4], eax

            mov         eax, z+8

            INVOKE      printf, ADDR format, eax
            ret
main        endp
            end