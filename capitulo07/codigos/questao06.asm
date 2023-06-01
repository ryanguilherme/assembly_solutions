            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr byte, printlist:VARARG
scanf       PROTO arg2:Ptr byte, inputlist:VARARG

            .data
format      byte    "%d", 0

            .code
LOADACC     macro   value
            mov     eax, value
            endm

MULTACC     macro   value
            push    ebx
            push    ecx
            mov     ebx, eax
            mov     eax, 0
            mov     ecx, value

            if      value LT 0
            neg     ecx
            endif

            .if      ecx > 0
            .while  ecx > 0
            add     eax, ebx
            dec     ecx
            .endw
            .endif

            if      value LT 0
            neg     eax
            endif

            pop     ecx
            pop     ebx

            endm

main        proc
            LOADACC     -3
            MULTACC     1
            INVOKE      printf, ADDR format, eax

            ret
main        endp
            end