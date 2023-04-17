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

