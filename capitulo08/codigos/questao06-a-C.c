#include <stdio.h>

void bubble_sort(int array[], int n) {
    int i, j, aux;

    for (i = 0; i < n - 1; i++) {
        for (j = 0; j < n - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                aux = array[j];
                array[j] = array[j + 1];
                array[j + 1] = aux;
            }
        }
    }
}

int main()
{
    int array[14] = {17, 26, 3, 31, 44, 82, 9, 6, 0, 11, 251, 39, 5, 1};
    
    bubble_sort(array, 14);

    for (int i = 0; i < 14; i++)
    {
        printf("%d ", array[i]);
    }
    return 0;
}