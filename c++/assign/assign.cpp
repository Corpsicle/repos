#include <iostream>

using namespace std;

int main()
{
	// program code goes here
	int a, b;

	cout << "Assign values: ";
	cout << "a = " << ( a = 8 ) << " ";
	cout << "b = " << ( b = 4 );

	cout << endl << "Add & assign:\t\t";
	cout << "a += b (8 += 4) \ta = " << ( a += b );
	cout << endl << "Subtract & assign:\t";
	cout << "a -= b (12 -= 4) \ta = " << ( a -= b );
	cout << endl << "Multiply & assign:\t";
	cout << "a *= b (8 *= 4) \ta = " << ( a *= b );
	cout << endl << "Divide & assign:\t";
	cout << "a /= b (32 /= 4) \ta = " << ( a /= b );
	cout << endl << "Modulus & assign:\t";
	cout << "a %= b (8 %= 4 ) \ta = " << ( a %= b ) << endl;

	return 0;
}
