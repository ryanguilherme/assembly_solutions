# **1.** _Given the following variables, what are the results in the variable z for each of the following code segments?_

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
###
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
###
---

## **C.**
```asm
fld     y
fld     w
fsub       
fistp   z
```
### **Resposta:**
###
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
###
---