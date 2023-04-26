# _2. Assuming that the .data section is set up properly, what is wrong with the logic of the following code segment? How could it be rewritten to avoid the difficulty?_

> Correção: 0,5

```asm
mov     num1,5<br>
mov     eax,num1<br>
INVOKE  printf, ADDR msg1fmt, ADDR msg1, num2<br>
mov     num2, eax<br>
```
<hr>

### **Resposta:**
### na linha <code style='color:pink'>INVOKE printf, ADDR msg1fmt, ADDR msg1, num2</code> esse comando está imprimindo o valor de num2 antes da atribuição do valor de eax para ele, tornando essa atribuição inútil pelo menos no que é mostrado do código, um erro lógico. Uma correção adequada seria:

```asm
mov     num1, 5<br>
mov     eax, num1<br>
mov     num2, eax<br>
INVOKE printf, ADDR msg1fmt, ADDR msg1, num2<br>
```

### Esse código passa o valor 5 para o endereço num1, e o valor de num1 para num2, intermediando por eax.