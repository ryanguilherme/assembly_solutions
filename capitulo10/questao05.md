# **5.** _Given the code using inline assembly in Sect. 10.7.4, rewrite it to work with float and long double types (Hint: For type float, see Sect. 10.7.1)._

[Código C aqui](codigos/questao05-float.c)
## **FLOAT:**
```c
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
```

[Código C aqui](codigos/questao05-longdouble.c)
## **LONG DOUBLE:**
```c
#include <stdio.h>

int main() {
    long double x,y;
    printf("\n%s", "Enter a double for x: ");
    scanf_s("%Lf", &x);

    __asm {
        fld x
        fstp y
    }

    printf("\n%s%6.4Lf\n\n", "The double in y is: ", y);
    return 0;
}
```