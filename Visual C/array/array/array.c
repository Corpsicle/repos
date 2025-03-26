/* array.c : This file contains the 'main' function.Program execution begins and ends there. */


#include <stdio.h>

int main()
{
    int arr[3];
	arr[0] = 100;
	arr[1] = 200;
	arr[2] = 300;

	char str[10] = { 'C', ' ', 'P', 'r', 'o', 'g', 'r', 'a', 'm', '\0' };

	printf("1st element value: %d\n", arr[0] );
	printf("2nd element value: %d\n", arr[1] );
    printf("3rd element value: %d\n", arr[2] );
	printf("String: %s\n", str);

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