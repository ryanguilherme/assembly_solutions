            .686
            .model flat, c
            .stack 100h
printf      PROTO   arg1:Ptr Byte, printlist:VARARG
scanf       PROTO   arg2:Ptr Byte, inputlist:VARARG
            .data

            .code
main        proc
            
            ret
main        endp
            end