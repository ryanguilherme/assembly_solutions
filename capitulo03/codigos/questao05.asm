; Correção: 0,5
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
number      sdword ? ;instanciada variavel number
result      sdword ? ;instanciada variavel result
in0fmt      byte "%d", 0 ;string de formatacao da entrada (number)
msg0fmt     byte 0Ah, "%s", 0 ;string de formatacao da mensagem para a entrada (Enter an integer: )
msg1fmt     byte 0Ah, "%s%d", 0Ah, 0Ah, 0 ;string de formatacao da mensagem para a saida (The integer is: )
msg0        byte "Enter an integer: ", 0 ;mensagem da entrada
msg1        byte "The integer is: ", 0 ;mensagem da saida

            .code
main        proc
            INVOKE printf, ADDR msg0fmt, ADDR msg0 ;essa linha imprime a mensagem para a entrada
            INVOKE scanf, ADDR in0fmt, ADDR number ;essa linha executa o scanf para ler um inteiro para number
            mov eax, number ;guardo number em eax, para multiplica-lo futuramente
            mov ebx, 3 ;movo 3 para ebx para fazer imul com ele, pois imul nao funciona com um valor imediato
            imul ebx ;multiplico eax por ebx (number por 3)
            mov ebx, 7 ;movo 7 para ebx para fazer a subtracao
            sub ebx, eax ;7 sera subtraido do resultado guardado em eax (7 - number)
            mov result, ebx ;resultado ficou guardado no registrador ebx
            INVOKE printf, ADDR msg1fmt, ADDR msg1, result ;essa linha equivale ao codigo c printf("\n%s%d\n\n", result);
            ret
main        endp
            end
