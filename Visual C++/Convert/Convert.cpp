// Convert.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <string>			// include string support.
#include <sstream>			// include stringstream support.
#include <iostream>

using namespace std;

int main()
{
	string term = "100";
	int number = 100;
	int num;				// T0 store the converted string.
	string text;			// To store the converted integer.
	stringstream stream;	// To perform conversions

	stream << term;			// load the string.
	stream >> num;			// extract the integer.
	num /= 4;
	cout << "Integer Value: " << num << endl;
	stream.str("");			// empty the contents.
	stream.clear();			// empty the bit flags.
	stream << number;		// load the integer.
	stream >> text;			// extract the string.
	text += " Per Cent";
	cout << "String Value: " << text << endl;
		
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
