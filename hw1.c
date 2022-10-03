#include<stdio.h>
int main() {
    int arr1[] = { 4, 1, 2, 1, 2 };
    int size1 = sizeof(arr1) / sizeof(int);
    int res1 = singlenumber(arr1, size1);
    printf("%d ", res1);

    int arr2[] = { 1,2,3,1,3,2,12 };
    int size2 = sizeof(arr2) / sizeof(int);
    int res2 = singlenumber(arr2, size2);
    printf("%d ", res2);

    int arr3[] = { 3,6,3,6,7,8,8 };
    int size3 = sizeof(arr3) / sizeof(int);
    int res3 = singlenumber(arr3, size3);
    printf("%d ", res3);
}
int singlenumber(int* arr, int size)
{
    int res = arr[0];

    for (int i = 1; i < size; i++)
        res ^= arr[i];

    return res;
}
