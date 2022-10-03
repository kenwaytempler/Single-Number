#include<stdio.h>
int main() {
    int arr1[] = { 4, 1, 2, 1, 2 };
    int size1 = 5;
    int res1 = singlenumber(arr1, size1);
    printf("result 1: %d \n", res1);

    int arr2[] = { 1, 2, 3, 1, 3, 2, 12 };
    int size2 = 7;
    int res2 = singlenumber(arr2, size2);
    printf("result 2: %d \n", res2);

    int arr3[] = { 3, 6, 3, 6, 7, 8, 8, 5, 5 };
    int size3 = 9;
    int res3 = singlenumber(arr3, size3);
    printf("result 3: %d \n", res3);
}
int singlenumber(int* arr, int size)
{
    int res = arr[0];

    for (int i = 1; i < size; i++)
        res ^= arr[i];

    return res;
}
