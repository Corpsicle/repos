/* matrix.c : This file contains the 'main' function.Program execution begins and ends there. */


#include <stdio.h>

int main()
{
    int matrix[2][3] = { { 'A', 'B', 'C'},{ 1, 2, 3} };
	printf("matrix[0][0] = %c\n", matrix[0][0]);
	printf("matrix[0][1] = %c\n", matrix[0][1]);
	printf("matrix[0][2] = %c\n", matrix[0][2]);
	printf("matrix[1][0] = %d\n", matrix[1][0]);
	printf("matrix[1][1] = %d\n", matrix[1][1]);
	printf("matrix[1][2] = %d\n", matrix[1][2]);

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