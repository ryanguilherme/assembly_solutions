# _2. Convert the following C arithmetic statements to the equivalent Intel assemblylanguage statements (hint: as discussed in the text, do not forget to move any immediate values into a register first for the imul and idiv instructions, if necessary):_

## A. product = 3 * number;
<code style='color:pink'>mov        eax, 3</code><br>
<code style='color:pink'>imul       number</code><br>
<code style='color:pink'>mov        product, eax</code>

## B. result = number % amount;
<code style='color:pink'>mov        eax, number</code><br>
<code style='color:pink'>cdq</code><br>
<code style='color:pink'>idiv       amount</code><br>
<code style='color:pink'>mov        result, edx</code><br>

## C. answer = number / 2;
<code style='color:pink'>mov        eax, number</code><br>
<code style='color:pink'>cdq</code><br>
<code style='color:pink'>mov        ebx, 2</code><br>
<code style='color:pink'>idiv       ebx</code><br>
<code style='color:pink'>mov        answer, eax</code>

## D. difference = 4 - number;
<code style='color:pink'>mov        eax, 4</code><br>
<code style='color:pink'>sub        eax, number</code><br>
<code style='color:pink'>mov        difference, eax</code>