#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	size_t size;
	int *mem;

	/* Allocate space for 100 ints */
	size = 100 * sizeof(int);
	mem = malloc(size);

	if (mem != NULL)
	{
		printf("\nSize of block for 100 ints: %zu bytes.\n", size);
		printf("Beginning at: %p\n", (void *)mem);
	}
	else
	{
		printf("!!! Insufficient memory\n");
		return 1;
	}

	/* Grow the block for 200 ints */
	size = 200 * sizeof(int);
	mem = realloc(mem, size);

	if (mem != NULL)
	{
		printf("\nSize of block for 200 ints: %zu bytes\n", size);
		printf("Beginning at: %p\n", (void *)mem);
	}
	else
	{
		printf("!!! Insufficient memory\n");
		return 1;
	}

	free(mem);
	return 0;
}

	
