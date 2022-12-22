//=============================================
// C++ Programming in easy steps 6ed. [4:63]
//=============================================

#include <string>
#include <iostream>
using namespace std ;

int main()
{
  string text = "9" ; // Declare and initialize.
  string term("9 ") ; // Alternative.
  string info = "Toys" ; // Declare and initialize.
  string color ; // Declare only.

  char hue[4] = {'R','e','d','\0' } ;
  color = hue ; // Assign char array.

  info = " Balloons" ; // Reassign.

  text += ( term + color + info ) ; // Build long string.

  cout << endl << text << endl ;

  return 0 ;
}
