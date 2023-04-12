# _1. Indicate whether the following statements are syntactically correct or incorrect. If incorrect, indicate what is wrong with the statement: 2.5 Complete Program: Using Input, Data Transfer, and Output 25_
## A. <code style='color:pink'> printf PROTO arg1:Ptr Byte, printlist:VARARG </code>
### Correto
<hr>

## B. <code style='color:pink'> msgfm1 byte "\n%s%d\n", 0</code>
<hr>

### Correto
<hr>

## C. <code style='color:pink'> INVOKE printf, ADDR msg1fmt, ADDR number </code>
<hr>

### Correto
<hr>

## D. <code style='color:pink'> msg2fmt byte 0Ah, 0Ah, "%s", 0Ah, 0Ah, 0 </code>
<hr>

### Correto
<hr>

## E. <code style='color:pink'> msg3fmt byte "%s%d", \n,0</code>
<hr>

### Incorreto, se for pra usar uma quebra de linha em assembly, o adequado seria um '0Ah', e não '\n', assim: <code style='color:pink'> msg3fmt byte "%s%d", 0Ah, 0</code>