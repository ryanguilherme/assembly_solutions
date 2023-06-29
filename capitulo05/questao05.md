# _5. Implement unsigned divide (similar to the div instruction) using repetitive subtraction, with your choice (or your instructor’s choice) of any of the following (start with the dividend in eax and the divisor in ebx, then place the quotient in eax and the remainder in edx. Note: Do not worry about division by zero or negative numbers):_

> Correção: 0,1

## **A.** ```.while```
### **Resposta:**
```asm
INVOKE      scanf, ADDR inpformat, ADDR dividend, ADDR divisor

mov         eax, dividend
mov         ebx, divisor
.while      eax >= ebx
sub         eax, ebx
inc         quocient
.endw
.if         eax < ebx
mov         remainder, eax
.endif
mov         eax, quocient

INVOKE      printf, ADDR outformat, quocient, remainder
ret
```
<hr>

## **B.** ```.repeat - .until```
### **Resposta:**
```asm
INVOKE      scanf, ADDR inpformat, ADDR dividend, ADDR divisor

mov         eax, dividend
mov         ebx, divisor
.repeat
sub         eax, ebx
inc         quocient
.until      eax < ebx
.if         eax < ebx
mov         remainder, eax
.endif
mov         eax, quocient

INVOKE      printf, ADDR outformat, quocient, remainder
ret
```
<hr>

## **C.** ```.repeat - .untilczx```
### **Resposta:**
```asm
INVOKE      scanf, ADDR inpformat, ADDR dividend, ADDR divisor

mov         eax, dividend
mov         ebx, divisor
.repeat
sub         eax, ebx
inc         quocient
.if         eax < ebx
mov         ecx, 1
.endif
.untilcxz
mov         remainder, eax

INVOKE      printf, ADDR outformat, quocient, remainder
ret
```