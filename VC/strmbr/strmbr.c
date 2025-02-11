/* strmbr.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

typedef struct
{
	char str[5];
} ArrType;

typedef struct
{
	char* str;
} PtrType;

ArrType arr = { 'B', 'a', 'd', ' ', '\0'};
PtrType ptr = { "Good" };

int main()
{
	printf("\nArray string is a %s", arr.str);
	arr.str[0] = 'I';
	arr.str[1] = 'd';
	arr.str[2] = 'e';
	arr.str[3] = 'a';
	arr.str[4] = '\0';
	printf(" %s\n", arr.str);
	printf("\nPointer string is a %s", ptr.str);
	ptr.str = "Idea";
	printf(" %s\n", ptr.str);

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