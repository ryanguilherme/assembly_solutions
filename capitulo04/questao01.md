# _1. Indicate whether the following statements are syntactically correct or incorrect in MASM. If incorrect, indicate what is wrong with the statement:_

## **A.**
```asm
.if (number = 0)
add number, 2
.endif
```
### **Resposta:**
### Incorreto. O correto seria number == 0, pois também não poderia usar number = 0 já que seria como uma declaração de variável em C.

<hr>

## **B.** 
```asm
.if count >= 0 then
sub count, 2
.else
add count, 3
.endif
```
### **Resposta:**
### Incorreto. O "then" não se usa após ".if", pois ele é usado como marcador para funções de salto como jmp. O correto seria then: no início de alguma linha.

<hr>

## **C.**
```asm
.if x-1
dec x
.endif
```
### **Resposta:**
### Incorreto. "x-1" é uma operação inválida no assembly, logo, resultaria em um erro de sintaxe.

<hr>

## **D.**
```asm
if01:       cmp x, y
            jle endif01
            then01: inc x
endif01:    nop
```
### **Resposta:**
### Correto.