// Sizeof.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
using namespace std;

int main()
{
    int num;
    int nums[50];
    float decimal;
	bool isTrue;
    unsigned int max;
	char letter;
    char letters[50];
    double pi;
    short int number;

	cout << "int size: " << sizeof(num)  << endl;
	cout << "50 int size: " << sizeof(nums) << endl;
	cout << "short int size: " << sizeof(number) << endl;
	cout << "unsigned int size: " << sizeof(max) << endl;
	cout << "double size: " << sizeof(pi) << endl;
	cout << "float size: " << sizeof(decimal) << endl;
	cout << "char size: " << sizeof(letter) << endl;
	cout << "50 char size: " << sizeof(letters) << endl;
	cout << "bool size: " << sizeof(isTrue) << endl;

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
