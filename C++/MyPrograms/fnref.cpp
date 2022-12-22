//=============================================
// C++ Programming in easy steps 6ed. [6:110]
//=============================================

#include <iostream>
using namespace std ;

void writeOutput( int& ) ; // Prototypes.
void computeTriple( int& ) ;

int main()
{
  int num = 5 ; // Regular declaration.

  int& ref = num ; // Reference declaration.
  writeOutput( ref ) ;

  ref += 15 ; // Change the referenced value.
  writeOutput( ref ) ;

  computeTriple( ref ) ; // Change the referenced value.
  writeOutput( ref ) ;

  return 0 ;
}

void writeOutput( int& value )
{
  cout << "Current value: " << value << endl ;
}

void computeTriple( int& value)
{
  value *= 3 ;
}
