#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void int_to_binary(int value, char *buf, size_t bufSize)
{
	if (bufSize == 0) return;

	unsigned int u = (unsigned int)value;
	char tmp[33];
	int idx = 0;

	if (u == 0)
		tmp[idx++] = '0';
	else
	{
		while (u != 0 && idx < (int)sizeof(tmp) - 1)
		{
			tmp[idx++] = (u & 1) ? '1' : '0';
			u >>= 1;
		}
	}

	if (value < 0 && idx + 1 < (int)sizeof(tmp))
		tmp[idx++] = '-';

	/* reverse into output buffer */
	int outLen = (int)bufSize - 1;
	int i = 0;
	while (i < idx && i < outLen)
	{
		buf[i] = tmp[idx - 1 - i];
		i++;
	}
	buf[i] = '\0';
}

int main()
{
	int n1, n2, n3;
	char s1[40] = "12eight", s2[40] = "-65.8", s3[40] = "x13";

	n1 = atoi( s1 );
	printf( "\nString %s converts to integer: %d\n", s1, n1 );
	n2 = atoi( s2 );
	printf( "String %s converts to integer: %d\n", s2, n2 );
	n3 = atoi( s3 );
	printf( "string %s converts to integer: %d\n\n", s3, n3 );

	int_to_binary(n1, s1, sizeof(s1));
	printf( "Decimal %d is Binary: %s\n", n1, s1 );

	n2 = sprintf( s3, "%o", n1 );
	printf( "Decimal %d is Octal: %s chars: %d\n", n1, s3, n2 );

	n3 = sprintf( s3, "%x", n1 );
	printf( "Decimal %d is Hexadecimal: %s chars: %d\n", n1, s3, n3 );

	return 0;
}


