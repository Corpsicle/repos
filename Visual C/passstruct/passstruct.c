/* passstruct.c : This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>

typedef struct
{
	char *name;
	int quantity;
} Item;

Item fruits[3] = { { "Apple", 10 }, { "Banana", 20 }, { "Cherry", 30 } };

void disply(Item val, Item* ref);

int main()
{
	disply(fruits[0], &fruits[0]);

    return 0;
}


void disply(Item val, Item* ref)
{
    printf("%s: %d\n", val.name, val.quantity);
	val.name = "Banana"; val.quantity = 40;
	printf("%s: %d\n", val.name, val.quantity);
    printf("%s: %d\n", fruits[0].name, fruits[0].quantity);
    ref->name = "Peach";
	ref->quantity = 50;
	printf("%s: %d\n", fruits[0].name, fruits[0].quantity);
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