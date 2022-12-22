//=============================================
// C++ Programming in easy steps 6ed. [9:156]
//=============================================

#ifndef BOOK
  #define BOOK  "C++ Programming in easy steps"
#endif

#include <iostream>
using namespace std ;

int main()
{
  // ifdef directive
  #ifdef BOOK
    cout << BOOK ;
  #endif

  // ifndef directive & define
  #ifndef AUTHOR
    #define AUTHOR "Mike McGrath"
    cout << " by " << AUTHOR << endl ;
  #endif

  // undef directive
  #ifdef BOOK 
    #undef BOOK 
  #endif

  // ifndef directive & redefine
  #ifndef BOOK
    #define BOOK "Linux in easy steps" 
    cout << BOOK ;
    cout << " by " << AUTHOR << endl ;
  #endif

  return 0 ;
}
