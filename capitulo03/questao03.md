# _3. Using order of operations from C, convert the following arithmetic statements into the equivalent assembly language statements. Be sure not to destroy the contents of any of the variables that appear only to the right of the assignment symbol, unless ++ or -- is used._

### OBS: a partir dessa questao, comecei a comentar algumas linhas do codigo markdown para explicar o que estou tentando fazer nas linhas dos codigos assembly

## A. x = x * y + z * 2;
<code style='color:pink'>mov        eax, x</code><br>
<code style='color:pink'>imul       y</code><br>
<code style='color:pink'>mov        ecx, eax</code><br>
<code style='color:pink'>mov        eax, z</code><br>
<code style='color:pink'>mov        ebx, 2</code><br>
<code style='color:pink'>imul       ebx</code><br>
<code style='color:pink'>add        ecx, eax</code><br>
<code style='color:pink'>mov        x, ecx</code>

## B. a = b - c / 3;
<code style='color:pink'>mov         eax, c</code><br> <!-- guarada c em eax para usa-lo como numerador na futura divisao (c / 3) -->
<code style='color:pink'>mov         ebx, 3</code><br> <!-- guarda 3 em ebx para usa-lo como denominador na divisao (c / 3) pois nao pode usar valor imediato em idiv -->
<code style='color:pink'>idiv        ebx</code><br> <!-- divide eax por ebx (c / 3) -->
<code style='color:pink'>sub        b, eax</code><br>
<code style='color:pink'>mov        ecx, b</code><br>
<code style='color:pink'>mov        a, ecx</code>

## C. total = num1 / num2 - (num3 * num4);
<code style='color:pink'>mov        eax, num3</code><br>
<code style='color:pink'>imul       num4</code><br>
<code style='color:pink'>mov        ecx, eax</code><br> <!-- guarda (num3 * num4) em ecx -->
<code style='color:pink'>mov        eax, num1</code><br> <!-- guarda num1 em eax para depois dividi-lo -->
<code style='color:pink'>mov        ebx, num2</code><br> <!-- guarda num2 em ebx para entao fazer a operacao "idiv ebx", que dividira eax (num1) por ebx (num2) -->
<code style='color:pink'>idiv       ebx</code><br> <!-- divide eax (num1) por ebx (num2) [num1 / num2] -->
<!-- nessa linha eax guarda (num1 / num2) e ecx guarda (num3 * num4), resta subtrair eax de ecx -->
<code style='color:pink'>sub        eax, ecx</code><br>
<code style='color:pink'>mov        total, eax</code>

## D. r = -s + t++;
<code style='color:pink'>mov        eax, s</code><br> 
<code style='color:pink'>neg        eax</code><br> <!-- como é t++ e não ++t, o incremento de t sera a ultima acao tomada -->
<code style='color:pink'>add        eax, t</code><br>
<code style='color:pink'>mov        r, eax</code><br>
<code style='color:pink'>inc        t</code><br>

## E. m = n * ((i - j) * k);
<code style='color:pink'>mov        eax, i</code><br> <!-- move i para eax para fazer a subtracao, pois se tentasse fazer sub i, j tentaria fazer dois acessos a memoria, nao seria possivel -->
<code style='color:pink'>sub        eax, j</code><br>
<code style='color:pink'>imul       k</code><br> <!-- (i - j) ja estava armazenado no registrador eax, entao basta usar imul k para fazer ((i - j) * k) -->
<code style='color:pink'>imul       n</code><br> <!-- como a ordem de uma multiplicacao nao importa, eu posso simplesmente multiplicar por n, e ja resultara no resultado final -->
<code style='color:pink'>mov        m, eax</code><br>

## F. q = a - b + c / d * e; <!-- nesse caso a prioridade de / e * e igual, entao deve-se ser feito a operacao no sentido esquerda -> direita -->
<code style='color:pink'>mov        eax, c</code><br>
<code style='color:pink'>idiv       d</code><br> <!-- divide c que esta em eax por d (c / d) -->
<code style='color:pink'>imul       e</code><br> <!-- multiplica o valor que esta em eax (c / d) por e -->
<!-- agora basta fazer tudo na ordem normal da esquerda pra direita, pois so restam operacoes de adicao e subtracao -->
<code style='color:pink'>mov        ecx, eax</code><br> <!-- guarda (c / d * e) em ecx -->
<code style='color:pink'>mov        eax, b</code><br>
<code style='color:pink'>sub        a, eax</code><br>
<code style='color:pink'>mov        eax, a</code><br>
<code style='color:pink'>add        eax, ecx</code><br>
<code style='color:pink'>mov        q, eax</code><br> <!-- guarda o resultado final que esta em eax no endereco 'q' -->



