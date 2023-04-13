# _7. Write a complete assembly language program to prompt for and input the temperature in degrees Fahrenheit, calculate the degrees in Celsius, and then output the degrees in Celsius. The equation to be used is C = ( F −32)/9 * 5, where C stands for Celsius and F stands for Fahrenheit. Note that the answer will be off slightly due to using integers and be very careful to use the proper order of operations. The form of the input and output can be found below. Be sure to use proper vertical and horizontal spacings:_
### OBS: Comentários sobre o código no arquivo .asm referente ao código da questão
<hr>

## _Input and Output_
<code style='color:pink'>
Enter the degrees in Fahrenheit: 100
The degrees in Celsius is: 35   
</code>

<hr>

### **Resposta:**
<!--<code style='color:pink'> -->
```asm
            .686<br>
            .model flat, c<br>
            .stack 100h<br>
printf      PROTO arg1:Ptr Byte, printlist:VARARG<br>
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG<br><br>
            .data<br>
fah         sdword ?<br>
cel         sdword ?<br>
msginp      byte "Enter the degrees in Fahrenheit: ", 0<br>
msgout      byte "The degrees in Celsius is: ", 0<br>
inpfmt      byte "%d", 0<br>
outfmt      byte "%s%d", 0<br><br>
            .code<br>
main        proc<br>
            INVOKE      printf, ADDR msginp<br>
            INVOKE      scanf, ADDR inpfmt, ADDR fah<br>
            cdq<br>
            sub         fah, 32<br>
            mov         ebx, 9<br>
            mov         eax, fah<br>
            idiv        ebx<br>
            mov         ebx, 5<br>
            imul        ebx<br>
            mov         cel, eax<br>
            INVOKE      printf, ADDR outfmt, ADDR msgout, cel<br>
            ret<br>
main        endp<br>
            end

```
<!--</code>-->

<hr>