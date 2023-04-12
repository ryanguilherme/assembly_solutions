            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
x           sdword 1 ;salvando inteiro 1 em x
y           sdword 2 ;inteiro 2 em y
z           sdword 3 ;inteiro 3 em z
msg1        byte " + ", 0 ;string ' + '
msg2        byte " = ", 0 ;string ' = '
msgfmt      byte 0Ah, "%d%s%d%s%d", 0Ah, 0Ah, 0 ;string de formatacao para toda a saida

            .code
main        proc
            INVOKE printf, ADDR msgfmt, x, ADDR msg1, y, ADDR msg2, z
            ret
main        endp
            end
