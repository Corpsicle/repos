/* strcpy.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>
#include <string.h>

int main()
{
	char s1[] = "Larger  text string", s2[] = "Smaller string";
	printf("\n%s: %zu elements", s1, sizeof(s1));
	printf(", %zu characters", strlen(s1));
	strcpy_s(s1, sizeof(s1), s2);
	printf("\n%s: %zu elements", s1, sizeof(s1));
	printf(", %zu characters", strlen(s1));
	strncpy_s(s1, sizeof(s1), s2, 5);
	s1[5] = '\0';
	printf("\n%s: %zu elements", s1, sizeof(s1));
	printf(", %zu characters", strlen(s1));

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