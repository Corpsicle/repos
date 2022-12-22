//=============================================
// C++ Programming in easy steps 6ed. [2:39]
//=============================================

#include <iostream>
using namespace std ;

int main()
{
  // Multiply, add default precedence.
  int num = 1 + 4 * 3 ;
  cout << endl << "Default order:  " << num << endl ;

  // Forced precedence.
  num = ( 1 + 4 ) * 3 ;
  cout << "Forced order:  " << num << endl << endl ;

  // Left to right default direction.
  num = 7 - 4 + 2 ;
  cout<< "Default direction: " << num << endl ;

  // Forced direction.
  num = 7 - ( 4 + 2 ) ;
  cout << "Forced direction: " << num << endl ;

  return 0 ;
}
