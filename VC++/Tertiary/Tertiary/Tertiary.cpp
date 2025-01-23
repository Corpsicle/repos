// Tertiary.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
using namespace std;

int main()
{
    int a, b, max;
    a = 1, b = 2;
    cout << "Varible a value is: ";
    cout << ((a != 1) ? "not one, " : "one, ");
    cout << ((a % 2 != 0) ? "odd" : "even");
	cout << endl << "Variable b value is: ";
	cout << ((b != 1) ? "not one, " : "one, ");
	cout << ((b % 2 != 0) ? "odd" : "even");
	max = (a > b) ? a : b;
	cout << endl << "The greater value is: " << max << endl;

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
