//=============================================
// C++ Programming in easy steps 6ed. [5:89]
//=============================================

#include <iostream>
using namespace std ;

int main()
{
  bool isTrue = 1 ;
  int num = 255 ;

  // Insertion operators...
  cout.width(40) ;
  cout.fill( '.' ) ;
  cout << "Output" << endl ;

  // Uncomment the next line to confirm subsequent stream uses defaults.
  // cout << "Output" << endl << endl ;

  // Precision, uncomment the next line for the default format.
  // cout << "Pi: " << 3.1415926536 << endl ;

  cout.precision(11) ;
  cout << "Pi: " << 3.1415926536 << endl ;

  // Manipulators.
  cout << isTrue << ": " << boolalpha << isTrue << endl ;
  cout << num << ": " << hex << showbase << uppercase << num << endl ;

  return 0 ;
}
