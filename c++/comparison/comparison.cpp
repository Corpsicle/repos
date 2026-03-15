#include <iostream>

using namespace std;

int main()
{
	// Program code goes here
	int nil = 0, num = 0, max = 1;
	char cap = 'A', low = 'a';

	cout << "Equality comparisons:\t";
	cout << "(0 == 0)\t" << ( nil == num ) << "(true)";
	cout << "\t(A == a) " << ( cap == low ) << "(false)";
	cout << endl << "Inequality comparison\t";
	cout << "(0 != 1)\t" << ( nil != max ) << "(true)";
        cout << endl << "Greater comparison:\t";
	cout << "(0 > 1)\t\t" << ( nil > max ) << "(false)";
	cout << endl << "Lesser comparison:\t";
	cout << "(0 < 1)\t\t" << ( nil < max ) << "(true)";
	cout << endl << "Greater or equal comparison:\t";
	cout << "(0 >= 0)\t" << ( nil >= num ) << "(true}";
	cout << endl << "Lesser or equal comparison:\t";
	cout << "(1 <= 0)\t" << ( max <= num ) << "(false)" << endl;	

	return 0;
}
