/* comparison.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

int main()
{
    int zero = 0, nil = 0, one = 1;
	char upr = 'A', lwr = 'a';

	printf("Equality (0 == 0) is %d\n", zero == nil);
	printf("Equality (0 == 1) is %d\n", zero == one);
	printf("Equality (A == a) is %d\n", upr == lwr);
	printf("Inequality (A != a) is %d\n", upr != lwr);
	printf("Greater than (1 > 0) is %d\n", one > zero);
	printf("Less than (1 < 0) is %d\n", one < nil);
	printf("Greater than or equal to (1 >= 0) is %d\n", one >= zero);
	printf("Less than or equal to (1 <= 0) is %d\n", one <= nil);

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