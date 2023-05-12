            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg1:Ptr Byte, inputlist:VARARG

            .data
inmsg       byte "Enter a hexadecimal number: ", 0
inpfmt      byte "%x", 0
bits        dword ?
error0      byte "Paper jam", 0Ah, 0
error1      byte "Paper misfeed", 0Ah, 0
error2      byte "Paper tray empty", 0Ah, 0
error3      byte "Toner low", 0Ah, 0
error4      byte "Toner empty", 0Ah, 0

            .code
main        proc
            INVOKE      printf, ADDR inmsg
            INVOKE      scanf, ADDR inpfmt, ADDR bits
            test        bits, 00001b
            .if         !ZERO?
            INVOKE      printf, ADDR error0
            jmp         end00
            .endif
            test        bits, 00010b
            .if         !ZERO?
            INVOKE      printf, ADDR error1
            jmp         end00
            .endif
            test        bits, 00100b
            .if         !ZERO?
            INVOKE      printf, ADDR error2
            jmp         end00
            .endif
            test        bits, 01000b
            .if         !ZERO?
            INVOKE      printf, ADDR error3
            jmp         end00
            .endif
            test        bits, 10000b
            .if         !ZERO?
            INVOKE      printf, ADDR error4
            jmp         end00
            .endif
end00:      nop
            ret
main        endp
            end