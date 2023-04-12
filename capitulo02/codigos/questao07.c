#include <stdio.h>

int main(){
    int a, b, c;
    printf("Enter a number: ");
    scanf("%d", &a);
    printf("Enter a larger number: ");
    scanf("%d", &b);
    printf("Enter an even larger\nnumber: ");
    scanf("%d", &c);
    printf("\n%d%s%d%s%d\n", a, " < ", b, " < ", c);
    printf("\n%d%s%d%s%d\n", c, " > ", b, " > ", a);
    return 0;
}