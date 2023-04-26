# _2. Convert the following C arithmetic statements to the equivalent Intel assemblylanguage statements (hint: as discussed in the text, do not forget to move any immediate values into a register first for the imul and idiv instructions, if necessary):_

> Correção: 0,5

## A. product = 3 * number;
```asm
mov        eax, 3
imul       number
mov        product, eax
```
## B. result = number % amount;
```asm
mov        eax, number
cdq
idiv       amount
mov        result, edx
```
## C. answer = number / 2;
```asm
mov        eax, number
cdq
mov        ebx, 2
idiv       ebx
mov        answer, eax
```
## D. difference = 4 - number;
```asm
mov        eax, 4
sub        eax, number
mov        difference, eax
```