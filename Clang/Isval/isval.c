#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main()
{
	char str[8]; /* 6 digits + optional newline + '\0' */
	int i;
	int flag = 1;

	puts( "Enter six digits without any spaces..." );
	if (fgets(str, sizeof str, stdin) == NULL)
	{
		puts("Input error");
		return 1;
	}

	/* Strip trailing newline if present */
	size_t len = strlen(str);
	if (len > 0 && str[len - 1] == '\n')
	{
		str[--len] = '\0';
	}

	/* Require exactly 6 characters */
	if (len != 6)
	{
		puts("Entry Invalid");
		return 0;
	}

	for (i = 0; i < 6; i++)
	{
		unsigned char c = (unsigned char)str[i];
		if (!isdigit(c))
		{
			flag = 0;

			if (isalpha(c))
			{
				printf("Letter %c Found\n", toupper(c));
			}
			else if (ispunct(c))
			{
				printf("Punctuation Found\n");
			}
			else if (isspace(c))
			{
				printf("Space Found\n");
			}
		}
	}

	(flag) ? puts("Entry Valid") : puts("Entry Invalid");

	return 0;
}
