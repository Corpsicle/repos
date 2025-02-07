/* passptr.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

void twice(int* ptr);
void thrice(int* ptr);


int main()
{
    int num = 5;
    int* ptr = &num;

    printf("ptr stores address: 0x%p\n", ptr);
    printf("ptr dereferences value: %d\n\n", *ptr);
    printf("The num value is: %d\n", num);
    twice(ptr);
    printf("The num value is now %d\n", num);
    thrice(ptr);
    printf("And now the num value is %d\n", num);
    return 0;
}

void twice(int* number)
{
    *number = (*number * 2);
}

void thrice(int* number)
{
    *number = (*number * 3);
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
