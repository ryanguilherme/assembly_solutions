# _1. Given the following assembly language statements, indicate whether they are syntactically correct or incorrect. If incorrect, indicate what is wrong with the statement:_

> Correção: 0,0.

## **A.**
```asm
.for i 1;i< 3;i++
;body of loop
.endfor
```
### **Resposta:**
### Incorreto, não existe a diretiva '.for'.

<hr>

## **B.**
```asm
mov i,1
while i < x
;body of loop
inc i
.endw
```
### **Resposta:**
### Correto.

> Correção: Incorreto. A diretiva while precisa começar com um ponto (.).

<hr>

## **C.**
```asm
mov i,0
.repeat
; body of loop
add i,2
.until i>10
```
### **Resposta:**
### Correto.

<hr>

## **D.**
```asm
mov edx,3
.repeat
;body of loop
.untiledx
```
### **Resposta:**
### Correto.

> Correção: Incorreto. Não existe a diretiva .untiledx.

<hr>

## **E.**
```asm
mov ebx,2
.do
;body of loop
.while ebx>0
```
### **Resposta:**
### Correto.

> Correção: Incorreto. Não existe a diretiva .do.

<hr>


