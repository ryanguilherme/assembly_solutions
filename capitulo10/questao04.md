# **4.** _Write the equivalent assembly language code segment for the C program in Sect. 10.7.3 (which uses type long double)._
[Código ASM aqui](codigos/questao04.asm)

```asm
.data
in1fmt    byte    "%Lf", 0
msg0fmt   byte    0Ah,"%s", 0
msg1fmt   byte    0Ah,"%s%6.4Lf",0Ah,0Ah, 0
msg0      byte    "Enter a long double for x: ", 0
msg1      byte    "The long double in y is: ", 0
x         real10   ?
y         real10   ?

          .code
main      proc
          INVOKE    printf, ADDR msg0fmt, ADDR msg0
          INVOKE    scanf, ADDR in1fmt, ADDR x
          fld       x
          fstp      y
          INVOKE    printf, ADDR msg1fmt, ADDR msg1, y
          ret 
main      endp
end
```