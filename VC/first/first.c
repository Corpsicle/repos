/* first.c : This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>

void first();
int square5();
int cube5();

int main()
{
	int num;

	first();
	num = square5();
	printf("5x5 = %d\n", num);
	printf("5x5x5 = %d\n", cube5());

    return 0;
}

void first()
{
	printf("Hello from the first function\n");
}

int square5()
{
	int square = 5 * 5;
	return square;
}

int cube5()
{
	int cube = 5 * 5 * 5;
	return cube;
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