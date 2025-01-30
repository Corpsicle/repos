/* constant.c : This file contains the 'main' function.Program execution begins and ends there. */


#include <stdio.h>

int main()
{
	const float PI = 3.141593;
    
    float diameter;
    float radius;
    float circ;
	float area;

	printf("Enter the diameter of the circle:in millimeters: ");
	scanf_s("%f", &diameter);
	circ = PI * diameter;
	radius = diameter / 2;
	area = PI * (radius * radius);

	printf("\n\tThe circumference of the circle is %.2f millimeters\n", circ);
	printf("\n\tThe area of the circle is %.2f square millimeters\n", area);

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