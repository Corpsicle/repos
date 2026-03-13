/* program to print a triangle of asterixs */

#include <stdio.h>

int main() {
   int i, j, rows;
   printf("Enter the number of rows between 1 and 20: ");
   // Validate menu choice
   if (scanf("%d", &rows) < 1 || rows > 20) {
       printf("Invalid choice. Please enter a number between 1 & 20.\n");
       return 1;
   }

   for (i = 1; i <= rows; ++i) {
      for (j = 1; j <= i; ++j) {
         printf("* ");
      }
      printf("\n");
   }
   return 0;
}

