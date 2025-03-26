/*  wait.c: This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>
#include <time.h>

void wait(int seconds);

int main()
{
	time_t go, stop;
	int i;

	go = time(NULL);
	printf("\nStarting countdown...\n\n");
	for (i = 10; i > -1; i--)
	{
		printf(" - %d", i);
		wait(1);
	}
	stop = time(NULL);
	printf("\nRuntime: %0f seconds\n", difftime(stop, go));
	return 0;

}

void wait(int seconds)
{
	clock_t end_wait = (clock() + ( seconds * CLOCKS_PER_SEC));
	while (clock() < end_wait) {}
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