// vars.c : This file contains the 'main' function. Program execution begins and ends there.
//

#include <stdio.h>

int main()
{
    int num = 100;
    double pi = 3.1415926536;

	printf("Integer is %d\n", num);
	printf("Values are %d and %f\n", num, pi);
	printf("%%7d displays %7d\n", num);
	printf("%%07d displays %07d\n", num);
	printf("Pi is approximately %1.10f\n", pi);
	printf("Right-aligned %20.3f rounded pi\n", pi);
	printf("Left-aligned %-20.3f rounded pi\n", pi);

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
