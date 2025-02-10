/* isval.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main()
{
    char str[7];
    int i;
	int flag = 1;

	puts("Enter six digits without any spaces...");
	gets( str );
	for (i = 0; i < 6; i++)
    {
		if (!isdigit(str[i]))
        {
			flag = 0;
		}
		if (isalpha(str[i]))
		{
			printf("Letter %c Found\n", toupper(str[i]));
		}
		else if(ispunct(str[i]))
		{
			printf("Punctuation %c Found\n", str[i]);
		}
		else if(isspace(str[i]))
		{
			printf("Space Found\n");
		}
	}
	( flag ) ? puts("Entry Valid") : puts("Entry Invalid");

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