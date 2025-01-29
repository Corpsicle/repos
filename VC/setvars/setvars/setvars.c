// setvars.c : This file contains the 'main' function. Program execution begins and ends there.
//

#include <stdio.h>

int main()
{
    char letter;
    int num1, num2;

    printf("Enter any one keyboard character: ");
    if (scanf_s("%c", &letter, 1) != 1) {
        printf("Error reading character input.\n");
        return 1;
    }
    printf("Enter two integers separated by a space : ");
    if (scanf_s("%d %d", &num1, &num2) != 2) {
        printf("Error reading integer inputs.\n");
        return 1;
    }
    printf("Numbers input: %d  and %d\n", num1, num2);
    printf("Letter input: %c ", letter);
    printf(" Stored at: %p\n", &letter);

    return 0;
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
