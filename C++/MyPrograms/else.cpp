//=============================================
// C++ Programming in easy steps 6ed. [9:158]
//=============================================

#if defined _WIN32
  #define PLATFORM "Windows"
#elif defined __linux
  #define PLATFORM "Linux"
#else
  #define PLATFORM "Unknown"
#endif

#include <iostream>
using namespace std ;

int main()
{
  cout << PLATFORM << " System" << endl ;
  
  if( PLATFORM == "Windows" ) cout << "Performing Windows-only tasks..." << endl ;

  if( PLATFORM == "Linux" ) cout << "Performing Linux-only tasks..." << endl ;

  return 0 ;
}
