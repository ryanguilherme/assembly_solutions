# **3.** _Write a code segment that takes the contents of eax, ebx, ecx, and edx, and puts them in the reverse order of edx, ecx, ebx, and eax using only the push and pop instructions. In other words, eax should contain the contents of edx and vice versa, etc._

> Correção: 0,5

### **Resposta:**
```asm
            .686
            .model flat, c
            .stack 100h

            .data
random      sdword ?

            .code
main        proc
            push        eax
            push        ebx
            push        ecx
            push        edx
            pop         eax
            pop         ebx
            pop         ecx
            pop         edx
            ret
main        endp
            end
```