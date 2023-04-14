# 5. Assuming all the variables are declared as byte, write assembly language instructions to implement each of the following C statements or segments:
## A. a = 'B';
```asm
a          byte "B", 0
```
## B. b = c;
## &nbsp;&nbsp;&nbsp; d = 'E';
## &nbsp;&nbsp;&nbsp; e = d;
```asm
mov        eax, c
mov        b, eax
byte       d "E", 0
mov        ebx, d
mov        e, ebx
```
## D. d = 'z';
## &nbsp;&nbsp;&nbsp; a = d;
## &nbsp;&nbsp;&nbsp; b = a;
```asm
byte       d "z", 0
mov        eax, d
mov        a, eax
mov        ebx, a
mov        b, ebx
```
## E. a = '2';
## &nbsp;&nbsp;&nbsp; b = '?';
## &nbsp;&nbsp;&nbsp; a = b;

```asm
byte       a "2", 0
byte       b "?", 0
mov        eax, b
mov        a, eax
```