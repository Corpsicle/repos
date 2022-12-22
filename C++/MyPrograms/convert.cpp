//=============================================
// C++ Programming in easy steps 6ed. [4:66]
//=============================================

#include <string>
#include <sstream>
#include <iostream>
using namespace std ;

int main( )
{
  string term = "100" ; // String to convert to int.
  int number = 100 ; // Int to convert to string.
  string text ; // String variable for converted int.
  int num ; // Int variable for converted string
  stringstream stream ; // Intermediary stream object.

  // Convert string to int...
  stream << term ; // Load string into stream.
  stream >> num ; // Extract stream to int.
  num /= 4 ; // Manipulate the int.
  cout << "Integer value: " << num << endl ;

  // Reset the stream object back to new...
  stream.str("") ; // Reset the stream to an empty string.
  stream.clear() ; // Reset the stream bit flags (good,bad,eof,fail).

  // Convert int to string...
  stream << number ; // Load int into stream.
  stream >> text ; // Extract stream to string.
  text += " Per Cent" ; // Manipulate the string.
  cout << "String value: " << text << endl ;

  return 0 ;
}
