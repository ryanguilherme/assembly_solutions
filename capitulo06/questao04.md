# **4.** _Assume that a status register in a processor indicates the current state of a photocopying machine according to the following table. For each bit, output an appropriate message indicating the status of the machine. Note that although there can be more than one bit set at one time, only one error message can be generated, where bit 0 has the highest priority, followed by bit 1, etc. At the discretion of the instructor, implement using high-level directives, without high-level directives, or a combination as shown in the text._<br><br>_Bit Message_<br><br>0 Paper jam<br><br>1 Paper misfeed<br><br>2 Paper tray empty<br><br>3 Toner low<br><br>4 Toner empty<br><br>

> Correção: 0,0. Esta questão tem a base feita no livro. Eu deixei claro que queria o programa. Eu não vou recortar seu trecho, escrever o resto para depois testar.

### **Resposta:**
```asm
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
```