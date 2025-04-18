/* fcnptr.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>

int bounce(int a);
int caller(int(*function) (int), int b);

int main()
{
    int num;
    int (*fptr)(int) = bounce;
    
    num = (*fptr)(10);
    printf("Returned Value: %d\n",num);

    num = caller(fptr, 5);
    printf("Returned Value: %d\n", num);

    return 0;
}

int bounce(int a)
{
    printf("\nReceived Value: %d\n", a);
    return ((3 * a) + 3);
}

int caller(int (*function)(int), int b)
{
    (*function)(b);
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