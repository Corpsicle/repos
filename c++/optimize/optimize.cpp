#include <iostream>>
using namespace std;

int computeFactorials( int, int );

inline int factorial( int n)
{
    return ( n == 1 ) ? 1 : ( factorial( n - 1 ) * n ); // Ternary operator for compactness.
}

int main()
{
    // Program code goes here
    computeFactorials( 1, 8 ); // Start with 1 and compute factorials up to 8.
    return 0;  
}

int computeFactorials( int num, int max )
{
    cout << "Factorial of " << num << ": ";
    cout << factorial( num ) << endl;   // Statements
    num ++;                             // incrementer.
    if( num > max) return 0;            // Exit...
    else computeFactorials( num, max ); // Recursive call.
    }

