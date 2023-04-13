# _**5.** Write a complete assembly language program to implement the following C program:_
### OBS: Comentários sobre o código estão no arquivo .asm referente ao código
<hr>

### **Resposta:**
<!--
<hr>
<code style='color:pink'>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.686<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.model flat, c<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.stack 100h<br>
printf      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PROTO arg1:Ptr Byte, printlist:VARARG<br>
scanf       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PROTO arg2:Ptr Byte, inputlist:VARARG<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.data<br>
number      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdword ?<br>
result      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdword ?<br>
in0fmt      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;byte "%d", 0<br>
msg0fmt     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;byte 0Ah, "%s", 0<br>
msg1fmt     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;byte 0Ah, "%s%d", 0Ah, 0Ah, 0<br>
msg0        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;byte "Enter an integer: ", 0<br>
msg1        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;byte "The integer is: ", 0<br>
<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.code<br>
main        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;proc<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INVOKE printf, ADDR msg0fmt, ADDR msg0<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INVOKE scanf, ADDR in0fmt, ADDR number<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mov eax, number<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mov ebx, 3<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;imul ebx<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mov ebx, 7<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sub ebx, eax<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mov result, ebx<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INVOKE printf, ADDR msg1fmt, ADDR msg1, result<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ret<br>
main        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;endp<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end<br>
</code>
-->
```asm
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


```