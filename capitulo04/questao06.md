# _6. Implement the program in Sect. 4.8 in assembly language without using high-level directives with only compares, jumps, and appropriate labels._

### **_Section 4.8 program_**

```c
#include <stdioh.h>
int main(){
    int voltage;
    printf("%s", "Enter an AC voltage: ");
    scanf("%d", &voltage);
    if (voltage >= 110 && voltage <= 120){
        printf("\n%s\n", "Voltage is Acceptable");
    }
    else {
        printf("\n%s\n","Warning!");
        if (voltage < 110)
            printf("%s\n","Voltage too Low");
        else
            printf("%s\n","Voltage too High");

    }
    printf("\n");
    return 0;
}

```
<hr>

### **Resposta:**
```asm
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr Byte, printlist:VARARG
scanf       PROTO arg2:Ptr Byte, printlist:VARARG

            .data
voltage     sdword ?
inpfmt      byte "%d", 0
msgin       byte "Enter an AC voltage: ", 0
out1        byte 0Ah, "Voltage is Acceptable", 0Ah, 0
out2        byte 0Ah, "Warning!", 0Ah, 0
out3        byte "Voltage too Low", 0Ah, 0
out4        byte "Voltage too High", 0Ah, 0
out5        byte 0Ah, 0

            .code
main        proc
            INVOKE  printf, ADDR msgin
            INVOKE  scanf, ADDR inpfmt, ADDR voltage
if01:       cmp     voltage, 110
            jae     if02
then01:     INVOKE  printf, ADDR out3
endif01:    jmp     endall
if02:       cmp     voltage, 120
            jbe     if03
then02:     INVOKE  printf, ADDR out4
endif02:    jmp     endall
if03:       
then03:     INVOKE  printf, ADDR out1
endif03:    nop
endall:     INVOKE  printf, ADDR out5
            ret
main        endp
            end

```