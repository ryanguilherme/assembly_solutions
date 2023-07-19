# **2.** _Given the following declarations, walk through the following code segments and indicate the contents of the ecx, esi, edi, and al registers upon completion of each segment. You may assume that string1 starts at memory location 100 and string2 at memory location 105. With problem D, in addition to the registers, what would be the contents of string2?_

> Correção: 0,3.

```asm
string1 byte "abcde"
string2 byte "abcyz"
```

---

## **A.**
```asm
mov     ecx,5
mov     al,"c"
mov     edi,offset string1
rep     scasb
```
### **Resposta:**
### ecx = 2, esi = undefined, edi = 103, al = "c"

---

## **B.**
```asm
mov     esi,offset string1+3 
lodsb
```
### **Resposta:**
### ecx = undefined, esi = 104, edi = undefined, al = "d"

---

## **C.**
```asm
mov     ecx,5
mov     esi,offset string1
mov     edi,offset string2
repe    cmpsb

```
### **Resposta:**
### ecx = 1, esi = 104, edi = 109, al = undefined

---

## **D.**
```asm
mov     ecx,5 
mov     esi,offset string1
mov     edi,offset string2
repne   cmpsb
```
### **Resposta:**
### ecx = 4, esi = 101, edi = 106, al = undefined, string2 = "abcyz"

---

## **E.**
```asm
lea     edi,string2
mov     al,"d"
stosb
```
### **Resposta:**
### ecx = undefined, esi = undefined, edi = 106, al = "d"

> Correção: _edi_ é 106.


---