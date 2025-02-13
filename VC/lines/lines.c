/* lines.c : This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>
#include <string.h>

int main()
{
    FILE* file_ptr;
    char text[50];
    errno_t err;

    err = fopen_s(&file_ptr, "farewell.txt", "a");
    if (err == 0)
    {
        printf("File farewell.txt opened\n");
        while (fgets(text, 50, file_ptr))
        {
            printf("%s", text);
        }
        strcpy_s(text, sizeof(text), "...by Lord Alfred Tennyson");
        fputs(text, file_ptr);
        fclose(file_ptr);

        return 0;
    }
    else
    {
        printf("unable to open file\n");
        return 1;
    }

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