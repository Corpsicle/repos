//=============================================
// C++ Programming in easy steps 6ed. [4:70]
//=============================================

#include <string>
#include <iostream>
using namespace std ;

int main()
{
  string lang = "C++" ;
  string term = " Programming" ;
  string text = "C++ Programming" ;

  // Joining strings...
  cout << "Concatenated: " << ( lang + term ) << endl ; // Concatenates strings in output.
  cout << "Original: " << lang << endl ; // But does not change first variable.

  cout << "Appended: " << lang.append( term ) << endl ; // Appends second string in first variable.
  cout << "Original: " << lang << endl << endl ; // And does change first variable.

  // Comparing strings...
  cout << "Differ: " << ( lang == term ) << endl ; // 0 false.
  cout << "Match: " << ( lang == text ) << endl << endl ; // 1 true.

  cout << "Match: " << lang.compare( text ) << endl ; // 0 identical.
  cout << "Differ: " << lang.compare( term ) << endl ; // 1 string arg lower ascii code value.
  cout << "Lower ASCII: " << lang.compare( "zzzzz" ) << endl ; // -1 string arg higher ascii code value.

  return 0 ;
}
