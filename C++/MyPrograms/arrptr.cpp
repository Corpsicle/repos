//=============================================
// C++ Programming in easy steps 6ed. [6:106]
//=============================================

#include <iostream>
using namespace std ;

int main()
{
  // Variables to store "strings".
  char letters[8] = { 'C','+','+',' ', 'F','u','n', '\0' } ;
  const char* text = "C++ Fun" ;

  // Pointers to arrays of characters - ie. strings.
  const char* term = "Element:" ;
  const char* lang = "C++" ;

  // Pointers to arrays of strings.
  const char* ap1[3] = { "Great  ", "Program", "Code   " } ;
  // Assigning char pointer to first element.
  const char* ap2[3] = { lang, "is ", "Fun" } ;

  // Pointers to arrays of pointers.
  const char* ap3[3] = { ap2[0], ap2[1], ap1[0] } ;
  const char* ap4[3] = { ap1[2], ap2[1], ap2[2] } ;

  // Output the variables.
  cout << letters << endl ;
  cout << text << endl ;

  // Output the elements of each array.
  for ( int i = 0; i < 3 ; i++)
  {
    cout << term << i << "   " ;

    cout << ap1[i] << "   " ;
    cout << ap2[i] << "   " ;
    cout << ap3[i] << "   " ;
    cout << ap4[i] << endl ;
  }
  return 0 ;
}
