/* recur.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

void count_down_from(int num);

int main()
{
    int start;
    printf("Enter a positive integer to count down from: ");
    scanf_s("%d", &start);

    count_down_from(start);
    printf("Lift off!\n");

    return 0;
}

void count_down_from(int num)
{
    printf("%d\n", num);
    --num;
    if (num < 0) return;
    else
        count_down_from(num);
}

/* Run program : Ctrl + F5 or Debug > Start Without Debugging menu
   Debug program: F5 or Debug > Start Debugging menu  */

/* Tips for Getting Started :
     1. Use the Solution Explorer window to add/manage files
     2. Use the Team Explorer window to connect to source control
     3. Use the Output window to see build output and other messages
     4. Use the Error List window to view errors
     5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
     6. In the future, to open this project again, go to File > Open > Project and select the .sln file
*/