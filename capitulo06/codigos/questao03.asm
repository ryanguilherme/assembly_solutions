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