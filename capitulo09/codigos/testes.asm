            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
string1     byte "abcde", 0Ah, 0
string2     byte "abcyz", 0Ah, 0

            .code
main        proc
            ; teste alternativa D questao 02
            mov     ecx, 5 
            mov     esi, offset string1
            mov     edi, offset string2
            repne   cmpsb

            INVOKE  printf, ADDR string2
            ret
main        endp
            end