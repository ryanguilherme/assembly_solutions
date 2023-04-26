# _1. Indicate whether the following statements are syntactically correct or incorrect. If incorrect, indicate what is wrong with the statement:_

> Correção: 0,5

## A. inc eax, 1
### incorreta, inc possui como parâmetro apenas um valor para incrementar 1, logo não necessita e não deve receber um segundo valor. add eax, 1 estaria correto
## B. add ebx, ecx
### correta
## C. add dog, cat
### incorreta, dog e cat são ambos endereços de memória, logo está efetuando dois acessos a memória
## D. idiv 3
### incorreto, o comando idiv deve receber um endereço de memória para realizar a divisão, ou seja, nesse caso seria necessário atribuir o valor 3 a um registrador para então efetuar o comando idiv eax por exemplo, supondo que 3 foi armazenado em eax
## E. sub 2, number
### incorreto, o comando sub recebe antes um endereço da memória e depois o valor a dividir o valor neste endereço, não faria sentido o comando [sub 2, number] pois estaria dividindo um valor imediato sem objetivo algum, pois o resultado final não existiria em nenhum local
## F. imul eax
### correto