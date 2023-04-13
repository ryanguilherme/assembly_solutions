            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG

            .data
fah         sdword ?
cel         sdword ?
msginp      byte "Enter the degrees in Fahrenheit: ", 0
msgout      byte "The degrees in Celsius is: ", 0
inpfmt      byte "%d", 0
outfmt      byte "%s%d", 0

            .code
main        proc
            INVOKE      printf, ADDR msginp
            INVOKE      scanf, ADDR inpfmt, ADDR fah
            cdq
            sub         fah, 32 ;subtrai o valor em fahrenheit de 32 (fah-32)
            mov         ebx, 9 ;move 9 para ebx para dividir o valor em fah depois (fah-32)/9
            mov         eax, fah ;move fah para eax para poder realizar a divisão com o comando idiv
            idiv        ebx ;divide eax por ebx (fah-32) / 9
            mov         ebx, 5 ;move 5 para ebx para poder multiplicar o resultado em eax por 5
            imul        ebx ;divide o valor em eax por ebx (fah - 32) / 9 * 5
            mov         cel, eax ;por fim, guarda o resultado final em cel para poder imprimi-lo
            INVOKE      printf, ADDR outfmt, ADDR msgout, cel
            ret
main        endp
            end

