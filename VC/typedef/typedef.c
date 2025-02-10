/* typedef.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

typedef struct
{
	int x;
	int y;
} Point;

typedef struct
{
    Point a;
    Point b;
} Box;


Point top = {15, 24};
Point btm = {0, 0}; // Initialize btm to avoid undefined behavior
Box rect = { 6, 12, 30, 20 };


int main()
{   
    btm.x = 5;
    btm.y = 8;
    printf("\nTop x: %d, y: %d\n", top.x, top.y);
	printf("Bottom x: %d, y: %d\n", btm.x, btm.y);
	printf("\nPoint a x: %d", rect.a.x);
	printf("\nPoint a y: %d", rect.a.y);
	printf("\nPoint b x: %d", rect.b.x);
	printf("\nPoint b y: %d\n", rect.b.y);

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