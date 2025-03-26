/* enum.cpp : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

int main()
{
	enum SNOOKER { RED = 1, YELLOW, GREEN, BROWN, BLUE, PINK, BLACK };
	int total;

	printf("\nI potted a red worth %d\n", RED);
	printf("Then a black worth %d\n", BLACK);
	printf("Followed by another red worth %d\n", RED);
	printf("And finally a blue worth %d\n", BLUE);
	total = RED + BLACK + RED + BLUE;
	printf("\nAltogether I scored  %d\n", total);

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