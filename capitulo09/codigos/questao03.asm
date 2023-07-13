            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            
            .data
array       byte    "palindrome", "testeteste", "araraarara", "ppaalliinn", "0011001100", "arquitetur", "aeorganiza", "caoufcquix", "assembly86", "kkjjkkjjkk"
n           sdword  10
cont        sdword  0
tempecx     sdword  ?
aux         sdword  0
arrayaux    byte    10 dup(?) , 0
format      byte    "%s", 0
palind      byte    "palindrome", 0Ah, 0
nopalind    byte    "not a palindrome", 0Ah, 0
            
            .code
main        proc
            mov     ecx, n

            .repeat
            mov     tempecx, ecx
            call    INVERT
            mov     ecx, 10
            mov     ebx, offset array
            add     ebx, aux
            mov     esi, ebx
            lea     edi, arrayaux
            cld
            repe cmpsb
                
            .if     ecx > 0             
            INVOKE  printf, ADDR format, ADDR nopalind
            .else 
            dec     esi                 
            dec     edi                 
            mov     al, [esi] 

            .if     al != [edi]         
            INVOKE  printf, ADDR format, ADDR nopalind
            .else 
            INVOKE  printf, ADDR format, ADDR palind
            .endif
            .endif

            mov     ecx, tempecx
            add     aux, 10
            .untilcxz    
            ret
main        endp

INVERT      proc    
            mov     ecx, 10
            mov     ebx, offset array
            add     ebx, aux
            add     ebx, 9
            mov     esi, ebx
            lea     edi, arrayaux
            
            .repeat
            mov     al, [esi]
            mov     [edi], al
            inc     edi
            dec     esi
            .untilcxz
            ret

INVERT      endp     
            end