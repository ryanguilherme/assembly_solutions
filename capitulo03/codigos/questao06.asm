; Correção: 0,5
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
ampere      sdword ?
ohm         sdword ?
volt        sdword ?
watt        sdword ?
msgfmt      byte "%s", 0
inpfmt      byte "%d", 0
outfmt      byte 0Ah, "%s%d", 0
msg0        byte "Enter the number of amperes: ", 0
msg1        byte "Enter the number of ohms: ", 0
msg2        byte "The number of volts is: ", 0
msg3        byte "The number of watts is: ", 0

            .code
main        proc
            INVOKE  printf, ADDR msgfmt, ADDR msg0 ;imprime mensagem para entrada do ampere
            INVOKE  scanf, ADDR inpfmt, ADDR ampere ;chama o scanf para ler o valor do ampere
            INVOKE  printf, ADDR msgfmt, ADDR msg1 ;imprime mensagem para entrada do ohm
            INVOKE  scanf, ADDR inpfmt, ADDR ohm ;chama o scanf para ler o valor do ohm
            mov     eax, ampere ;move ampere para eax para multiplica-lo com ohm, resultando no valor dos volts (volts = amperes*ohms)
            imul    ohm ;multiplica eax (amperes) por ohm
            mov     volt, eax ;guarda o resultado, que e o valor dos volts no endereco volt
            mov     eax, ampere ;move ampere para eax para multiplica-lo por volt, resultando no valor dos watts (watts = amperes*volts)
            imul    volt ;multiplica eax (amperes) por volts
            mov     watt, eax ;guarda o resultado em watts
            INVOKE  printf, ADDR outfmt, ADDR msg2, volt ;imprime o valor de volts com a mensagem de saida 
            INVOKE  printf, ADDR outfmt, ADDR msg3, watt ;imprime o valor de watts com a mensagem de saida
            ret
main        endp
            end