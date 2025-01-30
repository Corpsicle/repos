/* define.cpp : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

#define LINE "___________________________"
#define TITLE "C Programming in easy steps"
#define AUTHOR "Mike McGrath"

#ifdef _WIN32
	#define SYSTEM "Windows"
#endif // _WIN32

#ifdef _WIN64
	#define SYSTEM "Windows 64-bit"
#endif // _WIN64

#ifdef __linux__
	#define SYSTEM "Linux"
#endif // __linux__

int main()
{
    printf("\n \t %s \n \t %s \n", LINE, TITLE);
	printf("\t by %s \n \t %s \n", AUTHOR, LINE);
	printf("\n Operating System: %s \n", SYSTEM);

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
