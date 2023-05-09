# _9. Given the factorial function (n!) defined iteratively as follows:_
If n = 0 or n = 1, then 1<br>
If n = 2, then 1 * 2 = 2 <br>
If n = 3, then 1 * 2 * 3 = 6 <br> 
If n = 4, then 1 * 2 * 3 * 4 = 24  <br> 
etc.
# _Implement the above function iteratively with your choice (or your instructor’s choice) of any of the following:_

## **A.** ```.while```
### **Resposta:**
```asm
INVOKE      scanf, ADDR format, ADDR n
mov         eax, 1
.while      n > 0
imul        n
dec         n
.endw
INVOKE      printf, ADDR format, eax
ret
```
<hr>

## **B.** ```.repeat - .until```
### **Resposta:**
```asm
INVOKE      scanf, ADDR format, ADDR n
mov         eax, 1
.repeat
.if         n > 0
    imul        n
    dec         n
.endif
.until      n == 0
INVOKE      printf, ADDR format, eax
ret
```
<hr>

## **C.** ```.repeat - .untilcxz```
### **Resposta:**
```asm
INVOKE      scanf, ADDR format, ADDR n
mov         eax, 1
mov         ecx, n
.if         ecx > 0
.repeat
.if         ecx > 0
imul        ecx
.endif
.untilcxz
.endif
INVOKE      printf, ADDR format, eax
ret
```