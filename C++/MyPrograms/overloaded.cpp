//=============================================
// C++ Programming in easy steps 6ed. [7:124]
//=============================================

#include <string>
#include <iostream>
using namespace std ;

class Dog
{
  int age, weight ;
  string color ;

  public:
    // Add an overloaded method.
    void bark( string noise ) { cout << noise << endl ; }
    void bark() { cout << "WOOF!" << endl ; }

    // Constructor for no arguments.
    Dog() ;
    // Add overloaded constructor declaration for two arguments.
    Dog( int, int ) ;
    // Add overloaded constructor declaration for three arguments.
    Dog( int, int, string ) ;
    
    // Destructor declaration.
    ~Dog() ;
    
    int getAge() { return age;   }
    int getWeight() { return weight; }
    string getColor() { return color; }
} ;

// Constructor definition (the default).
Dog::Dog()
{
  age = 1 ;
  weight = 2 ;
  color = "black" ;
}

// Overloaded constructor definition (two args).
Dog::Dog( int age, int weight )
{
  this -> age = age ;
  this -> weight = weight ;
  color = "white" ;
}

// Overloaded constructor definition (three args).
Dog::Dog( int age, int weight, string color )
{
  this -> age = age ;
  this -> weight = weight ;
  this -> color = color ;
}

// Destructor definition.
Dog::~Dog()
{
  cout << "Object destroyed." << endl ;
}

int main()
{
  Dog fido( 3, 15, "brown" ) ;
  cout << "Fido is a " << fido.getColor() << " dog" << endl ;
  cout << "Fido is " << fido.getAge() << " years old" << endl ;
  cout << "Fido weighs " << fido.getWeight() << " pounds" << endl ;
  fido.bark() ;

  Dog pooch ( 4, 18, "gray" ) ;
  cout << "Pooch is a " << pooch.getAge() ;
  cout << " year old " << pooch.getColor() ;
  cout << " dog who weighs " << pooch.getWeight() ;
  cout << " pounds." ;
  pooch.bark() ;

  // New Dog object rex.
  Dog rex ;
  cout << "Rex is a " << rex.getAge() ;
  cout << " year old " << rex.getColor() ;
  cout << " dog who weighs " << rex.getWeight() ;
  cout << " pounds." ;
  rex.bark( "GRRR!" ) ;

  Dog sammy( 2, 6 ) ;
  cout << "Sammy is a " << sammy.getAge() ;
  cout << " year old " << sammy.getColor() ;
  cout << " dog who weighs " << sammy.getWeight() ;
  cout << " pounds." ;
  sammy.bark( "BOWOW!" ) ;

  return 0 ;
}
