/* lotto.c : This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

int main()
{
    int i = 0, r = 0, temp = 0, nums[60] = {0};
    char buf[4], str[100] = { "Your lucky numbers are: " };
    srand((unsigned int)time(NULL));
    for (i = 0; i < 60; i++) { nums[i] = i; }
    for (i = 0; i < 60; i++) {
        r = ( rand() % 59) +1 ;
        temp = nums[i];
        nums[i] = nums[r];
        nums[r] = temp;
    }
    for (i = 0; i < 7; i++) {
        sprintf_s(buf, sizeof(buf), "%d", nums[i]);
        strcat_s(buf, sizeof(buf), " ");
        strcat_s(str, sizeof(str), buf);
    }
    printf("\n%s\n\n", str);
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