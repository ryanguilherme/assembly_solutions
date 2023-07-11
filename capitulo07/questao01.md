# **1.** _Given the following assembly language statements and assuming memory locations and labels are properly declared, indicate whether they are syntactically correct or incorrect. If incorrect, indicate what is wrong with the statement:_

> Correção: 0,0. Não existe a diretiva de montagem condicional _elseif_.

## **A.** ```return```
### **Resposta:**
### Incorreto. Não existe **return** em asm, o equivalente seria **ret**.
<hr>

## **B.** ```endm```
### **Resposta:**
### Correto.
<hr>

## **C.** ```.ifb <parm>```
### **Resposta:**
### Incorreto. Não existe a diretiva **.ifb**.
<hr>

## **D.** ```ifdif <p>, <q>```
### **Resposta:**
### Correto.
<hr>

## **E.** ```if eax lt 0```
### **Resposta:**
### Incorreto. A diretiva **if** não funciona com endereços de memória ou registradores, só funciona com constantes.
<hr>

## **F.** ```elseif```
### **Resposta:**
### Correto.
<hr>

## **G.** ```call dog```
### **Resposta:**
### Correto.
<hr>

## **H.** ```endif```
### **Resposta:**
### Correto.
<hr>

## **I.** ```ifne <p1>, <p2>```
### **Resposta:**
### Incorreto. Não existe a instrução **ifne** em masm32.