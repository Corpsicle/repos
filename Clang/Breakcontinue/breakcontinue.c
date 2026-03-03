#include <stdio.h>

int main()
{
	int i, j;
	for(i = 1; i < 4; i++)
	{
		for(j = 1; j < 4; j++)
		{
			if( i == 2 && j == 1 )
			{
				printf( "Breaks inner loop when i = %d and J = %d\n", i, j );
				break;
			}
			printf( "Running i = %d  j = %d\n", i, j );
		}
	}
	return 0;
}
