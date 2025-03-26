/* fscanprint.c : This file contains the 'main' function.Program execution begins and ends there.  */

#include <stdio.h>

int main()
{
   FILE* nums_ptr, * hint_ptr;
   int nums[20] = {0}, i = 0, j = 0; // Initialize i and j to 0
   errno_t err;

   err = fopen_s(&nums_ptr, "nums.txt", "r");
   if (err != 0) {
       fprintf(stdout, "Unable to open nums.txt\n");
       return 1;
   }

   err = fopen_s(&hint_ptr, "hint.txt", "w");
   if (err != 0) {
       fprintf(stdout, "Unable to open hint.txt\n");
       fclose(nums_ptr);
       return 1;
   }

   while (fscanf_s(nums_ptr, "%d", &nums[i]) != EOF && i < 20) {i++;}
   fprintf(stdout, "\nTotal numbers found: %d\n", i);
   for (j = 0; j < i; j++) { fprintf(stdout, "%d ", nums[j]); }
   fclose(nums_ptr);
   fclose(hint_ptr);

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