/* arrptr.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

int main()
{
    int i;
    int nums[5] = { 1, 2, 3, 4, 5 };
    int* ptr0 = &nums[0];
    int* ptr1 = &nums[1];
    int* ptr2 = &nums[2];
    int* ptr3 = &nums[3];
    int* ptr4 = &nums[4];
    int* ptrs[5] = { ptr0, ptr1, ptr2, ptr3, ptr4 };
    char str[9] = { 'C', ' ', 'i', 's', ' ', 'F', 'u', 'n', '\0' };
    char* string = str;
    char* strings[3] = { "Alpha", "Bravo", "Charlie" };

    for (i = 0; i < 5; i++)
    {
        printf("The value at 0x%p is %d\n", ptrs[i], *ptrs[i]);
    }
    printf("\nString is: %s\n\n", string);
    for (i = 0; i < 3; i++)
    {
        printf("string %d is: %s\n", i, strings[i]);
    }

    return 0;
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