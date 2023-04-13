# _4. Using the order of operations from C, convert the following arithmetic statements into the equivalent assembly language code segment. Be careful to implement the unary minus sign, increment, and decrement operators carefully:_

## A. --i;
```asm
dec        i</code>
```
## B. j = ++k - m;
```asm
inc        k ; como e ++k e nao k++, incrementar k sera minha primeira acao 
mov        eax, m ; agora simplesmente movo m para eax para subtrai-lo de k, e o resto e o basico 
sub        k, eax
mov        eax, k
mov        j, eax</code>
```

## C. z = -(x + y);
```asm
mov        eax, y ; y e movido para eax para soma-lo com x 
add        x, eax
neg        x ; como a soma de x e y (x + y) esta armazenada em x, apenas nego x para fazer -(x + y) 
mov        eax, x
mov        z, eax
```

## D. a = ++b - c++;
```asm
inc        b ; como e ++b, incrementar b sera a primeira acao 
mov        eax, c
sub        b, eax
mov        eax, b
mov        a, eax
inc        c ; por ser 'c++', o incremento de c ocorre apos ser feito (++b - c), logo, nao implicara no valor atribuido ao endereco a, e o incremento de c deve ser feito por ultimo
```

## E. x = -y + z--;
```asm
neg        y
mov        eax, y
add        eax, z
mov        x, eax
dec        z
; por ser 'z--', o z deve ser decrementado apos toda a operacao, nao afetando o resultado final atribuido ao endereco x 
```

