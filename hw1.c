#include<stdio.h>
int singlenumber(int* arr, int size) {
    int res = arr[0];
    for (int i = 1; i < size; i++)
        res ^= arr[i];
    return res;
}

void printarray(int* arr, int size) {
    for (int i = 0; i < size; i++)
        printf("%d ", arr[i]);
    printf("\n");
}

int main() {
    int arr1[] = { 4, 1, 2, 1, 2 };
    int size1 = sizeof(arr1)/sizeof(int);
    printarray(arr1, size1);
    int res1 = singlenumber(arr1, size1);
    printf("result 1: %d \n", res1);

    int arr2[] = { 1, 2, 3, 1, 3, 2, 12 };
    int size2 = sizeof(arr1) / sizeof(int);
    printarray(arr2, size2);
    int res2 = singlenumber(arr2, size2);
    printf("result 2: %d \n", res2);

    int arr3[] = { 3, 6, 3, 6, 7, 8, 8, 5, 5 };
    int size3 = sizeof(arr1)/sizeof(int);
    printarray(arr3, size3);
    int res3 = singlenumber(arr3, size3);
    printf("result 3: %d \n", res3);
}
