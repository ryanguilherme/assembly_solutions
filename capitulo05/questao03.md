# _3. Given the following while loops implemented using conditional and unconditional jumps, indicate how many times the body of each loop will be executed:_

## **A.**
```asm
                mov     i, 2
while04:        cmp     i, 8
                jge     endwhile04
                ; body of loop
                add     i, 2
                jmp     while04
endwhile04:     nop
```
### **Resposta:**
### O corpo do laço será executado 3 vezes nesse caso, pois em cada laço i é incrementado em 2, logo, para i=2, i=4 e i=6. Quando i=8 é executado um salto para o 'endwhile04' que está fora do laço.

<hr>

## **B.**
```asm
                mov     k, 0
repeat05:       nop
                ; body of loop
                add     k, 3
                cmp     k, 3
                jl      repeat05
endrepeat05:    nop
```
### **Resposta:**
### O corpo do laço será executado 1 vez, pois o salto condicional para o início do laço ocorre se k for menor que 3, mas no primeiro laço, k que é 0 já é incrementado em 3, logo, nesse código o salto nunca ocorrerá.

<hr>

## **C.**
```asm
                mov     j, 1
while06:        cmp     j, 0
                jg      endwhile06
                ; body of loop
                inc     j
                jmp     while06
endwhile06:     nop
```
### **Resposta:**
### O corpo do laço "; body of loop" nunca ocorrerá, pois o salto condicional para fora do laço ocorre quando j for maior que 0, e j já inicia como 1.

<hr>