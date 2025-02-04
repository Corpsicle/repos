/* bitflag.c : This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>

int main()
{
	int flags = 8;      /* Binary 1000 ( 1 x 8, 0 x 4, 0 x 2, 0 x 1 ) */
    
	flags = flags | 2;  /* 1000 | 0010 = 1010 ( Decimal 10 ) */
	printf("Flag 1: %s\n", ((flags & 1) > 0) ? "ON" : "OFF");
	printf("Flag 2: %s\n", ((flags & 2) > 0) ? "ON" : "OFF");
	printf("Flag 3: %s\n", ((flags & 4) > 0) ? "ON" : "OFF");
	printf("Flag 4: %s\n\n", ((flags & 8) > 0) ? "ON" : "OFF");

	char mask = 15;         /* Binary 00001111 */
	flags = ~flags & mask;  /* ~(1010 & 1111 = 0101 */
	printf("Flag 1: %s\n", ((flags & 1) > 0) ? "ON" : "OFF");
	printf("Flag 2: %s\n", ((flags & 2) > 0) ? "ON" : "OFF");
	printf("Flag 3: %s\n", ((flags & 4) > 0) ? "ON" : "OFF");
	printf("Flag 4: %s\n\n", ((flags & 8) > 0) ? "ON" : "OFF");
	printf("Flags decimal value is: %d\n", flags);

	flags = flags << 1;     /* 0101 << 1 = 1010 */
	printf("Flags decimal value is now: %d\n", flags);

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