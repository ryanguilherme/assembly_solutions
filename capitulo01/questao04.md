# 4. Assuming all the variables are declared as sdword, write assembly language instructions to implement each of the following C statements or segments:
## A. i = 1;
```asm
i          sdword 1
```
## B. x = y;
```asm
mov        eax, y
mov        x, eax
```
## C. c = 2;
## &nbsp;&nbsp;&nbsp; b = c;
## &nbsp;&nbsp;&nbsp; a = b;
```asm
c          sdword 2
mov        eax, c
mov        b, eax
mov        ebx, b
mov        a, ebx
```
## D. x = y = 1;
```asm
mov        y, 1
mov        eax, y
mov        x, eax
```
## E. a = 1;
## &nbsp;&nbsp;&nbsp; b = 2;
## &nbsp;&nbsp;&nbsp; c = a;
## &nbsp;&nbsp;&nbsp; a = b;
## &nbsp;&nbsp;&nbsp; b = c;
```asm
mov        a, 1
mov        b, 2
mov        eax, a
mov        c, eax
mov        ebx, b
mov        a, ebx
mov        ecx, c
mov        b, ecx
```