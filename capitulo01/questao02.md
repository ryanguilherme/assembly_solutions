# 2. Implement each of the following declarations in assembly language:

> Correção: 0,2
> Use as crases (```) no lugar de HTML para realçar o código.

## A. char initial;

> Correção: faltou a ?

<code style='color:pink'>initial      byte</code>
## B. char grade = 'B';
<code style='color:pink'>grade        byte "B", 0</code>

> Correção: são caracteres, não _strings_. Por isso, não precisa do 0 ao final.

## C. char x = 'P', y = 'Q'; 
<code style='color:pink'>x            byte "P", 0</code> <br>
<code style='color:pink'>y            byte "Q", 0</code>
## D. int amount;
<code style='color:pink'>amount       sdword ?</code>
## E. int count = 0; 
<code style='color:pink'>count        sdword 0</code>
## F. int number = -396;
<code style='color:pink'>number       sdword -396</code>