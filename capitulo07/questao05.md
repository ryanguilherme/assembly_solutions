# **5.** _Write a macro to implement the Fibonacci numbers as defined in the exercise section of Chap. 5._<br><br>**_Fibonacci_**<br><br>if n = 0, then 0<br>if n = 1, then 1<br>if n = 2, then 0 + 1 = 1<br>if n = 3, then 1 + 1 = 2<br>if n = 4, then 1 + 2 = 3<br>etc.

## **Resposta:**
```asm
FIBONACCI   macro       n
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
            mov         eax, result
            endm
```