# 6. Just as there is a simple and modified version of the selection sort, so is there both a simple version and a modified version of the bubble sort. The simple version in C is the same length as the simplified version of the selection sort presented in **Sect. 8.6.** 186 8 Arrays

## **a.** Write both the C code and the assembly code to implement the simplified version of the bubble sort which compares every element of every pass through the array whether there was a swap on the previous pass or not.
[Código ASM aqui](codigos/questao06-a.asm)\
[Código C aqui](codigos/questao06-a-C.c)
> TESTADO: OK
```asm
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
array       sdword 17, 26, 3, 31, 44, 82, 9, 6, 0, 11, 251, 39, 5, 1
i           sdword 0
j           sdword 0     
n           sdword ?  
tempecx     sdword ?
temp        sdword ?
format      byte "%d ", 0

            .code
main        proc
            mov     n, lengthof array
            mov     ecx, n
            dec     ecx
            .repeat
            mov     tempecx, ecx
            mov     eax, n
            sub     eax, i
            sub     eax, 1 
            mov     ecx, eax 
            mov     j, 0

            .repeat
            mov     edx, j
            sal     edx, 2
            add     edx, offset array 
            mov     esi, edx
            add     edx, 4
            mov     edi, edx 
            mov     eax, [esi]
            mov     ebx, [edi]

            .if     eax > ebx 
            mov     [esi], ebx 
            mov     [edi], eax 
            .endif

            inc     j
            .untilcxz

            mov     ecx, tempecx
            inc     i
            .untilcxz

            mov     ecx, n
            mov     edi, offset array

            .repeat
            push    ecx
            mov     eax, [edi]
            mov     temp, eax
            INVOKE  printf, ADDR format, temp
            add     edi, 4
            pop     ecx
            .untilcxz

            ret
main        endp
            end
```
> SAÍDA: 0 1 3 5 6 9 11 17 26 31 39 44 82 251

## **b.** First write the C code for the modified version of the bubble sort and then write the modified version in assembly language. With the modified version, if there is not a swap on the previous pass through the array, the array is in order and there is no need to make any subsequent passes through the array.
[Código ASM aqui](codigos/questao06-b.asm)\
[Código C aqui](codigos/questao06-b-C.c)
> TESTADO: OK
```asm
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG      

            .data
array       sdword 17, 26, 3, 31, 44, 82, 9, 6, 0, 11, 251, 39, 5, 1
i           sdword 0
j           sdword 0     
n           sdword ?  
tempecx     sdword ?
temp        sdword ?
swap        sdword 0
msgfmt      byte "%d ",0

            .code
main        proc
            mov     n, lengthof array
            mov     ecx, n
            dec     ecx

            .repeat
            mov     tempecx, ecx
            mov     eax, n
            sub     eax, i
            sub     eax, 1 
            mov     ecx, eax 
            mov     j, 0

            .repeat
            mov     edx, j
            sal     edx, 2
            add     edx, offset array 
            mov     esi, edx
            add     edx, 4
            mov     edi, edx 
            mov     eax, [esi]
            mov     ebx, [edi]

            .if     eax > ebx 
            mov     [esi], ebx 
            mov     [edi], eax 
            mov     swap, 1
            .endif

            inc     j
            .untilcxz

            .if     swap == 0
            jmp     endfor
            .endif

            mov     ecx, tempecx
            inc     i
            .untilcxz

endfor:     nop        

            mov     ecx, n
            mov     edi, offset array
            .repeat
            push    ecx
            mov     eax, [edi]
            mov     temp, eax
            INVOKE  printf, ADDR msgfmt, temp       ; OUTPUT
            add     edi, 4
            pop     ecx
            .untilcxz

            ret
main        endp
            end
```
> SAÍDA: 0 1 3 5 6 9 11 17 26 31 39 44 82 251