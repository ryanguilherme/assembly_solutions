# **2.** _Write a procedure to implement the factorial function as defined in the exercise section of Chap. 5._<br><br>**_factorial function_**<br><br>If n = 0 or n = 1, then 1<br>If n = 2, then 1 * 2 = 2<br>If n = 3, then 1 * 2 * 3 = 6<br>If n = 4, then 1 * 2 * 3 * 4 = 24<br>etc.

## **Resposta:**
```asm
fat         proc        value
            mov         eax, 1
            .while      value > 0
            imul        value
            dec         value
            .endw
            ret
fat         endp
```
