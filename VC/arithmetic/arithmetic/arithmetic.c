/* arithmetic.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

int main()
{
    int a = 4, b = 8, c = 1, d = 1;

	printf("Addition: %d\n", a + b);
	printf("Subtraction: %d\n", b - a);
	printf("Multiplication: %d\n", a * b);
	printf("Division: %d\n", b / a);
	printf("Modulus: %d\n", a % b);
	printf("Postfix Increment: %d\n", c++);
	printf("Postfix now: %d\n", c);
	printf("Prefix Increment: %d\n", ++d);
	printf("Prefix now: %d\n", d);

	return 0;
}

/* Run program : Ctrl + F5 or Debug > Start Without Debugging menu
   Debug program: F5 or Debug > Start Debugging menu */

/* Tips for Getting Started :
     1. Use the Solution Explorer window to add/manage files
     2. Use the Team Explorer window to connect to source control
     3. Use the Output window to see build output and other messages
     4. Use the Error List window to view errors
     5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
     6. In the future, to open this project again, go to File > Open > Project and select the .sln file
*/