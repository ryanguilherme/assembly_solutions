#include <stdio.h>

int main(){
    int array[20] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
    int second_array[20];

    for(int i = 0; i < 20; i++){
        second_array[i] = array[i];
    }

    for (int i = 0; i < 20; i++){
        printf("%d ", second_array[i]);
    }
}