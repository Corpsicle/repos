//=============================================
// C++ Programming in easy steps 6ed. [8:148]
//=============================================

// Implementation - definitions.

#include "ops.h"
#include <iostream>
using namespace std ;

Calculator::Calculator() { status = true ; }

void Calculator::launch()
{
  cout << endl << "*** SUM CALCULATOR ***" << endl ;
  cout << "Enter a number, an operator(+,-,*,/), and another number." << endl << "Hit Return to calculate. Enter zero to exit." << endl ;
}

void Calculator::readInput()
{
  cout << "> " ; cin >> num1 ;
  if( num1 == 0 ) status = false ;
  else { cin >> oper ; cin >> num2 ; }
}

void Calculator::writeOutput()
{
  if (status) switch(oper)
  {
    case '+' : { cout << ( num1 + num2 ) << endl ; break ; }
    case '-' : { cout << ( num1 - num2 ) << endl ; break ; }
    case '*' : { cout << ( num1 * num2 ) << endl ; break ; }
    case '/' : if( num2 != 0 ) cout << ( num1 / num2 ) << endl ;
    else cout << "Cannot divide by zero" << endl ;
  }
}

bool Calculator::run()
{
  return status ;
}
