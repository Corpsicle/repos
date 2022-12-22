//=============================================
// C++ Programming in easy steps 6ed. [6:104]
//=============================================

#include <iostream>
using namespace std ;

void writeOutput( int* ) ; // Prototypes.
void computeTriple( int* ) ;

int main()
{
  int num = 5 ; // Regular declaration.

  int* ptr = &num ; // Data pointer declaration.
  writeOutput( ptr ) ;

  *ptr += 15 ;      // Change the pointed value.
  writeOutput( ptr ) ;

  computeTriple( ptr ) ; // Change the pointed value.
  writeOutput( ptr ) ;

  return 0 ;
}

void writeOutput( int* value )
{
  cout << "Current value: " << *value << endl ;
}

void computeTriple( int* value)
{
  *value *= 3 ;
}
