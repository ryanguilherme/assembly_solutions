# 2. Implement each of the following declarations in assembly language:
## A. char initial;
<code style='color:pink'>initial      byte</code>
## B. char grade = 'B';
<code style='color:pink'>grade        byte "B", 0</code>
## C. char x = 'P', y = 'Q'; 
<code style='color:pink'>x            byte "P", 0</code> <br>
<code style='color:pink'>y            byte "Q", 0</code>
## D. int amount;
<code style='color:pink'>amount       sdword ?</code>
## E. int count = 0; 
<code style='color:pink'>count        sdword 0</code>
## F. int number = -396;
<code style='color:pink'>number       sdword -396</code>