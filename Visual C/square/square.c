/* square.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>
#include"utils.h"

void getnum();

int main()
{
	getnum();

    return 0;
}

void getnum()
{
	int num;
	char again;

	printf("Enter an integer to be squared: ");
	scanf_s("%d", &num);
	printf("%d squared is %d\n", num, square(num));
	printf("Square another number? Y or N: ");
	scanf_s(" %c", &again, 1);
	if ((again == 'Y') || (again == 'y')) getnum();
	else return;
}

/* Run program : Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
*/