#include <stdio.h>

void display( char str[] );
int square( int x );
int cube( int y );

int main(void)
{
	int num;
	char msg[50] = "String to be passed to a function";

	display( msg );
	num = square( 4 );
	printf( "4 x 4 = %d\n", num );
	printf( "4 x 4 x 4 = %d\n", cube( 4 ) );

	return 0;
}

void display( char str[] )
{
	printf( "%s\n", str );
}

int square( int x )
{
	return ( x * x );
}

int cube( int y )
{
	return ( ( y * y ) * y );
}	
