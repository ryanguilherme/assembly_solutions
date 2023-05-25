# **3.** _Write a procedure to implement the Fibonacci numbers as defined in the exercise section of Chap. 5._<br><br>**_Fibonacci_**<br><br>if n = 0, then 0<br>if n = 1, then 1<br>if n = 2, then 0 + 1 = 1<br>if n = 3, then 1 + 1 = 2<br>if n = 4, then 1 + 2 = 3<br>etc.

## **Resposta:**
```asm
fib         proc
            mov         eax, 0
            mov         ebx, 0
            mov         ecx, 0
            mov         edx, 0
            .while      ecx < value
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
            .if         value == 1
            mov         result, 1
            .endif
            ret
fib         endp
```
### **OBS:** **_value_** é a variável que armazena o valor ao qual deve ser calculado o fibonacci
