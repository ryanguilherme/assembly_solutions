; Correção: 0,5
            .686
            .model flat, c
            .stack 100h
printf      PROTO   arg1:Ptr Byte, printlist:VARARG
scanf       PROTO   arg2:Ptr Byte, inputlist:VARARG

            .data
x           sdword  5
y           sdword  10
msg2        byte    "x is greater than y", 0
msg4        byte    "x is less than or equal to y", 0

            .code
main        proc

if01:       fld     y ; if x > y
            fld     x
            fcomip  st(0), st(1)
            jbe     else01
then01:     INVOKE  printf, ADDR msg2
            jmp     endif01
else01:     INVOKE  printf, ADDR msg4
endif01:    nop

            ret
main        endp
            end