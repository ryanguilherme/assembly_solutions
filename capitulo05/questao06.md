# _6. Implement the following C segment using the .repeat - .untilcxz directives. What if the value of n is 0 or negative? Does your code segment still work properly? How can this problem be rectified?_

> Correção: 0,1

```c
sum = 0;
for (i=1; i<=n; i++)
    sum = sum + i;
```
<hr>

### **Resposta:**
```asm
INVOKE      scanf, ADDR format, ADDR n

mov         sum, 0
mov         ecx, n
.if         n > 0
.repeat
add         sum, ecx
.untilcxz
INVOKE      printf, ADDR format, sum
.else
INVOKE      printf, ADDR errormsg
.endif

ret
```
### Sim, o código funciona corretamente se **n** for 0 ou negativo. O possível problema foi retificado com a diretiva **.if**, em **.if n > 0** verificamos se **n** é positivo e maior que 0, se for, fazemos o somatório normalmente, se não for então imprimimos uma mensagem de erro **"no sum to do, n <= 0"**.