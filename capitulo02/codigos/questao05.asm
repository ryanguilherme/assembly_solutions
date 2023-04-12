            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
x           sdword 1;
y           sdword 2;
z           sdword 3;
msg1        byte " + ", 0
msg2        byte " = ", 0
msgfmt      byte 0Ah, "%d%s%d%s%d", 0Ah, 0Ah, 0

            .code
main        proc
            INVOKE printf, ADDR msgfmt, x, ADDR msg1, y, ADDR msg2, z
            ret
main        endp
            end
