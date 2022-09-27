#include<stdio.h>
int main() {
    int arr[] = { 4, 1, 2, 1, 2 };
    int size = sizeof(arr) / sizeof(int);
    int res = singlenumber(arr, size);
    printf("%d", res);
}
int singlenumber(int* arr, int size)
{
    int res = arr[0];

    for (int i = 1; i < size; i++)
        res ^= arr[i];

    return res;
}
