# 4. Given the declarations below, indicate what would be stored in the eax register for each of the following instructions. Note that oarray is of type sword, not sdword (hint: see Chap. 1):

```asm
    narray sdword 1, 2, 3, 4, 5
    marray sdword 10 dup(?)
    oarray sword 15, 20, 15
```

---

## **A.** ```mov eax, lengthof narray```
### **Resposta:**
> TESTADO: OK
### 5
---

## **B.** ```mov eax, sizeof narray```
### **Resposta:**
> TESTADO: OK
### 20
---

## **C.** ```mov eax, lengthof marray```
### **Resposta:**
> TESTADO: OK
### 10
---

## **D.** ```mov eax, sizeof marray```
### **Resposta:**
> TESTADO: OK
### 40
---

## **E.* ```mov eax, lengthof oarray```
### **Resposta:**
> TESTADO: OK
### 3
---

## **F.** ```mov eax, sizeof oarray```
### **Resposta:**
> TESTADO: OK
### 6
---
