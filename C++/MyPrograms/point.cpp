//=============================================
// C++ Programming in easy steps 6ed. [6:102]
//=============================================

#include <iostream>
using namespace std ;

int main()
{
  int nums[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 } ;

  // Pointer assigns address of element zero.
  int* ptr = nums ;

  cout << endl << "ptr at: " << ptr << " gets: " << *ptr ;

  // Increment to element one.
  ptr++ ;
  cout << endl << "ptr at:\t" << ptr << " gets: " << *ptr  ;

  // Increment again to element two.
  ptr++ ;
  cout << endl << "ptr at: " << ptr << " gets: " << *ptr ;

  // Decrement again to element zero.
  ptr -= 2 ;
  cout << endl << "ptr at: " << ptr << " gets: " << *ptr ;
  
  // (Added for formatting.)
  cout << endl ;

  for( int i = 0 ; i < 10 ; i++ )
  {
    cout << endl << "Element: " << i ;
    cout << "    Value: " << *ptr ;
    ptr++ ;
  }

  // (Added for formatting).
  cout << endl << endl ;

  return 0 ;
}
