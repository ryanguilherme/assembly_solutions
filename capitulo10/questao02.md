# **2.** _Convert the following C-like arithmetic instructions into post-fix form and then write the corresponding assembly language instructions. Assume that all vari- ables are of type real8._

> Correção: 0,5

## **A.** ```answer = x - y + z;```
### **Resposta:**
### _Pos-fix: xy-z+_
```asm
fld     x
fld     y
fsub
fld     z
fadd
fstp    answer
```
---

## **B.** ```result = (w + x) / (y - z);```
### **Resposta:**
### _Post-fix: wx+yz-/
```asm
fld     w
fld     x
fadd
fld     y
fld     z
fsub
fdiv
fstp    result
```
---

## **C.** ```info = a / b * c - d;```
### **Resposta:**
### _Post-fix: ab/c*d-_
```asm
fld     a
fld     b
fdiv
fld     c
fmul
fld     d
fsub
fstp    info
```
---

## **D.** ```data = i * j + (k / (m - n));```
### **Resposta:**
### _Post-fix: ij*kmn-/+_
```asm
fld     i
fld     j
fmul
fld     k
fld     m
fld     n
fsub
fdiv
fadd
fstp    data
```
---