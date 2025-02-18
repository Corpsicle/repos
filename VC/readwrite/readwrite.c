/* readwrite.c : This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>

int main()
{
    FILE* orig_ptr = NULL ;
    FILE* copy_ptr = NULL ;
    char buffer[1000] ;
    size_t num ; // Changed from int to size_t

    if (fopen_s(&orig_ptr, "original.txt", "r") != 0) {
        printf("Unable to open original.txt\n") ;
        return 1 ;
    }
    if (fopen_s(&copy_ptr, "copy.txt", "w") != 0) {
        printf("Unable to open copy.txt\n");
        fclose(orig_ptr);
        return 1;
    }

    if (orig_ptr != NULL && copy_ptr != NULL)
    {
        num = fread(buffer, 1, 1000, orig_ptr) ;
        fwrite(buffer, 1, num, copy_ptr) ;
        fclose(orig_ptr) ;
        fclose(copy_ptr) ;
        printf("Done: original.txt copied to copy.txt") ;
        printf("\n%zu objects copied.\n", num) ; // Changed %d to %zu for size_t
        return 0 ;
    }
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