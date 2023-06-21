/* Fahr.c : This file contains the 'main' function.Program execution begins and ends there. */

#include <stdio.h>
/* print Fahrenheit-Celcius table
    for fahr = 0, 20, ..., 300; floating point version */
int main()
{
    float   fahr, celsius;
    int     lower, upper, step;

    lower = 0;          /* lower limit of temperature table */
    upper = 300;        /* upper limit */
    step = 20;          /* Step size */

    printf("Fahrenheit Celsius\n");
    printf("---------- -------\n");
    fahr = lower;
    while (fahr <= upper) {
        celsius = (5.0 / 9.0) * (fahr - 32.0);
        printf("%7.0f %9.1f\n", fahr, celsius);
        fahr = fahr + step;
    }
    return 0;
}

/* Run program : Ctrl + F5 or Debug > Start Without Debugging menu
   Debug program: F5 or Debug > Start Debugging menu

   Tips for Getting Started: 
     1. Use the Solution Explorer window to add/manage files
     2. Use the Team Explorer window to connect to source control
     3. Use the Output window to see build output and other messages
     4. Use the Error List window to view errors
     5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
     6. In the future, to open this project again, go to File > Open > Project and select the .sln file */
