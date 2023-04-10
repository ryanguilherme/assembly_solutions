# 4. Using the order of operations from C, convert the following arithmetic statements into the equivalent assembly language code segment. Be careful to implement the unary minus sign, increment, and decrement operators carefully:

## A. --i;
<code style='color:pink'>neg        i</code>

## B. j = ++k - m;
<code style='color:pink'>inc        k</code><br> <!-- como e ++k e nao k++, incrementar k sera minha primeira acao -->
<code style='color:pink'>mov        eax, m</code><br> <!-- agora simplesmente movo m para eax para subtrai-lo de k, e o resto e o basico -->
<code style='color:pink'>sub        k, eax</code><br>
<code style='color:pink'>mov        eax, k</code><br>
<code style='color:pink'>mov        j, eax</code>

## C. z = -(x + y);
<code style='color:pink'>mov        eax, y</code><br> <!-- y e movido para eax para soma-lo com x -->
<code style='color:pink'>add        x, eax</code><br>
<code style='color:pink'>neg        x</code><br> <!-- como a soma de x e y (x + y) esta armazenada em x, apenas nego x para fazer -(x + y) -->
<code style='color:pink'>mov        eax, x</code><br>
<code style='color:pink'>mov        z, eax</code><br>

## D. a = ++b - c++;
<code style='color:pink'>inc        b</code><br> <!-- como e ++b, incrementar b sera a primeira acao -->
<code style='color:pink'>mov        eax, c</code><br>
<code style='color:pink'>sub        b, eax</code><br>
<code style='color:pink'>mov        eax, b</code><br>
<code style='color:pink'>mov        a, eax</code><br>
<code style='color:pink'>inc        c</code><br> <!-- por ser 'c++', o incremento de c ocorre apos ser feito (++b - c), logo, nao implicara no valor atribuido ao endereco a, e o incremento de c deve ser feito por ultimo-->

## E. x = -y + z--;
<code style='color:pink'>neg        y</code><br>
<code style='color:pink'>mov        eax, y</code><br>
<code style='color:pink'>add        eax, z</code><br>
<code style='color:pink'>mov        x, eax</code><br>
<code style='color:pink'>dec        z</code> 
<!-- por ser 'z--', o z deve ser decrementado apos toda a operacao, nao afetando o resultado final atribuido ao endereco x -->

