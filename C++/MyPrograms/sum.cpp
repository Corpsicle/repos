//=============================================
// C++ Programming in easy steps 6ed. [8:149]
//=============================================

#include "ops.h"

// Client

int main()
{
  Calculator* pCalc = new Calculator ;

  pCalc -> launch() ;

  while ( pCalc -> run() )
  {
    pCalc -> readInput() ;
    pCalc -> writeOutput() ;
  }

  return 0 ;
}
