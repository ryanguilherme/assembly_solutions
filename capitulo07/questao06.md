# **6.** _Using conditional assembly, modify the MULTACC macro defined in this chapter to not only eliminate the redundant looping but also not generate the loop instruction itself in the case that the multiplier in the operand is 0 and the answer is 0, or when it is 1 and the answer is just the value in the accumulator. (Hint: Use the power macro as an example.)_

## **_MULTACC macro_**
```asm
MULTACC         macro operand
                push ebx                ; ; save ebx and ecx
                push ecx
                mov ebx, eax            ; ; mov eax to ebx
                mov eax, 0              ; ; clear acumulator to zero
                mov ecx, operand        ; ; load ecx with the operand
                if  operand LT 0        ; ; if operand is negative
                neg ecx                 ; ; make ecx positive for loop
                endif
                .while      ecx > 0
                add eax, ebx            ; ; repetitively add
                dec ecx                 ; ; decrement ecx
                .endw
                if  operand LT 0        ; ; if operand is negative
                neg eax                 ; ; negate acumulator, eax
                endif
                pop ecx                 ; ; restore ecx and ebx
                pop ebx
                endm
```

## **Resposta:**
```asm

```