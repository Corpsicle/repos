//=============================================
// C++ Programming in easy steps 6ed. [2:41]
//=============================================

#include <iostream>
using namespace std;

int main()
{
  int num = 7 , factor = 2 ;
  char letter = 'A' ;
  float result = 0.0 ;

  // Plain division.
  cout << "Integer division: " << ( num / factor ) << endl ;

  // Cast int to float.
  result = (float) (num) / factor ;
   cout << "Cast division float: " << result << endl ;

  // Cast char to int.
  num = static_cast <int> (letter) ;
  cout << "Cast character int: " << num << endl ;

  // Cast int to char.
  letter = static_cast <char> (70) ;
  cout << "Cast integer char: " << letter << endl ;

  return 0 ;
}
