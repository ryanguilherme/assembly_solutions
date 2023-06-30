# 3. Implement the following C instructions using assembly language. Assume all variables are declared as sdword;


## **A.** ```num[0] = 1;```
### **Resposta:**
```asm
    mov         num+0, 1
```
---
## **B.** ```x[1] = x[2]```
### **Resposta:**
```asm
    mov         esi, offset x+8
    mov         x+4, [esi]
```         
---

## **C.** ```y[i+1] = y[i];```
### **Resposta:**
```asm
    mov         eax, i
    imul        4
    mov         i, eax
    add         eax, 4
    mov         esi, offset y+i
    mov         y+eax, [esi]
```
---

## **D.** ```z[i] = z[j]```
### **Resposta:**
```asm

```
---