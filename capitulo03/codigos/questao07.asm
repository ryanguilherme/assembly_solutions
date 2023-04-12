            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
fah         sdword ?
cel         sdword ?
inpfmt      byte "%d", 0
msg0fmt     byte "%s", 0
msg1fmt     byte 0Ah, "%s%d", 0
msg0        byte "Enter the degrees in Fahrenheit: ", 0
msg1        byte "The degrees in Celsius is: ", 0

            .code
main        proc
            INVOKE      printf, ADDR msg0fmt, ADDR msg0
            INVOKE      scanf, ADDR inpfmt, ADDR fah
            sub         fah, 32 ;guarda (F-32) em fah (fahrenheit)
            mov         eax, fah ;move fah (F-32) para eax para dividi-lo depois
            mov         ebx, 9 ; guarda 9 em ebx para dividir eax por ele
            idiv        ebx ;divide eax por ebx (ebx/9)
            ;mov         cel, eax
            mov         ebx, 5 ;move 5 para ebx para multiplicar eax por ele
            imul        ebx ;multiplica por 5 e encerra o calculo aqui
            mov         cel, eax ;guarda o resultado final em cel (celsius)
            INVOKE      printf, ADDR msg1fmt, ADDR msg1, cel
            ret
main        endp
            end

