//=============================================
// C++ Programming in easy steps 6ed. [4:72]
//=============================================

#include <string>
#include <iostream>
using namespace std ;

int main()
{
  string front, back, text = "Always laugh when you can. It\'s cheap medicine." ;

  // Assignation...
  front.assign( text ) ; // Assign the full string.
  cout << endl << "Front: " << front << endl ;

  front.assign( text, 0, 27 ) ; // Assign elements 0 thru 27.
  cout << endl << "Front: " << front << endl ;

  back.assign ( text, 27 , text.size() ) ; // Assign elements 27 thru end.
  cout << "Back: " << back << endl ;
  
  // Swap...
  back.swap( front ) ; // Swap the full strings.
  cout << endl << "Front: " << front << endl ;
  cout << "Back: " << back << endl ;

  return 0 ;
}
