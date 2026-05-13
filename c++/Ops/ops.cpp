#include "ops.h"
#include <iostream>

using namespace std;

Calculator::Calculator()
{
    status = true;                      // Initialize status.
}

void Calculator::launch()               // Display instructioons.
{
    cout << endl << "*** SUM CALCULATOR ***" << endl;
    cout << "ENTER A NUMBER, AN OPERATOR (+ - * /), AND ANOTHER NUMBER." << endl 
         << "Hit Return to calculate, Enter zero to exit"<< endl;
}

void Calculator::readInput()            // Get expression.
{
    cout << "> " ; cin >> num1;         // Get 1st number.
    if (num1 == 0) status = false;      // exit if it's false
    else {cin >> oper; cin >> num2;}    // Or get the rest.
}

void Calculator::writeOutput()          // Display result.
{
   if(status) switch(oper)              // if contining.
   {
    case '+' : cout << (num1 + num2) << endl; break;
    case '-' : cout << (num1 - num2) << endl; break;
    case '*' : cout << (num1 * num2) << endl; break;
    case '/' : if (num2 !=0)
        cout << (num1 / num2) << endl; 
        else cout << "DIVISION BY ZERO!" << endl; 
   }
}

bool Calculator::run()                 // Get current status.
{
    return status;
}