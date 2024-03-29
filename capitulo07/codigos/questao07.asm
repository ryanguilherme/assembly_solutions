; Correção: 1,0
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            
            .data
msg1fmt     byte 0Ah, "%s%d", 0Ah, 0Ah, 0
msg2fmt     byte 0Ah, "%s", 0
inifmt      byte "%d",0
msg1        byte "The contents of the accumulator are: ", 0
msg2        byte "Input an integer into the accumulator: ", 0
temp        sdword ?
three       sdword 3
            
;; codigo do livro
            .code
LOADACC     macro   operand
            mov     eax, operand        ;; load eax with the operand
            endm

;; codigo do livro
ADDACC      macro   operand
            add     eax, operand        ;; add the operand to eax 
            endm

;; codigo do livro
MULTACC     macro   operand
            push    ebx                 ;; save ebx and ecx
            push    ecx

            mov     ebx, eax            ;; mov eax to ebx
            mov     eax, 0              ;; clear accumulator to zero
            mov     ecx, operand        ;; load ecx with operand

            if      operand LT 0        ;; if operand is negative
            neg     ecx                 ;; make ecx positive for loop
            endif   

            .while  ecx > 0
            add     eax, ebx            ;; repetitively add 
            dec     ecx                 ;; decrement ecx
            .endw    

            if      operand LT 0        ;; if operand is negative
            neg     eax                 ;; negate accumulator, eax
            endif

            pop     ecx                 ;; restore ecx and ebx
            pop     ebx 

            endm

STOREACC    macro   operand
            mov     operand, eax
            endm

SUBACC      macro   operand
            sub     eax, operand
            endm

DIVACC      macro   operand      
            push    ebx          
            push    ecx       

            mov     ecx, eax       
            mov     eax, 0              ;; clear accumulator to zero
            mov     ebx, operand        ;; operand is the dividend

            if      operand LT 0        ;; if operand is negative
            neg     ebx                 ;; make ecx positive for loop
            endif

            if      operand EQ 0
            mov     eax, -1             ;; if operand is zero, the operation returns -1
            else   
            .while  ecx >= ebx
            sub     ecx, ebx
            inc     eax
            .endw
            endif

            if      operand LT 0
            neg     eax
            endif

            pop     ecx
            pop     ebx 
            endm   

main        proc 

            CALL    INACC
            ADDACC  5 
            ADDACC  7
            MULTACC 4 
            SUBACC  4
            DIVACC  3
            CALL    OUTACC 
            ret

main        endp

;; codigo do livro
OUTACC      proc
            push    eax             ;; save eax, ecx and edx
            push    ecx
            push    edx
            mov     temp, eax
            INVOKE  printf, ADDR msg1fmt, ADDR msg1, temp
            pop     edx             ;; save eax, ecx and edx
            pop     ecx
            pop     eax
            ret       
OUTACC      endp


INACC       proc
            push    ecx           ;; save ecx, and edx
            push    edx
            INVOKE  printf, ADDR msg2fmt, ADDR msg2
            INVOKE  scanf, ADDR inifmt, ADDR temp
            mov     eax, temp
            pop     edx            ;; save ecx and edx
            pop     ecx
            ret
INACC       endp
            end