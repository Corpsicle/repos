//=============================================
// C++ Programming in easy steps 6ed. [6:113]
//=============================================

#include <iostream>
using namespace std ;

inline void add( int& a, int* b )
{
  cout << "Total: " << ( a + *b ) << endl ;
}

int main()
{
  int num = 100 , sum = 500 ;
  int& rNum = num ; // Reference declaration.
  int* ptr = &num ; // Pointer declaration.
  void (* fn) ( int& a, int* b ) = add  ; // Function pointer declaration.

  cout << "Reference: " << rNum << endl ; // Output via reference.  
  cout << "Pointer: " << *ptr << endl ; // Output via pointer.

  ptr = &sum ; // Reassign pointer.
  cout << "Pointer now: " << *ptr << endl ; // Output different value via pointer.
  fn( rNum, ptr ) ; // Output via function pointer. (Note: NOT directly with add(rNum,ptr); as listed in the book.)

  return 0 ;
}
