#include <stdio.h>

int main()
{
	int a = 4, b = 8, c = 1, d = 1;

	printf( "Addition: \t\t %d \n", a + b );
	printf( "Subtraction: \t\t %d \n", b - a );
	printf( "Multiplication: \t %d \n", a * b );
	printf( "Division: \t\t %d \n", b / a );
        printf( "Modulus: \t\t %d \n", a % b );
	
	printf( "Postfix increment: \t %d \n", c++ );
	printf( "Postfix now: \t\t %d \n", c );
	printf( "Prefix increment: \t %d \n", ++d );
	printf( "Prefix now: \t\t %d \n", d );

	return 0;
}
