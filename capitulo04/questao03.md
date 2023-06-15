# _3. Convert the following C selection structures to the corresponding assembly language code segments. Do not use MASM directives, but rather only compares, jumps, and appropriate labels (hint: Problem B, use De Morgan’s rules):_

> Correção: 0,0. Você está saltando da primeira comparação ao fim do laço. 

## **A.**
```c
if (w == 1 && x == 2)
    y--;
```
### **Resposta:**
```asm
            .code
main        proc
if01:       cmp     w, 1
            jne     endif01
then01:     cmp     x, 2
            jne     endif01
            dec     y
endif01:    nop
            ret
main        endp
            end
```

<hr>

## **B.**

> Correção: 0,0
> Se num > 0, não executa. Entretanto, se num == 4, num <= 3 é falso, o que torna num > 0 && num <= 3 falso, o que torna !(num > 0 && num <= 3) verdadeiro. 

```c
if (!(num > 0 && num <= 3))
    count=count-2;
```
### **Resposta:**
```asm
            .code
main        proc
if01:       cmp     num, 0
            ja      endif01
then01:     cmp     num, 3
            jbe     endif01
            add     count, 2
endif01:    nop
            ret
main        endp
            end
```

<hr>

## **C.**
```c
if ( ( w == 1 || x == 2 ) && y == 3)
    z++;
```
### **Resposta:**
```asm
            .code
main        proc
if01:       nop
or01:       nop
            cmp     w, 1
            je      and01
            cmp     x, 2
            jne     endif01
and01:      nop
            cmp     y, 3
            jne     endif01
then01:     nop
            inc     z
endif01:    nop
            ret
main        endp
            end
```

<hr>

## **D.**
```c
if (a == 1 || b == 2 && c > 3 || d < 4)
    e--;
```
### **Resposta:**
```asm
            .code
main        proc
if01:       nop
and01:      cmp     b, 2
            jne     endif01
            cmp     c, 3
            jle     endif01
or01:       cmp     a, 1
            je      then01
            cmp     d, 4
            jge     endif01
then01:     dec     e
endif01:    nop
            ret
main        endp
            end
```
