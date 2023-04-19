#include <stdio.h>
int main(){
    int voltage;
    pritnf("%s", "Enter an AC Voltage: ");
    scanf("%d", &voltage);
    if (voltage >= 110 && voltage <= 120){
        printf("\n%s\n", "Voltage is Acceptable");
    }
    else{
        if (voltage < 110)
            printf("%s\n", "Voltage too Low");
        else
            printf("%s\n", "Voltage too High");
    }
    printf("\n");
    return 0;
}