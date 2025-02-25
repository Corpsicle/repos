// Compare.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <string>
#include <iostream>

using namespace std;

int main()
{
    string lang = "C++";
	string term = " Programming";
	string text = "C++ Programming";

	cout << "Concatenated: " << (lang + term) << endl;
	cout << "Original: " << lang << endl;
	cout << "Appended: " << lang.append( term )	<< endl;
	cout << "Original: " << lang << endl << endl;
	cout << "Differ: " << (lang == term) << endl;
	cout << "Match: " << (lang == text) << endl << endl;
	cout << "Match: " << lang.compare( text ) << endl;
	cout << "Differ: " << lang.compare(term) << endl;
	cout << "Lower ASCII: " << lang.compare("zzzzz") << endl;

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
