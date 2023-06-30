# 2. Given the contents of the following memory location, what is stored in the eax register at the end of each segment? 8.7 Complete Program: Implementing the Selection Sort 185

## **A.** ```mov eax, temp```
### **Resposta:**
### 5
---
<br>

## **B.** ```mov eax, offset temp```
### **Resposta:**
### 200
---
<br>

## **C.** ```lea eax, temp```
### **Resposta:**
### 200
---
<br>

## **D.** ```mov eax, offset temp+4```
### **Resposta:**
### 204
---
<br>

## **E.** ```mov esi, offset temp```<br>&nbsp;&nbsp;&nbsp; ```mov eax, esi```
### **Resposta:**
### 200
---
<br>

## **F.** ```mov edi, offset temp```<br>&nbsp;&nbsp;&nbsp;&nbsp;```mov eax, [edi]```
### **Resposta:**
### 5
---
<br>

## **G.** ```lea esi, temp```<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;```lea edi, temp+4```<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;```mov eax, [esi]```<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;```add eax, [edi]```
### **Resposta:**
### 12
---
<br>

## **H.** ```mov esi, offset temp+4```<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;```mov eax, 2```<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;```imul [esi]```
### **Resposta:**
### 14

