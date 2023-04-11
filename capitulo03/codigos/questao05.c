#include <stdio.h>

int main(){
    int number;
    printf("\n%s", "Enter an integer: ");
    scanf("%d", &number);
    number = 7 - number * 3;
    printf("\n%s%d\n\n", "The integer is: ", number);
    return 0;
}