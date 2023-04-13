# _3. Using order of operations from C, convert the following arithmetic statements into the equivalent assembly language statements. Be sure not to destroy the contents of any of the variables that appear only to the right of the assignment symbol, unless ++ or -- is used._

### OBS: a partir dessa questao, comecei a comentar algumas linhas do codigo markdown para explicar o que estou tentando fazer nas linhas dos codigos assembly

## A. x = x * y + z * 2;
```asm
mov        eax, x
imul       y
mov        ecx, eax
mov        eax, z
mov        ebx, 2
imul       ebx
add        ecx, eax
mov        x, ecx
```

## B. a = b - c / 3;
```asm
mov         eax, c ; guarada c em eax para usa-lo como numerador na futura divisao (c / 3) 
mov         ebx, 3 ; guarda 3 em ebx para usa-lo como denominador na divisao (c / 3) pois nao pode usar valor imediato em idiv 
idiv        ebx ; divide eax por ebx (c / 3) 
sub        b, eax
mov        ecx, b
mov        a, ecx
```

## C. total = num1 / num2 - (num3 * num4);
```asm
mov        eax, num3
imul       num4
mov        ecx, eax ; guarda (num3 * num4) em ecx 
mov        eax, num1 ; guarda num1 em eax para depois dividi-lo 
mov        ebx, num2 ; guarda num2 em ebx para entao fazer a operacao "idiv ebx", que dividira eax (num1) por ebx (num2) 
idiv       ebx ; divide eax (num1) por ebx (num2) [num1 / num2] 
; nessa linha eax guarda (num1 / num2) e ecx guarda (num3 * num4), resta subtrair eax de ecx 
sub        eax, ecx
mov        total, eax
```

## D. r = -s + t++;
```asm
mov        eax, s 
neg        eax ; como é t++ e não ++t, o incremento de t sera a ultima acao tomada 
add        eax, t
mov        r, eax
inc        t
```

## E. m = n * ((i - j) * k);
```asm
mov        eax, i ; move i para eax para fazer a subtracao, pois se tentasse fazer sub i, j tentaria fazer dois acessos a memoria, nao seria possivel 
sub        eax, j
imul       k ; (i - j) ja estava armazenado no registrador eax, entao basta usar imul k para fazer ((i - j) * k) 
imul       n ; como a ordem de uma multiplicacao nao importa, eu posso simplesmente multiplicar por n, e ja resultara no resultado final 
mov        m, eax
```

## F. q = a - b + c / d * e; ; nesse caso a prioridade de / e * e igual, entao deve-se ser feito a operacao no sentido esquerda -> direita 
```asm
mov        eax, c
idiv       d ; divide c que esta em eax por d (c / d) 
imul       e ; multiplica o valor que esta em eax (c / d) por e 
; agora basta fazer tudo na ordem normal da esquerda pra direita, pois so restam operacoes de adicao e subtracao 
mov        ecx, eax ; guarda (c / d * e) em ecx 
mov        eax, b
sub        a, eax
mov        eax, a
add        eax, ecx
mov        q, eax ; guarda o resultado final que esta em eax no endereco 'q' 
```


