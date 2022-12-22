//=============================================
// C++ Programming in easy steps 6ed. [3:47]
//=============================================

#include <iostream>
using namespace std ;

int main()
{
  int num = 3 ;

  switch ( num )
  {
    case 1 : cout << num << " : Monday" ; break ;
    case 2 : cout << num << " : Tuesday" ; break ;
    case 3 : cout << num << " : Wednesday"  ; break ;
    case 4 : cout << num << " : Thursday" ; break ;
    case 5 : cout << num << " : Friday" ; break ;

    default : cout << num << " : Weekend day" ;
  }
  cout << endl ;
  return 0 ;
}
