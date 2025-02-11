/* structptr.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

typedef struct
{
    char* name; char* popn;
} City;

int main()
{
    City ny, la, ch, * ptr;
	ny.name = "New York City";
	ny.popn = "8,274,527";
	printf("\n%s, Population: %s\n", ny.name, ny.popn);
	ptr = &la;
	ptr->name = "Los Angeles";
	ptr->popn = "3,834,340";
	printf("\n%s, Population: %s\n", la.name, la.popn);
	ptr = &ch;
	ptr->name = "Chicago";
	ptr->popn = "2,836,658";
	printf("\n%s, Population: %s\n", ptr->name, ptr->popn);

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