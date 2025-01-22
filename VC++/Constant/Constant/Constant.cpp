// Constant.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
using namespace std;

int main()
{
	const double PI = 3.1415926536;
	cout << "6\" circle circumference: " << ( PI * 6) << endl;

	enum
	{ RED = 1, YELLOW, GREEN, BROWN, BLUE, PINK, BLACK };
	cout << "I shot a red worth: " << RED << endl;
	cout << "Then a blue worth: " << BLUE << endl;
	cout << "Total scored: " << RED + BLUE << endl;

	typedef enum { NEGATIVE, POSITIVE } charge;
	charge neutral = NEGATIVE, live = POSITIVE;
	cout << "Neutral wire: " << neutral << endl;
	cout << "Live wire: " << live << endl;

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
