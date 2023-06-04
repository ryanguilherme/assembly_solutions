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
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr byte, printlist:VARARG
scanf       PROTO arg2:Ptr byte, inputlist:VARARG

            .data
format      byte    "%d", 0

            .code
LOADACC     macro   operand
            mov     eax, operand
            endm

MULTACC     macro   operand
            push    ebx
            push    ecx

            mov     ebx, eax
            mov     eax, 0
            mov     ecx, operand
            
            if      operand LT 0
            neg     ecx
            endif

            if      operand EQ 0
            mov     eax, 0
            endif

            if      operand EQ 1
            mov     eax, ebx
            endif

            if      operand GT 1
            .while  ecx > 0
            add     eax, ebx
            dec     ecx
            .endw
            endif

            if      operand LT 0
            neg     eax
            endif


           
            pop     ecx
            pop     ebx

            endm

main        proc

            LOADACC     6
            MULTACC     1
            INVOKE      printf, ADDR format, eax

            ret
main        endp
            end
```