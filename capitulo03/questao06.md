# _6. Given Ohm’s law from the complete program at the end of this chapter and Watt’s law as W = IE, where W stands for the number of watts, write a complete assembly language program to prompt for and input the number amperes and ohms, and then calculate both the number of volts and number of watts. The form of the input and output can be found below, and as always be careful with the vertical and horizontal spacings:_
### OBS: Comentários sobre o código estão no arquivo .asm referente ao código
<hr>

## **_Input and output_**
<hr>

```
Enter the number of amperes: 5
Enter the number of ohms: 4

The number of volts is: 20
The number of watts is: 200
```

### **Resposta:**
<hr>

```asm
            .686 
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
ampere      sdword ?
ohm         sdword ?
volt        sdword ?
watt        sdword ?
msgfmt      byte "%s", 0
inpfmt      byte "%d", 0
outfmt      byte 0Ah, "%s%d", 0
msg0        byte "Enter the number of amperes: ", 0
msg1        byte "Enter the number of ohms: ", 0
msg2        byte "The number of volts is: ", 0
msg3        byte "The number of watts is: ", 0
            .code 
main        proc
            INVOKE  printf, ADDR msgfmt, ADDR msg0
            INVOKE  scanf, ADDR inpfmt, ADDR ampere
            INVOKE  printf, ADDR msgfmt, ADDR msg1
            INVOKE  scanf, ADDR inpfmt, ADDR ohm
            mov     eax, ampere
            imul    ohm
            mov     volt, eax
            mov     eax, ampere
            imul    volt
            mov     watt, eax
            INVOKE  printf, ADDR outfmt, ADDR msg2, volt
            INVOKE  printf, ADDR outfmt, ADDR msg3, watt
            ret
main        endp
            end
```