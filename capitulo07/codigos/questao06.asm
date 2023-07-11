; Correção: 1,0 
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