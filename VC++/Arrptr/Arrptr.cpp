// Arrptr.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>

using namespace std;

int main()
{
	char letters[8] = { 'C', '+', '+', ' ', 'F', 'u', 'n', '\0' };
	const char* text = "C++ Fun";

	const char* term = "Element:";
	const char* lang = "C++";
	const char* ap1[3] = { "Great ", "Program", "Code  " };
	const char* ap2[3] = { lang, "is ", "Fun" };
	const char* ap3[3] = { ap2[0], ap2[1], ap1[0] };
	const char* ap4[3] = { ap1[2], ap2[1], ap2[2] };

	cout << letters << endl;
	cout << text << endl;
	for (int i = 0; i < 3; i++)
	{
		cout << term << i << "  ";
		cout << ap1[i] << "  ";
		cout << ap2[i] << "  ";
		cout << ap3[i] << "  ";
		cout << ap4[i] << endl;
	}

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
