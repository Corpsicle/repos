/* newchars.cpp : This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>

int main()
{
    FILE* file_ptr; int i;
    char text[50] = { "Text, one character at a time" };
    errno_t err = fopen_s(&file_ptr, "chars.txt", "w");
    if (err == 0)
    {
        printf("File chars.txt created\n");
        for (i = 0; text[i]; i++)
        {
            fputc(text[i], file_ptr);
        }
        fclose(file_ptr);
        return 0;
    }
    else
    {
        printf("Unable to create file\n");
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