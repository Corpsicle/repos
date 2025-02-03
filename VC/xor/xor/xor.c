/* xor .c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

int main()
{
    int x = 10, y = 5;
	printf("\nx=%d y =%d\n", x, y);
	x = x ^ y;      /* 1010 ^ 0101 = 1111 (Decimal 15) */
	y = x ^ y;      /* 1111 ^ 0101 = 1010 (Decimal 10) */
	x = x ^ y;      /* 1111 ^ 1010 = 0101 (Decimal 5) */
	printf("\nx=%d y =%d\n", x, y);

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