// Comparison.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
using namespace std;

int main()
{
	int nil = 0, num = 0, max = 1; char cap = 'A', low = 'a';
	cout << endl << "Equality comparisons: ";
	cout << "(0 == 0) " << (nil == num) << "(true) ";
	cout << "(A == a) " << (cap == low) << "(false)";
	cout << endl << "Inequality comparisons: ";
	cout << "(0 != 1) " << (nil != max) << "(true)";
	cout << endl << "Greater comparisons: ";
	cout << "(0 > 1) " << (nil > max) << "(false)";
	cout << endl << "Lesser comparisons: ";
	cout << "(0 < 1) " << (nil < max) << "(true)";
	cout << endl << "Greater or equal comparisons: ";
	cout << "(0 >= 1) " << (nil >= num) << "(true)";
	cout << endl << "Lesser or equal comparisons: ";
	cout << "(1 <= 10 " << (max <= num) << "(false)";
    return 0;
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
