/* ifelse.c : This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>

int main()
{
	if (5 > 1) { printf("5 is greater than 1\n"); }
	if (5 > 1)
	{
		if(7 > 2)
			{ printf("5 is greater than 1 and 7 is greater than 2\n"); }
	}
	if(1 > 2)
	{ printf("1st expression is true\n"); }
	else if(1>3)
		{ printf("2nd expression is true\n"); }
	else
	{ printf("Both expressions are false\n"); }

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
