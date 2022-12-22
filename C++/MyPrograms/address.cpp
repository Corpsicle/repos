//=============================================
// C++ Programming in easy steps 6ed. [6:98]
//=============================================

#include <string>
#include <iostream>
using namespace std ;

int main()
{
  int num = 100 ;
  double decimal = 0.0123456789 ;
  string text = "C++ Fun" ;

  cout << "Integer variable starts at: " << &num << endl ;
  cout << "Double variable starts at: " << &decimal << endl ;
  cout << "String variable starts at: " << &text << endl ;

  // Uncomment the lines below to place R-values incorrectly.
  // 200 = num ;
  // 5.5 = decimal ;
  // "Bad assignments" = text ;

  return 0 ;
}
