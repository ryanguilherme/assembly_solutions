# _7. Write a complete assembly language program to prompt for and input the temperature in degrees Fahrenheit, calculate the degrees in Celsius, and then output the degrees in Celsius. The equation to be used is C = ( F −32)/9 * 5, where C stands for Celsius and F stands for Fahrenheit. Note that the answer will be off slightly due to using integers and be very careful to use the proper order of operations. The form of the input and output can be found below. Be sure to use proper vertical and horizontal spacings:_
### OBS: Comentários sobre o código no arquivo .asm referente ao código da questão
<hr>

## _Input and Output_
```
Enter the degrees in Fahrenheit: 100
The degrees in Celsius is: 35   
```

<hr>

### **Resposta:**

```asm
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
fah         sdword ?
cel         sdword ?
msginp      byte "Enter the degrees in Fahrenheit: ", 0
msgout      byte "The degrees in Celsius is: ", 0
inpfmt      byte "%d", 0
outfmt      byte "%s%d", 0
            .code
main        proc
            INVOKE      printf, ADDR msginp
            INVOKE      scanf, ADDR inpfmt, ADDR fah
            cdq
            sub         fah, 32
            mov         ebx, 9
            mov         eax, fah
            idiv        ebx
            mov         ebx, 5
            imul        ebx
            mov         cel, eax
            INVOKE      printf, ADDR outfmt, ADDR msgout, cel
            ret
main        endp
            end

```


<hr>