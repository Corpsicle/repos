//=============================================
// C++ Programming in easy steps 6ed. [8:134]
//=============================================

#include <iostream>
using namespace std ;

class Base
{
  public:
  //Use default constructor & destructor.
    void Identify( int adr ) const { cout << "Base class called by 0x" << hex << adr << endl ;  }
} ;

class SubA : public Base
{
  // Empty.
} ;

class SubB : public Base
{
  // Empty.
} ;

int main()
{
  Base* ptrA = new SubA ; // or... SubA a ; Base* ptrA = &a ;
  Base* ptrB = new SubB ; // or... SubB b ; Base* ptrB = &b ;
  
  ptrA -> Identify( (int) &ptrA ) ;
  ptrB -> Identify( (int) &ptrB ) ;

  return 0 ;
}
