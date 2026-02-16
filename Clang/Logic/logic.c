#include <stdio.h>

int main()
{
	int yes = 1, no = 0;

	printf( "AND (no && no):\t\t %d\n", no && no );
        printf( "AND (yes && no):\t %d\n", yes && no );
	printf( "AND (yes && yess):\t %d\n", yes && yes );
	printf( "OR (no || no):\t\t %d\n", no || no );
	printf( "OR (yes || no):\t\t %d\n", yes || no );
	printf( "OR (yes || yes):\t %d\n", yes || yes );
	printf( "NOT (yes ! yes):\t %d %d\n", yes, !yes );
	printf( "NOT (no ! no ):\t\t %d %d\n", no, !no );	

	return 0;
}

