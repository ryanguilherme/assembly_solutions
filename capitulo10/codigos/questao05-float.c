#include <stdio.h>

int main() {
    float x;
    double y; 
    printf("\n%s", "Enter a double for x: ");
    scanf_s("%f", &x);

    __asm {
        fld x
        fstp y
    }
  
    printf("\n%s%6.4f\n\n", "The double in y is: ", y);
    return 0;
}