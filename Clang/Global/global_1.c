#include <stdio.h>

static int sum = 100;

int main()
{
    extern int sum;
    printf("sum = %d\n", sum);
    extern int num;
    printf("num = %d\n", num);

    return 0;
}