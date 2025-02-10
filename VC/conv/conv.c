/* conv.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    int n1, n2, n3;
	char s1[10] = "12eight", s2[10] = "-65.8", s3[10] = "x13";

	n1 = atoi(s1);
	printf("\nString %s converts to integer: %d\n", s1, n1);
    n2 = atoi(s2);
	printf("String %s converts to integer: %d\n", s2, n2);
	n3 = atoi(s3);
    printf("String %s converts to integer: %d\n\n", s3, n3);
	_itoa_s(n1, s1, sizeof(s1), 2);
	printf("Decimal %d is Binary: %s\n", n1, s1);
    n2 = sprintf_s(s3, sizeof(s3), "%o", n1);
	printf("Decimal %d is Octal: %s chars: %d\n", n1, s3, n2);
	n3 = sprintf_s(s3, sizeof(s3), "%x", n1);
	printf("Decimal %d is Hexadecimal: %s chars: %d\n", n1, s3, n3);

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