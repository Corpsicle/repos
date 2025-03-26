/* strstr.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>
#include <string.h>

int main()
{
	char str[] = "No Time Like The Present";
	char sub[] = "Time";
	if (strstr(str, sub) == NULL) 
	{
		printf("Substring \"Time\" Not Found\n");
	}
	else
	{
		printf("Substring \"Time\" Found at %p\n", strstr(str, sub));
		printf("Element Index Number %d\n\n", strstr(str, sub) - str);
	}
	printf("%s Versus \"Time\":) %d\n", sub, strcmp(sub, "Time"));
	printf("%s Versus \"time\":) %d\n", sub, strcmp(sub, "time"));
	printf("%s Versus \"TIME\":) %d\n", sub, strcmp(sub, "TIME"));
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