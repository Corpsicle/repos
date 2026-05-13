#include "ops.h"

int main()
{
    Calculator* pcalc = new Calculator;
    pCalc -> launch();
    while (pCalc -> run())
    {
        pCalc -> readInput();
        pCalc -> writeOutput();
    } 
    return 0;

}