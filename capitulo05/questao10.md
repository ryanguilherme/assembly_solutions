# _10. Given the Fibonacci sequence defined iteratively as follows:_
if n = 0, then 0 <br>
if n = 1, then 1 <br>
if n = 2, then 0 + 1 = 1 <br>
if n = 3, then 1 + 1 = 2 <br>
if n = 4, then 1 + 2 = 3 <br>
etc.
# _Implement the above function iteratively with your choice (or your instructor’s choice) of any of the following:_

## **A.** ```.while```
### **Resposta:**
```asm
INVOKE      scanf, ADDR format, ADDR n

mov         eax, 0
mov         ebx, 0
mov         ecx, 0
mov         edx, 0
.while      ecx < n
.if         ecx <= 1
mov         eax, ecx
mov         result, eax
mov         edx, eax
.else
add         eax, edx
add         eax, ebx
mov         ebx, edx
mov         edx, eax
mov         result, eax
mov         eax, 0
.endif
inc         ecx
.endw
.if         n == 1
mov         result, 1
.endif

INVOKE      printf, ADDR format, result
ret
```
<hr>

## **B.** ```.repeat - .until```
### **Resposta:**

## **C.** ```.repeat - .untilcxz```
### **Resposta:**