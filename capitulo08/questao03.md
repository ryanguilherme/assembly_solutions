# 3. Implement the following C instructions using assembly language. Assume all variables are declared as sdword;

> Correção: 0,5

## **A.** ```num[0] = 1;```
### **Resposta:**
```asm
    mov         num+0, 1
```
---
## **B.** ```x[1] = x[2]```
### **Resposta:**
> TESTADO: OK
```asm
    mov         esi, offset x+8
    mov         x+4, [esi]
```         
---

## **C.** ```y[i+1] = y[i];```
### **Resposta:**
> TESTADO: OK
```asm
    mov         eax, i          ; guarda i em eax
    mov         ebx, 4          ; move 4 para ebx para multiplicar eax
    imul        ebx             ; multiplica eax por 4 para obter o índice em assembly equivalente ao índice em C
    mov         ecx, eax
    add         ecx, 4          ; agora ecx equivale a i+1
    mov         edx, y[eax]     ; edx = y[i]
    mov         y[ecx], edx     ; y[i+1] = y[i]
```
---

## **D.** ```z[i] = z[j]```
### **Resposta:**
> TESTADO: OK
```asm
    ; z[i] = z[j]
    mov         edx, j
    mov         eax, z[edx*4]
    mov         edx, i
    mov         z[edx*4], eax
```
---