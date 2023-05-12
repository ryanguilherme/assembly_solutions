# **2.** _Given the following C arithmetic instructions, implement them using arithimetc shift instructions, where possible:_

## **A.** ```answer = num - total / 32;```
### **Resposta:**
```asm
sal         total, 5
mov         eax, total
sub         num, eax
mov         eax, num
mov         answer, eax         
```
<hr>

## **B.** ```result = (amount + number) * 4;```
### **Resposta:**
```asm
mov         eax, amount
add         eax, number
sar         eax, 2
mov         result, eax
```
<hr>

## **C.** ```x = y * 8 + z / 2;```
### **Resposta:**
```asm
sar         y, 3
mov         eax, y
sal         z, 1
add         eax, z
mov         x, eax     
```
<hr>

## **D.** ```a = a / 16 - b * 6;```
### **Resposta:**
```asm
sal         a, 4
mov         eax, b
sar         eax, 

```