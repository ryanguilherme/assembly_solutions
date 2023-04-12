# _6. Given Ohm’s law from the complete program at the end of this chapter and Watt’s law as W = IE, where W stands for the number of watts, write a complete assembly language program to prompt for and input the number amperes and ohms, and then calculate both the number of volts and number of watts. The form of the input and output can be found below, and as always be careful with the vertical and horizontal spacings:_

## **_Input and output_**
<hr>
<code style='color:pink'>
Enter the number of amperes: 5<br>
Enter the number of ohms: 4<br><br>

The number of volts is: 20<br>
The number of watts is: 200<br>
</code>

### **Resposta:**
<hr>
<code style='color:pink'>
            .686 <br>
            .model flat, c<br>
            .stack 100h<br>
printf      PROTO arg1:Ptr Byte, printlist:VARARG<br>
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG<br>
            .data<br>
ampere      sdword ?<br>
ohm         sdword ?<br>
volt        sdword ?<br>
watt        sdword ?<br>
msgfmt      byte "%s", 0<br>
inpfmt      byte "%d", 0<br>
outfmt      byte 0Ah, "%s%d", 0<br>
msg0        byte "Enter the number of amperes: ", 0<br>
msg1        byte "Enter the number of ohms: ", 0<br>
msg2        byte "The number of volts is: ", 0<br>
msg3        byte "The number of watts is: ", 0<br><br>

            .code <br>
main        proc<br>
            INVOKE  printf, ADDR msgfmt, ADDR msg0<br>
            INVOKE  scanf, ADDR inpfmt, ADDR ampere<br>
            INVOKE  printf, ADDR msgfmt, ADDR msg1<br>
            INVOKE  scanf, ADDR inpfmt, ADDR ohm<br>
            mov     eax, ampere<br>
            imul    ohm<br>
            mov     volt, eax<br>
            mov     eax, ampere<br>
            imul    volt<br>
            mov     watt, eax<br>
            INVOKE  printf, ADDR outfmt, ADDR msg2, volt<br>
            INVOKE  printf, ADDR outfmt, ADDR msg3, watt<br>
            ret<br>
main        endp<br>
            end<br>
</code>