            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
            
            .data
tempecx     sdword ?
outfmt      byte "%d", 0

            .code
main        proc
            mov         ecx, 2
for01:      nop
            mov         tempecx, ecx
            mov         ecx, 3
for02:      nop
            loop        for02
            mov         ecx, tempecx
            loop        for01
endfor02:   nop
endfor01:   nop
            INVOKE      printf, ADDR outfmt, tempecx
            ret
main        endp
            end
