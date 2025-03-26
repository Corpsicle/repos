/* menu.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

void menu();
void action(int option);

int main()
{
    menu();

    return 0;
}

void menu()
{
    int option;
    printf("\n\tWhat would you like to do?");
    printf("\n\t1. Square a number");
    printf("\n\t2. Multiply a number");
    printf("\n\t3. exit\n");
    scanf_s("%d", &option);
    action(option);
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