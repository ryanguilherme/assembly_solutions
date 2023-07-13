            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
x           sdword 5
y           sdword 10
msg1        byte   "x is greather than y", 0
msg2        byte   "x is less than y", 0
msg3        byte   "x is equal to y", 0

            .code
main        proc
if01:       fld     y ;if x > y
            fld     x
            fcomip  st(0), st(1)
            jbe     else01
then01:     INVOKE  printf, ADDR msg1
            jmp     endif01
else01:     nop

if02:       fld     y ;if x < y
            fld     x
            fcomip  st(0), st(1)
            jae     else02
then02:     INVOKE  printf, ADDR msg2
            jmp     endif02
else02:     INVOKE  printf, ADDR msg3    
            jmp     endif02
endif02:    nop
endif01:    nop

            ret
main        endp
            end