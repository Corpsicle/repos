// args.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
using namespace std;

float fToC(float degreesF = 32.0);

int main()
{
    // program code goes here
	float fahrenheit, centigrade;
	cout << "Enter the temperature in Fahrenheit:\t";
	cin >> fahrenheit;
	centigrade = fToC(fahrenheit);
	cout << fahrenheit << "F is " << centigrade << "C";
	cout << endl << "Freezing point " << fToC() << "C" << endl;

    return 0;;
}

float fToC(float degreesF)
{
	float degreesC = ((5.0 / 9.0) * (degreesF - 32.0));
	return degreesC;
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
