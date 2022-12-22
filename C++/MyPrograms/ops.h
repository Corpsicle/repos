//=============================================
// C++ Programming in easy steps 6ed. [8:147]
//=============================================

// Header - declarations.

class Calculator
{
  public :
    Calculator() ;
    void launch() ;
    void readInput() ;
    void writeOutput() ;
    bool run() ;

  private :
    double num1, num2 ;
    char oper ;
    bool status ;
} ;
