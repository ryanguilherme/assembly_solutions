; Correção: 1,0
                .686
                .model flat, c
                .stack 100h
printf          PROTO arg1:Ptr Byte, printlist:VARARG
scanf           PROTO arg2:Ptr Byte, inputlist:VARARG
                .data

format          byte "%d", 0
array           sdword 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105
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