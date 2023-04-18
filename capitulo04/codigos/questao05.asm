            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
number      sdword 1
count       sdword 5
outfmt      byte 0Ah, "%d", 0

            .code
main        proc
if01:       cmp     number, 1
            jne     if02
then01:     add     count, 2
endif01:    nop
if02:       cmp     number, 3
            jne     endif02
then02:     sub     count, 2
endif02:    nop
            INVOKE  printf, ADDR outfmt, count
            ret
main        endp
            end

            