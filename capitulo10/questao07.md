# **7.** _Alter the if-then-else-if code segment in Sect. 10.8 to add an else section to the nested if statement to output the message “x and y are equal”. 10.12 Exercises (Items Marked with an * Have Solutions in Appendix D) 235_

[Código ASM aqui](codigos/questao07.asm)

```asm
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
x           sdword 5
y           sdword 10
msg2        byte   "x is greather than y", 0
msg3        byte   "x is less than y", 0
            .code
main        proc
if01:       fld     y ;if x > y
            fld     x
            fcomip st(0), st(1)
            jbe     else01
then01:     INVOKE  printf, ADDR msg2
            jmp     endif01
else01:     nop

if02:       fld     y ;if x < y
            fld     x
            fcomip  st(0), st(1)
            jae     endif02
then02:     INVOKE  printf, ADDR msg3
endif02:    nop
endif01:    nop

            ret
main        endp
            end
```