//=============================================
// C++ Programming in easy steps 6ed. [8:138]
//=============================================

#include <iostream>
using namespace std ;

class Bird
{
  public :
    virtual void Talk() const { cout << "A bird talks..." << endl ; }
    virtual void Fly()  const { cout << "A bird flies..." << endl ; }
} ;

class Pigeon : public Bird
{
  public:
    // Use default constructor & destructor.
    
    //Declare overriding methods.
    virtual void Talk() const { cout << "Coo! Coo!" << endl ; }
    virtual void Fly()  const { cout << "A pigeon flies away..." << endl ; }
} ;

class Chicken : public Bird
{
  public:
    // Use default constructor & destructor.
    
    // Declare overriding methods.
    virtual void Talk() const { cout << "Cluck! Cluck!" << endl ; }
    virtual void Fly()  const { cout << "I\'m just a chicken - I can\'t fly!" << endl ; }
} ;

int main()
{
  Bird* pPigeon = new Pigeon ;
  Bird* pChicken = new Chicken ;

  pPigeon -> Talk() ;
  pPigeon -> Fly() ;

  pChicken -> Talk() ;
  pChicken -> Fly() ;

  pPigeon ->  Bird::Talk() ;
  pChicken -> Bird::Fly() ;

  return 0 ;
}
