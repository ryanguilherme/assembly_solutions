# **1.** _Given the following variables, what are the results in the variable z for each of the following code segments?_

> Correção: 0,5

```asm
w       real8 2.0
x       real8 5.5
y       real8 6.5
z       sdword ?
```
---

## **A.**
```asm
fld     w
fld     y
fadd    
fistp   z
```
### **Resposta:**
### 8
---

## **B.**
```asm
fld     y
fld     w
fdiv   
fld     x
fadd   
fisttp  z
```
### **Resposta:**
### 8
---

## **C.**
```asm
fld     y
fld     w
fsub       
fistp   z
```
### **Resposta:**
### 4
---

## **D.**
```asm
fld     w
fld     y
fadd    
fist    z
fld     w
fadd
fistp   z
```
### **Resposta:**
### 10
---