/* strcat.c : This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>
#include <string.h>

int main()
{
	char s1[100] = "A place for everything ";
	char s2[] = "and everything in its place";
	char s3[100] = "The truth is rarely pure  ";
	char s4[] = "and never simple - Oscar Wilde";

	strcat_s(s1, sizeof(s1), s2); printf("\n%s\n", s1);
	strncat_s(s3, sizeof(s3), s4, 17); printf("\n%s\n", s3);
	strncat_s(s3, sizeof(s3), (s4 + 17), 14); printf("\n%s\n", s3);

    return 0;
}

/* Run program : Ctrl + F5 or Debug > Start Without Debugging menu
   Debug program: F5 or Debug > Start Debugging menu  */

/* Tips for Getting Started: 
     1. Use the Solution Explorer window to add/manage files
     2. Use the Team Explorer window to connect to source control
     3. Use the Output window to see build output and other messages
     4. Use the Error List window to view errors
     5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
     6. In the future, to open this project again, go to File > Open > Project and select the .sln file
*/