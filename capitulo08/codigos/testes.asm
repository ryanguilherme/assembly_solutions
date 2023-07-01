                .686
                .model flat, c
                .stack 100h
printf          PROTO arg1:Ptr Byte, printlist:VARARG
scanf           PROTO arg2:Ptr Byte, inputlist:VARARG
                .data

format          byte "%d", 0
array           sdword 20 dup(?)
second_array    sdword 20 dup(?)
                
                .code
main            proc

                mov             ecx, lengthof array
                .repeat
                mov             eax, array[ecx*4-4]
                mov             second_array[ecx*4-4], eax
                .untilcxz

                mov             eax, second_array+76            ; apenas checando o valor do ultimo indice, resultado ok

                INVOKE          printf, ADDR format, eax

                ret
main            endp
                end