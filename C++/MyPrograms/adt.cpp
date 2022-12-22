//=============================================
// C++ Programming in easy steps 6ed. [8:142]
//=============================================

#include <iostream>
using namespace std ;

class Shape
{
  public :
    virtual int getArea() = 0 ;
    virtual int getEdge() = 0 ;
    virtual void Draw() = 0 ;
} ;

class Rect : public Shape
{
  private :
    int width, height ;

  public :
    Rect( int initHeight, int initWidth ) // Constructor.
    {
      width = initWidth ;
      height = initHeight ;
    }

    ~Rect() ; // Destructor.

  int getArea() { return height * width ; }

  int getEdge() { return (2 * height) + ( 2 * width) ; }

  void Draw()
  {
    for( int i = 0 ; i < height ; i++ )
    {
      for( int j = 0 ; j < width ; j++ )
      {
        cout << "x " ;
      }
      cout << endl ;
    }
  }
} ;

int main()
{
  Shape* pQuad = new Rect( 3, 7 ) ;
  Shape* pSquare = new Rect( 5, 5 ) ;

  pQuad -> Draw() ;
  cout << "Area is " << pQuad -> getArea() << endl ;
  cout << "Perimeter is " << pQuad -> getEdge() << endl ;

  pSquare -> Draw() ;
  cout << "Area is " << pSquare -> getArea() << endl ;
  cout << "Perimeter is " << pSquare -> getEdge() << endl ;

  return 0 ;
}
